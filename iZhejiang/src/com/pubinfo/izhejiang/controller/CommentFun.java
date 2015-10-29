// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import com.cat.impl.DoCommentConn;
import com.cat.protocol.DoCommentInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;

public abstract class CommentFun extends ThinkAndroidBaseActivity
    implements DoCommentInterface
{

    public CommentFun()
    {
    }

    protected void getComment(String s, String s1, String s2, String s3, Context context)
    {
        diffTime();
        new DoCommentConn(s, s1, s2, s3, this, context);
    }
}
