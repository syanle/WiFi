// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.common;


public class User
{

    private String mac;
    private int type;
    private String uid;

    public User(String s, String s1, int i)
    {
        uid = null;
        mac = null;
        uid = s;
        mac = s1;
        type = i;
    }

    public String getMac()
    {
        return mac;
    }

    public int getType()
    {
        return type;
    }

    public String getUid()
    {
        return uid;
    }

    public void setType(int i)
    {
        type = i;
    }
}
