// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import com.cat.impl.DoPushListConn;
import com.cat.protocol.DoPushListInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;

public abstract class PushMessageFun extends ThinkAndroidBaseActivity
    implements DoPushListInterface
{

    public PushMessageFun()
    {
    }

    protected void getPushlist(String s, String s1, Context context)
    {
        diffTime();
        new DoPushListConn(s, s1, this, context);
    }

    protected void getReadPush(String s, String s1, String s2, String s3, String s4, String s5)
    {
    }
}
