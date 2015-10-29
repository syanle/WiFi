// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class PrivateKeyInfo extends ASN1Encodable
{

    private AlgorithmIdentifier algId;
    private ASN1Set attributes;
    private DERObject privKey;

    public PrivateKeyInfo(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        if (((DERInteger)asn1sequence.nextElement()).getValue().intValue() != 0)
        {
            throw new IllegalArgumentException("wrong version for private key info");
        }
        algId = new AlgorithmIdentifier((ASN1Sequence)asn1sequence.nextElement());
        try
        {
            privKey = (new ASN1InputStream(((ASN1OctetString)asn1sequence.nextElement()).getOctets())).readObject();
        }
        // Misplaced declaration of an exception variable
        catch (ASN1Sequence asn1sequence)
        {
            throw new IllegalArgumentException("Error recoverying private key from sequence");
        }
        if (asn1sequence.hasMoreElements())
        {
            attributes = ASN1Set.getInstance((ASN1TaggedObject)asn1sequence.nextElement(), false);
        }
    }

    public PrivateKeyInfo(AlgorithmIdentifier algorithmidentifier, DERObject derobject)
    {
        this(algorithmidentifier, derobject, null);
    }

    public PrivateKeyInfo(AlgorithmIdentifier algorithmidentifier, DERObject derobject, ASN1Set asn1set)
    {
        privKey = derobject;
        algId = algorithmidentifier;
        attributes = asn1set;
    }

    public static PrivateKeyInfo getInstance(Object obj)
    {
        if (obj instanceof PrivateKeyInfo)
        {
            return (PrivateKeyInfo)obj;
        }
        if (obj != null)
        {
            return new PrivateKeyInfo(ASN1Sequence.getInstance(obj));
        } else
        {
            return null;
        }
    }

    public static PrivateKeyInfo getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public AlgorithmIdentifier getAlgorithmId()
    {
        return algId;
    }

    public ASN1Set getAttributes()
    {
        return attributes;
    }

    public DERObject getPrivateKey()
    {
        return privKey;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(new DERInteger(0));
        asn1encodablevector.add(algId);
        asn1encodablevector.add(new DEROctetString(privKey));
        if (attributes != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, attributes));
        }
        return new DERSequence(asn1encodablevector);
    }
}
