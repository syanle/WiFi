// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import com.cat.impl.DoCheckcodeConn;
import com.cat.impl.DoSmsAuthConn;
import com.cat.protocol.DoCheckCodeInterface;
import com.cat.protocol.DoSmsAuthInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;
import com.ta.util.http.AsyncHttpClient;

public abstract class CheckMsgFun extends ThinkAndroidBaseActivity
    implements DoSmsAuthInterface, DoCheckCodeInterface
{

    private AsyncHttpClient asyncHttpClient;

    public CheckMsgFun()
    {
    }

    protected void getCheckCode(String s, String s1, String s2, Context context)
    {
        diffTime();
        new DoCheckcodeConn(s, s1, s2, this, context);
    }

    protected void getSmsCode(String s, String s1, String s2, Context context)
    {
        diffTime();
        new DoSmsAuthConn(s, s1, s2, this, context);
    }
}
