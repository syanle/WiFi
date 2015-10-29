// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package org.bouncycastle.asn1:
//            ASN1InputStream, IndefiniteLengthInputStream, DERSetParser, DERSequenceParser, 
//            BEROctetStringParser, DEROctetStringParser, DefiniteLengthInputStream, ASN1Exception, 
//            DERExternalParser, BERSequenceParser, BERSetParser, BERApplicationSpecificParser, 
//            BERTaggedObjectParser, DERApplicationSpecific, DERUnknownTag, DERTaggedObject, 
//            DEROctetString, ASN1EncodableVector, BERTaggedObject, BERFactory, 
//            DERFactory, InMemoryRepresentable, DEREncodable, DERObject

public class ASN1StreamParser
{

    private final InputStream _in;
    private final int _limit;

    public ASN1StreamParser(InputStream inputstream)
    {
        this(inputstream, ASN1InputStream.findLimit(inputstream));
    }

    public ASN1StreamParser(InputStream inputstream, int i)
    {
        _in = inputstream;
        _limit = i;
    }

    public ASN1StreamParser(byte abyte0[])
    {
        this(((InputStream) (new ByteArrayInputStream(abyte0))), abyte0.length);
    }

    private void set00Check(boolean flag)
    {
        if (_in instanceof IndefiniteLengthInputStream)
        {
            ((IndefiniteLengthInputStream)_in).setEofOn00(flag);
        }
    }

    DEREncodable readImplicit(boolean flag, int i)
        throws IOException
    {
        if (_in instanceof IndefiniteLengthInputStream)
        {
            if (!flag)
            {
                throw new IOException("indefinite length primitive encoding encountered");
            } else
            {
                return readIndef(i);
            }
        }
        if (flag)
        {
            switch (i)
            {
            case 17: // '\021'
                return new DERSetParser(this);

            case 16: // '\020'
                return new DERSequenceParser(this);

            case 4: // '\004'
                return new BEROctetStringParser(this);
            }
        } else
        {
            switch (i)
            {
            case 4: // '\004'
                return new DEROctetStringParser((DefiniteLengthInputStream)_in);

            case 17: // '\021'
                throw new ASN1Exception("sequences must use constructed encoding (see X.690 8.9.1/8.10.1)");

            case 16: // '\020'
                throw new ASN1Exception("sets must use constructed encoding (see X.690 8.11.1/8.12.1)");
            }
        }
        while (true) 
        {
            throw new RuntimeException("implicit tagging not implemented");
        }
    }

    DEREncodable readIndef(int i)
        throws IOException
    {
        switch (i)
        {
        default:
            throw new ASN1Exception((new StringBuilder()).append("unknown BER object encountered: 0x").append(Integer.toHexString(i)).toString());

        case 8: // '\b'
            return new DERExternalParser(this);

        case 4: // '\004'
            return new BEROctetStringParser(this);

        case 16: // '\020'
            return new BERSequenceParser(this);

        case 17: // '\021'
            return new BERSetParser(this);
        }
    }

    public DEREncodable readObject()
        throws IOException
    {
        boolean flag = false;
        int i = _in.read();
        if (i == -1)
        {
            return null;
        }
        set00Check(false);
        int j = ASN1InputStream.readTagNumber(_in, i);
        if ((i & 0x20) != 0)
        {
            flag = true;
        }
        int k = ASN1InputStream.readLength(_in, _limit);
        if (k < 0)
        {
            if (!flag)
            {
                throw new IOException("indefinite length primitive encoding encountered");
            }
            ASN1StreamParser asn1streamparser = new ASN1StreamParser(new IndefiniteLengthInputStream(_in, _limit), _limit);
            if ((i & 0x40) != 0)
            {
                return new BERApplicationSpecificParser(j, asn1streamparser);
            }
            if ((i & 0x80) != 0)
            {
                return new BERTaggedObjectParser(true, j, asn1streamparser);
            } else
            {
                return asn1streamparser.readIndef(j);
            }
        }
        Object obj = new DefiniteLengthInputStream(_in, k);
        if ((i & 0x40) != 0)
        {
            return new DERApplicationSpecific(flag, j, ((DefiniteLengthInputStream) (obj)).toByteArray());
        }
        if ((i & 0x80) != 0)
        {
            return new BERTaggedObjectParser(flag, j, new ASN1StreamParser(((InputStream) (obj))));
        }
        if (flag)
        {
            switch (j)
            {
            default:
                return new DERUnknownTag(true, j, ((DefiniteLengthInputStream) (obj)).toByteArray());

            case 4: // '\004'
                return new BEROctetStringParser(new ASN1StreamParser(((InputStream) (obj))));

            case 16: // '\020'
                return new DERSequenceParser(new ASN1StreamParser(((InputStream) (obj))));

            case 17: // '\021'
                return new DERSetParser(new ASN1StreamParser(((InputStream) (obj))));

            case 8: // '\b'
                return new DERExternalParser(new ASN1StreamParser(((InputStream) (obj))));
            }
        }
        switch (j)
        {
        default:
            try
            {
                obj = ASN1InputStream.createPrimitiveDERObject(j, ((DefiniteLengthInputStream) (obj)).toByteArray());
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw new ASN1Exception("corrupted stream detected", illegalargumentexception);
            }
            return ((DEREncodable) (obj));

        case 4: // '\004'
            return new DEROctetStringParser(((DefiniteLengthInputStream) (obj)));
        }
    }

    DERObject readTaggedObject(boolean flag, int i)
        throws IOException
    {
        if (!flag)
        {
            return new DERTaggedObject(false, i, new DEROctetString(((DefiniteLengthInputStream)_in).toByteArray()));
        }
        ASN1EncodableVector asn1encodablevector = readVector();
        if (_in instanceof IndefiniteLengthInputStream)
        {
            if (asn1encodablevector.size() == 1)
            {
                return new BERTaggedObject(true, i, asn1encodablevector.get(0));
            } else
            {
                return new BERTaggedObject(false, i, BERFactory.createSequence(asn1encodablevector));
            }
        }
        if (asn1encodablevector.size() == 1)
        {
            return new DERTaggedObject(true, i, asn1encodablevector.get(0));
        } else
        {
            return new DERTaggedObject(false, i, DERFactory.createSequence(asn1encodablevector));
        }
    }

    ASN1EncodableVector readVector()
        throws IOException
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        do
        {
            DEREncodable derencodable = readObject();
            if (derencodable != null)
            {
                if (derencodable instanceof InMemoryRepresentable)
                {
                    asn1encodablevector.add(((InMemoryRepresentable)derencodable).getLoadedObject());
                } else
                {
                    asn1encodablevector.add(derencodable.getDERObject());
                }
            } else
            {
                return asn1encodablevector;
            }
        } while (true);
    }
}
