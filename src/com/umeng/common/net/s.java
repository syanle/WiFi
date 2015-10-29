// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import org.json.JSONObject;

public abstract class s
{

    protected static String b = "POST";
    protected static String c = "GET";
    protected String d;

    public s(String s1)
    {
        d = s1;
    }

    public abstract JSONObject a();

    public void a(String s1)
    {
        d = s1;
    }

    public abstract String b();

    protected String c()
    {
        return b;
    }

    public String d()
    {
        return d;
    }

}
