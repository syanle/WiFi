// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            InvalidTTLException

public final class TTL
{

    public static final long MAX_VALUE = 0x7fffffffL;

    private TTL()
    {
    }

    static void check(long l)
    {
        if (l < 0L || l > 0x7fffffffL)
        {
            throw new InvalidTTLException(l);
        } else
        {
            return;
        }
    }

    public static String format(long l)
    {
        check(l);
        StringBuffer stringbuffer = new StringBuffer();
        long l1 = l % 60L;
        long l2 = l / 60L;
        l = l2 % 60L;
        long l3 = l2 / 60L;
        l2 = l3 % 24L;
        long l4 = l3 / 24L;
        l3 = l4 % 7L;
        l4 /= 7L;
        if (l4 > 0L)
        {
            stringbuffer.append((new StringBuilder(String.valueOf(l4))).append("W").toString());
        }
        if (l3 > 0L)
        {
            stringbuffer.append((new StringBuilder(String.valueOf(l3))).append("D").toString());
        }
        if (l2 > 0L)
        {
            stringbuffer.append((new StringBuilder(String.valueOf(l2))).append("H").toString());
        }
        if (l > 0L)
        {
            stringbuffer.append((new StringBuilder(String.valueOf(l))).append("M").toString());
        }
        if (l1 > 0L || l4 == 0L && l3 == 0L && l2 == 0L && l == 0L)
        {
            stringbuffer.append((new StringBuilder(String.valueOf(l1))).append("S").toString());
        }
        return stringbuffer.toString();
    }

    public static long parse(String s, boolean flag)
    {
        if (s == null || s.length() == 0 || !Character.isDigit(s.charAt(0)))
        {
            throw new NumberFormatException();
        }
        long l = 0L;
        long l1 = 0L;
        int i = 0;
        long l2;
        do
        {
            if (i >= s.length())
            {
                l2 = l1;
                if (l1 == 0L)
                {
                    l2 = l;
                }
                if (l2 > 0xffffffffL)
                {
                    throw new NumberFormatException();
                }
                break;
            }
            char c = s.charAt(i);
            if (Character.isDigit(c))
            {
                long l3 = 10L * l + (long)Character.getNumericValue(c);
                l2 = l3;
                if (l3 < l)
                {
                    throw new NumberFormatException();
                }
            } else
            {
                l2 = l;
                long l4 = l;
                long l5 = l;
                long l6 = l;
                switch (Character.toUpperCase(c))
                {
                default:
                    throw new NumberFormatException();

                case 87: // 'W'
                    l2 = l * 7L;
                    // fall through

                case 68: // 'D'
                    l4 = l2 * 24L;
                    // fall through

                case 72: // 'H'
                    l5 = l4 * 60L;
                    // fall through

                case 77: // 'M'
                    l6 = l5 * 60L;
                    // fall through

                case 83: // 'S'
                    l = l1 + l6;
                    break;
                }
                l2 = 0L;
                l1 = l;
                if (l > 0xffffffffL)
                {
                    throw new NumberFormatException();
                }
            }
            i++;
            l = l2;
        } while (true);
        l = l2;
        if (l2 > 0x7fffffffL)
        {
            l = l2;
            if (flag)
            {
                l = 0x7fffffffL;
            }
        }
        return l;
    }

    public static long parseTTL(String s)
    {
        return parse(s, true);
    }
}
