// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import com.cat.protocol.DoSmsAuthInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;
import com.ta.util.http.AsyncHttpClient;

public abstract class RegistFun extends ThinkAndroidBaseActivity
    implements DoSmsAuthInterface
{

    private AsyncHttpClient asyncHttpClient;

    public RegistFun()
    {
    }

    protected void getSmsCode(String s, String s1, String s2, String s3, String s4)
    {
    }
}
