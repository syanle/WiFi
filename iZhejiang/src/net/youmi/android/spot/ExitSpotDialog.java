// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.k.f;
import net.youmi.android.a.c.b.a;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.spot:
//            j, f, ExitSpotListener

public class ExitSpotDialog extends Dialog
    implements android.view.View.OnClickListener
{

    private boolean A;
    private String B;
    private String C;
    private String D;
    private float E;
    private long F;
    protected int a;
    private final int b;
    private boolean c;
    private Context d;
    private String e;
    private String f;
    private String g;
    private int h;
    private int i;
    private int j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private ExitSpotListener s;
    private RelativeLayout t;
    private RelativeLayout u;
    private Button v;
    private Button w;
    private final int x;
    private final int y;
    private final int z;

    public ExitSpotDialog(Context context, String s1, int i1, int j1, String s2, ExitSpotListener exitspotlistener)
    {
        int k1;
        int i2;
        boolean flag;
        super(context, i1);
        b = 2;
        c = true;
        x = 2;
        y = 4;
        z = 5;
        A = false;
        B = "#00000000";
        C = "#7751534e";
        D = "#99000000";
        E = 1.0F;
        F = 0L;
        d = context;
        e = s1;
        s = exitspotlistener;
        c = true;
        k1 = j1;
        if (j1 == 0)
        {
            k1 = 0x101004a;
        }
        exitspotlistener = s2;
        if (net.youmi.android.a.b.b.e.a(s2))
        {
            exitspotlistener = "#ff51534e";
        }
        b();
        s2 = net.youmi.android.a.b.k.f.a(context);
        i2 = 0;
        j1 = 0;
        flag = false;
        i1 = i2;
        int l1 = Integer.parseInt(Integer.toString(s2.d()));
        j1 = l1;
        i1 = i2;
        i2 = Integer.parseInt(Integer.toString(s2.g()));
        j1 = l1;
        i1 = i2;
        Integer.parseInt(Integer.toString(s2.h()));
        i1 = i2;
_L1:
        android.widget.RelativeLayout.LayoutParams layoutparams;
        Object obj;
        int k2;
        JSONObject jsonobject;
        if (i1 != 0)
        {
            i1 = (int)((double)i1 * 0.75D);
        } else
        {
            i1 = a(200F);
        }
        t = new RelativeLayout(context);
        t.setGravity(17);
        t.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        t.setBackgroundColor(Color.parseColor(B));
        u = new RelativeLayout(context);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(i1, -2);
        k2 = a(4F);
        obj = new ImageView(context);
        ((ImageView) (obj)).setId(2);
        jsonobject = net.youmi.android.a.b.b.b.a(s1);
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_1064;
        }
        s2 = net.youmi.android.a.b.b.b.a(jsonobject, "blk", null);
        s1 = s2;
        if (net.youmi.android.a.b.b.e.a(s2.toString()))
        {
            s1 = net.youmi.android.a.b.b.b.a(jsonobject, "rtg", null);
        }
        s2 = net.youmi.android.a.b.b.b.a(s1, "uri", "");
        s1 = s2;
        if (!net.youmi.android.a.b.b.e.a(s2))
        {
            break MISSING_BLOCK_LABEL_419;
        }
        s2 = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(jsonobject, "rtg", null), "uri", "");
        s1 = s2;
        if (net.youmi.android.a.b.b.e.a(s2))
        {
            a();
            return;
        }
        break MISSING_BLOCK_LABEL_419;
        s2;
        l1 = j1;
          goto _L1
        j1 = ((flag) ? 1 : 0);
        if (!s1.startsWith(net.youmi.android.spot.j.a))
        {
            break MISSING_BLOCK_LABEL_510;
        }
        s1 = BitmapDrawable.createFromPath(net.youmi.android.spot.j.a(Uri.parse(s1)));
        ((ImageView) (obj)).setImageDrawable(s1);
        ((ImageView) (obj)).setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        ((ImageView) (obj)).setAdjustViewBounds(true);
        E = (float)s1.getIntrinsicHeight() / (float)s1.getIntrinsicWidth();
        j1 = ((flag) ? 1 : 0);
        if (E == 0.0F)
        {
            break MISSING_BLOCK_LABEL_510;
        }
        float f1 = i1;
        float f2 = E;
        j1 = (int)(f1 * f2);
        int j2 = j1;
        if (j1 == 0)
        {
            j2 = i1;
        }
        s1 = new LinearLayout(context);
        s1.setId(3);
        s1.setPadding(k2, k2, k2, 0);
        v = new Button(context, null, k1);
        v.setId(4);
        v.setText("\u9000\u51FA");
        w = new Button(context, null, k1);
        w.setId(5);
        w.setText("\u53D6\u6D88");
        if (l1 < 320)
        {
            v.setWidth(a(100F));
            w.setWidth(a(100F));
        } else
        {
            v.setWidth(a(110F));
            w.setWidth(a(110F));
        }
        ((ImageView) (obj)).setOnClickListener(this);
        v.setOnClickListener(this);
        w.setOnClickListener(this);
        s2 = new android.widget.LinearLayout.LayoutParams(-2, a(44F));
        s2.rightMargin = a(8F);
        v.setLayoutParams(s2);
        s1.addView(v);
        s2 = new android.widget.LinearLayout.LayoutParams(-2, a(44F));
        w.setLayoutParams(s2);
        s1.addView(w);
        if (context.getResources().getConfiguration().orientation == 1)
        {
            j1 = a(32F);
            layoutparams.setMargins(j1, j1, j1, j1);
            s2 = new android.widget.RelativeLayout.LayoutParams(i1, j2);
            ((ImageView) (obj)).setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
            s2.addRule(10);
            s2.addRule(13, -1);
            ((ImageView) (obj)).setLayoutParams(s2);
            u.addView(((View) (obj)));
        } else
        {
            s2 = new android.widget.RelativeLayout.LayoutParams(i1, i1);
            ((ImageView) (obj)).setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
            s2.addRule(10);
            s2.addRule(13, -1);
            ((ImageView) (obj)).setLayoutParams(s2);
            u.addView(((View) (obj)));
        }
        s2 = new TextView(context);
        s2.setTextColor(-1);
        s2.setId(1);
        s2.setText("\u731C\u4F60\u4F1A\u559C\u6B22");
        s2.setBackgroundColor(Color.parseColor(D));
        obj = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(10);
        s2.setPadding(k2, k2, k2, k2);
        s2.setGravity(17);
        s2.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        u.addView(s2);
        context = new RelativeLayout(context);
        context.setBackgroundColor(Color.parseColor(exitspotlistener));
        s2 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        s2.addRule(3, 2);
        u.addView(context, s2);
        s2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        s2.addRule(14, -1);
        s1.setLayoutParams(s2);
        context.addView(s1);
        u.setLayoutParams(layoutparams);
        u.setBackgroundColor(Color.parseColor(C));
        t.addView(u);
        setCancelable(true);
        setContentView(t);
        return;
        try
        {
            a();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.b.e.b.a(context);
        }
        c = false;
        return;
    }

    private int a(float f1)
    {
        return (int)TypedValue.applyDimension(1, f1, d.getResources().getDisplayMetrics());
    }

    private void a()
    {
        c = false;
        net.youmi.android.a.c.b.a.d("\u6570\u636E\u52A0\u8F7D\u5931\u8D25\uFF0C\u6B64\u6B21\u9000\u5C4F\u4E0D\u5C55\u793A");
    }

    private void b()
    {
label0:
        {
            boolean flag;
            try
            {
                JSONObject jsonobject = net.youmi.android.a.b.b.b.a(e);
                a = net.youmi.android.a.b.b.b.a(jsonobject, "spotid", 0);
                m = net.youmi.android.a.b.b.b.a(jsonobject, "rsd", "");
                n = net.youmi.android.a.b.b.b.a(jsonobject, "md5", "");
                l = net.youmi.android.a.b.b.b.a(jsonobject, "e", "");
                q = net.youmi.android.a.b.b.b.a(jsonobject, "name", "");
                o = net.youmi.android.a.b.b.b.a(jsonobject, "app", "");
                p = net.youmi.android.a.b.b.b.a(jsonobject, "pn", "");
                f = net.youmi.android.a.b.b.b.a(jsonobject, "tips", "");
                g = net.youmi.android.a.b.b.b.a(jsonobject, "itips", "");
                h = net.youmi.android.a.b.b.b.a(jsonobject, "disclk", 0);
                i = net.youmi.android.a.b.b.b.a(jsonobject, "cpt", 0);
                j = net.youmi.android.a.b.b.b.a(jsonobject, "io", 0);
                k = net.youmi.android.a.b.b.b.a(jsonobject, "url", "");
                r = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(jsonobject, "blk", new JSONObject()), "uri", "");
                if (a == 0)
                {
                    break label0;
                }
                flag = o.equals("");
            }
            catch (Throwable throwable)
            {
                return;
            }
            if (!flag);
        }
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        case 3: // '\003'
        default:
            return;

        case 2: // '\002'
            if (k != null && !k.equals(""))
            {
                net.youmi.android.spot.f.a(d, j, k);
                return;
            } else
            {
                net.youmi.android.spot.f.a(d, a, q, p, m, l, o, f, g, 2);
                long l1 = System.currentTimeMillis();
                long l2 = F;
                net.youmi.android.spot.f.a(d, m, l, net.youmi.android.c.a.b.b, l1 - l2, 2);
                return;
            }

        case 4: // '\004'
            view = (Activity)d;
            dismiss();
            if (s != null)
            {
                s.exit();
            }
            view.finish();
            return;

        case 5: // '\005'
            dismiss();
            return;
        }
    }

    public boolean showDialog(int i1)
    {
        if (c)
        {
            F = System.currentTimeMillis();
            Window window = getWindow();
            if (i1 != -1)
            {
                window.setWindowAnimations(i1);
            }
            window.setBackgroundDrawableResource(0x106000d);
            if (!A)
            {
                net.youmi.android.spot.f.a(d, m, l, net.youmi.android.c.a.b.a, -1L, 2);
                A = true;
            }
            super.show();
            return true;
        } else
        {
            return false;
        }
    }
}
