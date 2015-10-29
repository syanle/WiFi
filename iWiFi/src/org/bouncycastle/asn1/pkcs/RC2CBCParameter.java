// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;

public class RC2CBCParameter extends ASN1Encodable
{

    ASN1OctetString iv;
    DERInteger version;

    public RC2CBCParameter(int i, byte abyte0[])
    {
        version = new DERInteger(i);
        iv = new DEROctetString(abyte0);
    }

    public RC2CBCParameter(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() == 1)
        {
            version = null;
            iv = (ASN1OctetString)asn1sequence.getObjectAt(0);
            return;
        } else
        {
            version = (DERInteger)asn1sequence.getObjectAt(0);
            iv = (ASN1OctetString)asn1sequence.getObjectAt(1);
            return;
        }
    }

    public RC2CBCParameter(byte abyte0[])
    {
        version = null;
        iv = new DEROctetString(abyte0);
    }

    public static RC2CBCParameter getInstance(Object obj)
    {
        if (obj instanceof ASN1Sequence)
        {
            return new RC2CBCParameter((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException("unknown object in RC2CBCParameter factory");
        }
    }

    public byte[] getIV()
    {
        return iv.getOctets();
    }

    public BigInteger getRC2ParameterVersion()
    {
        if (version == null)
        {
            return null;
        } else
        {
            return version.getValue();
        }
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (version != null)
        {
            asn1encodablevector.add(version);
        }
        asn1encodablevector.add(iv);
        return new DERSequence(asn1encodablevector);
    }
}
