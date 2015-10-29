// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.view.GestureDetector;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.youmi.android.a.a.h.a;
import net.youmi.android.a.a.h.b;
import net.youmi.android.a.b.k.e;

// Referenced classes of package net.youmi.android.a.a.j:
//            a, i, g, h, 
//            e, j

public class d extends LinearLayout
    implements android.view.View.OnClickListener
{

    private RelativeLayout a;
    private LinearLayout b;
    private RelativeLayout c;
    private ImageView d;
    private TextView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private j k;
    private GestureDetector l;
    private GestureDetector m;
    private View n;
    private int o;
    private net.youmi.android.a.a.j.a p;

    public d(Context context, net.youmi.android.a.a.j.a a1, j j1, boolean flag)
    {
        super(context);
        o = Color.parseColor("#FFFFBB34");
        k = j1;
        p = a1;
        a(context);
        b(context);
        a(context, flag);
        a();
    }

    static TextView a(d d1)
    {
        return d1.h;
    }

    private String a(int i1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s = String.valueOf(i1);
        int k1 = (s.length() - 1) / 3 + 1;
        i1 = 0;
        while (i1 < k1) 
        {
            int l1 = s.length() - i1 * 3;
            int j1;
            if (l1 - 3 > 0)
            {
                j1 = l1 - 3;
            } else
            {
                j1 = 0;
            }
            stringbuilder.insert(0, s.substring(j1, l1));
            if (i1 != k1 - 1)
            {
                stringbuilder.insert(0, ",");
            }
            i1++;
        }
        return stringbuilder.toString();
    }

    private void a()
    {
        setTitle(p.a);
        setPoints(p.c);
        setPointsUnit(p.d);
        if ((p.b & 1) != 0)
        {
            setBackBtnVisibiity(0);
        } else
        {
            setBackBtnVisibiity(4);
        }
        if ((p.b & 4) != 0)
        {
            setPointsLayoutVisibility(0);
        } else
        {
            setPointsLayoutVisibility(4);
        }
        if ((p.b & 8) != 0)
        {
            setLogoVisibility(0);
            return;
        } else
        {
            setLogoVisibility(8);
            return;
        }
    }

    private void a(Context context)
    {
        Object obj = new android.widget.LinearLayout.LayoutParams(-1, -2);
        setOrientation(1);
        setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        if (p.e != -1)
        {
            o = p.e;
        }
        setBackgroundColor(o);
        a = new RelativeLayout(context);
        obj = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        a.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        addView(a);
        n = new View(context);
        n.setBackgroundColor(Color.parseColor("#20999999"));
        context = new android.widget.LinearLayout.LayoutParams(-1, net.youmi.android.a.b.k.e.a(context, 2.0F));
        n.setLayoutParams(context);
        addView(n);
    }

    private void a(Context context, boolean flag)
    {
        if (d != null)
        {
            d.setOnClickListener(this);
        }
        if (flag)
        {
            if (b != null)
            {
                m = new GestureDetector(context, new i(this, 2));
                b.setOnTouchListener(new g(this));
            }
            if (c != null)
            {
                l = new GestureDetector(context, new i(this, 3));
                c.setOnTouchListener(new h(this));
            }
        }
    }

    static GestureDetector b(d d1)
    {
        return d1.m;
    }

    private void b(Context context)
    {
        d = new ImageView(context);
        d.setId(1);
        d.setImageBitmap(net.youmi.android.a.b.k.b.a(net.youmi.android.a.a.h.b.k()));
        d.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
        d.setPadding(net.youmi.android.a.b.k.e.a(context, 5F), net.youmi.android.a.b.k.e.a(context, 10F), net.youmi.android.a.b.k.e.a(context, 5F), net.youmi.android.a.b.k.e.a(context, 10F));
        Object obj = new android.widget.RelativeLayout.LayoutParams(net.youmi.android.a.b.k.e.a(context, 50F), net.youmi.android.a.b.k.e.a(context, 35F));
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(9);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(15);
        a.addView(d, ((android.view.ViewGroup.LayoutParams) (obj)));
        b = new LinearLayout(context);
        b.setId(2);
        b.setOrientation(1);
        b.setGravity(5);
        b.setPadding(net.youmi.android.a.b.k.e.a(context, 5F), net.youmi.android.a.b.k.e.a(context, 2.0F), net.youmi.android.a.b.k.e.a(context, 5F), net.youmi.android.a.b.k.e.a(context, 2.0F));
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(11);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(15);
        a.addView(b, ((android.view.ViewGroup.LayoutParams) (obj)));
        e = new TextView(context);
        e.setTextSize(2, 15F);
        e.setTextColor(-1);
        e.setGravity(5);
        obj = new android.widget.LinearLayout.LayoutParams(-2, -2);
        b.addView(e, ((android.view.ViewGroup.LayoutParams) (obj)));
        f = new TextView(context);
        f.setTextSize(2, 11F);
        f.setTextColor(Color.parseColor("#40000000"));
        f.setGravity(5);
        f.setShadowLayer(1.0F, 1.0F, 1.0F, 0xffcccccc);
        obj = new android.widget.LinearLayout.LayoutParams(-2, -2);
        b.addView(f, ((android.view.ViewGroup.LayoutParams) (obj)));
        i = new TextView(context);
        i.setId(16);
        i.setText("");
        i.setTextSize(2, 22F);
        i.setBackgroundColor(Color.parseColor("#13000000"));
        obj = new android.widget.RelativeLayout.LayoutParams(net.youmi.android.a.b.k.e.a(context, 1.0F), -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).setMargins(0, net.youmi.android.a.b.k.e.a(context, 5F), 0, net.youmi.android.a.b.k.e.a(context, 5F));
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(1, 1);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(15);
        a.addView(i, ((android.view.ViewGroup.LayoutParams) (obj)));
        j = new TextView(context);
        j.setId(17);
        j.setText("");
        j.setTextSize(2, 22F);
        j.setBackgroundColor(Color.parseColor("#13000000"));
        obj = new android.widget.RelativeLayout.LayoutParams(net.youmi.android.a.b.k.e.a(context, 1.0F), -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).setMargins(0, net.youmi.android.a.b.k.e.a(context, 5F), 0, net.youmi.android.a.b.k.e.a(context, 5F));
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(0, 2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(15);
        a.addView(j, ((android.view.ViewGroup.LayoutParams) (obj)));
        c = new RelativeLayout(context);
        c.setId(3);
        c.setPadding(net.youmi.android.a.b.k.e.a(context, 15F), 0, net.youmi.android.a.b.k.e.a(context, 5F), 0);
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(1, 16);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(0, 17);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(15);
        a.addView(c, ((android.view.ViewGroup.LayoutParams) (obj)));
        g = new TextView(context);
        g.setId(4);
        g.setSingleLine(true);
        g.setMaxEms(6);
        g.setEllipsize(android.text.TextUtils.TruncateAt.END);
        g.setTextSize(2, 20F);
        g.setTextColor(-1);
        g.setGravity(19);
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(9);
        c.addView(g, ((android.view.ViewGroup.LayoutParams) (obj)));
        int i1 = net.youmi.android.a.b.k.e.a(context, 1.0F);
        h = new TextView(context);
        h.setId(5);
        h.setTextSize(2, 9F);
        h.setTextColor(o);
        h.setPadding(net.youmi.android.a.b.k.e.a(context, 3F), 0, net.youmi.android.a.b.k.e.a(context, 3F) + i1, i1);
        try
        {
            obj = new SpannableString(net.youmi.android.a.a.h.a.t());
            ((SpannableString) (obj)).setSpan(new StyleSpan(3), 0, ((SpannableString) (obj)).length(), 18);
            h.setText(((CharSequence) (obj)));
        }
        catch (Exception exception)
        {
            h.setText(net.youmi.android.a.a.h.a.t());
        }
        h.getViewTreeObserver().addOnGlobalLayoutListener(new net.youmi.android.a.a.j.e(this, i1));
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).setMargins(net.youmi.android.a.b.k.e.a(context, 5F), net.youmi.android.a.b.k.e.a(context, 5F), 0, 0);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(10);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(1, 4);
        c.addView(h, ((android.view.ViewGroup.LayoutParams) (obj)));
    }

    static GestureDetector c(d d1)
    {
        return d1.l;
    }

    static j d(d d1)
    {
        return d1.k;
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 1 1: default 24
    //                   1 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        if (k != null)
        {
            try
            {
                k.g();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void setBackBtnVisibiity(int i1)
    {
        if (d != null)
        {
            d.setVisibility(i1);
        }
        if (i != null)
        {
            i.setVisibility(i1);
        }
    }

    public void setLogoVisibility(int i1)
    {
        if (h != null)
        {
            h.setVisibility(i1);
        }
    }

    public void setPoints(int i1)
    {
        if (e == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        SpannableString spannablestring = new SpannableString(a(i1));
        spannablestring.setSpan(new TypefaceSpan("sans-serif"), 0, spannablestring.length(), 18);
        e.setText(spannablestring);
        return;
        Exception exception;
        exception;
        e.setText((new StringBuilder()).append("").append(i1).toString());
        return;
    }

    public void setPointsLayoutVisibility(int i1)
    {
        if (b != null)
        {
            b.setVisibility(i1);
        }
        if (j != null)
        {
            j.setVisibility(i1);
        }
    }

    public void setPointsUnit(CharSequence charsequence)
    {
        if (f == null || charsequence == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        SpannableString spannablestring = new SpannableString(charsequence);
        spannablestring.setSpan(new TypefaceSpan("sans-serif"), 0, spannablestring.length(), 18);
        f.setText(spannablestring);
        return;
        Exception exception;
        exception;
        f.setText(charsequence);
        return;
    }

    public void setTitle(CharSequence charsequence)
    {
        if (g == null || charsequence == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        SpannableString spannablestring = new SpannableString(charsequence);
        spannablestring.setSpan(new StyleSpan(1), 0, spannablestring.length(), 18);
        g.setText(spannablestring);
        return;
        Exception exception;
        exception;
        g.setText(charsequence);
        return;
    }

    public void setTitleBackgroundColor(int i1)
    {
        o = i1;
        setBackgroundColor(i1);
    }
}
