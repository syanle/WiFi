// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.data;


public class DeviceId
{

    private String dev_id;
    private String message;
    private String result;

    public DeviceId()
    {
    }

    public String getDev_id()
    {
        return dev_id;
    }

    public String getMessage()
    {
        return message;
    }

    public String getResult()
    {
        return result;
    }

    public void setDev_id(String s)
    {
        dev_id = s;
    }

    public void setMessage(String s)
    {
        message = s;
    }

    public void setResult(String s)
    {
        result = s;
    }
}
