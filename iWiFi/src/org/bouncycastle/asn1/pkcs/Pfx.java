// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;

// Referenced classes of package org.bouncycastle.asn1.pkcs:
//            PKCSObjectIdentifiers, ContentInfo, MacData

public class Pfx extends ASN1Encodable
    implements PKCSObjectIdentifiers
{

    private ContentInfo contentInfo;
    private MacData macData;

    public Pfx(ASN1Sequence asn1sequence)
    {
        macData = null;
        if (((DERInteger)asn1sequence.getObjectAt(0)).getValue().intValue() != 3)
        {
            throw new IllegalArgumentException("wrong version for PFX PDU");
        }
        contentInfo = ContentInfo.getInstance(asn1sequence.getObjectAt(1));
        if (asn1sequence.size() == 3)
        {
            macData = MacData.getInstance(asn1sequence.getObjectAt(2));
        }
    }

    public Pfx(ContentInfo contentinfo, MacData macdata)
    {
        macData = null;
        contentInfo = contentinfo;
        macData = macdata;
    }

    public ContentInfo getAuthSafe()
    {
        return contentInfo;
    }

    public MacData getMacData()
    {
        return macData;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(new DERInteger(3));
        asn1encodablevector.add(contentInfo);
        if (macData != null)
        {
            asn1encodablevector.add(macData);
        }
        return new BERSequence(asn1encodablevector);
    }
}
