// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component.sso.tools;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

public class MD5Tools
{

    static final byte PADDING[];
    static final int S11 = 7;
    static final int S12 = 12;
    static final int S13 = 17;
    static final int S14 = 22;
    static final int S21 = 5;
    static final int S22 = 9;
    static final int S23 = 14;
    static final int S24 = 20;
    static final int S31 = 4;
    static final int S32 = 11;
    static final int S33 = 16;
    static final int S34 = 23;
    static final int S41 = 6;
    static final int S42 = 10;
    static final int S43 = 15;
    static final int S44 = 21;
    private byte buffer[];
    private long count[];
    private byte digest[];
    public String digestHexStr;
    private long state[];

    public MD5Tools()
    {
        state = new long[4];
        count = new long[2];
        buffer = new byte[64];
        digest = new byte[16];
        md5Init();
    }

    private void Decode(long al[], byte abyte0[], int i)
    {
        int k = 0;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            al[k] = b2iu(abyte0[j]) | b2iu(abyte0[j + 1]) << 8 | b2iu(abyte0[j + 2]) << 16 | b2iu(abyte0[j + 3]) << 24;
            k++;
            j += 4;
        } while (true);
    }

    private void Encode(byte abyte0[], long al[], int i)
    {
        int k = 0;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            abyte0[j] = (byte)(int)(al[k] & 255L);
            abyte0[j + 1] = (byte)(int)(al[k] >>> 8 & 255L);
            abyte0[j + 2] = (byte)(int)(al[k] >>> 16 & 255L);
            abyte0[j + 3] = (byte)(int)(al[k] >>> 24 & 255L);
            k++;
            j += 4;
        } while (true);
    }

    private long F(long l, long l1, long l2)
    {
        return l & l1 | (-1L ^ l) & l2;
    }

    private long FF(long l, long l1, long l2, long l3, long l4, long l5, long l6)
    {
        l += F(l1, l2, l3) + l4 + l6;
        return (long)((int)l << (int)l5 | (int)l >>> (int)(32L - l5)) + l1;
    }

    private long G(long l, long l1, long l2)
    {
        return l & l2 | (-1L ^ l2) & l1;
    }

    private long GG(long l, long l1, long l2, long l3, long l4, long l5, long l6)
    {
        l += G(l1, l2, l3) + l4 + l6;
        return (long)((int)l << (int)l5 | (int)l >>> (int)(32L - l5)) + l1;
    }

    private long H(long l, long l1, long l2)
    {
        return l ^ l1 ^ l2;
    }

    public static String HEXByte(byte abyte0[])
    {
        byte abyte1[];
        int i;
        try
        {
            abyte1 = new byte[abyte0.length / 2];
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0.printStackTrace();
            return "";
        }
        i = 0;
        if (i >= abyte1.length)
        {
            return new String(abyte1, "ISO-8859-1");
        }
        abyte1[i] = (byte)((getByte(abyte0[i * 2]) << 4) + getByte(abyte0[i * 2 + 1]));
        i++;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_9;
        }
    }

    private long HH(long l, long l1, long l2, long l3, long l4, long l5, long l6)
    {
        l += H(l1, l2, l3) + l4 + l6;
        return (long)((int)l << (int)l5 | (int)l >>> (int)(32L - l5)) + l1;
    }

    private long I(long l, long l1, long l2)
    {
        return (-1L ^ l2 | l) ^ l1;
    }

    private long II(long l, long l1, long l2, long l3, long l4, long l5, long l6)
    {
        l += I(l1, l2, l3) + l4 + l6;
        return (long)((int)l << (int)l5 | (int)l >>> (int)(32L - l5)) + l1;
    }

    public static long b2iu(byte byte0)
    {
        int i = byte0;
        if (byte0 < 0)
        {
            i = byte0 & 0xff;
        }
        return (long)i;
    }

    public static String byteHEX(byte byte0)
    {
        char ac[] = new char[16];
        char[] _tmp = ac;
        ac[0] = '0';
        ac[1] = '1';
        ac[2] = '2';
        ac[3] = '3';
        ac[4] = '4';
        ac[5] = '5';
        ac[6] = '6';
        ac[7] = '7';
        ac[8] = '8';
        ac[9] = '9';
        ac[10] = 'A';
        ac[11] = 'B';
        ac[12] = 'C';
        ac[13] = 'D';
        ac[14] = 'E';
        ac[15] = 'F';
        return new String(new char[] {
            ac[byte0 >>> 4 & 0xf], ac[byte0 & 0xf]
        });
    }

    private static byte getByte(byte byte0)
    {
        byte byte2 = 48;
        byte byte1;
        if (byte0 >= 48 && byte0 <= 57)
        {
            byte1 = (byte)(byte0 - 48);
        } else
        {
            if (byte0 >= 97 && byte0 <= 102)
            {
                return (byte)((byte0 - 97) + 10);
            }
            byte1 = byte2;
            if (byte0 >= 65)
            {
                byte1 = byte2;
                if (byte0 <= 70)
                {
                    return (byte)((byte0 - 65) + 10);
                }
            }
        }
        return byte1;
    }

    public static String getFileMD5(File file)
        throws FileNotFoundException
    {
        Object obj;
        byte abyte0[];
        file = new FileInputStream(file);
        abyte0 = new byte[1024];
        obj = new char[16];
        obj;
        obj[0] = '0';
        obj[1] = '1';
        obj[2] = '2';
        obj[3] = '3';
        obj[4] = '4';
        obj[5] = '5';
        obj[6] = '6';
        obj[7] = '7';
        obj[8] = '8';
        obj[9] = '9';
        obj[10] = 'a';
        obj[11] = 'b';
        obj[12] = 'c';
        obj[13] = 'd';
        obj[14] = 'e';
        obj[15] = 'f';
        char ac[] = MessageDigest.getInstance("MD5");
_L3:
        int i = file.read(abyte0, 0, 1024);
        if (i != -1) goto _L2; else goto _L1
_L1:
        abyte0 = ac.digest();
        ac = new char[32];
        int j;
        i = 0;
        j = 0;
_L4:
        if (i < 16)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        obj = new String(ac);
        file.close();
        return ((String) (obj));
_L2:
        ac.update(abyte0, 0, i);
          goto _L3
        obj;
        ((Exception) (obj)).printStackTrace();
        try
        {
            file.close();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
            return null;
        }
        return null;
        byte byte0 = abyte0[i];
        int k = j + 1;
        ac[j] = obj[byte0 >>> 4 & 0xf];
        j = k + 1;
        ac[k] = obj[byte0 & 0xf];
        i++;
          goto _L4
        obj;
        try
        {
            file.close();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
        }
        throw obj;
        file;
        file.printStackTrace();
        return ((String) (obj));
          goto _L3
    }

    public static String getMD5String(byte abyte0[])
    {
        char ac[];
        ac = new char[16];
        ac;
        ac[0] = '0';
        ac[1] = '1';
        ac[2] = '2';
        ac[3] = '3';
        ac[4] = '4';
        ac[5] = '5';
        ac[6] = '6';
        ac[7] = '7';
        ac[8] = '8';
        ac[9] = '9';
        ac[10] = 'a';
        ac[11] = 'b';
        ac[12] = 'c';
        ac[13] = 'd';
        ac[14] = 'e';
        ac[15] = 'f';
        char ac1[];
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(abyte0);
        abyte0 = messagedigest.digest();
        ac1 = new char[32];
        int i = 0;
        int j = 0;
        do
        {
            if (i >= 16)
            {
                byte byte0;
                int k;
                try
                {
                    return new String(ac1);
                }
                // Misplaced declaration of an exception variable
                catch (byte abyte0[])
                {
                    abyte0.printStackTrace();
                }
                break;
            }
            byte0 = abyte0[i];
            k = j + 1;
            ac1[j] = ac[byte0 >>> 4 & 0xf];
            j = k + 1;
            ac1[k] = ac[byte0 & 0xf];
            i++;
        } while (true);
        return null;
    }

    private void md5Final()
    {
        byte abyte0[] = new byte[8];
        Encode(abyte0, count, 8);
        int i = (int)(count[0] >>> 3) & 0x3f;
        if (i < 56)
        {
            i = 56 - i;
        } else
        {
            i = 120 - i;
        }
        md5Update(PADDING, i);
        md5Update(abyte0, 8);
        Encode(digest, state, 16);
    }

    private void md5Init()
    {
        count[0] = 0L;
        count[1] = 0L;
        state[0] = 0x67452301L;
        state[1] = 0xefcdab89L;
        state[2] = 0x98badcfeL;
        state[3] = 0x10325476L;
    }

    private void md5Memcpy(byte abyte0[], byte abyte1[], int i, int j, int k)
    {
        int l = 0;
        do
        {
            if (l >= k)
            {
                return;
            }
            abyte0[i + l] = abyte1[j + l];
            l++;
        } while (true);
    }

    private void md5Transform(byte abyte0[])
    {
        long l1 = state[0];
        long l = state[1];
        long l3 = state[2];
        long l2 = state[3];
        long al[] = new long[16];
        Decode(al, abyte0, 64);
        l1 = FF(l1, l, l3, l2, al[0], 7L, 0xd76aa478L);
        l2 = FF(l2, l1, l, l3, al[1], 12L, 0xe8c7b756L);
        l3 = FF(l3, l2, l1, l, al[2], 17L, 0x242070dbL);
        l = FF(l, l3, l2, l1, al[3], 22L, 0xc1bdceeeL);
        l1 = FF(l1, l, l3, l2, al[4], 7L, 0xf57c0fafL);
        l2 = FF(l2, l1, l, l3, al[5], 12L, 0x4787c62aL);
        l3 = FF(l3, l2, l1, l, al[6], 17L, 0xa8304613L);
        l = FF(l, l3, l2, l1, al[7], 22L, 0xfd469501L);
        l1 = FF(l1, l, l3, l2, al[8], 7L, 0x698098d8L);
        l2 = FF(l2, l1, l, l3, al[9], 12L, 0x8b44f7afL);
        l3 = FF(l3, l2, l1, l, al[10], 17L, 0xffff5bb1L);
        l = FF(l, l3, l2, l1, al[11], 22L, 0x895cd7beL);
        l1 = FF(l1, l, l3, l2, al[12], 7L, 0x6b901122L);
        l2 = FF(l2, l1, l, l3, al[13], 12L, 0xfd987193L);
        l3 = FF(l3, l2, l1, l, al[14], 17L, 0xa679438eL);
        l = FF(l, l3, l2, l1, al[15], 22L, 0x49b40821L);
        l1 = GG(l1, l, l3, l2, al[1], 5L, 0xf61e2562L);
        l2 = GG(l2, l1, l, l3, al[6], 9L, 0xc040b340L);
        l3 = GG(l3, l2, l1, l, al[11], 14L, 0x265e5a51L);
        l = GG(l, l3, l2, l1, al[0], 20L, 0xe9b6c7aaL);
        l1 = GG(l1, l, l3, l2, al[5], 5L, 0xd62f105dL);
        l2 = GG(l2, l1, l, l3, al[10], 9L, 0x2441453L);
        l3 = GG(l3, l2, l1, l, al[15], 14L, 0xd8a1e681L);
        l = GG(l, l3, l2, l1, al[4], 20L, 0xe7d3fbc8L);
        l1 = GG(l1, l, l3, l2, al[9], 5L, 0x21e1cde6L);
        l2 = GG(l2, l1, l, l3, al[14], 9L, 0xc33707d6L);
        l3 = GG(l3, l2, l1, l, al[3], 14L, 0xf4d50d87L);
        l = GG(l, l3, l2, l1, al[8], 20L, 0x455a14edL);
        l1 = GG(l1, l, l3, l2, al[13], 5L, 0xa9e3e905L);
        l2 = GG(l2, l1, l, l3, al[2], 9L, 0xfcefa3f8L);
        l3 = GG(l3, l2, l1, l, al[7], 14L, 0x676f02d9L);
        l = GG(l, l3, l2, l1, al[12], 20L, 0x8d2a4c8aL);
        l1 = HH(l1, l, l3, l2, al[5], 4L, 0xfffa3942L);
        l2 = HH(l2, l1, l, l3, al[8], 11L, 0x8771f681L);
        l3 = HH(l3, l2, l1, l, al[11], 16L, 0x6d9d6122L);
        l = HH(l, l3, l2, l1, al[14], 23L, 0xfde5380cL);
        l1 = HH(l1, l, l3, l2, al[1], 4L, 0xa4beea44L);
        l2 = HH(l2, l1, l, l3, al[4], 11L, 0x4bdecfa9L);
        l3 = HH(l3, l2, l1, l, al[7], 16L, 0xf6bb4b60L);
        l = HH(l, l3, l2, l1, al[10], 23L, 0xbebfbc70L);
        l1 = HH(l1, l, l3, l2, al[13], 4L, 0x289b7ec6L);
        l2 = HH(l2, l1, l, l3, al[0], 11L, 0xeaa127faL);
        l3 = HH(l3, l2, l1, l, al[3], 16L, 0xd4ef3085L);
        l = HH(l, l3, l2, l1, al[6], 23L, 0x4881d05L);
        l1 = HH(l1, l, l3, l2, al[9], 4L, 0xd9d4d039L);
        l2 = HH(l2, l1, l, l3, al[12], 11L, 0xe6db99e5L);
        l3 = HH(l3, l2, l1, l, al[15], 16L, 0x1fa27cf8L);
        l = HH(l, l3, l2, l1, al[2], 23L, 0xc4ac5665L);
        l1 = II(l1, l, l3, l2, al[0], 6L, 0xf4292244L);
        l2 = II(l2, l1, l, l3, al[7], 10L, 0x432aff97L);
        l3 = II(l3, l2, l1, l, al[14], 15L, 0xab9423a7L);
        l = II(l, l3, l2, l1, al[5], 21L, 0xfc93a039L);
        l1 = II(l1, l, l3, l2, al[12], 6L, 0x655b59c3L);
        l2 = II(l2, l1, l, l3, al[3], 10L, 0x8f0ccc92L);
        l3 = II(l3, l2, l1, l, al[10], 15L, 0xffeff47dL);
        l = II(l, l3, l2, l1, al[1], 21L, 0x85845dd1L);
        l1 = II(l1, l, l3, l2, al[8], 6L, 0x6fa87e4fL);
        l2 = II(l2, l1, l, l3, al[15], 10L, 0xfe2ce6e0L);
        l3 = II(l3, l2, l1, l, al[6], 15L, 0xa3014314L);
        l = II(l, l3, l2, l1, al[13], 21L, 0x4e0811a1L);
        l1 = II(l1, l, l3, l2, al[4], 6L, 0xf7537e82L);
        l2 = II(l2, l1, l, l3, al[11], 10L, 0xbd3af235L);
        l3 = II(l3, l2, l1, l, al[2], 15L, 0x2ad7d2bbL);
        l = II(l, l3, l2, l1, al[9], 21L, 0xeb86d391L);
        abyte0 = state;
        abyte0[0] = abyte0[0] + l1;
        abyte0 = state;
        abyte0[1] = abyte0[1] + l;
        abyte0 = state;
        abyte0[2] = abyte0[2] + l3;
        abyte0 = state;
        abyte0[3] = abyte0[3] + l2;
    }

    private void md5Update(byte abyte0[], int i)
    {
        byte abyte1[];
        int j;
        abyte1 = new byte[64];
        j = (int)(count[0] >>> 3) & 0x3f;
        long al[] = count;
        long l1 = al[0] + (long)(i << 3);
        al[0] = l1;
        if (l1 < (long)(i << 3))
        {
            al = count;
            al[1] = al[1] + 1L;
        }
        al = count;
        al[1] = al[1] + (long)(i >>> 29);
        int k = 64 - j;
        if (i < k)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        md5Memcpy(buffer, abyte0, j, 0, k);
        md5Transform(buffer);
        j = k;
_L3:
        if (j + 63 < i) goto _L2; else goto _L1
_L1:
        int l;
        boolean flag = false;
        l = j;
        j = ((flag) ? 1 : 0);
_L4:
        md5Memcpy(buffer, abyte0, j, l, i - l);
        return;
_L2:
        md5Memcpy(abyte1, abyte0, 0, j, 64);
        md5Transform(abyte1);
        j += 64;
          goto _L3
        l = 0;
          goto _L4
    }

    private boolean md5Update(InputStream inputstream, long l)
    {
        byte abyte0[];
        int i;
        int j;
        abyte0 = new byte[64];
        i = (int)(count[0] >>> 3) & 0x3f;
        long al[] = count;
        long l1 = al[0] + (l << 3);
        al[0] = l1;
        if (l1 < l << 3)
        {
            al = count;
            al[1] = al[1] + 1L;
        }
        al = count;
        al[1] = al[1] + (l >>> 29);
        j = 64 - i;
        if (l < (long)j) goto _L2; else goto _L1
_L1:
        byte abyte1[] = new byte[j];
        boolean flag;
        try
        {
            inputstream.read(abyte1, 0, j);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
            return false;
        }
        md5Memcpy(buffer, abyte1, i, 0, j);
        md5Transform(buffer);
        i = j;
_L8:
        if ((long)(i + 63) < l) goto _L4; else goto _L3
_L3:
        flag = false;
        j = i;
        i = ((flag) ? 1 : 0);
_L6:
        abyte0 = new byte[(int)(l - (long)j)];
        inputstream.read(abyte0);
        md5Memcpy(buffer, abyte0, i, 0, abyte0.length);
        return true;
_L4:
        try
        {
            inputstream.read(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
            return false;
        }
        md5Transform(abyte0);
        i += 64;
        continue; /* Loop/switch isn't completed */
_L2:
        j = 0;
        if (true) goto _L6; else goto _L5
_L5:
        inputstream;
        inputstream.printStackTrace();
        return false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static String toMD5(InputStream inputstream, long l)
    {
        byte abyte0[] = (new MD5Tools()).getMD5(inputstream, l);
        inputstream = "";
        int i = 0;
        do
        {
            if (i >= 16)
            {
                return inputstream;
            }
            inputstream = (new StringBuilder(String.valueOf(inputstream))).append(byteHEX(abyte0[i])).toString();
            i++;
        } while (true);
    }

    public static String toMD5(String s)
    {
        byte abyte0[] = s.getBytes("ISO8859_1");
        s = abyte0;
_L1:
        Object obj;
        int i;
        obj = (new MD5Tools()).getMD5(s);
        s = "";
        i = 0;
_L2:
        if (i >= 16)
        {
            return s;
        }
        break MISSING_BLOCK_LABEL_44;
        obj;
        s = s.getBytes();
          goto _L1
        s = (new StringBuilder(String.valueOf(s))).append(byteHEX(obj[i])).toString();
        i++;
          goto _L2
    }

    public static String toMD5(byte abyte0[])
    {
        byte abyte1[] = (new MD5Tools()).getMD5(abyte0);
        abyte0 = "";
        int i = 0;
        do
        {
            if (i >= 16)
            {
                return abyte0;
            }
            abyte0 = (new StringBuilder(String.valueOf(abyte0))).append(byteHEX(abyte1[i])).toString();
            i++;
        } while (true);
    }

    public static byte[] toMD5Byte(InputStream inputstream, long l)
    {
        return (new MD5Tools()).getMD5(inputstream, l);
    }

    public static byte[] toMD5Byte(String s)
    {
        byte abyte0[] = s.getBytes("ISO8859_1");
        s = abyte0;
_L2:
        return (new MD5Tools()).getMD5(s);
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        s = s.getBytes();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static byte[] toMD5Byte(byte abyte0[])
    {
        return (new MD5Tools()).getMD5(abyte0);
    }

    public byte[] getMD5(InputStream inputstream, long l)
    {
        md5Init();
        if (!md5Update(inputstream, l))
        {
            return new byte[16];
        } else
        {
            md5Final();
            return digest;
        }
    }

    public byte[] getMD5(byte abyte0[])
    {
        md5Init();
        md5Update(new ByteArrayInputStream(abyte0), abyte0.length);
        md5Final();
        return digest;
    }

    static 
    {
        byte abyte0[] = new byte[64];
        abyte0[0] = -128;
        PADDING = abyte0;
    }
}
