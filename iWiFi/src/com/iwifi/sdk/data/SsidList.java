// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.data;


public class SsidList
{

    private String data;
    private String msg;
    private String result;
    private String version;

    public SsidList()
    {
    }

    public String getData()
    {
        return data;
    }

    public String getMsg()
    {
        return msg;
    }

    public String getResult()
    {
        return result;
    }

    public String getVersion()
    {
        return version;
    }

    public void setData(String s)
    {
        data = s;
    }

    public void setMsg(String s)
    {
        msg = s;
    }

    public void setResult(String s)
    {
        result = s;
    }

    public void setVersion(String s)
    {
        version = s;
    }
}
