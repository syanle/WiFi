// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.scrshot;

import android.graphics.Bitmap;
import com.umeng.scrshot.adapter.UMBaseAdapter;

public class UMScrShotController
{
    public static interface OnScreenshotListener
    {

        public abstract void onComplete(Bitmap bitmap);
    }


    private static UMScrShotController mController = new UMScrShotController();
    private UMBaseAdapter mAdapter;
    private OnScreenshotListener mScrShotListener;

    private UMScrShotController()
    {
        mAdapter = null;
        mScrShotListener = null;
    }

    public static UMScrShotController getInstance()
    {
        return mController;
    }

    public UMBaseAdapter getScrShotAdapter()
    {
        return mAdapter;
    }

    public OnScreenshotListener getScrShotListener()
    {
        return mScrShotListener;
    }

    public void setScrShotAdapter(UMBaseAdapter umbaseadapter)
    {
        mAdapter = umbaseadapter;
    }

    public void setScrShotListener(OnScreenshotListener onscreenshotlistener)
    {
        mScrShotListener = onscreenshotlistener;
    }

    public Bitmap takeScreenShot()
    {
        Bitmap bitmap = null;
        if (mAdapter != null)
        {
            bitmap = mAdapter.getBitmap();
        }
        if (mScrShotListener != null)
        {
            mScrShotListener.onComplete(bitmap);
        }
        return bitmap;
    }

}
