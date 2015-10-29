// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component.sso.tools;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Random;

public class Cryptor
{

    public static final int QUOTIENT = 0x4c11db7;
    public static final int SALT_LEN = 2;
    public static final int ZERO_LEN = 7;
    private int contextStart;
    private int crypt;
    private boolean header;
    private byte key[];
    private byte out[];
    private int padding;
    private byte plain[];
    private int pos;
    private int preCrypt;
    private byte prePlain[];
    private Random random;

    public Cryptor()
    {
        header = true;
        random = new Random();
    }

    public static int CRC32Hash(byte abyte0[])
    {
        int i;
        int j;
        int l;
        l = abyte0.length;
        i = -1;
        j = 0;
_L2:
        if (j >= l)
        {
            return ~i;
        }
        byte byte0 = abyte0[j];
        int k = 0;
        do
        {
label0:
            {
                if (k < 8)
                {
                    break label0;
                }
                j++;
            }
            if (true)
            {
                continue;
            }
            if ((byte0 ^ i) >>> 31 == 1)
            {
                i = i << 1 ^ 0x4c11db7;
            } else
            {
                i <<= 1;
            }
            byte0 <<= 1;
            k++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static byte[] MD5Hash(byte abyte0[], int i)
    {
        return new byte[2];
    }

    public static int _4bytesDecryptAFrame(long l, byte abyte0[])
    {
        short aword0[] = new short[2];
        aword0[0] = (short)(int)(65535L & l);
        aword0[1] = (short)(int)(l >> 16);
        short aword1[] = new short[4];
        aword1[0] = (short)(abyte0[1] << 8 | abyte0[0]);
        aword1[1] = (short)(abyte0[3] << 8 | abyte0[2]);
        aword1[2] = (short)(abyte0[5] << 8 | abyte0[4]);
        aword1[3] = (short)(abyte0[7] << 8 | abyte0[6]);
        short word0 = aword0[0];
        short word1 = aword0[1];
        short word3 = (short)0x64be0;
        short word2 = 32;
        do
        {
            short word4 = (short)(word2 - 1);
            if (word2 <= 0)
            {
                aword0[0] = word0;
                aword0[1] = word1;
                return aword0[1] << 16 | aword0[0] & 0xffff;
            }
            word1 -= (word0 << 4) + aword1[2] ^ word0 + word3 ^ (word0 >> 5) + aword1[3];
            word0 -= (word1 << 4) + aword1[0] ^ word1 + word3 ^ (word1 >> 5) + aword1[1];
            word3 -= 12895;
            word2 = word4;
        } while (true);
    }

    public static byte[] _4bytesEncryptAFrame(int i, byte abyte0[])
    {
        short aword0[] = new short[2];
        aword0[0] = (short)(0xffff & i);
        aword0[1] = (short)(i >>> 16);
        short aword1[] = new short[4];
        aword1[0] = (short)(abyte0[1] << 8 | abyte0[0]);
        aword1[1] = (short)(abyte0[3] << 8 | abyte0[2]);
        aword1[2] = (short)(abyte0[5] << 8 | abyte0[4]);
        aword1[3] = (short)(abyte0[7] << 8 | abyte0[6]);
        short word0 = aword0[0];
        i = aword0[1];
        short word2 = 0;
        short word1 = 32;
        do
        {
            short word3 = (short)(word1 - 1);
            if (word1 <= 0)
            {
                return (new byte[] {
                    (byte)(i >> 8), (byte)(i & 0xff), (byte)(word0 >> 8), (byte)(word0 & 0xff)
                });
            }
            word2 += 12895;
            word0 = (short)(((i << 4) + aword1[0] ^ i + word2 ^ (i >> 5) + aword1[1]) + word0);
            i = (short)(((word0 << 4) + aword1[2] ^ word0 + word2 ^ (word0 >> 5) + aword1[3]) + i);
            word1 = word3;
        } while (true);
    }

    private byte[] decipher(byte abyte0[])
    {
        return decipher(abyte0, 0);
    }

    private byte[] decipher(byte abyte0[], int i)
    {
        DataOutputStream dataoutputstream;
        long l;
        long l1;
        long l2;
        long l3;
        long l4;
        long l5;
        long l6;
        try
        {
            l1 = getUnsignedInt(abyte0, i, 4);
            l2 = getUnsignedInt(abyte0, i + 4, 4);
            l3 = getUnsignedInt(key, 0, 4);
            l4 = getUnsignedInt(key, 4, 4);
            l5 = getUnsignedInt(key, 8, 4);
            l6 = getUnsignedInt(key, 12, 4);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return null;
        }
        l = 0xffffffffe3779b90L & 0xffffffffL;
        i = 16;
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        abyte0 = new ByteArrayOutputStream(8);
        dataoutputstream = new DataOutputStream(abyte0);
        dataoutputstream.writeInt((int)l1);
        dataoutputstream.writeInt((int)l2);
        dataoutputstream.close();
        abyte0 = abyte0.toByteArray();
        return abyte0;
        l2 = l2 - ((l1 << 4) + l5 ^ l1 + l ^ (l1 >>> 5) + l6) & 0xffffffffL;
        l1 = l1 - ((l2 << 4) + l3 ^ l2 + l ^ (l2 >>> 5) + l4) & 0xffffffffL;
        l = l - (0xffffffff9e3779b9L & 0xffffffffL) & 0xffffffffL;
        i--;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_76;
        }
    }

    private boolean decrypt8Bytes(byte abyte0[], int i, int j)
    {
        boolean flag1;
        flag1 = true;
        pos = 0;
_L6:
        if (pos < 8) goto _L2; else goto _L1
_L1:
        boolean flag;
        prePlain = decipher(prePlain);
        if (prePlain != null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (contextStart + pos >= j) goto _L4; else goto _L3
_L3:
        byte abyte1[] = prePlain;
        int k = pos;
        abyte1[k] = (byte)(abyte1[k] ^ abyte0[crypt + i + pos]);
        pos = pos + 1;
        if (true) goto _L6; else goto _L5
_L5:
        contextStart = contextStart + 8;
        crypt = crypt + 8;
        pos = 0;
        return true;
    }

    private byte[] encipher(byte abyte0[])
    {
        DataOutputStream dataoutputstream;
        int i;
        long l;
        long l1;
        long l2;
        long l3;
        long l4;
        long l5;
        long l6;
        try
        {
            l1 = getUnsignedInt(abyte0, 0, 4);
            l = getUnsignedInt(abyte0, 4, 4);
            l3 = getUnsignedInt(key, 0, 4);
            l4 = getUnsignedInt(key, 4, 4);
            l5 = getUnsignedInt(key, 8, 4);
            l6 = getUnsignedInt(key, 12, 4);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return null;
        }
        l2 = 0L;
        i = 16;
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        abyte0 = new ByteArrayOutputStream(8);
        dataoutputstream = new DataOutputStream(abyte0);
        dataoutputstream.writeInt((int)l1);
        dataoutputstream.writeInt((int)l);
        dataoutputstream.close();
        abyte0 = abyte0.toByteArray();
        return abyte0;
        l2 = l2 + (0xffffffff9e3779b9L & 0xffffffffL) & 0xffffffffL;
        l1 = l1 + ((l << 4) + l3 ^ l + l2 ^ (l >>> 5) + l4) & 0xffffffffL;
        l = l + ((l1 << 4) + l5 ^ l1 + l2 ^ (l1 >>> 5) + l6) & 0xffffffffL;
        i--;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_68;
        }
    }

    private void encrypt8Bytes()
    {
        pos = 0;
_L3:
        if (pos < 8) goto _L2; else goto _L1
_L1:
        System.arraycopy(encipher(plain), 0, out, crypt, 8);
        pos = 0;
_L4:
        if (pos >= 8)
        {
            System.arraycopy(plain, 0, prePlain, 0, 8);
            preCrypt = crypt;
            crypt = crypt + 8;
            pos = 0;
            header = false;
            return;
        }
        break MISSING_BLOCK_LABEL_177;
_L2:
        if (header)
        {
            byte abyte0[] = plain;
            int i = pos;
            abyte0[i] = (byte)(abyte0[i] ^ prePlain[pos]);
        } else
        {
            byte abyte1[] = plain;
            int j = pos;
            abyte1[j] = (byte)(abyte1[j] ^ out[preCrypt + pos]);
        }
        pos = pos + 1;
          goto _L3
        byte abyte2[] = out;
        int k = crypt + pos;
        abyte2[k] = (byte)(abyte2[k] ^ prePlain[pos]);
        pos = pos + 1;
          goto _L4
    }

    private byte[] getRandomByte(int i)
    {
        byte abyte0[] = new byte[i];
        random.nextBytes(abyte0);
        return abyte0;
    }

    public static long getUnsignedInt(byte abyte0[], int i, int j)
    {
        long l = 0L;
        if (j > 8)
        {
            j = i + 8;
        } else
        {
            j = i + j;
        }
        do
        {
            if (i >= j)
            {
                return 0xffffffffL & l | l >>> 32;
            }
            l = l << 8 | (long)(abyte0[i] & 0xff);
            i++;
        } while (true);
    }

    private int rand()
    {
        return random.nextInt();
    }

    public byte[] decrypt(byte abyte0[], int i, int j, byte abyte1[])
    {
        preCrypt = 0;
        crypt = 0;
        key = abyte1;
        abyte1 = new byte[i + 8];
        if (j % 8 == 0 && j >= 16) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        int i1;
        prePlain = decipher(abyte0, i);
        pos = prePlain[0] & 7;
        i1 = j - pos - 10;
        if (i1 < 0) goto _L1; else goto _L3
_L3:
        int k = i;
_L10:
        if (k < abyte1.length) goto _L5; else goto _L4
_L4:
        out = new byte[i1];
        preCrypt = 0;
        crypt = 8;
        contextStart = 8;
        pos = pos + 1;
        padding = 1;
_L11:
        if (padding <= 2) goto _L7; else goto _L6
_L6:
        int l;
        l = 0;
        k = i1;
_L12:
        if (k != 0) goto _L9; else goto _L8
_L8:
        padding = 1;
_L15:
        int j1;
        int k1;
        if (padding >= 8)
        {
            return out;
        }
        if (pos >= 8)
        {
            break MISSING_BLOCK_LABEL_404;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        abyte1[k] = 0;
        k++;
          goto _L10
_L7:
        if (pos < 8)
        {
            pos = pos + 1;
            padding = padding + 1;
        }
        if (pos == 8)
        {
            abyte1 = abyte0;
            if (!decrypt8Bytes(abyte0, i, j))
            {
                return null;
            }
        }
          goto _L11
_L9:
        k1 = k;
        j1 = l;
        if (pos < 8)
        {
            out[l] = (byte)(abyte1[preCrypt + i + pos] ^ prePlain[pos]);
            j1 = l + 1;
            k1 = k - 1;
            pos = pos + 1;
        }
        k = k1;
        l = j1;
        if (pos == 8)
        {
            abyte1 = abyte0;
            preCrypt = crypt - 8;
            k = k1;
            l = j1;
            if (!decrypt8Bytes(abyte0, i, j))
            {
                return null;
            }
        }
          goto _L12
        if ((abyte1[preCrypt + i + pos] ^ prePlain[pos]) != 0) goto _L1; else goto _L13
_L13:
        pos = pos + 1;
        if (pos != 8)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte1 = abyte0;
        preCrypt = crypt;
        if (!decrypt8Bytes(abyte0, i, j)) goto _L1; else goto _L14
_L14:
        padding = padding + 1;
          goto _L15
    }

    public byte[] decrypt(byte abyte0[], byte abyte1[])
    {
        return decrypt(abyte0, 0, abyte0.length, abyte1);
    }

    public byte[] decrypt(byte abyte0[], byte abyte1[], int i)
    {
        abyte1 = decrypt(abyte0, 0, abyte0.length, abyte1);
        abyte0 = abyte1;
        if (abyte1 == null)
        {
            abyte0 = getRandomByte(i);
        }
        return abyte0;
    }

    public byte[] encrypt(byte abyte0[], int i, int j, byte abyte1[])
    {
        int k;
        plain = new byte[8];
        prePlain = new byte[8];
        pos = 1;
        padding = 0;
        preCrypt = 0;
        crypt = 0;
        key = abyte1;
        header = true;
        pos = (j + 10) % 8;
        if (pos != 0)
        {
            pos = 8 - pos;
        }
        out = new byte[pos + j + 10];
        plain[0] = (byte)(rand() & 0xf8 | pos);
        k = 1;
_L9:
        if (k <= pos) goto _L2; else goto _L1
_L1:
        pos = pos + 1;
        k = 0;
_L10:
        if (k < 8) goto _L4; else goto _L3
_L3:
        padding = 1;
_L11:
        if (padding <= 2) goto _L6; else goto _L5
_L5:
        if (j > 0) goto _L8; else goto _L7
_L7:
        padding = 1;
_L12:
        if (padding > 7)
        {
            return out;
        }
        break MISSING_BLOCK_LABEL_355;
_L2:
        plain[k] = (byte)(rand() & 0xff);
        k++;
          goto _L9
_L4:
        prePlain[k] = 0;
        k++;
          goto _L10
_L6:
        if (pos < 8)
        {
            abyte1 = plain;
            int l = pos;
            pos = l + 1;
            abyte1[l] = (byte)(rand() & 0xff);
            padding = padding + 1;
        }
        if (pos == 8)
        {
            encrypt8Bytes();
        }
          goto _L11
_L8:
        if (pos < 8)
        {
            abyte1 = plain;
            int j1 = pos;
            pos = j1 + 1;
            int i1 = i + 1;
            abyte1[j1] = abyte0[i];
            j--;
            i = i1;
        }
        if (pos == 8)
        {
            encrypt8Bytes();
        }
          goto _L5
        if (pos < 8)
        {
            abyte0 = plain;
            i = pos;
            pos = i + 1;
            abyte0[i] = 0;
            padding = padding + 1;
        }
        if (pos == 8)
        {
            encrypt8Bytes();
        }
          goto _L12
    }

    public byte[] encrypt(byte abyte0[], byte abyte1[])
    {
        return encrypt(abyte0, 0, abyte0.length, abyte1);
    }
}
