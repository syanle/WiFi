// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.PopupWindow;
import com.umeng.socialize.common.ResContainer;

public class aj extends PopupWindow
{

    public aj(Context context)
    {
        super(View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_full_curtain"), null), -1, -1, false);
    }

    public void a(View view)
    {
        showAtLocation(view, 80, 0, 0);
        setFocusable(true);
        setBackgroundDrawable(new BitmapDrawable());
    }
}
