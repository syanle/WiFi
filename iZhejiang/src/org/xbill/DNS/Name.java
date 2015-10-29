// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.PrintStream;
import java.io.Serializable;
import java.text.DecimalFormat;

// Referenced classes of package org.xbill.DNS:
//            TextParseException, WireParseException, DNSInput, Options, 
//            NameTooLongException, DNAMERecord, DNSOutput, Compression

public class Name
    implements Comparable, Serializable
{

    private static final int LABEL_COMPRESSION = 192;
    private static final int LABEL_MASK = 192;
    private static final int LABEL_NORMAL = 0;
    private static final int MAXLABEL = 63;
    private static final int MAXLABELS = 128;
    private static final int MAXNAME = 255;
    private static final int MAXOFFSETS = 7;
    private static final DecimalFormat byteFormat;
    public static final Name empty;
    private static final byte emptyLabel[];
    private static final byte lowercase[];
    public static final Name root;
    private static final long serialVersionUID = 0x9b49e2d0227749f4L;
    private static final Name wild;
    private static final byte wildLabel[] = {
        1, 42
    };
    private int hashcode;
    private byte name[];
    private long offsets;

    private Name()
    {
    }

    public Name(String s)
        throws TextParseException
    {
        this(s, ((Name) (null)));
    }

    public Name(String s, Name name1)
        throws TextParseException
    {
        if (s.equals(""))
        {
            throw parseException(s, "empty name");
        }
        if (!s.equals("@")) goto _L2; else goto _L1
_L1:
        if (name1 != null) goto _L4; else goto _L3
_L3:
        copy(empty, this);
_L13:
        return;
_L4:
        copy(name1, this);
        return;
_L2:
        byte abyte0[];
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        boolean flag1;
        if (s.equals("."))
        {
            copy(root, this);
            return;
        }
        k = -1;
        l = 1;
        abyte0 = new byte[64];
        j1 = 0;
        i = 0;
        j = 0;
        flag1 = false;
        i1 = 0;
_L9:
        byte byte1;
        if (i1 >= s.length())
        {
            if (i > 0 && i < 3)
            {
                throw parseException(s, "bad escape");
            }
            break MISSING_BLOCK_LABEL_419;
        }
        byte1 = (byte)s.charAt(i1);
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_305;
        }
        if (byte1 < 48 || byte1 > 57 || i >= 3) goto _L6; else goto _L5
_L5:
        i++;
        j = j * 10 + (byte1 - 48);
        if (j > 255)
        {
            throw parseException(s, "bad escape");
        }
        if (i >= 3) goto _L8; else goto _L7
_L7:
        i1++;
          goto _L9
_L8:
        byte byte0;
        byte0 = (byte)j;
        k = j;
        j1 = i;
_L11:
        if (l > 63)
        {
            throw parseException(s, "label too long");
        }
        break; /* Loop/switch isn't completed */
_L6:
        byte0 = byte1;
        j1 = i;
        k = j;
        if (i > 0)
        {
            byte0 = byte1;
            j1 = i;
            k = j;
            if (i < 3)
            {
                throw parseException(s, "bad escape");
            }
        }
        if (true) goto _L11; else goto _L10
_L10:
        int k1 = l;
        abyte0[l] = byte0;
        j = 0;
        l++;
        i = j1;
        j1 = j;
        j = k;
        k = k1;
          goto _L7
        if (byte1 == 92)
        {
            j1 = 1;
            i = 0;
            j = 0;
        } else
        if (byte1 == 46)
        {
            if (k == -1)
            {
                throw parseException(s, "invalid empty label");
            }
            abyte0[0] = (byte)(l - 1);
            appendFromString(s, abyte0, 0, 1);
            k = -1;
            l = 1;
        } else
        {
            int l1 = k;
            if (k == -1)
            {
                l1 = i1;
            }
            if (l > 63)
            {
                throw parseException(s, "label too long");
            }
            abyte0[l] = byte1;
            l++;
            k = l1;
        }
          goto _L7
        if (j1 != 0)
        {
            throw parseException(s, "bad escape");
        }
        boolean flag;
        if (k == -1)
        {
            appendFromString(s, emptyLabel, 0, 1);
            flag = true;
        } else
        {
            abyte0[0] = (byte)(l - 1);
            appendFromString(s, abyte0, 0, 1);
            flag = flag1;
        }
        if (name1 != null && !flag)
        {
            appendFromString(s, name1.name, 0, name1.getlabels());
            return;
        }
        if (true) goto _L13; else goto _L12
_L12:
    }

    public Name(DNSInput dnsinput)
        throws WireParseException
    {
        boolean flag1 = false;
        byte abyte0[] = new byte[64];
        boolean flag = false;
        do
        {
            if (flag1)
            {
                if (flag)
                {
                    dnsinput.restore();
                }
                return;
            }
            int i = dnsinput.readU8();
            switch (i & 0xc0)
            {
            default:
                throw new WireParseException("bad label type");

            case 0: // '\0'
                if (getlabels() >= 128)
                {
                    throw new WireParseException("too many labels");
                }
                if (i == 0)
                {
                    append(emptyLabel, 0, 1);
                    flag1 = true;
                } else
                {
                    abyte0[0] = (byte)i;
                    dnsinput.readByteArray(abyte0, 1, i);
                    append(abyte0, 0, 1);
                }
                break;

            case 192: 
                int j = dnsinput.readU8() + ((i & 0xffffff3f) << 8);
                if (Options.check("verbosecompression"))
                {
                    System.err.println((new StringBuilder("currently ")).append(dnsinput.current()).append(", pointer to ").append(j).toString());
                }
                if (j >= dnsinput.current() - 2)
                {
                    throw new WireParseException("bad compression");
                }
                i = ((flag) ? 1 : 0);
                if (!flag)
                {
                    dnsinput.save();
                    i = 1;
                }
                dnsinput.jump(j);
                flag = i;
                if (Options.check("verbosecompression"))
                {
                    System.err.println((new StringBuilder("current name '")).append(this).append("', seeking to ").append(j).toString());
                    flag = i;
                }
                break;
            }
        } while (true);
    }

    public Name(Name name1, int i)
    {
        int k = name1.labels();
        if (i > k)
        {
            throw new IllegalArgumentException("attempted to remove too many labels");
        }
        name = name1.name;
        setlabels(k - i);
        int j = 0;
        do
        {
            if (j >= 7 || j >= k - i)
            {
                return;
            }
            setoffset(j, name1.offset(j + i));
            j++;
        } while (true);
    }

    public Name(byte abyte0[])
        throws IOException
    {
        this(new DNSInput(abyte0));
    }

    private final void append(byte abyte0[], int i, int j)
        throws NameTooLongException
    {
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        if (name == null)
        {
            k = 0;
        } else
        {
            k = name.length - offset(0);
        }
        l = 0;
        i1 = 0;
        j1 = i;
        do
        {
            if (i1 >= j)
            {
                k1 = k + l;
                if (k1 > 255)
                {
                    throw new NameTooLongException();
                }
                break;
            }
            k1 = abyte0[j1];
            if (k1 > 63)
            {
                throw new IllegalStateException("invalid label");
            }
            k1++;
            j1 += k1;
            l += k1;
            i1++;
        } while (true);
        i1 = getlabels();
        j1 = i1 + j;
        if (j1 > 128)
        {
            throw new IllegalStateException("too many labels");
        }
        byte abyte1[] = new byte[k1];
        if (k != 0)
        {
            System.arraycopy(name, offset(0), abyte1, 0, k);
        }
        System.arraycopy(abyte0, i, abyte1, k, l);
        name = abyte1;
        i = 0;
        do
        {
            if (i >= j)
            {
                setlabels(j1);
                return;
            }
            setoffset(i1 + i, k);
            k += abyte1[k] + 1;
            i++;
        } while (true);
    }

    private final void appendFromString(String s, byte abyte0[], int i, int j)
        throws TextParseException
    {
        try
        {
            append(abyte0, i, j);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw parseException(s, "Name too long");
        }
    }

    private final void appendSafe(byte abyte0[], int i, int j)
    {
        try
        {
            append(abyte0, i, j);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return;
        }
    }

    private String byteString(byte abyte0[], int i)
    {
        StringBuffer stringbuffer;
        int j;
        byte byte0;
        stringbuffer = new StringBuffer();
        j = i + 1;
        byte0 = abyte0[i];
        i = j;
_L2:
        int k;
        if (i >= j + byte0)
        {
            return stringbuffer.toString();
        }
        k = abyte0[i] & 0xff;
        if (k > 32 && k < 127)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.append('\\');
        stringbuffer.append(byteFormat.format(k));
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (k == 34 || k == 40 || k == 41 || k == 46 || k == 59 || k == 92 || k == 64 || k == 36)
        {
            stringbuffer.append('\\');
            stringbuffer.append((char)k);
        } else
        {
            stringbuffer.append((char)k);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public static Name concatenate(Name name1, Name name2)
        throws NameTooLongException
    {
        if (name1.isAbsolute())
        {
            return name1;
        } else
        {
            Name name3 = new Name();
            copy(name1, name3);
            name3.append(name2.name, name2.offset(0), name2.getlabels());
            return name3;
        }
    }

    private static final void copy(Name name1, Name name2)
    {
        if (name1.offset(0) == 0)
        {
            name2.name = name1.name;
            name2.offsets = name1.offsets;
            return;
        }
        int j = name1.offset(0);
        int i = name1.name.length - j;
        int k = name1.labels();
        name2.name = new byte[i];
        System.arraycopy(name1.name, j, name2.name, 0, i);
        i = 0;
        do
        {
            if (i >= k || i >= 7)
            {
                name2.setlabels(k);
                return;
            }
            name2.setoffset(i, name1.offset(i) - j);
            i++;
        } while (true);
    }

    private final boolean equals(byte abyte0[], int i)
    {
        int j;
        int k;
        int j1;
        boolean flag1;
        flag1 = false;
        j1 = labels();
        k = 0;
        j = offset(0);
_L3:
        if (k < j1) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L5:
        return flag;
_L2:
        int l;
        byte byte0;
        if (name[j] != abyte0[i])
        {
            return false;
        }
        byte0 = name[j];
        if (byte0 > 63)
        {
            throw new IllegalStateException("invalid label");
        }
        l = 0;
        int i1 = j + 1;
        j = i + 1;
        i = i1;
_L6:
label0:
        {
            if (l < byte0)
            {
                break label0;
            }
            k++;
            l = j;
            j = i;
            i = l;
        }
          goto _L3
        flag = flag1;
        if (lowercase[name[i] & 0xff] != lowercase[abyte0[j] & 0xff]) goto _L5; else goto _L4
_L4:
        l++;
        i++;
        j++;
          goto _L6
    }

    public static Name fromConstantString(String s)
    {
        Name name1;
        try
        {
            name1 = fromString(s, null);
        }
        catch (TextParseException textparseexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid name '")).append(s).append("'").toString());
        }
        return name1;
    }

    public static Name fromString(String s)
        throws TextParseException
    {
        return fromString(s, null);
    }

    public static Name fromString(String s, Name name1)
        throws TextParseException
    {
        if (s.equals("@") && name1 != null)
        {
            return name1;
        }
        if (s.equals("."))
        {
            return root;
        } else
        {
            return new Name(s, name1);
        }
    }

    private final int getlabels()
    {
        return (int)(offsets & 255L);
    }

    private final int offset(int i)
    {
        if (i != 0 || getlabels() != 0) goto _L2; else goto _L1
_L1:
        int l = 0;
_L4:
        return l;
_L2:
        if (i < 0 || i >= getlabels())
        {
            throw new IllegalArgumentException("label out of range");
        }
        if (i < 7)
        {
            return (int)(offsets >>> (7 - i) * 8) & 0xff;
        }
        int j = offset(6);
        int k = 6;
        do
        {
            l = j;
            if (k >= i)
            {
                continue;
            }
            j += name[j] + 1;
            k++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static TextParseException parseException(String s, String s1)
    {
        return new TextParseException((new StringBuilder("'")).append(s).append("': ").append(s1).toString());
    }

    private final void setlabels(int i)
    {
        offsets = offsets & -256L;
        offsets = offsets | (long)i;
    }

    private final void setoffset(int i, int j)
    {
        if (i >= 7)
        {
            return;
        } else
        {
            i = (7 - i) * 8;
            offsets = offsets & ~(255L << i);
            offsets = offsets | (long)j << i;
            return;
        }
    }

    public int compareTo(Object obj)
    {
        obj = (Name)obj;
        if (this != obj) goto _L2; else goto _L1
_L1:
        int k = 0;
_L4:
        return k;
_L2:
        int j;
        int i1;
        int j1;
        i1 = labels();
        j1 = ((Name) (obj)).labels();
        int i;
        if (i1 > j1)
        {
            i = j1;
        } else
        {
            i = i1;
        }
        j = 1;
_L6:
        int l;
        int l1;
        int i2;
        byte byte0;
        byte byte1;
        if (j > i)
        {
            return i1 - j1;
        }
        l1 = offset(i1 - j);
        i2 = ((Name) (obj)).offset(j1 - j);
        byte0 = name[l1];
        byte1 = ((Name) (obj)).name[i2];
        l = 0;
_L5:
        int k1;
        if (l >= byte0 || l >= byte1)
        {
            if (byte0 != byte1)
            {
                return byte0 - byte1;
            }
            break MISSING_BLOCK_LABEL_186;
        }
        k1 = lowercase[name[l + l1 + 1] & 0xff] - lowercase[((Name) (obj)).name[l + i2 + 1] & 0xff];
        k = k1;
        if (k1 != 0) goto _L4; else goto _L3
_L3:
        l++;
          goto _L5
          goto _L4
        j++;
          goto _L6
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag;
        if (obj == this)
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (obj != null)
            {
                flag = flag1;
                if (obj instanceof Name)
                {
                    obj = (Name)obj;
                    if (((Name) (obj)).hashcode == 0)
                    {
                        ((Name) (obj)).hashCode();
                    }
                    if (hashcode == 0)
                    {
                        hashCode();
                    }
                    flag = flag1;
                    if (((Name) (obj)).hashcode == hashcode)
                    {
                        flag = flag1;
                        if (((Name) (obj)).labels() == labels())
                        {
                            return equals(((Name) (obj)).name, ((Name) (obj)).offset(0));
                        }
                    }
                }
            }
        }
        return flag;
    }

    public Name fromDNAME(DNAMERecord dnamerecord)
        throws NameTooLongException
    {
        Name name1;
        name1 = dnamerecord.getName();
        dnamerecord = dnamerecord.getTarget();
        if (subdomain(name1)) goto _L2; else goto _L1
_L1:
        dnamerecord = null;
_L4:
        return dnamerecord;
_L2:
        int i;
        int j;
        int k;
        int l;
        k = labels() - name1.labels();
        i = length() - name1.length();
        j = offset(0);
        l = dnamerecord.labels();
        short word0 = dnamerecord.length();
        if (i + word0 > 255)
        {
            throw new NameTooLongException();
        }
        name1 = new Name();
        name1.setlabels(k + l);
        name1.name = new byte[i + word0];
        System.arraycopy(name, j, name1.name, 0, i);
        System.arraycopy(((Name) (dnamerecord)).name, 0, name1.name, i, word0);
        i = 0;
        j = 0;
_L6:
        dnamerecord = name1;
        if (i >= 7) goto _L4; else goto _L3
_L3:
        dnamerecord = name1;
        if (i >= k + l) goto _L4; else goto _L5
_L5:
        name1.setoffset(i, j);
        j += name1.name[j] + 1;
        i++;
          goto _L6
    }

    public byte[] getLabel(int i)
    {
        i = offset(i);
        byte byte0 = (byte)(name[i] + 1);
        byte abyte0[] = new byte[byte0];
        System.arraycopy(name, i, abyte0, 0, byte0);
        return abyte0;
    }

    public String getLabelString(int i)
    {
        i = offset(i);
        return byteString(name, i);
    }

    public int hashCode()
    {
        if (hashcode != 0)
        {
            return hashcode;
        }
        int j = 0;
        int i = offset(0);
        do
        {
            if (i >= name.length)
            {
                hashcode = j;
                return hashcode;
            }
            j += (j << 3) + lowercase[name[i] & 0xff];
            i++;
        } while (true);
    }

    public boolean isAbsolute()
    {
        while (labels() == 0 || name[name.length - 1] != 0) 
        {
            return false;
        }
        return true;
    }

    public boolean isWild()
    {
        while (labels() == 0 || name[0] != 1 || name[1] != 42) 
        {
            return false;
        }
        return true;
    }

    public int labels()
    {
        return getlabels();
    }

    public short length()
    {
        if (getlabels() == 0)
        {
            return 0;
        } else
        {
            return (short)(name.length - offset(0));
        }
    }

    public Name relativize(Name name1)
    {
        if (name1 == null || !subdomain(name1))
        {
            return this;
        } else
        {
            Name name2 = new Name();
            copy(this, name2);
            int i = length() - name1.length();
            name2.setlabels(name2.labels() - name1.labels());
            name2.name = new byte[i];
            System.arraycopy(name, offset(0), name2.name, 0, i);
            return name2;
        }
    }

    public boolean subdomain(Name name1)
    {
        int i = labels();
        int j = name1.labels();
        if (j > i)
        {
            return false;
        }
        if (j == i)
        {
            return equals(name1);
        } else
        {
            return name1.equals(name, offset(i - j));
        }
    }

    public String toString()
    {
        StringBuffer stringbuffer;
        int i;
        int j;
        int k;
        k = labels();
        if (k == 0)
        {
            return "@";
        }
        if (k == 1 && name[offset(0)] == 0)
        {
            return ".";
        }
        stringbuffer = new StringBuffer();
        i = 0;
        j = offset(0);
_L5:
        if (i < k) goto _L2; else goto _L1
_L1:
        if (!isAbsolute())
        {
            stringbuffer.deleteCharAt(stringbuffer.length() - 1);
        }
        return stringbuffer.toString();
_L2:
        byte byte0;
        byte0 = name[j];
        if (byte0 > 63)
        {
            throw new IllegalStateException("invalid label");
        }
        if (byte0 == 0) goto _L1; else goto _L3
_L3:
        stringbuffer.append(byteString(name, j));
        stringbuffer.append('.');
        j += byte0 + 1;
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void toWire(DNSOutput dnsoutput, Compression compression)
    {
        if (!isAbsolute())
        {
            throw new IllegalArgumentException("toWire() called on non-absolute name");
        }
        int k = labels();
        int i = 0;
        do
        {
            if (i >= k - 1)
            {
                dnsoutput.writeU8(0);
                return;
            }
            Name name1;
            int j;
            if (i == 0)
            {
                name1 = this;
            } else
            {
                name1 = new Name(this, i);
            }
            j = -1;
            if (compression != null)
            {
                j = compression.get(name1);
            }
            if (j >= 0)
            {
                dnsoutput.writeU16(j | 0xc000);
                return;
            }
            if (compression != null)
            {
                compression.add(dnsoutput.current(), name1);
            }
            j = offset(i);
            dnsoutput.writeByteArray(name, j, name[j] + 1);
            i++;
        } while (true);
    }

    public void toWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        if (flag)
        {
            toWireCanonical(dnsoutput);
            return;
        } else
        {
            toWire(dnsoutput, compression);
            return;
        }
    }

    public byte[] toWire()
    {
        DNSOutput dnsoutput = new DNSOutput();
        toWire(dnsoutput, null);
        return dnsoutput.toByteArray();
    }

    public void toWireCanonical(DNSOutput dnsoutput)
    {
        dnsoutput.writeByteArray(toWireCanonical());
    }

    public byte[] toWireCanonical()
    {
        int i1 = labels();
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        byte abyte0[] = new byte[0];
_L4:
        return abyte0;
_L2:
        byte abyte1[];
        int i;
        int j;
        int k;
        abyte1 = new byte[name.length - offset(0)];
        k = 0;
        i = offset(0);
        j = 0;
_L5:
        abyte0 = abyte1;
        if (k >= i1) goto _L4; else goto _L3
_L3:
        int l;
        byte byte0;
        byte0 = name[i];
        if (byte0 > 63)
        {
            throw new IllegalStateException("invalid label");
        }
        abyte1[j] = name[i];
        l = 0;
        j++;
        i++;
_L6:
label0:
        {
            if (l < byte0)
            {
                break label0;
            }
            k++;
        }
          goto _L5
        abyte1[j] = lowercase[name[i] & 0xff];
        l++;
        j++;
        i++;
          goto _L6
    }

    public Name wild(int i)
    {
        if (i < 1)
        {
            throw new IllegalArgumentException("must replace 1 or more labels");
        }
        Name name1;
        try
        {
            name1 = new Name();
            copy(wild, name1);
            name1.append(name, offset(i), getlabels() - i);
        }
        catch (NameTooLongException nametoolongexception)
        {
            throw new IllegalStateException("Name.wild: concatenate failed");
        }
        return name1;
    }

    static 
    {
        emptyLabel = new byte[1];
        byteFormat = new DecimalFormat();
        lowercase = new byte[256];
        byteFormat.setMinimumIntegerDigits(3);
        int i = 0;
        do
        {
            if (i >= lowercase.length)
            {
                root = new Name();
                root.appendSafe(emptyLabel, 0, 1);
                empty = new Name();
                empty.name = new byte[0];
                wild = new Name();
                wild.appendSafe(wildLabel, 0, 1);
                return;
            }
            if (i < 65 || i > 90)
            {
                lowercase[i] = (byte)i;
            } else
            {
                lowercase[i] = (byte)((i - 65) + 97);
            }
            i++;
        } while (true);
    }
}
