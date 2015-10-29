// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class EncryptedContentInfoParser
{

    private AlgorithmIdentifier _contentEncryptionAlgorithm;
    private DERObjectIdentifier _contentType;
    private ASN1TaggedObjectParser _encryptedContent;

    public EncryptedContentInfoParser(ASN1SequenceParser asn1sequenceparser)
        throws IOException
    {
        _contentType = (DERObjectIdentifier)asn1sequenceparser.readObject();
        _contentEncryptionAlgorithm = AlgorithmIdentifier.getInstance(asn1sequenceparser.readObject().getDERObject());
        _encryptedContent = (ASN1TaggedObjectParser)asn1sequenceparser.readObject();
    }

    public AlgorithmIdentifier getContentEncryptionAlgorithm()
    {
        return _contentEncryptionAlgorithm;
    }

    public DERObjectIdentifier getContentType()
    {
        return _contentType;
    }

    public DEREncodable getEncryptedContent(int i)
        throws IOException
    {
        return _encryptedContent.getObjectParser(i, false);
    }
}
