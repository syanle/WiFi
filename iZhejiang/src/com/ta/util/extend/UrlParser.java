// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.extend;

import java.net.URL;

public class UrlParser
{

    public UrlParser()
    {
    }

    public static String urlParse(String s, String s1)
    {
        try
        {
            s = (new URL(new URL(s), s1)).toString();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.getStackTrace();
            return "";
        }
        return s;
    }
}
