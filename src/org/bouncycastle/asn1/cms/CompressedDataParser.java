// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            ContentInfoParser

public class CompressedDataParser
{

    private AlgorithmIdentifier _compressionAlgorithm;
    private ContentInfoParser _encapContentInfo;
    private DERInteger _version;

    public CompressedDataParser(ASN1SequenceParser asn1sequenceparser)
        throws IOException
    {
        _version = (DERInteger)asn1sequenceparser.readObject();
        _compressionAlgorithm = AlgorithmIdentifier.getInstance(asn1sequenceparser.readObject().getDERObject());
        _encapContentInfo = new ContentInfoParser((ASN1SequenceParser)asn1sequenceparser.readObject());
    }

    public AlgorithmIdentifier getCompressionAlgorithmIdentifier()
    {
        return _compressionAlgorithm;
    }

    public ContentInfoParser getEncapContentInfo()
    {
        return _encapContentInfo;
    }

    public DERInteger getVersion()
    {
        return _version;
    }
}
