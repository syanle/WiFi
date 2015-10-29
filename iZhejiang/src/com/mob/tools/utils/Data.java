// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.zip.CRC32;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.mob.tools.utils:
//            Ln, HEX

public class Data
{

    private static final String CHAT_SET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

    public Data()
    {
    }

    public static String AES128Decode(String s, byte abyte0[])
        throws Throwable
    {
        if (s == null || abyte0 == null)
        {
            return null;
        } else
        {
            return new String(AES128Decode(s.getBytes("UTF-8"), abyte0), "UTF-8");
        }
    }

    public static byte[] AES128Decode(byte abyte0[], byte abyte1[])
        throws Throwable
    {
        if (abyte0 == null || abyte1 == null)
        {
            return null;
        } else
        {
            byte abyte2[] = new byte[16];
            System.arraycopy(abyte0, 0, abyte2, 0, Math.min(abyte0.length, 16));
            SecretKeySpec secretkeyspec = new SecretKeySpec(abyte2, "AES");
            abyte0 = Cipher.getInstance("AES/ECB/NoPadding", "BC");
            abyte0.init(2, secretkeyspec);
            secretkeyspec = new byte[abyte0.getOutputSize(abyte1.length)];
            int i = abyte0.update(abyte1, 0, abyte1.length, secretkeyspec, 0);
            abyte0.doFinal(secretkeyspec, i);
            return secretkeyspec;
        }
    }

    public static byte[] AES128Encode(String s, String s1)
        throws Throwable
    {
        if (s == null || s1 == null)
        {
            return null;
        } else
        {
            s = s.getBytes("UTF-8");
            byte abyte0[] = new byte[16];
            System.arraycopy(s, 0, abyte0, 0, Math.min(s.length, 16));
            s = s1.getBytes("UTF-8");
            SecretKeySpec secretkeyspec = new SecretKeySpec(abyte0, "AES");
            s1 = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
            s1.init(1, secretkeyspec);
            secretkeyspec = new byte[s1.getOutputSize(s.length)];
            s1.doFinal(secretkeyspec, s1.update(s, 0, s.length, secretkeyspec, 0));
            return secretkeyspec;
        }
    }

    public static byte[] AES128Encode(byte abyte0[], String s)
        throws Throwable
    {
        if (abyte0 == null || s == null)
        {
            return null;
        } else
        {
            s = s.getBytes("UTF-8");
            SecretKeySpec secretkeyspec = new SecretKeySpec(abyte0, "AES");
            abyte0 = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
            abyte0.init(1, secretkeyspec);
            byte abyte1[] = new byte[abyte0.getOutputSize(s.length)];
            abyte0.doFinal(abyte1, abyte0.update(s, 0, s.length, abyte1, 0));
            return abyte1;
        }
    }

    public static String Base64AES(String s, String s1)
    {
        String s2;
        Object obj;
        Object obj1;
        obj1 = null;
        obj = null;
        s2 = obj;
        if (s == null) goto _L2; else goto _L1
_L1:
        if (s1 != null) goto _L4; else goto _L3
_L3:
        s2 = obj;
_L2:
        return s2;
_L4:
        String s3 = obj1;
        try
        {
            s = Base64.encodeToString(AES128Encode(s1, s), 0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
            return s3;
        }
        s2 = s;
        s3 = s;
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L5
_L5:
        s2 = s;
        s3 = s;
        if (!s.contains("\n")) goto _L2; else goto _L6
_L6:
        s3 = s;
        s = s.replace("\n", "");
        return s;
    }

    public static String CRC32(byte abyte0[])
        throws Throwable
    {
        CRC32 crc32 = new CRC32();
        crc32.update(abyte0);
        long l = crc32.getValue();
        abyte0 = new StringBuilder();
        abyte0.append(String.format("%02x", new Object[] {
            Integer.valueOf((byte)(int)(l >>> 56) & 0xff)
        }));
        abyte0.append(String.format("%02x", new Object[] {
            Integer.valueOf((byte)(int)(l >>> 48) & 0xff)
        }));
        abyte0.append(String.format("%02x", new Object[] {
            Integer.valueOf((byte)(int)(l >>> 40) & 0xff)
        }));
        abyte0.append(String.format("%02x", new Object[] {
            Integer.valueOf((byte)(int)(l >>> 32) & 0xff)
        }));
        abyte0.append(String.format("%02x", new Object[] {
            Integer.valueOf((byte)(int)(l >>> 24) & 0xff)
        }));
        abyte0.append(String.format("%02x", new Object[] {
            Integer.valueOf((byte)(int)(l >>> 16) & 0xff)
        }));
        abyte0.append(String.format("%02x", new Object[] {
            Integer.valueOf((byte)(int)(l >>> 8) & 0xff)
        }));
        abyte0.append(String.format("%02x", new Object[] {
            Integer.valueOf((byte)(int)l & 0xff)
        }));
        for (; abyte0.charAt(0) == '0'; abyte0 = abyte0.deleteCharAt(0)) { }
        return abyte0.toString().toLowerCase();
    }

    public static String MD5(File file)
    {
        if (file != null && file.exists())
        {
            byte abyte0[];
            try
            {
                file = new FileInputStream(file);
                abyte0 = rawMD5(file);
                file.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                Ln.w(file);
                return null;
            }
            if (abyte0 != null)
            {
                return HEX.toHex(abyte0);
            }
        }
        return null;
    }

    public static String MD5(String s)
    {
        if (s != null)
        {
            if ((s = rawMD5(s)) != null)
            {
                return HEX.toHex(s);
            }
        }
        return null;
    }

    public static String MD5(byte abyte0[])
    {
        if (abyte0 != null)
        {
            if ((abyte0 = rawMD5(abyte0)) != null)
            {
                return HEX.toHex(abyte0);
            }
        }
        return null;
    }

    public static byte[] SHA1(String s)
        throws Throwable
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            return SHA1(s.getBytes("utf-8"));
        }
    }

    public static byte[] SHA1(byte abyte0[])
        throws Throwable
    {
        MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
        messagedigest.update(abyte0);
        return messagedigest.digest();
    }

    public static String base62(long l)
    {
        String s;
        if (l == 0L)
        {
            s = "0";
        } else
        {
            s = "";
        }
        while (l > 0L) 
        {
            int i = (int)(l % 62L);
            l /= 62L;
            s = (new StringBuilder()).append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(i)).append(s).toString();
        }
        return s;
    }

    public static String byteToHex(byte abyte0[])
    {
        return byteToHex(abyte0, 0, abyte0.length);
    }

    public static String byteToHex(byte abyte0[], int i, int j)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (abyte0 == null)
        {
            return stringbuffer.toString();
        }
        for (; i < j; i++)
        {
            stringbuffer.append(String.format("%02x", new Object[] {
                Byte.valueOf(abyte0[i])
            }));
        }

        return stringbuffer.toString();
    }

    public static byte[] rawMD5(InputStream inputstream)
    {
        if (inputstream == null)
        {
            return null;
        }
        byte abyte0[];
        MessageDigest messagedigest;
        int i;
        try
        {
            abyte0 = new byte[1024];
            messagedigest = MessageDigest.getInstance("MD5");
            i = inputstream.read(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Ln.w(inputstream);
            return null;
        }
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        messagedigest.update(abyte0, 0, i);
        i = inputstream.read(abyte0);
        break MISSING_BLOCK_LABEL_24;
        inputstream = messagedigest.digest();
        return inputstream;
    }

    public static byte[] rawMD5(String s)
    {
        if (s == null)
        {
            return null;
        }
        try
        {
            s = rawMD5(s.getBytes("utf-8"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
            return null;
        }
        return s;
    }

    public static byte[] rawMD5(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        try
        {
            ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
            abyte0 = rawMD5(((InputStream) (bytearrayinputstream)));
            bytearrayinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            Ln.w(abyte0);
            abyte0 = null;
        }
        return abyte0;
    }

    public static String urlEncode(String s)
    {
        try
        {
            s = urlEncode(s, "utf-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
            return null;
        }
        return s;
    }

    public static String urlEncode(String s, String s1)
        throws Throwable
    {
        s = URLEncoder.encode(s, s1);
        if (TextUtils.isEmpty(s))
        {
            return s;
        } else
        {
            return s.replace("+", "%20");
        }
    }
}
