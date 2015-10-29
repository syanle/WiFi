// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.scrshot.adapter;

import android.app.Activity;
import android.graphics.Bitmap;
import com.umeng.scrshot.impl.UMAppScrShotImpl;
import com.umeng.scrshot.impl.UMBaseScrShotImpl;

// Referenced classes of package com.umeng.scrshot.adapter:
//            UMBaseAdapter

public class UMAppAdapter extends UMBaseAdapter
{

    private Activity mActivity;

    public UMAppAdapter(Activity activity)
    {
        mActivity = null;
        mActivity = activity;
        mScrShotImpl = new UMAppScrShotImpl(mActivity);
    }

    public Bitmap getBitmap()
    {
        if (!isScrShotImplNotNull())
        {
            return null;
        } else
        {
            return mScrShotImpl.getBitmap();
        }
    }
}
