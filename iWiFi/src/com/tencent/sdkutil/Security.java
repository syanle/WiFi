// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

public class Security
{

    private static char hexChar[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    private static String pubkey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDRKTBPJPh0dJzOgBHFTitk0Ru6b/arlJwz8SdAZMba+aqF/molPehmgasFCyBofZoMnEbG4Ov2SJM1HaKLTLT0+tMHH768HXctZ8mwAvx9ssscYDRLsg31W86GfTNEJ9WATEpeSIOtgz7NB2Gpls+mR2lQZX+tITPM1idKGfYfNwIDAQAB";

    public Security()
    {
    }

    public static byte[] InputStreamToByte(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        do
        {
            int i = inputstream.read();
            if (i != -1)
            {
                bytearrayoutputstream.write(i);
            } else
            {
                inputstream = bytearrayoutputstream.toByteArray();
                bytearrayoutputstream.close();
                return inputstream;
            }
        } while (true);
    }

    public static String getFileSHA1(String s)
    {
        try
        {
            s = getHash(s, "SHA1");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
        return s;
    }

    private static String getHash(String s, String s1)
    {
        s = new FileInputStream(s);
        byte abyte0[] = new byte[1024];
        s1 = MessageDigest.getInstance(s1);
        do
        {
            int i = s.read(abyte0);
            if (i > 0)
            {
                s1.update(abyte0, 0, i);
            } else
            {
                s.close();
                return toHexString(s1.digest());
            }
        } while (true);
    }

    public static String inputStream2String(InputStream inputstream)
    {
        StringBuffer stringbuffer = new StringBuffer();
        byte abyte0[] = new byte[4096];
        do
        {
            int i = inputstream.read(abyte0);
            if (i != -1)
            {
                stringbuffer.append(new String(abyte0, 0, i));
            } else
            {
                return stringbuffer.toString();
            }
        } while (true);
    }

    private static String toHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(abyte0.length * 2);
        for (int i = 0; i < abyte0.length; i++)
        {
            stringbuilder.append(hexChar[(abyte0[i] & 0xf0) >>> 4]);
            stringbuilder.append(hexChar[abyte0[i] & 0xf]);
        }

        return stringbuilder.toString();
    }

    public static boolean verify(String s)
    {
        if (verifySecurity(s))
        {
            return verifySHA1(s);
        } else
        {
            return false;
        }
    }

    public static boolean verify(String s, byte abyte0[], byte abyte1[])
    {
        boolean flag;
        try
        {
            s = Base64.decode(s.getBytes("UTF-8"), 0);
            KeyFactory keyfactory = KeyFactory.getInstance("RSA");
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(keyfactory.generatePublic(new X509EncodedKeySpec(s)));
            signature.update(abyte0);
            flag = signature.verify(abyte1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return flag;
    }

    public static boolean verifySHA1(String s)
    {
        File file;
        boolean flag;
        flag = false;
        file = new File(s);
        JSONObject jsonobject;
        int j;
        jsonobject = new JSONObject(inputStream2String(new FileInputStream(new File((new StringBuilder()).append(s).append("/verify.json").toString()))));
        j = jsonobject.length();
        if (!file.isDirectory()) goto _L2; else goto _L1
_L1:
        File afile[];
        int i1;
        afile = file.listFiles();
        i1 = afile.length;
        int i;
        int l;
        l = 0;
        i = 0;
_L4:
        int k;
        k = i;
        if (l >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        String s1;
        String s2;
        String s3;
        s3 = afile[l].getName();
        s1 = s3.substring(s3.indexOf(".") + 1, s3.length());
        s2 = s3.replace(".", "_");
        s3 = getFileSHA1((new StringBuilder()).append(s).append(File.separator).append(s3).toString());
        if (s1.equals("js"))
        {
            break MISSING_BLOCK_LABEL_187;
        }
        k = i;
        if (!s1.contains("html"))
        {
            break MISSING_BLOCK_LABEL_211;
        }
        boolean flag1 = jsonobject.getString(s2).equals(s3);
        if (!flag1);
        k = i + 1;
        l++;
        i = k;
        if (true) goto _L4; else goto _L3
_L2:
        k = 0;
_L3:
        i = k;
_L5:
        if (i == j)
        {
            flag = true;
        }
        return flag;
        s;
        i = 0;
        j = 0;
_L8:
        s.printStackTrace();
          goto _L5
        s;
        i = 0;
        j = 0;
_L7:
        s.printStackTrace();
          goto _L5
        s;
        i = 0;
        j = 0;
_L6:
        s.printStackTrace();
          goto _L5
        s;
        i = 0;
          goto _L6
        s;
          goto _L6
        s;
        i = 0;
          goto _L7
        s;
          goto _L7
        s;
        i = 0;
          goto _L8
        s;
          goto _L8
    }

    public static boolean verifySecurity(String s)
    {
        boolean flag;
        byte abyte0[] = InputStreamToByte(new FileInputStream(new File((new StringBuilder()).append(s).append("/verify.json").toString())));
        s = InputStreamToByte(new FileInputStream(new File((new StringBuilder()).append(s).append("/verify.signature").toString())));
        flag = verify(pubkey, abyte0, s);
        return flag;
        s;
        s.printStackTrace();
_L2:
        return false;
        s;
        s.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

}
