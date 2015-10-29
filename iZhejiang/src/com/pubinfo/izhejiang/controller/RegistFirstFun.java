// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import com.cat.impl.DoMobileExistConn;
import com.cat.protocol.DoMobileExistInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;
import com.ta.util.http.AsyncHttpClient;

public abstract class RegistFirstFun extends ThinkAndroidBaseActivity
    implements DoMobileExistInterface
{

    private AsyncHttpClient asyncHttpClient;

    public RegistFirstFun()
    {
    }

    protected void getMobileExist(String s, String s1, String s2, Context context)
    {
        diffTime();
        new DoMobileExistConn(s, s1, s2, this, context);
    }
}
