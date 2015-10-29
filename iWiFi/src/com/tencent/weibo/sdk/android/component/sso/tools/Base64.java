// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component.sso.tools;


public class Base64
{

    public Base64()
    {
    }

    public static byte[] decode(String s)
    {
        byte abyte0[];
        int i;
        int j;
        j = 0;
        i = s.length() - 1;
        do
        {
            if (s.charAt(i) != '=')
            {
                abyte0 = new byte[(s.length() * 6) / 8 - j];
                j = 0;
                i = 0;
                break MISSING_BLOCK_LABEL_38;
            }
            j++;
            i--;
        } while (true);
_L2:
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        if (i >= s.length())
        {
            return abyte0;
        }
        l = getValue(s.charAt(i));
        i1 = getValue(s.charAt(i + 1));
        j1 = getValue(s.charAt(i + 2));
        k1 = getValue(s.charAt(i + 3));
        k = 0;
_L3:
label0:
        {
            if (k < 3 && j + k < abyte0.length)
            {
                break label0;
            }
            j += 3;
            i += 4;
        }
        if (true) goto _L2; else goto _L1
_L1:
        abyte0[j + k] = (byte)((l << 18) + (i1 << 12) + (j1 << 6) + k1 >> (2 - k) * 8 & 0xff);
        k++;
          goto _L3
    }

    public static String encode(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return stringbuffer.toString();
            }
            stringbuffer.append(encodeBlock(abyte0, i));
            i += 3;
        } while (true);
    }

    protected static char[] encodeBlock(byte abyte0[], int i)
    {
        int k;
        int l;
        k = 0;
        int j1 = abyte0.length - i - 1;
        int j;
        if (j1 >= 2)
        {
            j = 2;
        } else
        {
            j = j1;
        }
        l = 0;
_L3:
        if (l <= j) goto _L2; else goto _L1
_L1:
        abyte0 = new char[4];
        i = 0;
_L4:
        if (i >= 4)
        {
            if (j1 < 1)
            {
                abyte0[2] = 61;
            }
            if (j1 < 2)
            {
                abyte0[3] = 61;
            }
            return abyte0;
        }
        break MISSING_BLOCK_LABEL_114;
_L2:
        int i1 = abyte0[i + l];
        if (i1 < 0)
        {
            i1 += 256;
        }
        k += i1 << (2 - l) * 8;
        l++;
          goto _L3
        abyte0[i] = getChar(k >>> (3 - i) * 6 & 0x3f);
        i++;
          goto _L4
    }

    protected static char getChar(int i)
    {
        char c = '?';
        if (i >= 0 && i <= 25)
        {
            c = (char)(i + 65);
        } else
        {
            if (i >= 26 && i <= 51)
            {
                return (char)((i - 26) + 97);
            }
            if (i >= 52 && i <= 61)
            {
                return (char)((i - 52) + 48);
            }
            if (i == 62)
            {
                return '+';
            }
            if (i == 63)
            {
                return '/';
            }
        }
        return c;
    }

    protected static int getValue(char c)
    {
        if (c >= 'A' && c <= 'Z')
        {
            return c - 65;
        }
        if (c >= 'a' && c <= 'z')
        {
            return (c - 97) + 26;
        }
        if (c >= '0' && c <= '9')
        {
            return (c - 48) + 52;
        }
        if (c == '+')
        {
            return 62;
        }
        if (c == '/')
        {
            return 63;
        }
        return c != '=' ? -1 : 0;
    }
}
