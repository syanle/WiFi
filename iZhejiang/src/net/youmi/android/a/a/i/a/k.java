// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import net.youmi.android.a.b.k.f;

// Referenced classes of package net.youmi.android.a.a.i.a:
//            m

class k extends LinearLayout
{

    private ProgressBar a;
    private TextView b;
    private m c;

    k(Context context)
    {
        super(context);
        f f2 = f.a(context);
        int i = f2.a(8);
        float f1 = f2.a(5);
        Object obj = new ShapeDrawable(new RoundRectShape(new float[] {
            f1, f1, f1, f1, f1, f1, f1, f1
        }, null, null));
        int j = Color.argb(150, 0, 0, 0);
        ((ShapeDrawable) (obj)).getPaint().setColor(j);
        setOrientation(0);
        setPadding(i, i, i, i);
        setBackgroundDrawable(((android.graphics.drawable.Drawable) (obj)));
        obj = new android.widget.LinearLayout.LayoutParams(-2, -2);
        obj.gravity = 17;
        i = f2.a(3);
        ((android.widget.LinearLayout.LayoutParams) (obj)).setMargins(i, i, i, i);
        a = new ProgressBar(context, null, 0x1010079);
        a.setIndeterminate(true);
        addView(a, ((android.view.ViewGroup.LayoutParams) (obj)));
        b = new TextView(context);
        b.setTextColor(-1);
        b.setTextSize(12F);
        addView(b, ((android.view.ViewGroup.LayoutParams) (obj)));
        c = new m(this, null);
        c.b(0);
        c.a(a.getIndeterminateDrawable());
        c.a(-1);
        c.a(12F);
    }

    void a(String s)
    {
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        b.setVisibility(8);
_L1:
        b.setText(s);
        a.setVisibility(0);
        return;
        try
        {
            b.setVisibility(0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
          goto _L1
    }
}
