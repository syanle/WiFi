// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socom.net;

import java.util.Map;
import org.json.JSONObject;

public abstract class s
{
    public static class a
    {

        String a;
        byte b[];

        public a(String s1, byte abyte0[])
        {
            a = s1;
            b = abyte0;
        }
    }


    protected static String g = "POST";
    protected static String h = "GET";
    protected String i;

    public s(String s1)
    {
        i = s1;
    }

    public void a(String s1)
    {
        i = s1;
    }

    public Map b()
    {
        return null;
    }

    public Map c()
    {
        return null;
    }

    public abstract JSONObject d();

    public abstract String e();

    protected String f()
    {
        return g;
    }

    public String j()
    {
        return i;
    }

}
