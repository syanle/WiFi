// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.scrshot.impl;

import android.graphics.Bitmap;
import com.umeng.scrshot.adapter.UMAdapter;

public abstract class UMBaseScrShotImpl
    implements UMAdapter
{

    protected final String TAG = getClass().getName();

    public UMBaseScrShotImpl()
    {
    }

    public Bitmap getBitmap()
    {
        return null;
    }
}
