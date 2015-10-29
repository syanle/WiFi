// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import net.youmi.android.a.b.k.f;
import net.youmi.android.a.b.l.a;

// Referenced classes of package net.youmi.android.a.a.j:
//            c

public class b extends RelativeLayout
    implements android.view.View.OnClickListener
{

    private Context a;
    private c b;
    private View c;
    private View d;
    private View e;
    private View f;
    private View g;

    public b(Context context, c c1)
    {
        super(context);
        b = c1;
        a = context;
        setBackgroundColor(Color.parseColor("#333333"));
        a();
        setBackEnable(false);
        setForwardEnable(false);
    }

    private void a()
    {
        try
        {
            TableLayout tablelayout = new TableLayout(a);
            tablelayout.setStretchAllColumns(true);
            tablelayout.setColumnStretchable(0, true);
            tablelayout.setColumnStretchable(1, true);
            tablelayout.setColumnStretchable(2, true);
            tablelayout.setColumnStretchable(3, true);
            TableRow tablerow = new TableRow(a);
            int i = net.youmi.android.a.b.k.f.a(a).a(48);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(i, i);
            layoutparams.addRule(13);
            c = new a(a, net.youmi.android.a.a.h.b.b(), net.youmi.android.a.a.h.b.c());
            d = new a(a, net.youmi.android.a.a.h.b.d(), net.youmi.android.a.a.h.b.e());
            e = new a(a, net.youmi.android.a.a.h.b.f(), net.youmi.android.a.a.h.b.g());
            g = new a(a, net.youmi.android.a.a.h.b.a());
            a(tablerow, 0, c, layoutparams);
            a(tablerow, 1, d, layoutparams);
            a(tablerow, 2, e, layoutparams);
            a(tablerow, 3, g, layoutparams);
            tablelayout.addView(tablerow);
            addView(tablelayout, new android.widget.RelativeLayout.LayoutParams(-1, i));
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void a(TableRow tablerow, int i, View view, android.widget.RelativeLayout.LayoutParams layoutparams)
    {
        android.widget.TableRow.LayoutParams layoutparams1 = new android.widget.TableRow.LayoutParams(-2, -2);
        layoutparams1.column = i;
        RelativeLayout relativelayout = new RelativeLayout(a);
        view.setOnClickListener(this);
        relativelayout.addView(view, layoutparams);
        tablerow.addView(relativelayout, layoutparams1);
    }

    public void onClick(View view)
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        if (view == c)
        {
            b.c();
            return;
        }
        try
        {
            if (view == d)
            {
                b.d();
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            return;
        }
        if (view == f)
        {
            b.e();
            return;
        }
        if (view == e)
        {
            b.b();
            return;
        }
        if (view == g)
        {
            b.f();
        }
    }

    public void setBackEnable(boolean flag)
    {
        if (c != null)
        {
            c.setEnabled(flag);
        }
    }

    public void setForwardEnable(boolean flag)
    {
        if (d != null)
        {
            d.setEnabled(flag);
        }
    }
}
