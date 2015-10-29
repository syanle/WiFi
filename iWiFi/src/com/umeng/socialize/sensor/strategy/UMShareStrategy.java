// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.strategy;

import android.app.Activity;
import android.graphics.Bitmap;
import android.hardware.SensorEvent;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import com.umeng.scrshot.UMScrShotController;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.sensor.controller.UMShakeService;
import com.umeng.socialize.sensor.dialogs.UMShareScrShotDialog;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.umeng.socialize.sensor.strategy:
//            UMBaseStrategy

public class UMShareStrategy extends UMBaseStrategy
{

    private static com.umeng.socialize.sensor.UMSensor.OnSensorListener mIntervalSensorListener = new com.umeng.socialize.sensor.UMSensor.OnSensorListener() {

        public void onActionComplete(SensorEvent sensorevent)
        {
        }

        public void onButtonClick(com.umeng.socialize.sensor.UMSensor.WhitchButton whitchbutton)
        {
            if (UMShareStrategy.mSensorListener != null)
            {
                UMShareStrategy.mSensorListener.onButtonClick(whitchbutton);
            }
        }

        public void onComplete(SHARE_MEDIA share_media, int i, SocializeEntity socializeentity)
        {
            if (UMShareStrategy.mSensorListener != null)
            {
                Log.d("", "#### \u5206\u4EAB\u7B56\u7565  onComplete");
                UMShareStrategy.mSensorListener.onComplete(share_media, i, socializeentity);
            }
        }

        public void onStart()
        {
            if (UMShareStrategy.mSensorListener != null)
            {
                UMShareStrategy.mSensorListener.onStart();
            }
        }

    };
    private UMSocialService mController;
    private UMShakeService mShakeController;
    private UMShareScrShotDialog mShareDialog;
    private List mSharePlatforms;

    public UMShareStrategy(Activity activity)
    {
        super(activity);
        mSharePlatforms = new ArrayList();
        mShakeController = null;
        mController = null;
        mShareDialog = null;
        mShareDialog = new UMShareScrShotDialog(activity);
    }

    private void asyncTakeScrShot()
    {
        (new AsyncTask() {

            final UMShareStrategy this$0;

            protected transient Bitmap doInBackground(Void avoid[])
            {
                avoid = null;
                if (mScrShotController != null)
                {
                    long l = System.currentTimeMillis();
                    avoid = mScrShotController.takeScreenShot();
                    long l1 = System.currentTimeMillis();
                    Log.d("asyncTakeScrShot", (new StringBuilder("### \u5F02\u6B65\u622A\u56FE\u8017\u65F6 : ")).append(l1 - l).append(" \u6BEB\u79D2.").toString());
                }
                return avoid;
            }

            protected volatile transient Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected void onPostExecute(Bitmap bitmap)
            {
                showShareDialog(bitmap);
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((Bitmap)obj);
            }

            
            {
                this$0 = UMShareStrategy.this;
                super();
            }
        }).execute(new Void[0]);
    }

    private void showShareDialog(Bitmap bitmap)
    {
        if (bitmap != null && !bitmap.isRecycled())
        {
            mShareDialog.setShareListener(mIntervalSensorListener);
            mShareDialog.setUMSocialService(mController);
            mShareDialog.setShakeController(mShakeController);
            mShareDialog.setPlatforms(mSharePlatforms);
            mShareDialog.setScrshotBmp(bitmap);
            mShareDialog.show();
            return;
        } else
        {
            Toast.makeText(mActivity, "\u62B1\u6B49, \u622A\u56FE\u5931\u8D25...", 0).show();
            return;
        }
    }

    public UMShakeService getShakeController()
    {
        return mShakeController;
    }

    public List getSharePlatforms()
    {
        return mSharePlatforms;
    }

    public UMSocialService getUMSocialService()
    {
        return mController;
    }

    public boolean isDialogShowing()
    {
        return mShareDialog != null && mShareDialog.isShowing();
    }

    public void setShakeController(UMShakeService umshakeservice)
    {
        mShakeController = umshakeservice;
    }

    public void setSharePlatforms(List list)
    {
        mSharePlatforms = list;
    }

    public void setUMSocialService(UMSocialService umsocialservice)
    {
        mController = umsocialservice;
    }

    public void shakeComplete()
    {
        if (mActivity == null || mActivity.isFinishing())
        {
            Log.d("", "#### \u5206\u4EAB\u7B56\u7565, activity\u5DF2\u7ECF\u9500\u6BC1");
        } else
        {
            if (isDialogShowing())
            {
                Toast.makeText(mActivity, "\u8BF7\u5148\u5173\u95ED\u5F53\u524D\u6447\u4E00\u6447\u5206\u4EAB\u7A97\u53E3", 0).show();
                return;
            }
            if (mShakeController.isAsyncTakeScrShot())
            {
                asyncTakeScrShot();
                return;
            }
            if (mScrShotController != null)
            {
                showShareDialog(mScrShotController.takeScreenShot());
                return;
            }
        }
    }


}
