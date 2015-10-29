// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.utils;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import java.io.IOException;

public class UMAudioPlayer
{

    private MediaPlayer mMediaPlayer;

    public UMAudioPlayer(Context context, int i)
    {
        mMediaPlayer = null;
        mMediaPlayer = MediaPlayer.create(context, i);
    }

    public UMAudioPlayer(Context context, Uri uri)
    {
        mMediaPlayer = null;
        mMediaPlayer = MediaPlayer.create(context, uri);
    }

    public UMAudioPlayer(Context context, String s)
    {
        mMediaPlayer = null;
        mMediaPlayer = new MediaPlayer();
        try
        {
            mMediaPlayer.setDataSource(s);
            mMediaPlayer.prepare();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    public UMAudioPlayer(String s)
    {
        mMediaPlayer = null;
        mMediaPlayer = new MediaPlayer();
        try
        {
            mMediaPlayer.setDataSource(s);
            mMediaPlayer.prepare();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void pause()
    {
        if (mMediaPlayer != null)
        {
            mMediaPlayer.pause();
        }
    }

    public void release()
    {
        if (mMediaPlayer != null)
        {
            mMediaPlayer.release();
        }
    }

    public void reset()
    {
        if (mMediaPlayer != null)
        {
            mMediaPlayer.reset();
        }
    }

    public void start()
    {
        if (mMediaPlayer != null)
        {
            mMediaPlayer.start();
        }
    }

    public void stop()
    {
        if (mMediaPlayer != null)
        {
            mMediaPlayer.stop();
        }
    }
}
