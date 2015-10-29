// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.scrshot.adapter;

import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.scrshot.impl.UMBaseScrShotImpl;
import com.umeng.scrshot.impl.UMVideoScrShotImpl;

// Referenced classes of package com.umeng.scrshot.adapter:
//            UMBaseAdapter

public class UMVideoAdapter extends UMBaseAdapter
{

    private MediaPlayer mPlayer;
    private String mVideoPath;

    public UMVideoAdapter(MediaPlayer mediaplayer, String s)
    {
        mVideoPath = "";
        mPlayer = null;
        mPlayer = mediaplayer;
        mVideoPath = s;
        initAdapter();
    }

    private void initAdapter()
    {
        if (!isParamsValid())
        {
            return;
        } else
        {
            mScrShotImpl = new UMVideoScrShotImpl(mPlayer, mVideoPath);
            return;
        }
    }

    private boolean isParamsValid()
    {
        return !TextUtils.isEmpty(mVideoPath) && mPlayer != null;
    }

    public Bitmap getBitmap()
    {
        if (!isParamsValid() || !isScrShotImplNotNull())
        {
            Log.d(TAG, "#### \u53C2\u6570\u65E0\u6548 || mScrShotImpl == null.");
            return null;
        } else
        {
            return mScrShotImpl.getBitmap();
        }
    }

    public MediaPlayer getMeidaPlayer()
    {
        return mPlayer;
    }

    public String getVideoPath()
    {
        return mVideoPath;
    }

    public void setMeidaPlayer(MediaPlayer mediaplayer)
    {
        mPlayer = mediaplayer;
    }

    public void setVideoPath(String s)
    {
        mVideoPath = s;
    }
}
