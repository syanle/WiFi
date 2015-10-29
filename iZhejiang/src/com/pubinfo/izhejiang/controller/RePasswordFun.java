// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import com.cat.impl.DoRePasswordConn;
import com.cat.protocol.DoRePasswordInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;
import com.ta.util.http.AsyncHttpClient;

public abstract class RePasswordFun extends ThinkAndroidBaseActivity
    implements DoRePasswordInterface
{

    private AsyncHttpClient asyncHttpClient;

    public RePasswordFun()
    {
    }

    protected void getRePassword(String s, String s1, String s2, String s3, String s4, Context context)
    {
        diffTime();
        new DoRePasswordConn(s, s1, s2, s3, s4, this, context);
    }
}
