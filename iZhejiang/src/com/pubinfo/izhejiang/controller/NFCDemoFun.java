// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import com.cat.impl.DoCTPassConn;
import com.cat.impl.DoCTPassResultConn;
import com.cat.protocol.DoCTPassInterface;
import com.cat.protocol.DoCTPassResultInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;
import com.ta.util.http.AsyncHttpClient;

public abstract class NFCDemoFun extends ThinkAndroidBaseActivity
    implements DoCTPassInterface, DoCTPassResultInterface
{

    private AsyncHttpClient asyncHttpClient;

    public NFCDemoFun()
    {
    }

    protected void getCTPass(Context context)
    {
        new DoCTPassConn(this, context);
    }

    protected void getCTPassResult(String s, String s1, String s2, String s3, String s4, String s5, Context context)
    {
        diffTime();
        new DoCTPassResultConn(s, s1, s2, s3, s4, s5, this, context);
    }
}
