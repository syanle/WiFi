// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS.utils;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class base64
{

    private static final String Base64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

    private base64()
    {
    }

    public static String formatString(byte abyte0[], int i, String s, boolean flag)
    {
        abyte0 = toString(abyte0);
        StringBuffer stringbuffer = new StringBuffer();
        int j = 0;
        do
        {
            if (j >= abyte0.length())
            {
                return stringbuffer.toString();
            }
            stringbuffer.append(s);
            if (j + i >= abyte0.length())
            {
                stringbuffer.append(abyte0.substring(j));
                if (flag)
                {
                    stringbuffer.append(" )");
                }
            } else
            {
                stringbuffer.append(abyte0.substring(j, j + i));
                stringbuffer.append("\n");
            }
            j += i;
        } while (true);
    }

    public static byte[] fromString(String s)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        DataOutputStream dataoutputstream;
        int i;
        bytearrayoutputstream = new ByteArrayOutputStream();
        s = s.getBytes();
        i = 0;
        do
        {
            if (i >= s.length)
            {
                s = bytearrayoutputstream.toByteArray();
                if (s.length % 4 != 0)
                {
                    return null;
                }
                break;
            }
            if (!Character.isWhitespace((char)s[i]))
            {
                bytearrayoutputstream.write(s[i]);
            }
            i++;
        } while (true);
        bytearrayoutputstream.reset();
        dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        i = 0;
_L3:
        short aword1[];
        int k;
label0:
        {
            if (i >= (s.length + 3) / 4)
            {
                return bytearrayoutputstream.toByteArray();
            }
            short aword0[] = new short[4];
            aword1 = new short[3];
            int j = 0;
            do
            {
                if (j >= 4)
                {
                    aword1[0] = (short)((aword0[0] << 2) + (aword0[1] >> 4));
                    if (aword0[2] != 64)
                    {
                        break;
                    }
                    aword1[2] = -1;
                    aword1[1] = -1;
                    if ((aword0[1] & 0xf) != 0)
                    {
                        return null;
                    }
                    break label0;
                }
                aword0[j] = (short)"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".indexOf(s[i * 4 + j]);
                j++;
            } while (true);
            if (aword0[3] == 64)
            {
                aword1[1] = (short)((aword0[1] << 4) + (aword0[2] >> 2) & 0xff);
                aword1[2] = -1;
                if ((aword0[2] & 3) != 0)
                {
                    return null;
                }
            } else
            {
                aword1[1] = (short)((aword0[1] << 4) + (aword0[2] >> 2) & 0xff);
                aword1[2] = (short)((aword0[2] << 6) + aword0[3] & 0xff);
            }
        }
        k = 0;
_L4:
        if (k < 3) goto _L2; else goto _L1
_L1:
        i++;
          goto _L3
_L2:
        if (aword1[k] < 0)
        {
            break MISSING_BLOCK_LABEL_305;
        }
        dataoutputstream.writeByte(aword1[k]);
        k++;
          goto _L4
        IOException ioexception;
        ioexception;
          goto _L1
    }

    public static String toString(byte abyte0[])
    {
        ByteArrayOutputStream bytearrayoutputstream;
        int i;
        bytearrayoutputstream = new ByteArrayOutputStream();
        i = 0;
_L3:
        short aword0[];
        short aword1[];
        int j;
        if (i >= (abyte0.length + 2) / 3)
        {
            return new String(bytearrayoutputstream.toByteArray());
        }
        aword0 = new short[3];
        aword1 = new short[4];
        j = 0;
_L4:
        if (j < 3) goto _L2; else goto _L1
_L1:
        aword1[0] = (short)(aword0[0] >> 2);
        if (aword0[1] == -1)
        {
            aword1[1] = (short)((aword0[0] & 3) << 4);
        } else
        {
            aword1[1] = (short)(((aword0[0] & 3) << 4) + (aword0[1] >> 4));
        }
        if (aword0[1] == -1)
        {
            aword1[3] = 64;
            aword1[2] = 64;
        } else
        if (aword0[2] == -1)
        {
            aword1[2] = (short)((aword0[1] & 0xf) << 2);
            aword1[3] = 64;
        } else
        {
            aword1[2] = (short)(((aword0[1] & 0xf) << 2) + (aword0[2] >> 6));
            aword1[3] = (short)(aword0[2] & 0x3f);
        }
        j = 0;
_L5:
        if (j < 4)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        i++;
          goto _L3
_L2:
        if (i * 3 + j < abyte0.length)
        {
            aword0[j] = (short)(abyte0[i * 3 + j] & 0xff);
        } else
        {
            aword0[j] = -1;
        }
        j++;
          goto _L4
        bytearrayoutputstream.write("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(aword1[j]));
        j++;
          goto _L5
    }
}
