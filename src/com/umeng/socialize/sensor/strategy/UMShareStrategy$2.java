// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.strategy;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Log;
import com.umeng.scrshot.UMScrShotController;

// Referenced classes of package com.umeng.socialize.sensor.strategy:
//            UMShareStrategy

class this._cls0 extends AsyncTask
{

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
        UMShareStrategy.access$0(UMShareStrategy.this, bitmap);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }

    ()
    {
        this$0 = UMShareStrategy.this;
        super();
    }
}
