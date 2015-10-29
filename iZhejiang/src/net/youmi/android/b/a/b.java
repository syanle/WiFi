// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.b.a;

import java.math.BigInteger;
import java.security.MessageDigest;

public class b
{

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
}
