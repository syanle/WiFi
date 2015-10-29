// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.net;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Session;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socom.Log;
import com.umeng.socom.util.BitmapUtils;

public class PostPhotoTask extends AsyncTask
{
    public static interface OnPostPhotoListener
    {

        public abstract void onComplete(Response response);
    }


    private final String TAG = "SharePhotoTask";
    private OnPostPhotoListener mPostListener;
    private String mShareContent;
    private UMediaObject mShareMedia;

    public PostPhotoTask(String s, UMediaObject umediaobject)
    {
        mShareContent = "";
        mShareMedia = null;
        mPostListener = null;
        mShareContent = s;
        mShareMedia = umediaobject;
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient byte[] doInBackground(Void avoid[])
    {
        ((UMImage)mShareMedia).toByte();
        if (mShareMedia.isUrlMedia())
        {
            Bitmap bitmap = BitmapUtils.getBitmapFromFile(mShareMedia.toUrl());
            byte abyte0[] = BitmapUtils.bitmap2Bytes(bitmap);
            avoid = abyte0;
            if (bitmap != null)
            {
                avoid = abyte0;
                if (!bitmap.isRecycled())
                {
                    bitmap.recycle();
                    avoid = abyte0;
                }
            }
        } else
        {
            avoid = mShareMedia.toByte();
        }
        if (avoid == null)
        {
            Log.e("SharePhotoTask", "### image byte data is null...");
        }
        return avoid;
    }

    public OnPostPhotoListener getPostListener()
    {
        return mPostListener;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((byte[])obj);
    }

    protected void onPostExecute(byte abyte0[])
    {
        Log.d("SharePhotoTask", "#### \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD");
        Bundle bundle = new Bundle();
        bundle.putByteArray("source", abyte0);
        bundle.putString("message", mShareContent);
        (new Request(Session.getActiveSession(), "me/photos", bundle, HttpMethod.POST, new com.facebook.Request.Callback() {

            final PostPhotoTask this$0;

            public void onCompleted(Response response)
            {
                if (mPostListener != null)
                {
                    mPostListener.onComplete(response);
                }
            }

            
            {
                this$0 = PostPhotoTask.this;
                super();
            }
        })).executeAsync();
    }

    public void setPostListener(OnPostPhotoListener onpostphotolistener)
    {
        mPostListener = onpostphotolistener;
    }

}
