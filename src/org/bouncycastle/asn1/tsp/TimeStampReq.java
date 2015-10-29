// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.tsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBoolean;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.X509Extensions;

// Referenced classes of package org.bouncycastle.asn1.tsp:
//            MessageImprint

public class TimeStampReq extends ASN1Encodable
{

    DERBoolean certReq;
    X509Extensions extensions;
    MessageImprint messageImprint;
    DERInteger nonce;
    DERObjectIdentifier tsaPolicy;
    DERInteger version;

    public TimeStampReq(ASN1Sequence asn1sequence)
    {
        int j = asn1sequence.size();
        version = DERInteger.getInstance(asn1sequence.getObjectAt(0));
        messageImprint = MessageImprint.getInstance(asn1sequence.getObjectAt(1));
        int i = 2;
        while (i < j) 
        {
            if (asn1sequence.getObjectAt(i) instanceof DERObjectIdentifier)
            {
                tsaPolicy = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(i));
            } else
            if (asn1sequence.getObjectAt(i) instanceof DERInteger)
            {
                nonce = DERInteger.getInstance(asn1sequence.getObjectAt(i));
            } else
            if (asn1sequence.getObjectAt(i) instanceof DERBoolean)
            {
                certReq = DERBoolean.getInstance(asn1sequence.getObjectAt(i));
            } else
            if (asn1sequence.getObjectAt(i) instanceof ASN1TaggedObject)
            {
                ASN1TaggedObject asn1taggedobject = (ASN1TaggedObject)asn1sequence.getObjectAt(i);
                if (asn1taggedobject.getTagNo() == 0)
                {
                    extensions = X509Extensions.getInstance(asn1taggedobject, false);
                }
            }
            i++;
        }
    }

    public TimeStampReq(MessageImprint messageimprint, DERObjectIdentifier derobjectidentifier, DERInteger derinteger, DERBoolean derboolean, X509Extensions x509extensions)
    {
        version = new DERInteger(1);
        messageImprint = messageimprint;
        tsaPolicy = derobjectidentifier;
        nonce = derinteger;
        certReq = derboolean;
        extensions = x509extensions;
    }

    public static TimeStampReq getInstance(Object obj)
    {
        if (obj == null || (obj instanceof TimeStampReq))
        {
            return (TimeStampReq)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new TimeStampReq((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown object in 'TimeStampReq' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public DERBoolean getCertReq()
    {
        return certReq;
    }

    public X509Extensions getExtensions()
    {
        return extensions;
    }

    public MessageImprint getMessageImprint()
    {
        return messageImprint;
    }

    public DERInteger getNonce()
    {
        return nonce;
    }

    public DERObjectIdentifier getReqPolicy()
    {
        return tsaPolicy;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        asn1encodablevector.add(messageImprint);
        if (tsaPolicy != null)
        {
            asn1encodablevector.add(tsaPolicy);
        }
        if (nonce != null)
        {
            asn1encodablevector.add(nonce);
        }
        if (certReq != null && certReq.isTrue())
        {
            asn1encodablevector.add(certReq);
        }
        if (extensions != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, extensions));
        }
        return new DERSequence(asn1encodablevector);
    }
}
