// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.utils;

import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package m.framework.utils:
//            Hashon, HEX

public class Data
{

    private static final String CHAT_SET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static Hashon hashon = new Hashon();

    public Data()
    {
    }

    public static String AES128Decode(String s, byte abyte0[])
        throws Throwable
    {
        return new String(AES128Decode(s.getBytes("UTF-8"), abyte0), "UTF-8");
    }

    public static byte[] AES128Decode(byte abyte0[], byte abyte1[])
        throws Throwable
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

    public static byte[] AES128Encode(String s, String s1)
        throws Throwable
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

    public static byte[] AES128Encode(byte abyte0[], String s)
        throws Throwable
    {
        s = s.getBytes("UTF-8");
        SecretKeySpec secretkeyspec = new SecretKeySpec(abyte0, "AES");
        abyte0 = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
        abyte0.init(1, secretkeyspec);
        byte abyte1[] = new byte[abyte0.getOutputSize(s.length)];
        abyte0.doFinal(abyte1, abyte0.update(s, 0, s.length, abyte1, 0));
        return abyte1;
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

    public static byte[] SHA1(String s)
        throws Throwable
    {
        s = s.getBytes("utf-8");
        MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
        messagedigest.update(s);
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
        do
        {
            if (l <= 0L)
            {
                return s;
            }
            int i = (int)(l % 62L);
            l /= 62L;
            s = (new StringBuilder(String.valueOf("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(i)))).append(s).toString();
        } while (true);
    }

    public static String byteToHex(byte abyte0[])
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

    public static String parseJson(HashMap hashmap)
    {
        return hashon.fromHashMap(hashmap);
    }

    public static HashMap parseJson(String s)
    {
        return hashon.fromJson(s);
    }

    public static byte[] rawMD5(String s)
    {
        if (s == null)
        {
            return null;
        }
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(s.getBytes("utf-8"));
            s = messagedigest.digest();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static String urlEncode(String s, String s1)
        throws Throwable
    {
        return URLEncoder.encode(s, s1).replace("\\+", "%20");
    }

}
