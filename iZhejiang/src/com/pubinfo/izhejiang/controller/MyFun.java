// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import com.cat.impl.DoUserInfoConn;
import com.cat.protocol.DoUserInfoInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseFragment;
import java.util.Calendar;

public abstract class MyFun extends ThinkAndroidBaseFragment
    implements DoUserInfoInterface
{

    final Calendar c = Calendar.getInstance();
    String data;

    public MyFun()
    {
        data = (new StringBuilder(String.valueOf(c.get(1)))).append("-").append(c.get(2) + 1).append("-").append(c.get(5)).toString();
    }

    protected void getUserInfo(String s, String s1, Context context)
    {
        diffTime();
        new DoUserInfoConn(s, s1, this, context);
    }
}
