// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.c.a;

import java.io.ByteArrayOutputStream;
import net.youmi.android.a.b.d.g;

public class a
{

    public static String a(String s, String s1)
    {
        Object obj;
        int i;
        i = 0;
        if (s == null)
        {
            return "";
        }
        obj = s;
        String s2 = s.trim();
        obj = s2;
        s = s2;
        if (s2.length() == 0)
        {
            return "";
        }
        break MISSING_BLOCK_LABEL_34;
        s;
        s = ((String) (obj));
        if (s1 == null)
        {
            return "";
        }
        if (s1.length() == 0)
        {
            return "";
        }
        obj = new StringBuilder();
        int k;
        int l;
        s1 = g.a(s1);
        s1 = (new StringBuilder()).append(g.a(s1.substring(12))).append(g.a(s1.substring(0, 20))).toString().getBytes("UTF-8");
        s = s.getBytes("UTF-8");
        k = s1.length;
        l = s.length;
        int j = 0;
_L2:
        if (i >= l)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        s2 = Integer.toHexString((s[i] ^ s1[j]) & 0xff);
        if (s2 == null)
        {
            try
            {
                ((StringBuilder) (obj)).append("00");
                break MISSING_BLOCK_LABEL_219;
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
            break MISSING_BLOCK_LABEL_191;
        }
        s2 = s2.trim();
        if (s2.length() == 1)
        {
            ((StringBuilder) (obj)).append("0");
            ((StringBuilder) (obj)).append(s2);
            break MISSING_BLOCK_LABEL_219;
        }
        break MISSING_BLOCK_LABEL_196;
        return ((StringBuilder) (obj)).toString();
        if (s2.length() == 0)
        {
            ((StringBuilder) (obj)).append("00");
            break MISSING_BLOCK_LABEL_219;
        }
        ((StringBuilder) (obj)).append(s2);
        j = (j + 1) % k;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String b(String s, String s1)
    {
        int i = 0;
        if (s != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        String s2 = s;
        s = s.trim();
        s2 = s;
        int j = s.length();
        if (j == 0) goto _L1; else goto _L3
_L3:
        s2 = s;
_L7:
        if (s1 == null || s1.length() == 0) goto _L1; else goto _L4
_L4:
        s = new ByteArrayOutputStream();
        char c;
        char c1;
        int k;
        int l;
        int i1;
        try
        {
            s1 = g.a(s1);
            s1 = (new StringBuilder()).append(g.a(s1.substring(12))).append(g.a(s1.substring(0, 20))).toString().getBytes("UTF-8");
            l = s1.length;
            i1 = s2.length();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        k = 0;
        if (i >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        c = s2.charAt(i);
        c1 = s2.charAt(i + 1);
        s.write((byte)((byte)(net.youmi.android.a.b.b.a.a(c) << 4 | net.youmi.android.a.b.b.a.a(c1)) ^ s1[k]));
        k = (k + 1) % l;
        i += 2;
        if (true) goto _L6; else goto _L5
_L6:
        break MISSING_BLOCK_LABEL_113;
_L5:
        s = new String(s.toByteArray(), "UTF-8");
        return s;
        s;
          goto _L7
    }
}
