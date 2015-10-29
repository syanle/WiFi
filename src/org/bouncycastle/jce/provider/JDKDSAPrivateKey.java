// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPrivateKeySpec;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DSAParameter;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.DSAPrivateKeyParameters;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

// Referenced classes of package org.bouncycastle.jce.provider:
//            PKCS12BagAttributeCarrierImpl

public class JDKDSAPrivateKey
    implements DSAPrivateKey, PKCS12BagAttributeCarrier
{

    private static final long serialVersionUID = 0xbf170939253dadbaL;
    private PKCS12BagAttributeCarrierImpl attrCarrier;
    DSAParams dsaSpec;
    BigInteger x;

    protected JDKDSAPrivateKey()
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
    }

    JDKDSAPrivateKey(DSAPrivateKey dsaprivatekey)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = dsaprivatekey.getX();
        dsaSpec = dsaprivatekey.getParams();
    }

    JDKDSAPrivateKey(DSAPrivateKeySpec dsaprivatekeyspec)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = dsaprivatekeyspec.getX();
        dsaSpec = new DSAParameterSpec(dsaprivatekeyspec.getP(), dsaprivatekeyspec.getQ(), dsaprivatekeyspec.getG());
    }

    JDKDSAPrivateKey(PrivateKeyInfo privatekeyinfo)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        DSAParameter dsaparameter = new DSAParameter((ASN1Sequence)privatekeyinfo.getAlgorithmId().getParameters());
        x = ((DERInteger)privatekeyinfo.getPrivateKey()).getValue();
        dsaSpec = new DSAParameterSpec(dsaparameter.getP(), dsaparameter.getQ(), dsaparameter.getG());
    }

    JDKDSAPrivateKey(DSAPrivateKeyParameters dsaprivatekeyparameters)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = dsaprivatekeyparameters.getX();
        dsaSpec = new DSAParameterSpec(dsaprivatekeyparameters.getParameters().getP(), dsaprivatekeyparameters.getParameters().getQ(), dsaprivatekeyparameters.getParameters().getG());
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        x = (BigInteger)objectinputstream.readObject();
        dsaSpec = new DSAParameterSpec((BigInteger)objectinputstream.readObject(), (BigInteger)objectinputstream.readObject(), (BigInteger)objectinputstream.readObject());
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        attrCarrier.readObject(objectinputstream);
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeObject(x);
        objectoutputstream.writeObject(dsaSpec.getP());
        objectoutputstream.writeObject(dsaSpec.getQ());
        objectoutputstream.writeObject(dsaSpec.getG());
        attrCarrier.writeObject(objectoutputstream);
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof DSAPrivateKey)
        {
            if (getX().equals(((DSAPrivateKey) (obj = (DSAPrivateKey)obj)).getX()) && getParams().getG().equals(((DSAPrivateKey) (obj)).getParams().getG()) && getParams().getP().equals(((DSAPrivateKey) (obj)).getParams().getP()) && getParams().getQ().equals(((DSAPrivateKey) (obj)).getParams().getQ()))
            {
                return true;
            }
        }
        return false;
    }

    public String getAlgorithm()
    {
        return "DSA";
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
        return (new PrivateKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.id_dsa, (new DSAParameter(dsaSpec.getP(), dsaSpec.getQ(), dsaSpec.getG())).getDERObject()), new DERInteger(getX()))).getDEREncoded();
    }

    public String getFormat()
    {
        return "PKCS#8";
    }

    public DSAParams getParams()
    {
        return dsaSpec;
    }

    public BigInteger getX()
    {
        return x;
    }

    public int hashCode()
    {
        return getX().hashCode() ^ getParams().getG().hashCode() ^ getParams().getP().hashCode() ^ getParams().getQ().hashCode();
    }

    public void setBagAttribute(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        attrCarrier.setBagAttribute(derobjectidentifier, derencodable);
    }
}
