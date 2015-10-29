// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import com.cat.impl.DoRegistNewConn;
import com.cat.impl.DoSmsAuthConn;
import com.cat.protocol.DoRegistNewInterface;
import com.cat.protocol.DoSmsAuthInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;
import com.ta.util.http.AsyncHttpClient;

public abstract class RegistSecondFun extends ThinkAndroidBaseActivity
    implements DoSmsAuthInterface, DoRegistNewInterface
{

    private AsyncHttpClient asyncHttpClient;

    public RegistSecondFun()
    {
    }

    protected void getRegistNew(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, Context context)
    {
        diffTime();
        new DoRegistNewConn(s, s1, s2, s3, s4, s5, s6, s7, this, context);
    }

    protected void getSmsCode(String s, String s1, String s2, Context context)
    {
        diffTime();
        new DoSmsAuthConn(s, s1, s2, this, context);
    }
}
