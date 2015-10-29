// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.scrshot.adapter;

import android.graphics.Bitmap;
import com.umeng.scrshot.impl.UMBaseScrShotImpl;

// Referenced classes of package com.umeng.scrshot.adapter:
//            UMAdapter

public abstract class UMBaseAdapter
    implements UMAdapter
{

    protected final String TAG = getClass().getName();
    protected UMBaseScrShotImpl mScrShotImpl;

    public UMBaseAdapter()
    {
        mScrShotImpl = null;
    }

    public abstract Bitmap getBitmap();

    public UMBaseScrShotImpl getScrShotImpl()
    {
        return mScrShotImpl;
    }

    protected boolean isScrShotImplNotNull()
    {
        return mScrShotImpl != null;
    }

    public void setScrShotImpl(UMBaseScrShotImpl umbasescrshotimpl)
    {
        mScrShotImpl = umbasescrshotimpl;
    }
}
