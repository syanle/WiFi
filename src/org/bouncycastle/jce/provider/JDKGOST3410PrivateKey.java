// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.bouncycastle.jce.interfaces.GOST3410Params;
import org.bouncycastle.jce.interfaces.GOST3410PrivateKey;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.jce.spec.GOST3410ParameterSpec;
import org.bouncycastle.jce.spec.GOST3410PrivateKeySpec;
import org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

// Referenced classes of package org.bouncycastle.jce.provider:
//            PKCS12BagAttributeCarrierImpl

public class JDKGOST3410PrivateKey
    implements GOST3410PrivateKey, PKCS12BagAttributeCarrier
{

    private PKCS12BagAttributeCarrier attrCarrier;
    GOST3410Params gost3410Spec;
    BigInteger x;

    protected JDKGOST3410PrivateKey()
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
    }

    JDKGOST3410PrivateKey(PrivateKeyInfo privatekeyinfo)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        GOST3410PublicKeyAlgParameters gost3410publickeyalgparameters = new GOST3410PublicKeyAlgParameters((ASN1Sequence)privatekeyinfo.getAlgorithmId().getParameters());
        privatekeyinfo = ((DEROctetString)privatekeyinfo.getPrivateKey()).getOctets();
        byte abyte0[] = new byte[privatekeyinfo.length];
        for (int i = 0; i != privatekeyinfo.length; i++)
        {
            abyte0[i] = privatekeyinfo[privatekeyinfo.length - 1 - i];
        }

        x = new BigInteger(1, abyte0);
        gost3410Spec = GOST3410ParameterSpec.fromPublicKeyAlg(gost3410publickeyalgparameters);
    }

    JDKGOST3410PrivateKey(GOST3410PrivateKeyParameters gost3410privatekeyparameters, GOST3410ParameterSpec gost3410parameterspec)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = gost3410privatekeyparameters.getX();
        gost3410Spec = gost3410parameterspec;
        if (gost3410parameterspec == null)
        {
            throw new IllegalArgumentException("spec is null");
        } else
        {
            return;
        }
    }

    JDKGOST3410PrivateKey(GOST3410PrivateKey gost3410privatekey)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = gost3410privatekey.getX();
        gost3410Spec = gost3410privatekey.getParameters();
    }

    JDKGOST3410PrivateKey(GOST3410PrivateKeySpec gost3410privatekeyspec)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = gost3410privatekeyspec.getX();
        gost3410Spec = new GOST3410ParameterSpec(new GOST3410PublicKeyParameterSetSpec(gost3410privatekeyspec.getP(), gost3410privatekeyspec.getQ(), gost3410privatekeyspec.getA()));
    }

    public String getAlgorithm()
    {
        return "GOST3410";
    }

    public DEREncodable getBagAttribute(DERObjectIdentifier derobjectidentifier)
    {
        return attrCarrier.getBagAttribute(derobjectidentifier);
    }

    public Enumeration getBagAttributeKeys()
    {
        return attrCarrier.getBagAttributeKeys();
    }

    public byte[] getEncoded()
    {
        int i = 0;
        byte abyte0[] = getX().toByteArray();
        Object obj;
        if (abyte0[0] == 0)
        {
            obj = new byte[abyte0.length - 1];
        } else
        {
            obj = new byte[abyte0.length];
        }
        for (; i != obj.length; i++)
        {
            obj[i] = abyte0[abyte0.length - 1 - i];
        }

        if (gost3410Spec instanceof GOST3410ParameterSpec)
        {
            obj = new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.gostR3410_94, (new GOST3410PublicKeyAlgParameters(new DERObjectIdentifier(gost3410Spec.getPublicKeyParamSetOID()), new DERObjectIdentifier(gost3410Spec.getDigestParamSetOID()))).getDERObject()), new DEROctetString(((byte []) (obj))));
        } else
        {
            obj = new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.gostR3410_94), new DEROctetString(((byte []) (obj))));
        }
        return ((PrivateKeyInfo) (obj)).getDEREncoded();
    }

    public String getFormat()
    {
        return "PKCS#8";
    }

    public GOST3410Params getParameters()
    {
        return gost3410Spec;
    }

    public BigInteger getX()
    {
        return x;
    }

    public void setBagAttribute(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        attrCarrier.setBagAttribute(derobjectidentifier, derencodable);
    }
}
