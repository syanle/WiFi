// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.update;


public class AppUpdateInfo
{

    private String a;
    private int b;
    private String c;
    private String d;

    public AppUpdateInfo()
    {
    }

    void a(int i)
    {
        b = i;
    }

    void a(String s)
    {
        a = s;
    }

    void b(String s)
    {
        d = s;
    }

    void c(String s)
    {
        c = s;
    }

    public String getUpdateTips()
    {
        return d;
    }

    public String getUrl()
    {
        return c;
    }

    public int getVersionCode()
    {
        return b;
    }

    public String getVersionName()
    {
        return a;
    }
}
