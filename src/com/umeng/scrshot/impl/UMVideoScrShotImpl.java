// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.scrshot.impl;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.text.TextUtils;
import java.io.PrintStream;

// Referenced classes of package com.umeng.scrshot.impl:
//            UMBaseScrShotImpl

public class UMVideoScrShotImpl extends UMBaseScrShotImpl
{

    private final int ACTION_DELAY;
    private MediaPlayer mPlayer;
    private String mVideoPath;

    public UMVideoScrShotImpl()
    {
        mVideoPath = "";
        mPlayer = null;
        ACTION_DELAY = 0x186a0;
    }

    public UMVideoScrShotImpl(MediaPlayer mediaplayer, String s)
    {
        mVideoPath = "";
        mPlayer = null;
        ACTION_DELAY = 0x186a0;
        mPlayer = mediaplayer;
        mVideoPath = s;
    }

    public Bitmap getBitmap()
    {
        Object obj1;
        long l;
        if (mPlayer == null || TextUtils.isEmpty(mVideoPath))
        {
            return null;
        }
        l = System.currentTimeMillis();
        obj1 = new MediaMetadataRetriever();
        int j;
        ((MediaMetadataRetriever) (obj1)).setDataSource(mVideoPath);
        long l1 = Long.parseLong(((MediaMetadataRetriever) (obj1)).extractMetadata(9));
        int i = mPlayer.getDuration();
        j = mPlayer.getCurrentPosition();
        long l2 = System.currentTimeMillis();
        System.out.println((new StringBuilder("\u8017\u65F6\u4E3A : ")).append(l2 - l).toString());
        l = ((long)j * (l1 * 1000L)) / (long)i;
        if (l <= 0L) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = ((MediaMetadataRetriever) (obj1)).getFrameAtTime(0x186a0L + l, 3);
_L4:
        try
        {
            ((MediaMetadataRetriever) (obj1)).release();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            return bitmap;
        }
        return bitmap;
_L2:
        l = j * 1000;
        bitmap = ((MediaMetadataRetriever) (obj1)).getFrameAtTime(l, 3);
        if (true) goto _L4; else goto _L3
_L3:
        Object obj;
        obj;
        ((IllegalArgumentException) (obj)).printStackTrace();
        try
        {
            ((MediaMetadataRetriever) (obj1)).release();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        return null;
        obj;
        ((RuntimeException) (obj)).printStackTrace();
        try
        {
            ((MediaMetadataRetriever) (obj1)).release();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        return null;
        obj;
        try
        {
            ((MediaMetadataRetriever) (obj1)).release();
        }
        catch (RuntimeException runtimeexception) { }
        throw obj;
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
