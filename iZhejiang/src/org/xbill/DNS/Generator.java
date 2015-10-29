// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            DClass, TextParseException, Type, Record, 
//            Name, Options

public class Generator
{

    private long current;
    public final int dclass;
    public long end;
    public final String namePattern;
    public final Name origin;
    public final String rdataPattern;
    public long start;
    public long step;
    public final long ttl;
    public final int type;

    public Generator(long l, long l1, long l2, String s, 
            int i, int j, long l3, String s1, Name name)
    {
        if (l < 0L || l1 < 0L || l > l1 || l2 <= 0L)
        {
            throw new IllegalArgumentException("invalid range specification");
        }
        if (!supportedType(i))
        {
            throw new IllegalArgumentException("unsupported type");
        } else
        {
            DClass.check(j);
            start = l;
            end = l1;
            step = l2;
            namePattern = s;
            type = i;
            dclass = j;
            ttl = l3;
            rdataPattern = s1;
            origin = name;
            current = l;
            return;
        }
    }

    private String substitute(String s, long l)
        throws IOException
    {
        byte abyte0[];
        StringBuffer stringbuffer;
        int i;
        boolean flag;
        flag = false;
        abyte0 = s.getBytes();
        stringbuffer = new StringBuffer();
        i = 0;
_L2:
        char c;
        int k;
        if (i >= abyte0.length)
        {
            return stringbuffer.toString();
        }
        c = (char)(abyte0[i] & 0xff);
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.append(c);
        k = 0;
_L3:
        i++;
        flag = k;
        if (true) goto _L2; else goto _L1
_L1:
        int i1;
        boolean flag1;
        int j1;
        long l1;
        long l3;
        long l5;
        if (c == '\\')
        {
            if (i + 1 == abyte0.length)
            {
                throw new TextParseException("invalid escape character");
            }
            k = 1;
        } else
        {
label0:
            {
                if (c != '$')
                {
                    break MISSING_BLOCK_LABEL_936;
                }
                i1 = 0;
                l3 = 0L;
                l1 = 0L;
                l5 = 10L;
                j1 = 0;
                flag1 = false;
                if (i + 1 >= abyte0.length || abyte0[i + 1] != 36)
                {
                    break label0;
                }
                i++;
                stringbuffer.append((char)(abyte0[i] & 0xff));
                k = ((flag) ? 1 : 0);
            }
        }
          goto _L3
        int j;
        long l4;
        long l6;
        long l7;
        l6 = l5;
        j = i;
        l7 = l3;
        k = j1;
        l4 = l1;
        if (i + 1 >= abyte0.length)
        {
            break MISSING_BLOCK_LABEL_786;
        }
        l6 = l5;
        j = i;
        l7 = l3;
        k = j1;
        l4 = l1;
        if (abyte0[i + 1] != 123)
        {
            break MISSING_BLOCK_LABEL_786;
        }
        j1 = i + 1;
        j = c;
        k = j1;
        i = i1;
        l4 = l3;
        if (j1 + 1 < abyte0.length)
        {
            j = c;
            k = j1;
            i = i1;
            l4 = l3;
            if (abyte0[j1 + 1] == 45)
            {
                i = 1;
                k = j1 + 1;
                l4 = l3;
                j = c;
            }
        }
_L15:
        if (k + 1 < abyte0.length) goto _L5; else goto _L4
_L4:
        l3 = l4;
        if (i != 0)
        {
            l3 = -l4;
        }
        i1 = j;
        i = k;
        l4 = l1;
        if (j != 44) goto _L7; else goto _L6
_L6:
        i = k;
_L18:
        if (i + 1 < abyte0.length) goto _L9; else goto _L8
_L8:
        l4 = l1;
        i1 = j;
_L7:
        l1 = l5;
        k = i;
        j = ((flag1) ? 1 : 0);
        if (i1 != 44) goto _L11; else goto _L10
_L10:
        char c1;
        if (i + 1 == abyte0.length)
        {
            throw new TextParseException("invalid base");
        }
        k = i + 1;
        i = (char)(abyte0[k] & 0xff);
          goto _L12
_L5:
        i1 = k + 1;
        c1 = (char)(abyte0[i1] & 0xff);
        j = c1;
        k = i1;
        if (c1 == ',') goto _L4; else goto _L13
_L13:
        j = c1;
        k = i1;
        if (c1 == '}') goto _L4; else goto _L14
_L14:
        if (c1 < '0' || c1 > '9')
        {
            throw new TextParseException("invalid offset");
        }
        j = (char)(c1 - 48);
        l4 = l4 * 10L + (long)j;
        k = i1;
          goto _L15
_L9:
        k = i + 1;
        j = (char)(abyte0[k] & 0xff);
        i1 = j;
        i = k;
        l4 = l1;
        if (j == 44) goto _L7; else goto _L16
_L16:
        i1 = j;
        i = k;
        l4 = l1;
        if (j == 125) goto _L7; else goto _L17
_L17:
        if (j < 48 || j > 57)
        {
            throw new TextParseException("invalid width");
        }
        j = (char)(j - 48);
        l1 = l1 * 10L + (long)j;
        i = k;
          goto _L18
_L12:
        if (i != 'o') goto _L20; else goto _L19
_L19:
        l1 = 8L;
        j = ((flag1) ? 1 : 0);
_L11:
        if (k + 1 == abyte0.length || abyte0[k + 1] != 125)
        {
            throw new TextParseException("invalid modifiers");
        }
        break; /* Loop/switch isn't completed */
_L20:
        if (i == 'x')
        {
            l1 = 16L;
            j = ((flag1) ? 1 : 0);
            continue; /* Loop/switch isn't completed */
        }
        if (i != 'X')
        {
            break; /* Loop/switch isn't completed */
        }
        l1 = 16L;
        j = 1;
        if (true) goto _L11; else goto _L21
_L21:
        l1 = l5;
        j = ((flag1) ? 1 : 0);
        if (i != 'd')
        {
            throw new TextParseException("invalid base");
        }
        if (true) goto _L11; else goto _L22
_L22:
        i = k + 1;
        k = j;
        l7 = l3;
        j = i;
        l6 = l1;
        long l2 = l + l7;
        if (l2 < 0L)
        {
            throw new TextParseException("invalid offset expansion");
        }
        String s1;
        if (l6 == 8L)
        {
            s = Long.toOctalString(l2);
        } else
        if (l6 == 16L)
        {
            s = Long.toHexString(l2);
        } else
        {
            s = Long.toString(l2);
        }
        s1 = s;
        if (k != 0)
        {
            s1 = s.toUpperCase();
        }
        if (l4 == 0L || l4 <= (long)s1.length()) goto _L24; else goto _L23
_L23:
        i = (int)l4 - s1.length();
_L25:
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_919;
        }
_L24:
        stringbuffer.append(s1);
        k = ((flag) ? 1 : 0);
        i = j;
          goto _L3
        stringbuffer.append('0');
        i--;
          goto _L25
        stringbuffer.append(c);
        k = ((flag) ? 1 : 0);
          goto _L3
    }

    public static boolean supportedType(int i)
    {
        boolean flag1 = true;
        Type.check(i);
        boolean flag = flag1;
        if (i != 12)
        {
            flag = flag1;
            if (i != 5)
            {
                flag = flag1;
                if (i != 39)
                {
                    flag = flag1;
                    if (i != 1)
                    {
                        flag = flag1;
                        if (i != 28)
                        {
                            flag = flag1;
                            if (i != 2)
                            {
                                flag = false;
                            }
                        }
                    }
                }
            }
        }
        return flag;
    }

    public Record[] expand()
        throws IOException
    {
        ArrayList arraylist = new ArrayList();
        long l = start;
        do
        {
            if (l >= end)
            {
                return (Record[])arraylist.toArray(new Record[arraylist.size()]);
            }
            Name name = Name.fromString(substitute(namePattern, current), origin);
            String s = substitute(rdataPattern, current);
            arraylist.add(Record.fromString(name, type, dclass, ttl, s, origin));
            l += step;
        } while (true);
    }

    public Record nextRecord()
        throws IOException
    {
        if (current > end)
        {
            return null;
        } else
        {
            Name name = Name.fromString(substitute(namePattern, current), origin);
            String s = substitute(rdataPattern, current);
            current = current + step;
            return Record.fromString(name, type, dclass, ttl, s, origin);
        }
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("$GENERATE ");
        stringbuffer.append((new StringBuilder(String.valueOf(start))).append("-").append(end).toString());
        if (step > 1L)
        {
            stringbuffer.append((new StringBuilder("/")).append(step).toString());
        }
        stringbuffer.append(" ");
        stringbuffer.append((new StringBuilder(String.valueOf(namePattern))).append(" ").toString());
        stringbuffer.append((new StringBuilder(String.valueOf(ttl))).append(" ").toString());
        if (dclass != 1 || !Options.check("noPrintIN"))
        {
            stringbuffer.append((new StringBuilder(String.valueOf(DClass.string(dclass)))).append(" ").toString());
        }
        stringbuffer.append((new StringBuilder(String.valueOf(Type.string(type)))).append(" ").toString());
        stringbuffer.append((new StringBuilder(String.valueOf(rdataPattern))).append(" ").toString());
        return stringbuffer.toString();
    }
}
