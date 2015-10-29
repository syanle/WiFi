// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

public class a extends LinearLayout
{

    public a(Context context)
    {
        super(context);
    }

    protected int a(int i, float f)
    {
        int j = i;
        if (i != 0)
        {
            j = (int)((float)i * f);
        }
        return j;
    }

    public void a(Activity activity)
    {
        Object obj = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(((DisplayMetrics) (obj)));
        int i = a(4, ((DisplayMetrics) (obj)).density);
        activity = new android.widget.LinearLayout.LayoutParams(-1, a(48, ((DisplayMetrics) (obj)).density));
        setLayoutParams(activity);
        setOrientation(0);
        obj = new ProgressBar(getContext(), null, 0x1010079);
        ((ProgressBar) (obj)).setPadding(i, i, i, i);
        TextView textview = new TextView(getContext());
        textview.setTextColor(0xff888888);
        textview.setTextSize(1, 14F);
        textview.setText("Loading...");
        textview.setPadding(i, i, i, i);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
        layoutparams.gravity = 17;
        layoutparams.weight = 0.0F;
        android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(-1, -1);
        layoutparams1.gravity = 19;
        layoutparams1.weight = 1.0F;
        layoutparams1.setMargins(0, 0, 0, 0);
        setLayoutParams(activity);
        ((ProgressBar) (obj)).setLayoutParams(layoutparams);
        textview.setLayoutParams(layoutparams1);
        textview.setGravity(19);
        addView(((android.view.View) (obj)));
        addView(textview);
    }
}
