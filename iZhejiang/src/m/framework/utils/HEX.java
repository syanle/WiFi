// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.utils;


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
        int k = ac.length;
        if ((k & 1) != 0)
        {
            throw new RuntimeException("Odd number of characters.");
        }
        byte abyte0[] = new byte[k >> 1];
        int i = 0;
        int j = 0;
        do
        {
            if (j >= k)
            {
                return abyte0;
            }
            int l = toDigit(ac[j], j);
            j++;
            int i1 = toDigit(ac[j], j);
            j++;
            abyte0[i] = (byte)((l << 4 | i1) & 0xff);
            i++;
        } while (true);
    }

    public static byte[] decodeHexString(String s)
    {
        return decodeHex(s.toCharArray());
    }

    public static char[] encodeHex(byte abyte0[])
    {
        int k = abyte0.length;
        char ac[] = new char[k << 1];
        int i = 0;
        int j = 0;
        do
        {
            if (i >= k)
            {
                return ac;
            }
            int l = j + 1;
            ac[j] = DIGITS[(abyte0[i] & 0xf0) >>> 4];
            j = l + 1;
            ac[l] = DIGITS[abyte0[i] & 0xf];
            i++;
        } while (true);
    }

    public static String encodeHexString(byte abyte0[])
    {
        return new String(encodeHex(abyte0));
    }

    public static byte[] toByte(String s)
    {
        byte abyte0[] = null;
        if (s != null) goto _L2; else goto _L1
_L1:
        int i;
        return abyte0;
_L2:
        if ((i = s.length()) % 2 == 1)
        {
            continue;
        }
        int j = i / 2;
        byte abyte1[] = new byte[j];
        i = 0;
        do
        {
            abyte0 = abyte1;
            if (i >= j)
            {
                continue;
            }
            abyte1[i] = (byte)Integer.parseInt(s.substring(i * 2, i * 2 + 2), 16);
            i++;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected static int toDigit(char c, int i)
    {
        int j = Character.digit(c, 16);
        if (j == -1)
        {
            throw new RuntimeException((new StringBuilder("Illegal hexadecimal charcter ")).append(c).append(" at index ").append(i).toString());
        } else
        {
            return j;
        }
    }

    public static String toHex(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return stringbuffer.toString();
            }
            stringbuffer.append(String.format("%02x", new Object[] {
                Byte.valueOf(abyte0[i])
            }));
            i++;
        } while (true);
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
                obj = (char[])obj;
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
                obj = (byte[])obj;
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
