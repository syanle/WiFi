// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;

import java.io.UnsupportedEncodingException;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.h.b;

public class i
{

    public static String a(String s, String s1)
    {
        boolean flag;
        flag = false;
        if (e.a(s) || e.a(s1))
        {
            return null;
        }
        Object obj = b.a(s);
        s = ((String) (obj));
_L2:
        obj = b.a(s1);
        byte abyte0[];
        s1 = ((String) (obj));
        break MISSING_BLOCK_LABEL_33;
_L1:
        if (word0 >= 256)
        {
            break MISSING_BLOCK_LABEL_254;
        }
        abyte0[word0] = (byte)s1.charAt(word0 % s1.length());
        word0++;
          goto _L1
_L3:
        s = s.toCharArray();
        s1 = new char[s.length];
        i1 = 0;
        k = 0;
        word0 = flag;
        while (word0 < s.length) 
        {
            i1 = (i1 + 1) % 256;
            k = (k + obj[i1]) % 256;
            int k1 = obj[i1];
            obj[i1] = obj[k];
            obj[k] = k1;
            s1[word0] = (char)((char)obj[(obj[i1] + obj[k] % 256) % 256] ^ s[word0]);
            word0++;
        }
        s = new String(s1);
        try
        {
            s1 = b.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return s;
        }
        return s1;
        obj;
          goto _L2
        obj;
        {
            short word0;
            int k;
            int i1;
            try
            {
                obj = new int[256];
                abyte0 = new byte[256];
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return null;
            }
            for (word0 = 0; word0 < 256; word0++)
            {
                obj[word0] = word0;
            }

            word0 = 0;
        }
          goto _L1
        int j = 0;
        int l = 0;
        while (j < 255) 
        {
            l = (l + obj[j] + abyte0[j]) % 256;
            int j1 = obj[j];
            obj[j] = obj[l];
            obj[l] = j1;
            j++;
        }
          goto _L3
    }
}
