// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DERObject;

// Referenced classes of package org.bouncycastle.asn1.pkcs:
//            ContentInfo

public class AuthenticatedSafe extends ASN1Encodable
{

    ContentInfo info[];

    public AuthenticatedSafe(ASN1Sequence asn1sequence)
    {
        info = new ContentInfo[asn1sequence.size()];
        for (int i = 0; i != info.length; i++)
        {
            info[i] = ContentInfo.getInstance(asn1sequence.getObjectAt(i));
        }

    }

    public AuthenticatedSafe(ContentInfo acontentinfo[])
    {
        info = acontentinfo;
    }

    public ContentInfo[] getContentInfo()
    {
        return info;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (int i = 0; i != info.length; i++)
        {
            asn1encodablevector.add(info[i]);
        }

        return new BERSequence(asn1encodablevector);
    }
}
