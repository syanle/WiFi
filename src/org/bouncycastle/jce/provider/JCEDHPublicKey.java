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
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.pkcs.DHParameter;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x9.DHDomainParameters;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;

public class JCEDHPublicKey
    implements DHPublicKey
{

    static final long serialVersionUID = 0xfcfe28290f23e4fcL;
    private DHParameterSpec dhSpec;
    private SubjectPublicKeyInfo info;
    private BigInteger y;

    JCEDHPublicKey(BigInteger biginteger, DHParameterSpec dhparameterspec)
    {
        y = biginteger;
        dhSpec = dhparameterspec;
    }

    JCEDHPublicKey(DHPublicKey dhpublickey)
    {
        y = dhpublickey.getY();
        dhSpec = dhpublickey.getParams();
    }

    JCEDHPublicKey(DHPublicKeySpec dhpublickeyspec)
    {
        y = dhpublickeyspec.getY();
        dhSpec = new DHParameterSpec(dhpublickeyspec.getP(), dhpublickeyspec.getG());
    }

    JCEDHPublicKey(SubjectPublicKeyInfo subjectpublickeyinfo)
    {
        info = subjectpublickeyinfo;
        Object obj;
        try
        {
            obj = (DERInteger)subjectpublickeyinfo.getPublicKey();
        }
        // Misplaced declaration of an exception variable
        catch (SubjectPublicKeyInfo subjectpublickeyinfo)
        {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
        y = ((DERInteger) (obj)).getValue();
        obj = ASN1Sequence.getInstance(subjectpublickeyinfo.getAlgorithmId().getParameters());
        subjectpublickeyinfo = subjectpublickeyinfo.getAlgorithmId().getObjectId();
        if (subjectpublickeyinfo.equals(PKCSObjectIdentifiers.dhKeyAgreement) || isPKCSParam(((ASN1Sequence) (obj))))
        {
            subjectpublickeyinfo = new DHParameter(((ASN1Sequence) (obj)));
            if (subjectpublickeyinfo.getL() != null)
            {
                dhSpec = new DHParameterSpec(subjectpublickeyinfo.getP(), subjectpublickeyinfo.getG(), subjectpublickeyinfo.getL().intValue());
                return;
            } else
            {
                dhSpec = new DHParameterSpec(subjectpublickeyinfo.getP(), subjectpublickeyinfo.getG());
                return;
            }
        }
        if (subjectpublickeyinfo.equals(X9ObjectIdentifiers.dhpublicnumber))
        {
            subjectpublickeyinfo = DHDomainParameters.getInstance(obj);
            dhSpec = new DHParameterSpec(subjectpublickeyinfo.getP().getValue(), subjectpublickeyinfo.getG().getValue());
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown algorithm type: ").append(subjectpublickeyinfo).toString());
        }
    }

    JCEDHPublicKey(DHPublicKeyParameters dhpublickeyparameters)
    {
        y = dhpublickeyparameters.getY();
        dhSpec = new DHParameterSpec(dhpublickeyparameters.getParameters().getP(), dhpublickeyparameters.getParameters().getG(), dhpublickeyparameters.getParameters().getL());
    }

    private boolean isPKCSParam(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() != 2)
        {
            if (asn1sequence.size() > 3)
            {
                return false;
            }
            DERInteger derinteger = DERInteger.getInstance(asn1sequence.getObjectAt(2));
            asn1sequence = DERInteger.getInstance(asn1sequence.getObjectAt(0));
            if (derinteger.getValue().compareTo(BigInteger.valueOf(asn1sequence.getValue().bitLength())) > 0)
            {
                return false;
            }
        }
        return true;
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        y = (BigInteger)objectinputstream.readObject();
        dhSpec = new DHParameterSpec((BigInteger)objectinputstream.readObject(), (BigInteger)objectinputstream.readObject(), objectinputstream.readInt());
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeObject(getY());
        objectoutputstream.writeObject(dhSpec.getP());
        objectoutputstream.writeObject(dhSpec.getG());
        objectoutputstream.writeInt(dhSpec.getL());
    }

    public String getAlgorithm()
    {
        return "DH";
    }

    public byte[] getEncoded()
    {
        if (info != null)
        {
            return info.getDEREncoded();
        } else
        {
            return (new SubjectPublicKeyInfo(new AlgorithmIdentifier(PKCSObjectIdentifiers.dhKeyAgreement, (new DHParameter(dhSpec.getP(), dhSpec.getG(), dhSpec.getL())).getDERObject()), new DERInteger(y))).getDEREncoded();
        }
    }

    public String getFormat()
    {
        return "X.509";
    }

    public DHParameterSpec getParams()
    {
        return dhSpec;
    }

    public BigInteger getY()
    {
        return y;
    }
}
