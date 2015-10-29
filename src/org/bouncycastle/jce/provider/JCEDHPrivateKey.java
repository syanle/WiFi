// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.pkcs.DHParameter;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x9.DHDomainParameters;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPrivateKeyParameters;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

// Referenced classes of package org.bouncycastle.jce.provider:
//            PKCS12BagAttributeCarrierImpl

public class JCEDHPrivateKey
    implements DHPrivateKey, PKCS12BagAttributeCarrier
{

    static final long serialVersionUID = 0x4511a58411962b4L;
    private PKCS12BagAttributeCarrier attrCarrier;
    private DHParameterSpec dhSpec;
    private PrivateKeyInfo info;
    BigInteger x;

    protected JCEDHPrivateKey()
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
    }

    JCEDHPrivateKey(DHPrivateKey dhprivatekey)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = dhprivatekey.getX();
        dhSpec = dhprivatekey.getParams();
    }

    JCEDHPrivateKey(DHPrivateKeySpec dhprivatekeyspec)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = dhprivatekeyspec.getX();
        dhSpec = new DHParameterSpec(dhprivatekeyspec.getP(), dhprivatekeyspec.getG());
    }

    JCEDHPrivateKey(PrivateKeyInfo privatekeyinfo)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        ASN1Sequence asn1sequence = ASN1Sequence.getInstance(privatekeyinfo.getAlgorithmId().getParameters());
        DERInteger derinteger = (DERInteger)privatekeyinfo.getPrivateKey();
        DERObjectIdentifier derobjectidentifier = privatekeyinfo.getAlgorithmId().getObjectId();
        info = privatekeyinfo;
        x = derinteger.getValue();
        if (derobjectidentifier.equals(PKCSObjectIdentifiers.dhKeyAgreement))
        {
            privatekeyinfo = new DHParameter(asn1sequence);
            if (privatekeyinfo.getL() != null)
            {
                dhSpec = new DHParameterSpec(privatekeyinfo.getP(), privatekeyinfo.getG(), privatekeyinfo.getL().intValue());
                return;
            } else
            {
                dhSpec = new DHParameterSpec(privatekeyinfo.getP(), privatekeyinfo.getG());
                return;
            }
        }
        if (derobjectidentifier.equals(X9ObjectIdentifiers.dhpublicnumber))
        {
            privatekeyinfo = DHDomainParameters.getInstance(asn1sequence);
            dhSpec = new DHParameterSpec(privatekeyinfo.getP().getValue(), privatekeyinfo.getG().getValue());
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown algorithm type: ").append(derobjectidentifier).toString());
        }
    }

    JCEDHPrivateKey(DHPrivateKeyParameters dhprivatekeyparameters)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = dhprivatekeyparameters.getX();
        dhSpec = new DHParameterSpec(dhprivatekeyparameters.getParameters().getP(), dhprivatekeyparameters.getParameters().getG(), dhprivatekeyparameters.getParameters().getL());
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        x = (BigInteger)objectinputstream.readObject();
        dhSpec = new DHParameterSpec((BigInteger)objectinputstream.readObject(), (BigInteger)objectinputstream.readObject(), objectinputstream.readInt());
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeObject(getX());
        objectoutputstream.writeObject(dhSpec.getP());
        objectoutputstream.writeObject(dhSpec.getG());
        objectoutputstream.writeInt(dhSpec.getL());
    }

    public String getAlgorithm()
    {
        return "DH";
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
        if (info != null)
        {
            return info.getDEREncoded();
        } else
        {
            return (new PrivateKeyInfo(new AlgorithmIdentifier(PKCSObjectIdentifiers.dhKeyAgreement, (new DHParameter(dhSpec.getP(), dhSpec.getG(), dhSpec.getL())).getDERObject()), new DERInteger(getX()))).getDEREncoded();
        }
    }

    public String getFormat()
    {
        return "PKCS#8";
    }

    public DHParameterSpec getParams()
    {
        return dhSpec;
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
