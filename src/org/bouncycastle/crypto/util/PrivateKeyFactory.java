// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.util;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTNamedCurves;
import org.bouncycastle.asn1.oiw.ElGamalParameter;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.DHParameter;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.RSAPrivateKeyStructure;
import org.bouncycastle.asn1.sec.ECPrivateKeyStructure;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DSAParameter;
import org.bouncycastle.asn1.x9.X962NamedCurves;
import org.bouncycastle.asn1.x9.X962Parameters;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPrivateKeyParameters;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.DSAPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ElGamalParameters;
import org.bouncycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;

public class PrivateKeyFactory
{

    public PrivateKeyFactory()
    {
    }

    public static AsymmetricKeyParameter createKey(InputStream inputstream)
        throws IOException
    {
        return createKey(PrivateKeyInfo.getInstance((new ASN1InputStream(inputstream)).readObject()));
    }

    public static AsymmetricKeyParameter createKey(PrivateKeyInfo privatekeyinfo)
        throws IOException
    {
        Object obj = privatekeyinfo.getAlgorithmId();
        if (((AlgorithmIdentifier) (obj)).getAlgorithm().equals(PKCSObjectIdentifiers.rsaEncryption))
        {
            privatekeyinfo = new RSAPrivateKeyStructure((ASN1Sequence)privatekeyinfo.getPrivateKey());
            return new RSAPrivateCrtKeyParameters(privatekeyinfo.getModulus(), privatekeyinfo.getPublicExponent(), privatekeyinfo.getPrivateExponent(), privatekeyinfo.getPrime1(), privatekeyinfo.getPrime2(), privatekeyinfo.getExponent1(), privatekeyinfo.getExponent2(), privatekeyinfo.getCoefficient());
        }
        if (((AlgorithmIdentifier) (obj)).getObjectId().equals(PKCSObjectIdentifiers.dhKeyAgreement))
        {
            obj = new DHParameter((ASN1Sequence)privatekeyinfo.getAlgorithmId().getParameters());
            privatekeyinfo = (DERInteger)privatekeyinfo.getPrivateKey();
            BigInteger biginteger = ((DHParameter) (obj)).getL();
            int i;
            if (biginteger == null)
            {
                i = 0;
            } else
            {
                i = biginteger.intValue();
            }
            obj = new DHParameters(((DHParameter) (obj)).getP(), ((DHParameter) (obj)).getG(), null, i);
            return new DHPrivateKeyParameters(privatekeyinfo.getValue(), ((DHParameters) (obj)));
        }
        if (((AlgorithmIdentifier) (obj)).getObjectId().equals(OIWObjectIdentifiers.elGamalAlgorithm))
        {
            obj = new ElGamalParameter((ASN1Sequence)privatekeyinfo.getAlgorithmId().getParameters());
            return new ElGamalPrivateKeyParameters(((DERInteger)privatekeyinfo.getPrivateKey()).getValue(), new ElGamalParameters(((ElGamalParameter) (obj)).getP(), ((ElGamalParameter) (obj)).getG()));
        }
        if (((AlgorithmIdentifier) (obj)).getObjectId().equals(X9ObjectIdentifiers.id_dsa))
        {
            obj = (DERInteger)privatekeyinfo.getPrivateKey();
            privatekeyinfo = privatekeyinfo.getAlgorithmId().getParameters();
            X9ECParameters x9ecparameters;
            DERObjectIdentifier derobjectidentifier;
            if (privatekeyinfo != null)
            {
                privatekeyinfo = DSAParameter.getInstance(privatekeyinfo.getDERObject());
                privatekeyinfo = new DSAParameters(privatekeyinfo.getP(), privatekeyinfo.getQ(), privatekeyinfo.getG());
            } else
            {
                privatekeyinfo = null;
            }
            return new DSAPrivateKeyParameters(((DERInteger) (obj)).getValue(), privatekeyinfo);
        }
        if (((AlgorithmIdentifier) (obj)).getObjectId().equals(X9ObjectIdentifiers.id_ecPublicKey))
        {
            obj = new X962Parameters((DERObject)privatekeyinfo.getAlgorithmId().getParameters());
            if (((X962Parameters) (obj)).isNamedCurve())
            {
                derobjectidentifier = (DERObjectIdentifier)((X962Parameters) (obj)).getParameters();
                x9ecparameters = X962NamedCurves.getByOID(derobjectidentifier);
                obj = x9ecparameters;
                if (x9ecparameters == null)
                {
                    x9ecparameters = SECNamedCurves.getByOID(derobjectidentifier);
                    obj = x9ecparameters;
                    if (x9ecparameters == null)
                    {
                        x9ecparameters = NISTNamedCurves.getByOID(derobjectidentifier);
                        obj = x9ecparameters;
                        if (x9ecparameters == null)
                        {
                            obj = TeleTrusTNamedCurves.getByOID(derobjectidentifier);
                        }
                    }
                }
                obj = new ECDomainParameters(((X9ECParameters) (obj)).getCurve(), ((X9ECParameters) (obj)).getG(), ((X9ECParameters) (obj)).getN(), ((X9ECParameters) (obj)).getH(), ((X9ECParameters) (obj)).getSeed());
            } else
            {
                obj = new X9ECParameters((ASN1Sequence)((X962Parameters) (obj)).getParameters());
                obj = new ECDomainParameters(((X9ECParameters) (obj)).getCurve(), ((X9ECParameters) (obj)).getG(), ((X9ECParameters) (obj)).getN(), ((X9ECParameters) (obj)).getH(), ((X9ECParameters) (obj)).getSeed());
            }
            return new ECPrivateKeyParameters((new ECPrivateKeyStructure((ASN1Sequence)privatekeyinfo.getPrivateKey())).getKey(), ((ECDomainParameters) (obj)));
        } else
        {
            throw new RuntimeException("algorithm identifier in key not recognised");
        }
    }

    public static AsymmetricKeyParameter createKey(byte abyte0[])
        throws IOException
    {
        return createKey(PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(abyte0)));
    }
}
