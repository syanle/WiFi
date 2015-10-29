// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.net;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.facebook.FacebookRequestError;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.model.GraphObject;
import com.umeng.socialize.controller.utils.ToastUtil;
import com.umeng.socialize.media.UMImage;
import com.umeng.socom.Log;
import com.umeng.socom.util.BitmapUtils;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.controller.net:
//            ImageUrlTask

public class UploadImageTask extends AsyncTask
{

    private final String TAG = getClass().getSimpleName();
    private Context mContext;
    private UMImage mUmImage;
    private Bitmap mUploadBitmap;
    private com.facebook.Request.Callback mUploadCallback;
    private ImageUrlTask.OnUploadListener mUploadListener;

    public UploadImageTask(Context context, UMImage umimage)
    {
        mContext = null;
        mUmImage = null;
        mUploadBitmap = null;
        mUploadListener = null;
        mUploadCallback = new com.facebook.Request.Callback() {

            final UploadImageTask this$0;

            public void onCompleted(Response response)
            {
                if (response.getError() != null)
                {
                    ToastUtil.showToast(mContext, "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD");
                    Log.d(TAG, response.getError().toString());
                    return;
                }
                response = response.getGraphObject().getInnerJSONObject();
                try
                {
                    response = new ImageUrlTask(response.getString("id"));
                    response.setUploadListener(mUploadListener);
                    response.execute(new Void[0]);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Response response)
                {
                    response.printStackTrace();
                }
            }

            
            {
                this$0 = UploadImageTask.this;
                super();
            }
        };
        mContext = context;
        mUmImage = umimage;
    }

    private void uploadImamge()
    {
        String s = mUmImage.getImageCachePath();
        if (!TextUtils.isEmpty(s))
        {
            mUploadBitmap = BitmapUtils.getBitmapFromFile(s, 150, 150);
        } else
        {
            byte abyte0[] = mUmImage.toByte();
            if (abyte0 != null && abyte0.length > 0)
            {
                mUploadBitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
                Log.d(TAG, "### uploading image ...");
            }
        }
        if (mUploadBitmap != null && !mUploadBitmap.isRecycled())
        {
            Request.newUploadPhotoRequest(Session.getActiveSession(), mUploadBitmap, mUploadCallback).executeAndWait();
            return;
        } else
        {
            ToastUtil.showToast(mContext, "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD, \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD...");
            return;
        }
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient Void doInBackground(Void avoid[])
    {
        uploadImamge();
        return null;
    }

    public Bitmap getUploadBitmap()
    {
        return mUploadBitmap;
    }

    public ImageUrlTask.OnUploadListener getUploadListener()
    {
        return mUploadListener;
    }

    public void setUploadBitmap(Bitmap bitmap)
    {
        mUploadBitmap = bitmap;
    }

    public void setUploadListener(ImageUrlTask.OnUploadListener onuploadlistener)
    {
        mUploadListener = onuploadlistener;
    }



}
