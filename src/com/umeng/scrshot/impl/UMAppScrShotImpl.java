// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.scrshot.impl;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

// Referenced classes of package com.umeng.scrshot.impl:
//            UMBaseScrShotImpl

public class UMAppScrShotImpl extends UMBaseScrShotImpl
{

    private Activity mActivity;

    public UMAppScrShotImpl(Activity activity)
    {
        mActivity = null;
        mActivity = activity;
    }

    public Activity getActivity()
    {
        return mActivity;
    }

    public Bitmap getBitmap()
    {
        if (mActivity == null || mActivity.isFinishing())
        {
            Log.d(TAG, "takeScreenShot(Activity act)\u7684act\u53C2\u6570\u4E3A\u7A7A.");
            return null;
        }
        Activity activity = mActivity;
        activity;
        JVM INSTR monitorenter ;
        View view;
        Bitmap bitmap;
        int i;
        int j;
        int k;
        view = mActivity.getWindow().getDecorView();
        view.setDrawingCacheEnabled(true);
        view.buildDrawingCache(true);
        bitmap = view.getDrawingCache();
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        i = rect.top;
        j = mActivity.getWindowManager().getDefaultDisplay().getWidth();
        k = mActivity.getWindowManager().getDefaultDisplay().getHeight();
        Object obj2 = null;
        Object obj = Bitmap.createBitmap(bitmap, 0, i, j, k - i);
_L1:
        view.setDrawingCacheEnabled(false);
        view.destroyDrawingCache();
        activity;
        JVM INSTR monitorexit ;
        return ((Bitmap) (obj));
        Object obj1;
        obj1;
        activity;
        JVM INSTR monitorexit ;
        throw obj1;
        obj1;
        obj1 = obj2;
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        obj1 = obj2;
        if (!bitmap.isRecycled())
        {
            obj1 = Bitmap.createBitmap(bitmap);
        }
        Log.d(TAG, "#### \u65CB\u8F6C\u5C4F\u5E55\u5BFC\u81F4\u53BB\u6389\u72B6\u6001\u680F\u5931\u8D25");
          goto _L1
    }

    public void setActivity(Activity activity)
    {
        mActivity = activity;
    }
}
