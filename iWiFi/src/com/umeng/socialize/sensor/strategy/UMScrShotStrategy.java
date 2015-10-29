// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.strategy;

import android.app.Activity;
import com.umeng.scrshot.UMScrShotController;
import com.umeng.scrshot.adapter.UMAppAdapter;
import com.umeng.socialize.sensor.dialogs.UMScreenShotDialog;

// Referenced classes of package com.umeng.socialize.sensor.strategy:
//            UMBaseStrategy

public class UMScrShotStrategy extends UMBaseStrategy
{

    public UMScrShotStrategy(Activity activity)
    {
        super(activity);
    }

    public void shakeComplete()
    {
        if (mActivity == null || mActivity.isFinishing())
        {
            return;
        }
        if (mScrShotController.getScrShotAdapter() == null)
        {
            UMAppAdapter umappadapter = new UMAppAdapter(mActivity);
            mScrShotController.setScrShotAdapter(umappadapter);
        }
        mScrShotController.setScrShotListener(mScreenshotListener);
        android.graphics.Bitmap bitmap = mScrShotController.takeScreenShot();
        UMScreenShotDialog umscreenshotdialog = new UMScreenShotDialog(mActivity);
        umscreenshotdialog.setScreenBitmap(bitmap);
        umscreenshotdialog.show();
    }
}
