// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import net.youmi.android.a.b.b.a;

public class g
{

    public static String a(File file)
    {
        String s = null;
        if (file != null) goto _L2; else goto _L1
_L1:
        Object obj = s;
_L4:
        return ((String) (obj));
_L2:
        boolean flag = file.exists();
        obj = s;
        if (!flag) goto _L4; else goto _L3
_L3:
        obj = new byte[1024];
        file = new FileInputStream(file);
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
_L7:
        int i = file.read(((byte []) (obj)));
        if (i <= 0) goto _L6; else goto _L5
_L5:
        messagedigest.update(((byte []) (obj)), 0, i);
          goto _L7
        obj;
_L11:
        obj = s;
        if (file == null) goto _L4; else goto _L8
_L8:
        try
        {
            file.close();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return null;
        }
        return null;
_L6:
        obj = net.youmi.android.a.b.b.a.a(messagedigest.digest());
        s = ((String) (obj));
        obj = s;
        if (file == null) goto _L4; else goto _L9
_L9:
        try
        {
            file.close();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return s;
        }
        return s;
        Object obj1;
        obj1;
        file = null;
_L10:
        if (file != null)
        {
            try
            {
                file.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file) { }
        }
        throw obj1;
        obj1;
          goto _L3
        obj1;
          goto _L10
        file;
        file = null;
          goto _L11
    }

    public static String a(String s)
    {
        Object obj1 = null;
        Object obj = obj1;
        if (s != null)
        {
            int i;
            try
            {
                i = s.length();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return "";
            }
            obj = obj1;
            if (i > 0)
            {
                try
                {
                    obj = MessageDigest.getInstance("MD5");
                    s = s.getBytes();
                    ((MessageDigest) (obj)).update(s, 0, s.length);
                    obj = String.format("%032x", new Object[] {
                        new BigInteger(1, ((MessageDigest) (obj)).digest())
                    });
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    return null;
                }
            }
        }
        return ((String) (obj));
    }

    public static String a(byte abyte0[])
    {
_L2:
        abyte0 = new String(ac1);
        return abyte0;
        int i = 0;
        char ac[] = new char[16];
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
        int j;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(abyte0);
            abyte0 = messagedigest.digest();
            ac1 = new char[32];
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return null;
        }
        j = 0;
        while (i < 16) 
        {
            byte byte0 = abyte0[i];
            int k = j + 1;
            ac1[j] = ac[byte0 >>> 4 & 0xf];
            j = k + 1;
            ac1[k] = ac[byte0 & 0xf];
            i++;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean a(File file, String s)
    {
        file = a(file);
        if (file == null)
        {
            return false;
        }
        file = file.toLowerCase();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        boolean flag = file.equals(s.toLowerCase());
        return flag;
        file;
        return false;
    }
}
