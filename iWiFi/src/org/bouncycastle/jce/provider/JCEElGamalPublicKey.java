// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.oiw.ElGamalParameter;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.crypto.params.ElGamalParameters;
import org.bouncycastle.crypto.params.ElGamalPublicKeyParameters;
import org.bouncycastle.jce.interfaces.ElGamalPublicKey;
import org.bouncycastle.jce.spec.ElGamalParameterSpec;
import org.bouncycastle.jce.spec.ElGamalPublicKeySpec;

public class JCEElGamalPublicKey
    implements ElGamalPublicKey, DHPublicKey
{

    static final long serialVersionUID = 0x78e9d455552c6634L;
    private ElGamalParameterSpec elSpec;
    private BigInteger y;

    JCEElGamalPublicKey(BigInteger biginteger, ElGamalParameterSpec elgamalparameterspec)
    {
        y = biginteger;
        elSpec = elgamalparameterspec;
    }

    JCEElGamalPublicKey(DHPublicKey dhpublickey)
    {
        y = dhpublickey.getY();
        elSpec = new ElGamalParameterSpec(dhpublickey.getParams().getP(), dhpublickey.getParams().getG());
    }

    JCEElGamalPublicKey(DHPublicKeySpec dhpublickeyspec)
    {
        y = dhpublickeyspec.getY();
        elSpec = new ElGamalParameterSpec(dhpublickeyspec.getP(), dhpublickeyspec.getG());
    }

    JCEElGamalPublicKey(SubjectPublicKeyInfo subjectpublickeyinfo)
    {
        ElGamalParameter elgamalparameter = new ElGamalParameter((ASN1Sequence)subjectpublickeyinfo.getAlgorithmId().getParameters());
        try
        {
            subjectpublickeyinfo = (DERInteger)subjectpublickeyinfo.getPublicKey();
        }
        // Misplaced declaration of an exception variable
        catch (SubjectPublicKeyInfo subjectpublickeyinfo)
        {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
        y = subjectpublickeyinfo.getValue();
        elSpec = new ElGamalParameterSpec(elgamalparameter.getP(), elgamalparameter.getG());
    }

    JCEElGamalPublicKey(ElGamalPublicKeyParameters elgamalpublickeyparameters)
    {
        y = elgamalpublickeyparameters.getY();
        elSpec = new ElGamalParameterSpec(elgamalpublickeyparameters.getParameters().getP(), elgamalpublickeyparameters.getParameters().getG());
    }

    JCEElGamalPublicKey(ElGamalPublicKey elgamalpublickey)
    {
        y = elgamalpublickey.getY();
        elSpec = elgamalpublickey.getParameters();
    }

    JCEElGamalPublicKey(ElGamalPublicKeySpec elgamalpublickeyspec)
    {
        y = elgamalpublickeyspec.getY();
        elSpec = new ElGamalParameterSpec(elgamalpublickeyspec.getParams().getP(), elgamalpublickeyspec.getParams().getG());
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        y = (BigInteger)objectinputstream.readObject();
        elSpec = new ElGamalParameterSpec((BigInteger)objectinputstream.readObject(), (BigInteger)objectinputstream.readObject());
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeObject(getY());
        objectoutputstream.writeObject(elSpec.getP());
        objectoutputstream.writeObject(elSpec.getG());
    }

    public String getAlgorithm()
    {
        return "ElGamal";
    }

    public byte[] getEncoded()
    {
        return (new SubjectPublicKeyInfo(new AlgorithmIdentifier(OIWObjectIdentifiers.elGamalAlgorithm, (new ElGamalParameter(elSpec.getP(), elSpec.getG())).getDERObject()), new DERInteger(y))).getDEREncoded();
    }

    public String getFormat()
    {
        return "X.509";
    }

    public ElGamalParameterSpec getParameters()
    {
        return elSpec;
    }

    public DHParameterSpec getParams()
    {
        return new DHParameterSpec(elSpec.getP(), elSpec.getG());
    }

    public BigInteger getY()
    {
        return y;
    }
}
