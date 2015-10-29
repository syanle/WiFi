// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.content.Context;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.youmi.android.a.a.h.a;
import net.youmi.android.a.b.k.f;

class j extends RelativeLayout
{

    private TextView a;
    private Button b;
    private Button c;

    public j(Context context)
    {
        super(context);
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setOrientation(1);
        a = new TextView(context);
        a.setTextColor(0xff000000);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
        int i = f.a(context).a(4);
        layoutparams.setMargins(i, i, i, i);
        layoutparams.gravity = 17;
        linearlayout.addView(a, layoutparams);
        setBackgroundColor(-1);
        android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(-2, -2);
        layoutparams1.setMargins(i, i, i, i);
        c = new Button(context);
        c.setText(net.youmi.android.a.a.h.a.v());
        b = new Button(context);
        b.setText(net.youmi.android.a.a.h.a.u());
        context = new LinearLayout(context);
        context.setOrientation(0);
        context.addView(b, layoutparams1);
        context.addView(c, layoutparams1);
        linearlayout.addView(context, layoutparams);
        context = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        context.addRule(13);
        addView(linearlayout, context);
    }

    Button a()
    {
        return b;
    }

    void a(String s)
    {
        if (a != null)
        {
            a.setText(s);
        }
    }

    Button b()
    {
        return c;
    }
}
