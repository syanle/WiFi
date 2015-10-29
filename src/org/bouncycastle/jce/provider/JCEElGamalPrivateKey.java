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
import org.bouncycastle.asn1.oiw.ElGamalParameter;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.crypto.params.ElGamalParameters;
import org.bouncycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.bouncycastle.jce.interfaces.ElGamalPrivateKey;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.jce.spec.ElGamalParameterSpec;
import org.bouncycastle.jce.spec.ElGamalPrivateKeySpec;

// Referenced classes of package org.bouncycastle.jce.provider:
//            PKCS12BagAttributeCarrierImpl

public class JCEElGamalPrivateKey
    implements ElGamalPrivateKey, DHPrivateKey, PKCS12BagAttributeCarrier
{

    static final long serialVersionUID = 0x42e1c55fb6bcc04eL;
    private PKCS12BagAttributeCarrierImpl attrCarrier;
    ElGamalParameterSpec elSpec;
    BigInteger x;

    protected JCEElGamalPrivateKey()
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
    }

    JCEElGamalPrivateKey(DHPrivateKey dhprivatekey)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = dhprivatekey.getX();
        elSpec = new ElGamalParameterSpec(dhprivatekey.getParams().getP(), dhprivatekey.getParams().getG());
    }

    JCEElGamalPrivateKey(DHPrivateKeySpec dhprivatekeyspec)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = dhprivatekeyspec.getX();
        elSpec = new ElGamalParameterSpec(dhprivatekeyspec.getP(), dhprivatekeyspec.getG());
    }

    JCEElGamalPrivateKey(PrivateKeyInfo privatekeyinfo)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        ElGamalParameter elgamalparameter = new ElGamalParameter((ASN1Sequence)privatekeyinfo.getAlgorithmId().getParameters());
        x = ((DERInteger)privatekeyinfo.getPrivateKey()).getValue();
        elSpec = new ElGamalParameterSpec(elgamalparameter.getP(), elgamalparameter.getG());
    }

    JCEElGamalPrivateKey(ElGamalPrivateKeyParameters elgamalprivatekeyparameters)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = elgamalprivatekeyparameters.getX();
        elSpec = new ElGamalParameterSpec(elgamalprivatekeyparameters.getParameters().getP(), elgamalprivatekeyparameters.getParameters().getG());
    }

    JCEElGamalPrivateKey(ElGamalPrivateKey elgamalprivatekey)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = elgamalprivatekey.getX();
        elSpec = elgamalprivatekey.getParameters();
    }

    JCEElGamalPrivateKey(ElGamalPrivateKeySpec elgamalprivatekeyspec)
    {
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        x = elgamalprivatekeyspec.getX();
        elSpec = new ElGamalParameterSpec(elgamalprivatekeyspec.getParams().getP(), elgamalprivatekeyspec.getParams().getG());
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        x = (BigInteger)objectinputstream.readObject();
        elSpec = new ElGamalParameterSpec((BigInteger)objectinputstream.readObject(), (BigInteger)objectinputstream.readObject());
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeObject(getX());
        objectoutputstream.writeObject(elSpec.getP());
        objectoutputstream.writeObject(elSpec.getG());
    }

    public String getAlgorithm()
    {
        return "ElGamal";
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
        return (new PrivateKeyInfo(new AlgorithmIdentifier(OIWObjectIdentifiers.elGamalAlgorithm, (new ElGamalParameter(elSpec.getP(), elSpec.getG())).getDERObject()), new DERInteger(getX()))).getDEREncoded();
    }

    public String getFormat()
    {
        return "PKCS#8";
    }

    public ElGamalParameterSpec getParameters()
    {
        return elSpec;
    }

    public DHParameterSpec getParams()
    {
        return new DHParameterSpec(elSpec.getP(), elSpec.getG());
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
