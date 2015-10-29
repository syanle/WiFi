// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS.utils;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class base32
{
    public static class Alphabet
    {

        public static final String BASE32 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567=";
        public static final String BASE32HEX = "0123456789ABCDEFGHIJKLMNOPQRSTUV=";

        private Alphabet()
        {
        }
    }


    private String alphabet;
    private boolean lowercase;
    private boolean padding;

    public base32(String s, boolean flag, boolean flag1)
    {
        alphabet = s;
        padding = flag;
        lowercase = flag1;
    }

    private static int blockLenToPadding(int i)
    {
        switch (i)
        {
        default:
            return -1;

        case 1: // '\001'
            return 6;

        case 2: // '\002'
            return 4;

        case 3: // '\003'
            return 3;

        case 4: // '\004'
            return 1;

        case 5: // '\005'
            return 0;
        }
    }

    private static int paddingToBlockLen(int i)
    {
        switch (i)
        {
        case 2: // '\002'
        case 5: // '\005'
        default:
            return -1;

        case 6: // '\006'
            return 1;

        case 4: // '\004'
            return 2;

        case 3: // '\003'
            return 3;

        case 1: // '\001'
            return 4;

        case 0: // '\0'
            return 5;
        }
    }

    public byte[] fromString(String s)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        int i;
        bytearrayoutputstream = new ByteArrayOutputStream();
        s = s.getBytes();
        i = 0;
_L4:
        if (i < s.length) goto _L2; else goto _L1
_L2:
        char c = (char)s[i];
        if (!Character.isWhitespace(c))
        {
            bytearrayoutputstream.write((byte)Character.toUpperCase(c));
        }
        i++;
        if (true) goto _L4; else goto _L3
_L1:
        if (padding)
        {
            if (bytearrayoutputstream.size() % 8 != 0)
            {
                return null;
            }
            break; /* Loop/switch isn't completed */
        }
        for (; bytearrayoutputstream.size() % 8 != 0; bytearrayoutputstream.write(61)) { }
_L3:
        DataOutputStream dataoutputstream;
        s = bytearrayoutputstream.toByteArray();
        bytearrayoutputstream.reset();
        dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        i = 0;
_L7:
        short aword0[];
        int j;
        int k;
        if (i >= s.length / 8)
        {
            return bytearrayoutputstream.toByteArray();
        }
        aword0 = new short[8];
        k = 8;
        j = 0;
        break MISSING_BLOCK_LABEL_139;
        while (j < 8 && (char)s[i * 8 + j] != '=') 
        {
            aword0[j] = (short)alphabet.indexOf(s[i * 8 + j]);
            if (aword0[j] < 0)
            {
                return null;
            }
            k--;
            j++;
        }
        k = paddingToBlockLen(k);
        if (k < 0)
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_224;
        short word0;
        short word1;
        short word2;
        short word3;
        short word4;
        short word5;
        short word6;
        short word7;
        short word8;
        short word9;
        short word10;
        short word11;
        word0 = aword0[0];
        word1 = aword0[1];
        word2 = aword0[1];
        word3 = aword0[2];
        word4 = aword0[3];
        word5 = aword0[3];
        word6 = aword0[4];
        word7 = aword0[4];
        word8 = aword0[5];
        word9 = aword0[6];
        word10 = aword0[6];
        word11 = aword0[7];
        j = 0;
_L8:
        if (j < k) goto _L6; else goto _L5
_L5:
        i++;
          goto _L7
_L6:
        dataoutputstream.writeByte((byte)((new int[] {
            word0 << 3 | word1 >> 2, (word2 & 3) << 6 | word3 << 1 | word4 >> 4, (word5 & 0xf) << 4 | word6 >> 1 & 0xf, word7 << 7 | word8 << 2 | word9 >> 3, (word10 & 7) << 5 | word11
        })[j] & 0xff));
        j++;
          goto _L8
        IOException ioexception;
        ioexception;
          goto _L5
    }

    public String toString(byte abyte0[])
    {
        ByteArrayOutputStream bytearrayoutputstream;
        int i;
        bytearrayoutputstream = new ByteArrayOutputStream();
        i = 0;
_L7:
        short aword0[];
        int ai[];
        int j;
        int k;
        if (i >= (abyte0.length + 4) / 5)
        {
            return new String(bytearrayoutputstream.toByteArray());
        }
        aword0 = new short[5];
        ai = new int[8];
        k = 5;
        j = 0;
_L8:
        if (j < 5) goto _L2; else goto _L1
_L1:
        int l;
        l = blockLenToPadding(k);
        ai[0] = (byte)(aword0[0] >> 3 & 0x1f);
        ai[1] = (byte)((aword0[0] & 7) << 2 | aword0[1] >> 6 & 3);
        ai[2] = (byte)(aword0[1] >> 1 & 0x1f);
        ai[3] = (byte)((aword0[1] & 1) << 4 | aword0[2] >> 4 & 0xf);
        ai[4] = (byte)((aword0[2] & 0xf) << 1 | aword0[3] >> 7 & 1);
        ai[5] = (byte)(aword0[3] >> 2 & 0x1f);
        ai[6] = (byte)((aword0[3] & 3) << 3 | aword0[4] >> 5 & 7);
        ai[7] = (byte)(aword0[4] & 0x1f);
        j = 0;
_L9:
        if (j < ai.length - l) goto _L4; else goto _L3
_L3:
        if (!padding) goto _L6; else goto _L5
_L5:
        j = ai.length - l;
_L10:
        if (j < ai.length)
        {
            break MISSING_BLOCK_LABEL_359;
        }
_L6:
        i++;
          goto _L7
_L2:
        if (i * 5 + j < abyte0.length)
        {
            aword0[j] = (short)(abyte0[i * 5 + j] & 0xff);
        } else
        {
            aword0[j] = 0;
            k--;
        }
        j++;
          goto _L8
_L4:
        char c = alphabet.charAt(ai[j]);
        char c1 = c;
        if (lowercase)
        {
            c1 = Character.toLowerCase(c);
        }
        bytearrayoutputstream.write(c1);
        j++;
          goto _L9
        bytearrayoutputstream.write(61);
        j++;
          goto _L10
    }
}
