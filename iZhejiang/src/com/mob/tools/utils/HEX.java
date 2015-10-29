// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;


// Referenced classes of package com.mob.tools.utils:
//            Ln, R

public class HEX
{

    private static final char DIGITS[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };

    public HEX()
    {
    }

    public static byte[] decodeHex(char ac[])
    {
        int j;
        int k;
        j = 0;
        k = ac.length;
        if ((k & 1) == 0) goto _L2; else goto _L1
_L1:
        byte abyte0[];
        Ln.w(new RuntimeException("Odd number of characters."));
        abyte0 = null;
_L4:
        return abyte0;
_L2:
        byte abyte1[] = new byte[k >> 1];
        int i = 0;
        do
        {
            abyte0 = abyte1;
            if (j >= k)
            {
                continue;
            }
            int l = toDigit(ac[j], j);
            j++;
            int i1 = toDigit(ac[j], j);
            j++;
            abyte1[i] = (byte)((l << 4 | i1) & 0xff);
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static byte[] decodeHexString(String s)
    {
        return decodeHex(s.toCharArray());
    }

    public static char[] encodeHex(byte abyte0[])
    {
        int j = 0;
        int k = abyte0.length;
        char ac[] = new char[k << 1];
        for (int i = 0; i < k; i++)
        {
            int l = j + 1;
            ac[j] = DIGITS[(abyte0[i] & 0xf0) >>> 4];
            j = l + 1;
            ac[l] = DIGITS[abyte0[i] & 0xf];
        }

        return ac;
    }

    public static String encodeHexString(byte abyte0[])
    {
        return new String(encodeHex(abyte0));
    }

    public static byte[] toByte(String s)
    {
        int i;
        if (s != null)
        {
            if ((i = s.length()) % 2 != 1)
            {
                int j = i / 2;
                byte abyte0[] = new byte[j];
                i = 0;
                do
                {
                    if (i >= j)
                    {
                        break;
                    }
                    try
                    {
                        abyte0[i] = (byte)R.parseInt(s.substring(i * 2, i * 2 + 2), 16);
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        Ln.w(s);
                        return null;
                    }
                    i++;
                } while (true);
                return abyte0;
            }
        }
        return null;
    }

    protected static int toDigit(char c, int i)
    {
        int j = Character.digit(c, 16);
        if (j == -1)
        {
            throw new RuntimeException((new StringBuilder()).append("Illegal hexadecimal charcter ").append(c).append(" at index ").append(i).toString());
        } else
        {
            return j;
        }
    }

    public static String toHex(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < abyte0.length; i++)
        {
            stringbuffer.append(String.format("%02x", new Object[] {
                Byte.valueOf(abyte0[i])
            }));
        }

        return stringbuffer.toString();
    }

    public byte[] decode(Object obj)
    {
        try
        {
            if (obj instanceof String)
            {
                obj = ((String)obj).toCharArray();
            } else
            {
                obj = (char[])(char[])obj;
            }
            return decodeHex(((char []) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new RuntimeException(((ClassCastException) (obj)).getMessage());
        }
    }

    public byte[] decode(byte abyte0[])
    {
        return decodeHex((new String(abyte0)).toCharArray());
    }

    public byte[] encode(byte abyte0[])
    {
        return (new String(encodeHex(abyte0))).getBytes();
    }

    public char[] encode(Object obj)
    {
        try
        {
            if (obj instanceof String)
            {
                obj = ((String)obj).getBytes();
            } else
            {
                obj = (byte[])(byte[])obj;
            }
            return encodeHex(((byte []) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new RuntimeException(((ClassCastException) (obj)).getMessage());
        }
    }

}
