// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class ResizeLayout extends LinearLayout
{
    public static interface OnResizeListener
    {

        public abstract void OnResize(int i, int j, int k, int l);
    }


    private OnResizeListener a;

    public ResizeLayout(Context context)
    {
        super(context);
    }

    public ResizeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void a(OnResizeListener onresizelistener)
    {
        a = onresizelistener;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (a != null)
        {
            a.OnResize(i, j, k, l);
        }
    }
}
