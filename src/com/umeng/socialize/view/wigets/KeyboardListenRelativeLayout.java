// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class KeyboardListenRelativeLayout extends RelativeLayout
{
    public static interface IOnKeyboardStateChangedListener
    {

        public abstract void a(int i);
    }


    public static final byte KEYBOARD_STATE_HIDE = -2;
    public static final byte KEYBOARD_STATE_INIT = -1;
    public static final byte KEYBOARD_STATE_SHOW = -3;
    private static final String a = com/umeng/socialize/view/wigets/KeyboardListenRelativeLayout.getSimpleName();
    private boolean b;
    private boolean c;
    private int d;
    private IOnKeyboardStateChangedListener e;

    public KeyboardListenRelativeLayout(Context context)
    {
        super(context);
        b = false;
        c = false;
    }

    public KeyboardListenRelativeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = false;
        c = false;
    }

    public KeyboardListenRelativeLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = false;
        c = false;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (!b)
        {
            b = true;
            d = l;
            if (e != null)
            {
                e.a(-1);
            }
        } else
        {
            if (d < l)
            {
                i = l;
            } else
            {
                i = d;
            }
            d = i;
        }
        if (b && d > l)
        {
            c = true;
            if (e != null)
            {
                e.a(-3);
            }
        }
        if (b && c && d == l)
        {
            c = false;
            if (e != null)
            {
                e.a(-2);
            }
        }
    }

    public void setOnKeyboardStateChangedListener(IOnKeyboardStateChangedListener ionkeyboardstatechangedlistener)
    {
        e = ionkeyboardstatechangedlistener;
    }

}
