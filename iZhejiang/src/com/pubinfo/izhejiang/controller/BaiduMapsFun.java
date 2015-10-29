// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import com.cat.impl.DoNearBusListConn;
import com.cat.impl.DoNearTypeConn;
import com.cat.protocol.DoNearBusListInterface;
import com.cat.protocol.DoNearTypeInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseFragment;
import com.ta.util.http.AsyncHttpClient;

public abstract class BaiduMapsFun extends ThinkAndroidBaseFragment
    implements DoNearTypeInterface, DoNearBusListInterface
{

    private AsyncHttpClient asyncHttpClient;

    public BaiduMapsFun()
    {
    }

    protected void getNearBusList(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9, Context context)
    {
        diffTime();
        new DoNearBusListConn(s, s1, s2, s3, s4, s5, s6, s7, s8, s9, this, context);
    }

    protected void getNearType(String s, Context context)
    {
        diffTime();
        new DoNearTypeConn(s, this, context);
    }
}
