// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.NinePatchDrawable;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.youmi.android.a.a.h.b;
import net.youmi.android.a.b.k.f;

class c
{

    private static NinePatchDrawable a;

    private static NinePatchDrawable a(Context context)
    {
        if (a == null)
        {
            if (context == null)
            {
                return null;
            }
            try
            {
                a = net.youmi.android.a.b.k.b.a(context, b.i(), b.j());
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        return a;
    }

    static RelativeLayout a(Context context, String s, int i)
    {
        f f1 = f.a(context);
        RelativeLayout relativelayout = new RelativeLayout(context);
        relativelayout.setBackgroundColor(0xff000000);
        TextView textview = new TextView(context);
        textview.setTextColor(Color.parseColor("#ffcc00"));
        textview.setShadowLayer(f1.a(1.0F), 1.0F, 1.0F, 0xff000000);
        textview.setText(s);
        textview.setTextSize(16F);
        int j = f1.a(10);
        textview.setPadding(j, j, j, j);
        textview.setGravity(19);
        try
        {
            textview.setCompoundDrawablesWithIntrinsicBounds(context.getResources().getDrawable(0x108009b), null, null, null);
            textview.setCompoundDrawablePadding(18);
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        if (i > 0)
        {
            textview.setWidth(i);
        }
        context = a(context);
        if (context != null)
        {
            try
            {
                relativelayout.setBackgroundDrawable(context);
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        context = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        context.addRule(13);
        relativelayout.addView(textview, context);
        return relativelayout;
    }
}
