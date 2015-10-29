// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import com.umeng.socialize.common.ResContainer;

public class UMScreenShotDialog extends Dialog
{

    private static String TAG = com/umeng/socialize/sensor/dialogs/UMScreenShotDialog.getName();
    private volatile boolean isShowing;
    private Context mContext;
    private int mDelayMillis;
    private Runnable mDismissRunnable = new Runnable() {

        final UMScreenShotDialog this$0;

        public void run()
        {
            UMScreenShotDialog umscreenshotdialog = UMScreenShotDialog.this;
            umscreenshotdialog;
            JVM INSTR monitorenter ;
            if (!isShowing)
            {
                break MISSING_BLOCK_LABEL_49;
            }
            Log.d(UMScreenShotDialog.TAG, "#### postDelayed#run is execute.");
            dismiss();
_L1:
            return;
            Object obj;
            obj;
            ((Exception) (obj)).printStackTrace();
              goto _L1
            obj;
            umscreenshotdialog;
            JVM INSTR monitorexit ;
            throw obj;
            Log.d(UMScreenShotDialog.TAG, "####mDismissRunnable ,The ScreenShotDialog is Destoried");
              goto _L1
        }

            
            {
                this$0 = UMScreenShotDialog.this;
                super();
            }
    };
    private Handler mHandler;
    private ImageView mImageView;

    public UMScreenShotDialog(Context context)
    {
        this(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STYLE, "scrshot_dlg_style"));
    }

    public UMScreenShotDialog(Context context, int i)
    {
        super(context, i);
        mImageView = null;
        mDelayMillis = 1000;
        mHandler = new Handler();
        mContext = null;
        isShowing = false;
        mContext = context;
        initDialog();
    }

    private boolean canShow()
    {
        if (mContext == null)
        {
            clearDialog();
            return false;
        }
        if (mContext != null && (mContext instanceof Activity) && ((Activity)mContext).isFinishing())
        {
            clearDialog();
            return false;
        } else
        {
            return true;
        }
    }

    private void clearDialog()
    {
        mHandler.removeCallbacks(mDismissRunnable);
        isShowing = false;
    }

    private void initDialog()
    {
        setContentView(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "shake_umeng_socialize_scrshot_snapshot"));
        mImageView = (ImageView)findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "screen_snapshot_imageview"));
        getWindow().setWindowAnimations(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STYLE, "snapshotDialogWindowAnim"));
        setCancelable(true);
        setCanceledOnTouchOutside(true);
    }

    public void dismiss()
    {
        super.dismiss();
        isShowing = false;
    }

    public int getDialogShowMillis()
    {
        return mDelayMillis;
    }

    public void onAttachedToWindow()
    {
        if (!canShow())
        {
            Log.d(TAG, "### onAttachedToWindow ==> \u4E0D\u80FD\u663E\u793AScreenShotDialog");
            return;
        } else
        {
            super.onAttachedToWindow();
            return;
        }
    }

    public void onDetachedFromWindow()
    {
        Log.d(TAG, "####onDetachedFromWindow");
        mHandler.removeCallbacks(mDismissRunnable);
        isShowing = false;
        super.onDetachedFromWindow();
        mContext = null;
        mHandler = null;
        mImageView = null;
    }

    public void setDialogAnimation(int i)
    {
        getWindow().setWindowAnimations(i);
    }

    public void setDialogAttributes()
    {
        Window window = getWindow();
        window.setGravity(51);
        if (mContext == null)
        {
            Log.d(TAG, "mContext \u4E3A\u7A7A, \u4E0D\u80FD\u8BBE\u7F6E\u7A97\u53E3\u53C2\u6570.");
        } else
        {
            Object obj = getWindow().getWindowManager().getDefaultDisplay();
            int i = ((Display) (obj)).getWidth();
            int j = ((Display) (obj)).getHeight();
            obj = getWindow().getAttributes();
            if (mContext.getResources().getConfiguration().orientation == 2)
            {
                obj.x = i / 5;
                obj.y = j / 10;
                obj.width = (int)((double)i * 0.59999999999999998D);
                obj.height = (int)((double)j * 0.80000000000000004D);
            } else
            if (mContext.getResources().getConfiguration().orientation == 1)
            {
                obj.x = i / 20;
                obj.y = j / 5;
                obj.width = (int)((double)i * 0.90000000000000002D);
                obj.height = (int)((double)j * 0.5D);
            }
            if (window != null)
            {
                window.setAttributes(((android.view.WindowManager.LayoutParams) (obj)));
                return;
            }
        }
    }

    public void setDialogShowMillis(int i)
    {
        mDelayMillis = i;
    }

    public void setScreenBitmap(Bitmap bitmap)
    {
        if (bitmap != null && mImageView != null)
        {
            mImageView.setImageBitmap(bitmap);
        }
    }

    public void show()
    {
        if (!canShow())
        {
            Log.d(TAG, "### \u4E0D\u80FD\u663E\u793AScreenShotDialog");
            return;
        } else
        {
            setDialogAttributes();
            super.show();
            isShowing = true;
            mHandler.postDelayed(mDismissRunnable, mDelayMillis);
            return;
        }
    }



}
