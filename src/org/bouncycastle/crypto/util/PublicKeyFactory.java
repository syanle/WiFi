// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.util;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.nist.NISTNamedCurves;
import org.bouncycastle.asn1.oiw.ElGamalParameter;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.DHParameter;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DSAParameter;
import org.bouncycastle.asn1.x509.RSAPublicKeyStructure;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.asn1.x9.DHDomainParameters;
import org.bouncycastle.asn1.x9.DHPublicKey;
import org.bouncycastle.asn1.x9.DHValidationParms;
import org.bouncycastle.asn1.x9.X962NamedCurves;
import org.bouncycastle.asn1.x9.X962Parameters;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.asn1.x9.X9ECPoint;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;
import org.bouncycastle.crypto.params.DHValidationParameters;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.DSAPublicKeyParameters;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ElGamalParameters;
import org.bouncycastle.crypto.params.ElGamalPublicKeyParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;

public class PublicKeyFactory
{

    public PublicKeyFactory()
    {
    }

    public static AsymmetricKeyParameter createKey(InputStream inputstream)
        throws IOException
    {
        return createKey(SubjectPublicKeyInfo.getInstance((new ASN1InputStream(inputstream)).readObject()));
    }

    public static AsymmetricKeyParameter createKey(SubjectPublicKeyInfo subjectpublickeyinfo)
        throws IOException
    {
        int i = 0;
        Object obj1 = null;
        Object obj = null;
        Object obj2 = subjectpublickeyinfo.getAlgorithmId();
        if (((AlgorithmIdentifier) (obj2)).getObjectId().equals(PKCSObjectIdentifiers.rsaEncryption) || ((AlgorithmIdentifier) (obj2)).getObjectId().equals(X509ObjectIdentifiers.id_ea_rsa))
        {
            subjectpublickeyinfo = new RSAPublicKeyStructure((ASN1Sequence)subjectpublickeyinfo.getPublicKey());
            return new RSAKeyParameters(false, subjectpublickeyinfo.getModulus(), subjectpublickeyinfo.getPublicExponent());
        }
        if (((AlgorithmIdentifier) (obj2)).getObjectId().equals(X9ObjectIdentifiers.dhpublicnumber))
        {
            obj1 = DHPublicKey.getInstance(subjectpublickeyinfo.getPublicKey()).getY().getValue();
            Object obj3 = DHDomainParameters.getInstance(subjectpublickeyinfo.getAlgorithmId().getParameters());
            obj2 = ((DHDomainParameters) (obj3)).getP().getValue();
            BigInteger biginteger = ((DHDomainParameters) (obj3)).getG().getValue();
            BigInteger biginteger1 = ((DHDomainParameters) (obj3)).getQ().getValue();
            if (((DHDomainParameters) (obj3)).getJ() != null)
            {
                subjectpublickeyinfo = ((DHDomainParameters) (obj3)).getJ().getValue();
            } else
            {
                subjectpublickeyinfo = null;
            }
            obj3 = ((DHDomainParameters) (obj3)).getValidationParms();
            if (obj3 != null)
            {
                obj = new DHValidationParameters(((DHValidationParms) (obj3)).getSeed().getBytes(), ((DHValidationParms) (obj3)).getPgenCounter().getValue().intValue());
            }
            return new DHPublicKeyParameters(((BigInteger) (obj1)), new DHParameters(((BigInteger) (obj2)), biginteger, biginteger1, subjectpublickeyinfo, ((DHValidationParameters) (obj))));
        }
        if (((AlgorithmIdentifier) (obj2)).getObjectId().equals(PKCSObjectIdentifiers.dhKeyAgreement))
        {
            obj = new DHParameter((ASN1Sequence)subjectpublickeyinfo.getAlgorithmId().getParameters());
            subjectpublickeyinfo = (DERInteger)subjectpublickeyinfo.getPublicKey();
            obj1 = ((DHParameter) (obj)).getL();
            if (obj1 != null)
            {
                i = ((BigInteger) (obj1)).intValue();
            }
            obj = new DHParameters(((DHParameter) (obj)).getP(), ((DHParameter) (obj)).getG(), null, i);
            return new DHPublicKeyParameters(subjectpublickeyinfo.getValue(), ((DHParameters) (obj)));
        }
        if (((AlgorithmIdentifier) (obj2)).getObjectId().equals(OIWObjectIdentifiers.elGamalAlgorithm))
        {
            obj = new ElGamalParameter((ASN1Sequence)subjectpublickeyinfo.getAlgorithmId().getParameters());
            return new ElGamalPublicKeyParameters(((DERInteger)subjectpublickeyinfo.getPublicKey()).getValue(), new ElGamalParameters(((ElGamalParameter) (obj)).getP(), ((ElGamalParameter) (obj)).getG()));
        }
        if (((AlgorithmIdentifier) (obj2)).getObjectId().equals(X9ObjectIdentifiers.id_dsa) || ((AlgorithmIdentifier) (obj2)).getObjectId().equals(OIWObjectIdentifiers.dsaWithSHA1))
        {
            obj = (DERInteger)subjectpublickeyinfo.getPublicKey();
            obj2 = subjectpublickeyinfo.getAlgorithmId().getParameters();
            subjectpublickeyinfo = ((SubjectPublicKeyInfo) (obj1));
            if (obj2 != null)
            {
                subjectpublickeyinfo = DSAParameter.getInstance(((DEREncodable) (obj2)).getDERObject());
                subjectpublickeyinfo = new DSAParameters(subjectpublickeyinfo.getP(), subjectpublickeyinfo.getQ(), subjectpublickeyinfo.getG());
            }
            return new DSAPublicKeyParameters(((DERInteger) (obj)).getValue(), subjectpublickeyinfo);
        }
        if (((AlgorithmIdentifier) (obj2)).getObjectId().equals(X9ObjectIdentifiers.id_ecPublicKey))
        {
            obj = new X962Parameters((DERObject)subjectpublickeyinfo.getAlgorithmId().getParameters());
            if (((X962Parameters) (obj)).isNamedCurve())
            {
                obj2 = (DERObjectIdentifier)((X962Parameters) (obj)).getParameters();
                obj1 = X962NamedCurves.getByOID(((DERObjectIdentifier) (obj2)));
                obj = obj1;
                if (obj1 == null)
                {
                    obj1 = SECNamedCurves.getByOID(((DERObjectIdentifier) (obj2)));
                    obj = obj1;
                    if (obj1 == null)
                    {
                        obj1 = NISTNamedCurves.getByOID(((DERObjectIdentifier) (obj2)));
                        obj = obj1;
                        if (obj1 == null)
                        {
                            obj = TeleTrusTNamedCurves.getByOID(((DERObjectIdentifier) (obj2)));
                        }
                    }
                }
                obj = new ECDomainParameters(((X9ECParameters) (obj)).getCurve(), ((X9ECParameters) (obj)).getG(), ((X9ECParameters) (obj)).getN(), ((X9ECParameters) (obj)).getH(), ((X9ECParameters) (obj)).getSeed());
            } else
            {
                obj = new X9ECParameters((ASN1Sequence)((X962Parameters) (obj)).getParameters());
                obj = new ECDomainParameters(((X9ECParameters) (obj)).getCurve(), ((X9ECParameters) (obj)).getG(), ((X9ECParameters) (obj)).getN(), ((X9ECParameters) (obj)).getH(), ((X9ECParameters) (obj)).getSeed());
            }
            subjectpublickeyinfo = new DEROctetString(subjectpublickeyinfo.getPublicKeyData().getBytes());
            return new ECPublicKeyParameters((new X9ECPoint(((ECDomainParameters) (obj)).getCurve(), subjectpublickeyinfo)).getPoint(), ((ECDomainParameters) (obj)));
        } else
        {
            throw new RuntimeException("algorithm identifier in key not recognised");
        }
    }

    public static AsymmetricKeyParameter createKey(byte abyte0[])
        throws IOException
    {
        return createKey(SubjectPublicKeyInfo.getInstance(ASN1Object.fromByteArray(abyte0)));
    }
}
