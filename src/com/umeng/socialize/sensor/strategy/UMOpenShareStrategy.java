// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.strategy;

import android.app.Activity;
import android.util.Log;
import com.umeng.socialize.controller.UMSocialService;

// Referenced classes of package com.umeng.socialize.sensor.strategy:
//            UMBaseStrategy

public class UMOpenShareStrategy extends UMBaseStrategy
{

    private UMSocialService mController;

    public UMOpenShareStrategy(Activity activity)
    {
        super(activity);
        mController = null;
    }

    public UMSocialService getUMSocialService()
    {
        return mController;
    }

    public void setUMSocialService(UMSocialService umsocialservice)
    {
        mController = umsocialservice;
    }

    public void shakeComplete()
    {
        if (mActivity == null || mActivity.isFinishing())
        {
            Log.e("UMOpenShareStrategy", "### can not openShare mActivity");
            return;
        } else
        {
            com.umeng.socom.Log.d("UMOpenShareStrategy", "#### open Share");
            mController.openShare(mActivity, false);
            return;
        }
    }
}
