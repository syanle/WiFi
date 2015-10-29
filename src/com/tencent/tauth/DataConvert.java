// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;


public class DataConvert
{

    public DataConvert()
    {
    }

    public static int byteToInt2(byte abyte0[])
    {
        return (abyte0[0] << 24) + (abyte0[1] << 16) + (abyte0[2] << 8) + abyte0[3];
    }

    public static int bytesToInt(byte abyte0[])
    {
        return Integer.parseInt(new String(abyte0));
    }

    public static byte[] intToBytes(int i)
    {
        return String.valueOf(i).getBytes();
    }

    public static byte[] intToBytes2(int i)
    {
        byte abyte0[] = new byte[4];
        for (int j = 0; j < 4; j++)
        {
            abyte0[j] = (byte)(i >> 24 - j * 8);
        }

        return abyte0;
    }

    public static int putBytes2Bytes(byte abyte0[], int i, byte abyte1[], int j)
    {
        for (int k = 0; k < i; k++)
        {
            abyte1[j + k] = abyte0[k];
        }

        return abyte0.length;
    }

    public static int putBytes2Bytes(byte abyte0[], byte abyte1[], int i)
    {
        for (int j = 0; j < abyte0.length; j++)
        {
            abyte1[i + j] = abyte0[j];
        }

        return abyte0.length;
    }

    public static int putInt2Bytes(int i, byte abyte0[], int j)
    {
        byte abyte1[] = intToBytes2(i);
        for (i = 0; i < abyte1.length; i++)
        {
            abyte0[j + i] = abyte1[i];
        }

        return abyte1.length;
    }

    public static int putShort2Bytes(int i, byte abyte0[], int j)
    {
        byte abyte1[] = intToBytes2(i);
        abyte0[j + 0] = abyte1[2];
        abyte0[j + 1] = abyte1[3];
        return 2;
    }

    public static int putString2Bytes(String s, byte abyte0[], int i)
    {
        s = string2bytes(s);
        for (int j = 0; j < s.length; j++)
        {
            abyte0[i + j] = s[j];
        }

        return s.length;
    }

    public static byte[] string2ascii(String s)
    {
        int j = s.length();
        byte abyte0[] = new byte[j];
        for (int i = 0; i < j; i++)
        {
            abyte0[i] = (byte)Integer.parseInt(s.substring(i, i + 1));
        }

        return abyte0;
    }

    public static byte[] string2bytes(String s)
    {
        String s1 = s.replace(" ", "");
        int l = s1.length();
        int j = l / 2;
        int i = j;
        s = s1;
        if (l % 2 == 1)
        {
            s = (new StringBuilder()).append("0").append(s1).toString();
            i = j + 1;
        }
        byte abyte0[] = new byte[i];
        for (int k = 0; k < i; k++)
        {
            abyte0[k] = (byte)Integer.parseInt(s.substring(k * 2, k * 2 + 2), 16);
        }

        return abyte0;
    }

    public static String toHexString(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder(abyte0.length * 2);
        for (int i = 0; i < abyte0.length; i++)
        {
            String s1 = Integer.toString(abyte0[i] & 0xff, 16);
            String s = s1;
            if (s1.length() == 1)
            {
                s = (new StringBuilder()).append("0").append(s1).toString();
            }
            stringbuilder.append(s);
        }

        return stringbuilder.toString();
    }
}
