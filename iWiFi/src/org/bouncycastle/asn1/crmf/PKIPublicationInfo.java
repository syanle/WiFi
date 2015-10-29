// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.crmf:
//            SinglePubInfo

public class PKIPublicationInfo extends ASN1Encodable
{

    private DERInteger action;
    private ASN1Sequence pubInfos;

    private PKIPublicationInfo(ASN1Sequence asn1sequence)
    {
        action = DERInteger.getInstance(asn1sequence.getObjectAt(0));
        pubInfos = ASN1Sequence.getInstance(asn1sequence.getObjectAt(1));
    }

    public static PKIPublicationInfo getInstance(Object obj)
    {
        if (obj instanceof PKIPublicationInfo)
        {
            return (PKIPublicationInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PKIPublicationInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERInteger getAction()
    {
        return action;
    }

    public SinglePubInfo[] getPubInfos()
    {
        if (pubInfos == null)
        {
            return null;
        }
        SinglePubInfo asinglepubinfo[] = new SinglePubInfo[pubInfos.size()];
        for (int i = 0; i != asinglepubinfo.length; i++)
        {
            asinglepubinfo[i] = SinglePubInfo.getInstance(pubInfos.getObjectAt(i));
        }

        return asinglepubinfo;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(action);
        asn1encodablevector.add(pubInfos);
        return new DERSequence(asn1encodablevector);
    }
}
