// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.PrintStream;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            FloatApplication

public class FloatView extends LinearLayout
{

    private ImageView icon;
    private android.view.View.OnClickListener mClickListener;
    private float mStartX;
    private float mStartY;
    private float mTouchX;
    private float mTouchY;
    private TextView msg;
    private int screenWidth;
    private WindowManager windowManager;
    private android.view.WindowManager.LayoutParams windowManagerParams;
    private float x;
    private float y;

    public FloatView(Context context, int i)
    {
        super(context);
        windowManager = (WindowManager)getContext().getApplicationContext().getSystemService("window");
        windowManagerParams = ((FloatApplication)getContext().getApplicationContext()).getWindowParams();
        screenWidth = i;
        msg = new TextView(context);
        icon = new ImageView(context);
        msg.setText("\u65E0wifi");
        msg.setTextColor(0xff888888);
        addView(icon, new android.widget.LinearLayout.LayoutParams(-2, -2));
        addView(msg, new android.widget.LinearLayout.LayoutParams(-2, -2));
    }

    private void updateViewPosition()
    {
        windowManagerParams.x = (int)(x - mTouchX);
        windowManagerParams.y = (int)(y - mTouchY);
        windowManager.updateViewLayout(this, windowManagerParams);
    }

    public Drawable getImage()
    {
        return icon.getBackground();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        Rect rect = new Rect();
        getWindowVisibleDisplayFrame(rect);
        int i = rect.top;
        System.out.println((new StringBuilder("statusBarHeight:")).append(i).toString());
        x = motionevent.getRawX();
        y = motionevent.getRawY() - (float)i;
        Log.i("tag", (new StringBuilder("currX")).append(x).append("====currY").append(y).toString());
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 128
    //                   0 130
    //                   1 209
    //                   2 202;
           goto _L1 _L2 _L3 _L4
_L1:
        return true;
_L2:
        mTouchX = motionevent.getX();
        mTouchY = motionevent.getY();
        mStartX = x;
        mStartY = y;
        Log.i("tag", (new StringBuilder("startX")).append(mTouchX).append("====startY").append(mTouchY).toString());
        continue; /* Loop/switch isn't completed */
_L4:
        updateViewPosition();
        continue; /* Loop/switch isn't completed */
_L3:
        updateViewPosition();
        mTouchY = 0.0F;
        mTouchX = 0.0F;
        if (x - mStartX < 50F && y - mStartY < 50F && mClickListener != null)
        {
            mClickListener.onClick(this);
        }
        if (windowManagerParams.x <= screenWidth / 2)
        {
            windowManagerParams.x = 0;
        } else
        {
            windowManagerParams.x = screenWidth;
        }
        windowManager.updateViewLayout(this, windowManagerParams);
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void setImage(Drawable drawable)
    {
        icon.setBackgroundDrawable(drawable);
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        mClickListener = onclicklistener;
    }

    public void setTextInvisiable()
    {
        msg.setVisibility(8);
    }

    public void setTextVisiable()
    {
        msg.setVisibility(0);
    }
}
