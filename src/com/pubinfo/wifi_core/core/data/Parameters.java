// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.data;


public class Parameters
{

    String key;
    Object value;

    public Parameters()
    {
    }

    public Parameters(String s, Object obj)
    {
        this();
        key = s;
        value = obj;
    }

    public String getKey()
    {
        return key;
    }

    public Object getValue()
    {
        return value;
    }

    public void setKey(String s)
    {
        key = s;
    }

    public void setValue(Object obj)
    {
        value = obj;
    }
}
