// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1SetParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            EncryptedContentInfoParser, OriginatorInfo

public class AuthEnvelopedDataParser
{

    private DEREncodable nextObject;
    private boolean originatorInfoCalled;
    private ASN1SequenceParser seq;
    private DERInteger version;

    public AuthEnvelopedDataParser(ASN1SequenceParser asn1sequenceparser)
        throws IOException
    {
        seq = asn1sequenceparser;
        version = (DERInteger)asn1sequenceparser.readObject();
    }

    public ASN1SetParser getAuthAttrs()
        throws IOException
    {
        if (nextObject == null)
        {
            nextObject = seq.readObject();
        }
        if (nextObject instanceof ASN1TaggedObjectParser)
        {
            DEREncodable derencodable = nextObject;
            nextObject = null;
            return (ASN1SetParser)((ASN1TaggedObjectParser)derencodable).getObjectParser(17, false);
        } else
        {
            return null;
        }
    }

    public EncryptedContentInfoParser getAuthEncryptedContentInfo()
        throws IOException
    {
        if (nextObject == null)
        {
            nextObject = seq.readObject();
        }
        if (nextObject != null)
        {
            ASN1SequenceParser asn1sequenceparser = (ASN1SequenceParser)nextObject;
            nextObject = null;
            return new EncryptedContentInfoParser(asn1sequenceparser);
        } else
        {
            return null;
        }
    }

    public ASN1OctetString getMac()
        throws IOException
    {
        if (nextObject == null)
        {
            nextObject = seq.readObject();
        }
        DEREncodable derencodable = nextObject;
        nextObject = null;
        return ASN1OctetString.getInstance(derencodable.getDERObject());
    }

    public OriginatorInfo getOriginatorInfo()
        throws IOException
    {
        originatorInfoCalled = true;
        if (nextObject == null)
        {
            nextObject = seq.readObject();
        }
        if ((nextObject instanceof ASN1TaggedObjectParser) && ((ASN1TaggedObjectParser)nextObject).getTagNo() == 0)
        {
            ASN1SequenceParser asn1sequenceparser = (ASN1SequenceParser)((ASN1TaggedObjectParser)nextObject).getObjectParser(16, false);
            nextObject = null;
            return OriginatorInfo.getInstance(asn1sequenceparser.getDERObject());
        } else
        {
            return null;
        }
    }

    public ASN1SetParser getRecipientInfos()
        throws IOException
    {
        if (!originatorInfoCalled)
        {
            getOriginatorInfo();
        }
        if (nextObject == null)
        {
            nextObject = seq.readObject();
        }
        ASN1SetParser asn1setparser = (ASN1SetParser)nextObject;
        nextObject = null;
        return asn1setparser;
    }

    public ASN1SetParser getUnauthAttrs()
        throws IOException
    {
        if (nextObject == null)
        {
            nextObject = seq.readObject();
        }
        if (nextObject != null)
        {
            DEREncodable derencodable = nextObject;
            nextObject = null;
            return (ASN1SetParser)((ASN1TaggedObjectParser)derencodable).getObjectParser(17, false);
        } else
        {
            return null;
        }
    }

    public DERInteger getVersion()
    {
        return version;
    }
}
