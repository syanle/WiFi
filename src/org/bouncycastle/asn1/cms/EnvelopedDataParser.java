// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1SetParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            EncryptedContentInfoParser, OriginatorInfo

public class EnvelopedDataParser
{

    private DEREncodable _nextObject;
    private boolean _originatorInfoCalled;
    private ASN1SequenceParser _seq;
    private DERInteger _version;

    public EnvelopedDataParser(ASN1SequenceParser asn1sequenceparser)
        throws IOException
    {
        _seq = asn1sequenceparser;
        _version = (DERInteger)asn1sequenceparser.readObject();
    }

    public EncryptedContentInfoParser getEncryptedContentInfo()
        throws IOException
    {
        if (_nextObject == null)
        {
            _nextObject = _seq.readObject();
        }
        if (_nextObject != null)
        {
            ASN1SequenceParser asn1sequenceparser = (ASN1SequenceParser)_nextObject;
            _nextObject = null;
            return new EncryptedContentInfoParser(asn1sequenceparser);
        } else
        {
            return null;
        }
    }

    public OriginatorInfo getOriginatorInfo()
        throws IOException
    {
        _originatorInfoCalled = true;
        if (_nextObject == null)
        {
            _nextObject = _seq.readObject();
        }
        if ((_nextObject instanceof ASN1TaggedObjectParser) && ((ASN1TaggedObjectParser)_nextObject).getTagNo() == 0)
        {
            ASN1SequenceParser asn1sequenceparser = (ASN1SequenceParser)((ASN1TaggedObjectParser)_nextObject).getObjectParser(16, false);
            _nextObject = null;
            return OriginatorInfo.getInstance(asn1sequenceparser.getDERObject());
        } else
        {
            return null;
        }
    }

    public ASN1SetParser getRecipientInfos()
        throws IOException
    {
        if (!_originatorInfoCalled)
        {
            getOriginatorInfo();
        }
        if (_nextObject == null)
        {
            _nextObject = _seq.readObject();
        }
        ASN1SetParser asn1setparser = (ASN1SetParser)_nextObject;
        _nextObject = null;
        return asn1setparser;
    }

    public ASN1SetParser getUnprotectedAttrs()
        throws IOException
    {
        if (_nextObject == null)
        {
            _nextObject = _seq.readObject();
        }
        if (_nextObject != null)
        {
            DEREncodable derencodable = _nextObject;
            _nextObject = null;
            return (ASN1SetParser)((ASN1TaggedObjectParser)derencodable).getObjectParser(17, false);
        } else
        {
            return null;
        }
    }

    public DERInteger getVersion()
    {
        return _version;
    }
}
