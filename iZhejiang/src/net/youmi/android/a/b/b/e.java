// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.b;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class e
{

    public static String a()
    {
        return "javascript:";
    }

    public static boolean a(String s)
    {
        if (s != null)
        {
            int i;
            try
            {
                i = s.trim().length();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return true;
            }
            if (i != 0)
            {
                return false;
            }
        }
        return true;
    }

    public static String b()
    {
        return "file://";
    }

    public static String b(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        int i;
        s = s.trim();
        i = s.length();
        if (i > 0)
        {
            return s;
        }
        break MISSING_BLOCK_LABEL_21;
        s;
        return null;
    }

    public static String c(String s)
    {
        if (a(s))
        {
            break MISSING_BLOCK_LABEL_28;
        }
        s = Pattern.compile("[^0-9]").matcher(s).replaceAll("").trim();
        return s;
        s;
        return null;
    }
}
