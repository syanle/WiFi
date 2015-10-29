// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Arrays;
import org.xbill.DNS.utils.base16;

// Referenced classes of package org.xbill.DNS:
//            Name, RelativeNameException, Type, DClass, 
//            TTL, TextParseException, Tokenizer, DNSInput, 
//            UNKRecord, EmptyRecord, WireParseException, DNSOutput, 
//            RRSIGRecord, Options, Compression

public abstract class Record
    implements Cloneable, Comparable, Serializable
{

    private static final DecimalFormat byteFormat;
    private static final long serialVersionUID = 0x25663ac63c372e5aL;
    protected int dclass;
    protected Name name;
    protected long ttl;
    protected int type;

    protected Record()
    {
    }

    Record(Name name1, int i, int j, long l)
    {
        if (!name1.isAbsolute())
        {
            throw new RelativeNameException(name1);
        } else
        {
            Type.check(i);
            DClass.check(j);
            TTL.check(l);
            name = name1;
            type = i;
            dclass = j;
            ttl = l;
            return;
        }
    }

    protected static byte[] byteArrayFromString(String s)
        throws TextParseException
    {
        int i;
        int j;
        int l;
        s = s.getBytes();
        l = 0;
        j = 0;
        i = 0;
_L2:
        if (i >= s.length)
        {
            i = j;
        } else
        {
label0:
            {
                if (s[i] != 92)
                {
                    break label0;
                }
                i = 1;
            }
        }
        if (i == 0)
        {
            if (s.length > 255)
            {
                throw new TextParseException("text string too long");
            } else
            {
                return s;
            }
        }
        break; /* Loop/switch isn't completed */
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        ByteArrayOutputStream bytearrayoutputstream;
        int i1;
        bytearrayoutputstream = new ByteArrayOutputStream();
        i = 0;
        j = 0;
        i1 = 0;
_L7:
        byte byte1;
        if (i1 >= s.length)
        {
            if (i > 0 && i < 3)
            {
                throw new TextParseException("bad escape");
            }
            break MISSING_BLOCK_LABEL_280;
        }
        byte1 = s[i1];
        if (l == 0)
        {
            break MISSING_BLOCK_LABEL_250;
        }
        if (byte1 < 48 || byte1 > 57 || i >= 3) goto _L4; else goto _L3
_L3:
        i++;
        j = j * 10 + (byte1 - 48);
        if (j > 255)
        {
            throw new TextParseException("bad escape");
        }
        if (i >= 3) goto _L6; else goto _L5
_L5:
        i1++;
          goto _L7
_L6:
        int k;
        byte byte0;
        byte0 = (byte)j;
        k = j;
        l = i;
_L9:
        bytearrayoutputstream.write(byte0);
        j = 0;
        i = l;
        l = j;
        j = k;
          goto _L5
_L4:
        byte0 = byte1;
        l = i;
        k = j;
        if (i <= 0) goto _L9; else goto _L8
_L8:
        byte0 = byte1;
        l = i;
        k = j;
        if (i >= 3) goto _L9; else goto _L10
_L10:
        throw new TextParseException("bad escape");
        if (s[i1] == 92)
        {
            l = 1;
            i = 0;
            j = 0;
        } else
        {
            bytearrayoutputstream.write(s[i1]);
        }
          goto _L5
        if (bytearrayoutputstream.toByteArray().length > 255)
        {
            throw new TextParseException("text string too long");
        } else
        {
            return bytearrayoutputstream.toByteArray();
        }
    }

    protected static String byteArrayToString(byte abyte0[], boolean flag)
    {
        StringBuffer stringbuffer;
        int i;
        stringbuffer = new StringBuffer();
        if (flag)
        {
            stringbuffer.append('"');
        }
        i = 0;
_L2:
        int j;
        if (i >= abyte0.length)
        {
            if (flag)
            {
                stringbuffer.append('"');
            }
            return stringbuffer.toString();
        }
        j = abyte0[i] & 0xff;
        if (j >= 32 && j < 127)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.append('\\');
        stringbuffer.append(byteFormat.format(j));
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (j == 34 || j == 92)
        {
            stringbuffer.append('\\');
            stringbuffer.append((char)j);
        } else
        {
            stringbuffer.append((char)j);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    static Name checkName(String s, Name name1)
    {
        if (!name1.isAbsolute())
        {
            throw new RelativeNameException(name1);
        } else
        {
            return name1;
        }
    }

    static int checkU16(String s, int i)
    {
        if (i < 0 || i > 65535)
        {
            throw new IllegalArgumentException((new StringBuilder("\"")).append(s).append("\" ").append(i).append(" must be an unsigned 16 ").append("bit value").toString());
        } else
        {
            return i;
        }
    }

    static long checkU32(String s, long l)
    {
        if (l < 0L || l > 0xffffffffL)
        {
            throw new IllegalArgumentException((new StringBuilder("\"")).append(s).append("\" ").append(l).append(" must be an unsigned 32 ").append("bit value").toString());
        } else
        {
            return l;
        }
    }

    static int checkU8(String s, int i)
    {
        if (i < 0 || i > 255)
        {
            throw new IllegalArgumentException((new StringBuilder("\"")).append(s).append("\" ").append(i).append(" must be an unsigned 8 ").append("bit value").toString());
        } else
        {
            return i;
        }
    }

    public static Record fromString(Name name1, int i, int j, long l, String s, Name name2)
        throws IOException
    {
        return fromString(name1, i, j, l, new Tokenizer(s), name2);
    }

    public static Record fromString(Name name1, int i, int j, long l, Tokenizer tokenizer, Name name2)
        throws IOException
    {
        if (!name1.isAbsolute())
        {
            throw new RelativeNameException(name1);
        }
        Type.check(i);
        DClass.check(j);
        TTL.check(l);
        Tokenizer.Token token = tokenizer.get();
        if (token.type == 3 && token.value.equals("\\#"))
        {
            int k = tokenizer.getUInt16();
            byte abyte0[] = tokenizer.getHex();
            name2 = abyte0;
            if (abyte0 == null)
            {
                name2 = new byte[0];
            }
            if (k != name2.length)
            {
                throw tokenizer.exception("invalid unknown RR encoding: length mismatch");
            }
            name1 = newRecord(name1, i, j, l, k, new DNSInput(name2));
        } else
        {
            tokenizer.unget();
            Record record = getEmptyRecord(name1, i, j, l, true);
            record.rdataFromString(tokenizer, name2);
            name2 = tokenizer.get();
            name1 = record;
            if (((Tokenizer.Token) (name2)).type != 1)
            {
                name1 = record;
                if (((Tokenizer.Token) (name2)).type != 0)
                {
                    throw tokenizer.exception("unexpected tokens at end of record");
                }
            }
        }
        return name1;
    }

    static Record fromWire(DNSInput dnsinput, int i)
        throws IOException
    {
        return fromWire(dnsinput, i, false);
    }

    static Record fromWire(DNSInput dnsinput, int i, boolean flag)
        throws IOException
    {
        Name name1 = new Name(dnsinput);
        int j = dnsinput.readU16();
        int k = dnsinput.readU16();
        if (i == 0)
        {
            return newRecord(name1, j, k);
        }
        long l = dnsinput.readU32();
        i = dnsinput.readU16();
        if (i == 0 && flag)
        {
            return newRecord(name1, j, k, l);
        } else
        {
            return newRecord(name1, j, k, l, i, dnsinput);
        }
    }

    public static Record fromWire(byte abyte0[], int i)
        throws IOException
    {
        return fromWire(new DNSInput(abyte0), i, false);
    }

    private static final Record getEmptyRecord(Name name1, int i, int j, long l, boolean flag)
    {
        Object obj;
        if (flag)
        {
            obj = Type.getProto(i);
            if (obj != null)
            {
                obj = ((Record) (obj)).getObject();
            } else
            {
                obj = new UNKRecord();
            }
        } else
        {
            obj = new EmptyRecord();
        }
        obj.name = name1;
        obj.type = i;
        obj.dclass = j;
        obj.ttl = l;
        return ((Record) (obj));
    }

    public static Record newRecord(Name name1, int i, int j)
    {
        return newRecord(name1, i, j, 0L);
    }

    public static Record newRecord(Name name1, int i, int j, long l)
    {
        if (!name1.isAbsolute())
        {
            throw new RelativeNameException(name1);
        } else
        {
            Type.check(i);
            DClass.check(j);
            TTL.check(l);
            return getEmptyRecord(name1, i, j, l, false);
        }
    }

    private static Record newRecord(Name name1, int i, int j, long l, int k, DNSInput dnsinput)
        throws IOException
    {
        boolean flag;
        if (dnsinput != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        name1 = getEmptyRecord(name1, i, j, l, flag);
        if (dnsinput != null)
        {
            if (dnsinput.remaining() < k)
            {
                throw new WireParseException("truncated record");
            }
            dnsinput.setActive(k);
            name1.rrFromWire(dnsinput);
            if (dnsinput.remaining() > 0)
            {
                throw new WireParseException("invalid record length");
            }
            dnsinput.clearActive();
        }
        return name1;
    }

    public static Record newRecord(Name name1, int i, int j, long l, int k, byte abyte0[])
    {
        if (!name1.isAbsolute())
        {
            throw new RelativeNameException(name1);
        }
        Type.check(i);
        DClass.check(j);
        TTL.check(l);
        if (abyte0 != null)
        {
            abyte0 = new DNSInput(abyte0);
        } else
        {
            abyte0 = null;
        }
        try
        {
            name1 = newRecord(name1, i, j, l, k, ((DNSInput) (abyte0)));
        }
        // Misplaced declaration of an exception variable
        catch (Name name1)
        {
            return null;
        }
        return name1;
    }

    public static Record newRecord(Name name1, int i, int j, long l, byte abyte0[])
    {
        return newRecord(name1, i, j, l, abyte0.length, abyte0);
    }

    private void toWireCanonical(DNSOutput dnsoutput, boolean flag)
    {
        name.toWireCanonical(dnsoutput);
        dnsoutput.writeU16(type);
        dnsoutput.writeU16(dclass);
        int i;
        int j;
        if (flag)
        {
            dnsoutput.writeU32(0L);
        } else
        {
            dnsoutput.writeU32(ttl);
        }
        i = dnsoutput.current();
        dnsoutput.writeU16(0);
        rrToWire(dnsoutput, null, true);
        j = dnsoutput.current();
        dnsoutput.save();
        dnsoutput.jump(i);
        dnsoutput.writeU16(j - i - 2);
        dnsoutput.restore();
    }

    private byte[] toWireCanonical(boolean flag)
    {
        DNSOutput dnsoutput = new DNSOutput();
        toWireCanonical(dnsoutput, flag);
        return dnsoutput.toByteArray();
    }

    protected static String unknownToString(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("\\# ");
        stringbuffer.append(abyte0.length);
        stringbuffer.append(" ");
        stringbuffer.append(base16.toString(abyte0));
        return stringbuffer.toString();
    }

    Record cloneRecord()
    {
        Record record;
        try
        {
            record = (Record)clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new IllegalStateException();
        }
        return record;
    }

    public int compareTo(Object obj)
    {
        Record record = (Record)obj;
        if (this != record) goto _L2; else goto _L1
_L1:
        int i = 0;
_L4:
        return i;
_L2:
        int j = name.compareTo(record.name);
        i = j;
        if (j != 0)
        {
            continue;
        }
        j = dclass - record.dclass;
        i = j;
        if (j != 0)
        {
            continue;
        }
        j = type - record.type;
        i = j;
        if (j != 0)
        {
            continue;
        }
        obj = rdataToWireCanonical();
        byte abyte0[] = record.rdataToWireCanonical();
        j = 0;
        do
        {
            if (j >= obj.length || j >= abyte0.length)
            {
                return obj.length - abyte0.length;
            }
            int k = (obj[j] & 0xff) - (abyte0[j] & 0xff);
            i = k;
            if (k != 0)
            {
                continue;
            }
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof Record))
        {
            if (type == ((Record) (obj = (Record)obj)).type && dclass == ((Record) (obj)).dclass && name.equals(((Record) (obj)).name))
            {
                return Arrays.equals(rdataToWireCanonical(), ((Record) (obj)).rdataToWireCanonical());
            }
        }
        return false;
    }

    public Name getAdditionalName()
    {
        return null;
    }

    public int getDClass()
    {
        return dclass;
    }

    public Name getName()
    {
        return name;
    }

    abstract Record getObject();

    public int getRRsetType()
    {
        if (type == 46)
        {
            return ((RRSIGRecord)this).getTypeCovered();
        } else
        {
            return type;
        }
    }

    public long getTTL()
    {
        return ttl;
    }

    public int getType()
    {
        return type;
    }

    public int hashCode()
    {
        byte abyte0[] = toWireCanonical(true);
        int j = 0;
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return j;
            }
            j += (j << 3) + (abyte0[i] & 0xff);
            i++;
        } while (true);
    }

    abstract void rdataFromString(Tokenizer tokenizer, Name name1)
        throws IOException;

    public String rdataToString()
    {
        return rrToString();
    }

    public byte[] rdataToWireCanonical()
    {
        DNSOutput dnsoutput = new DNSOutput();
        rrToWire(dnsoutput, null, true);
        return dnsoutput.toByteArray();
    }

    abstract void rrFromWire(DNSInput dnsinput)
        throws IOException;

    abstract String rrToString();

    abstract void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag);

    public boolean sameRRset(Record record)
    {
        return getRRsetType() == record.getRRsetType() && dclass == record.dclass && name.equals(record.name);
    }

    void setTTL(long l)
    {
        ttl = l;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(name);
        if (stringbuffer.length() < 8)
        {
            stringbuffer.append("\t");
        }
        if (stringbuffer.length() < 16)
        {
            stringbuffer.append("\t");
        }
        stringbuffer.append("\t");
        String s;
        if (Options.check("BINDTTL"))
        {
            stringbuffer.append(TTL.format(ttl));
        } else
        {
            stringbuffer.append(ttl);
        }
        stringbuffer.append("\t");
        if (dclass != 1 || !Options.check("noPrintIN"))
        {
            stringbuffer.append(DClass.string(dclass));
            stringbuffer.append("\t");
        }
        stringbuffer.append(Type.string(type));
        s = rrToString();
        if (!s.equals(""))
        {
            stringbuffer.append("\t");
            stringbuffer.append(s);
        }
        return stringbuffer.toString();
    }

    void toWire(DNSOutput dnsoutput, int i, Compression compression)
    {
        name.toWire(dnsoutput, compression);
        dnsoutput.writeU16(type);
        dnsoutput.writeU16(dclass);
        if (i == 0)
        {
            return;
        } else
        {
            dnsoutput.writeU32(ttl);
            i = dnsoutput.current();
            dnsoutput.writeU16(0);
            rrToWire(dnsoutput, compression, false);
            int j = dnsoutput.current();
            dnsoutput.save();
            dnsoutput.jump(i);
            dnsoutput.writeU16(j - i - 2);
            dnsoutput.restore();
            return;
        }
    }

    public byte[] toWire(int i)
    {
        DNSOutput dnsoutput = new DNSOutput();
        toWire(dnsoutput, i, null);
        return dnsoutput.toByteArray();
    }

    public byte[] toWireCanonical()
    {
        return toWireCanonical(false);
    }

    Record withDClass(int i, long l)
    {
        Record record = cloneRecord();
        record.dclass = i;
        record.ttl = l;
        return record;
    }

    public Record withName(Name name1)
    {
        if (!name1.isAbsolute())
        {
            throw new RelativeNameException(name1);
        } else
        {
            Record record = cloneRecord();
            record.name = name1;
            return record;
        }
    }

    static 
    {
        byteFormat = new DecimalFormat();
        byteFormat.setMinimumIntegerDigits(3);
    }
}
