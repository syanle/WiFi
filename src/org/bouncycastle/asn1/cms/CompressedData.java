// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            ContentInfo

public class CompressedData extends ASN1Encodable
{

    private AlgorithmIdentifier compressionAlgorithm;
    private ContentInfo encapContentInfo;
    private DERInteger version;

    public CompressedData(ASN1Sequence asn1sequence)
    {
        version = (DERInteger)asn1sequence.getObjectAt(0);
        compressionAlgorithm = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(1));
        encapContentInfo = ContentInfo.getInstance(asn1sequence.getObjectAt(2));
    }

    public CompressedData(AlgorithmIdentifier algorithmidentifier, ContentInfo contentinfo)
    {
        version = new DERInteger(0);
        compressionAlgorithm = algorithmidentifier;
        encapContentInfo = contentinfo;
    }

    public static CompressedData getInstance(Object obj)
    {
        if (obj == null || (obj instanceof CompressedData))
        {
            return (CompressedData)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CompressedData((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid CompressedData: ").append(obj.getClass().getName()).toString());
        }
    }

    public static CompressedData getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public AlgorithmIdentifier getCompressionAlgorithmIdentifier()
    {
        return compressionAlgorithm;
    }

    public ContentInfo getEncapContentInfo()
    {
        return encapContentInfo;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        asn1encodablevector.add(compressionAlgorithm);
        asn1encodablevector.add(encapContentInfo);
        return new BERSequence(asn1encodablevector);
    }
}
