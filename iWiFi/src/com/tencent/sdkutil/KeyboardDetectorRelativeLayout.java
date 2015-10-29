// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;

public class KeyboardDetectorRelativeLayout extends RelativeLayout
{

    private IKeyboardChanged mKeyboardListener;
    private Rect rect;

    public KeyboardDetectorRelativeLayout(Context context)
    {
        super(context);
        rect = null;
        mKeyboardListener = null;
        if (rect == null)
        {
            rect = new Rect();
        }
    }

    public KeyboardDetectorRelativeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        rect = null;
        mKeyboardListener = null;
        if (rect == null)
        {
            rect = new Rect();
        }
    }

    public void addKeyboardStateChangedListener(IKeyboardChanged ikeyboardchanged)
    {
        mKeyboardListener = ikeyboardchanged;
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(j);
        Activity activity = (Activity)getContext();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int l = rect.top;
        int i1 = activity.getWindowManager().getDefaultDisplay().getHeight();
        if (mKeyboardListener != null && k != 0)
        {
            if (i1 - l - k > 100)
            {
                mKeyboardListener.onKeyboardShown(Math.abs(rect.height()) - getPaddingBottom() - getPaddingTop());
            } else
            {
                mKeyboardListener.onKeyboardHidden();
            }
        }
        super.onMeasure(i, j);
    }

    private class IKeyboardChanged
    {

        public abstract void onKeyboardHidden();

        public abstract void onKeyboardShown(int i);
    }

}
