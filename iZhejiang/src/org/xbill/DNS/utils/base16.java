// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS.utils;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class base16
{

    private static final String Base16 = "0123456789ABCDEF";

    private base16()
    {
    }

    public static byte[] fromString(String s)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        s = s.getBytes();
        int i = 0;
        do
        {
            if (i >= s.length)
            {
                s = bytearrayoutputstream.toByteArray();
                if (s.length % 2 != 0)
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
        DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        i = 0;
        do
        {
            if (i >= s.length)
            {
                return bytearrayoutputstream.toByteArray();
            }
            byte byte0 = (byte)"0123456789ABCDEF".indexOf(Character.toUpperCase((char)s[i]));
            byte byte1 = (byte)"0123456789ABCDEF".indexOf(Character.toUpperCase((char)s[i + 1]));
            try
            {
                dataoutputstream.writeByte((byte0 << 4) + byte1);
            }
            catch (IOException ioexception) { }
            i += 2;
        } while (true);
    }

    public static String toString(byte abyte0[])
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return new String(bytearrayoutputstream.toByteArray());
            }
            short word0 = (short)(abyte0[i] & 0xff);
            byte byte0 = (byte)(word0 >> 4);
            word0 &= 0xf;
            bytearrayoutputstream.write("0123456789ABCDEF".charAt(byte0));
            bytearrayoutputstream.write("0123456789ABCDEF".charAt(word0));
            i++;
        } while (true);
    }
}
