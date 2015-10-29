// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.dialogs;

import android.hardware.SensorEvent;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;

// Referenced classes of package com.umeng.socialize.sensor.dialogs:
//            UMShareScrShotDialog

class 
    implements com.umeng.socialize.sensor.er
{

    public void onActionComplete(SensorEvent sensorevent)
    {
    }

    public void onButtonClick(com.umeng.socialize.sensor.ialog._cls1 _pcls1)
    {
        if (UMShareScrShotDialog.access$0() != null)
        {
            UMShareScrShotDialog.access$0().onButtonClick(_pcls1);
        }
    }

    public void onComplete(SHARE_MEDIA share_media, int i, SocializeEntity socializeentity)
    {
        if (UMShareScrShotDialog.access$0() != null)
        {
            Log.d("", "#### \u5206\u4EABDialog  onComplete");
            UMShareScrShotDialog.access$0().onComplete(share_media, i, socializeentity);
        }
    }

    public void onStart()
    {
        if (UMShareScrShotDialog.access$0() != null)
        {
            UMShareScrShotDialog.access$0().onStart();
        }
    }

    ()
    {
    }
}
