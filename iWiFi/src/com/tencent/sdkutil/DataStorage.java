// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import com.tencent.tauth.Tencent;
import java.util.HashMap;

public class DataStorage
{

    static HashMap sessionMap = new HashMap();

    public DataStorage()
    {
    }

    public static Tencent getTencentInstance(String s)
    {
        if (sessionMap.containsKey(s))
        {
            return (Tencent)sessionMap.get(s);
        } else
        {
            return null;
        }
    }

    public static boolean hasTencentInstance(String s)
    {
        return sessionMap.containsKey(s);
    }

    public static void setTencentInstance(String s, Tencent tencent)
    {
        sessionMap.put(s, tencent);
    }

}
