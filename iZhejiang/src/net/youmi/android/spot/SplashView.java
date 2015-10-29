// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.i.k;
import net.youmi.android.a.c.b.a;
import net.youmi.android.c.a.c;
import net.youmi.android.c.a.e;
import net.youmi.android.c.a.s;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.spot:
//            h, i, SpotDialogListener, f, 
//            j

public class SplashView
{

    public static Bitmap closeBtnBitmap = net.youmi.android.c.a.c.a();
    private long A;
    private final int B = 4;
    private final String C = "#AA000000";
    private Drawable D;
    public final long SPLASH_SHOW_TIME = 5000L;
    protected int a;
    Runnable b;
    private final int c = 1;
    private Context d;
    private ImageView e;
    private RelativeLayout f;
    private String g;
    private String h;
    public Handler handler;
    private int i;
    private int j;
    private int k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private SpotDialogListener t;
    private i u;
    private Class v;
    private ImageButton w;
    private RelativeLayout x;
    private boolean y;
    private boolean z;

    public SplashView(Context context, Class class1)
    {
        y = false;
        z = true;
        A = 0L;
        handler = new Handler();
        b = new h(this);
        try
        {
            d = context;
            v = class1;
            x = new RelativeLayout(d);
            x.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1));
            e = new ImageView(d);
            context = new android.widget.LinearLayout.LayoutParams(-1, -1);
            e.setLayoutParams(context);
            e.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
            u = new i(this, null);
            e.setOnClickListener(u);
            w = new ImageButton(d);
            w.setImageBitmap(closeBtnBitmap);
            w.setBackgroundColor(0);
            w.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
            int i1 = a(50F);
            context = new android.widget.RelativeLayout.LayoutParams(i1, i1);
            context.addRule(10, -1);
            context.addRule(11, -1);
            w.setLayoutParams(context);
            w.setOnClickListener(u);
            x.addView(e);
            x.addView(w);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.d("splash init fail");
        }
    }

    private int a(float f1)
    {
        return (int)TypedValue.applyDimension(1, f1, d.getResources().getDisplayMetrics());
    }

    static ImageView a(SplashView splashview)
    {
        return splashview.e;
    }

    private void a()
    {
label0:
        {
            boolean flag;
            try
            {
                JSONObject jsonobject = net.youmi.android.a.b.b.b.a(m);
                a = net.youmi.android.a.b.b.b.a(jsonobject, "spotid", 0);
                p = net.youmi.android.a.b.b.b.a(jsonobject, "rsd", "");
                n = net.youmi.android.a.b.b.b.a(jsonobject, "md5", "");
                o = net.youmi.android.a.b.b.b.a(jsonobject, "e", "");
                s = net.youmi.android.a.b.b.b.a(jsonobject, "name", "");
                q = net.youmi.android.a.b.b.b.a(jsonobject, "app", "");
                r = net.youmi.android.a.b.b.b.a(jsonobject, "pn", "");
                g = net.youmi.android.a.b.b.b.a(jsonobject, "tips", "");
                h = net.youmi.android.a.b.b.b.a(jsonobject, "itips", "");
                i = net.youmi.android.a.b.b.b.a(jsonobject, "disclk", 0);
                j = net.youmi.android.a.b.b.b.a(jsonobject, "cpt", 0);
                k = net.youmi.android.a.b.b.b.a(jsonobject, "io", 0);
                l = net.youmi.android.a.b.b.b.a(jsonobject, "url", "");
                if (a == 0)
                {
                    break label0;
                }
                flag = q.equals("");
            }
            catch (Throwable throwable)
            {
                return;
            }
            if (!flag);
        }
    }

    private void a(int i1)
    {
        net.youmi.android.a.c.b.a.d((new StringBuilder()).append("splash image data is not ready to show, the ad do not show  tag:").append(i1).toString());
        if (t != null)
        {
            t.onShowFailed();
        }
        showFail();
    }

    static boolean a(SplashView splashview, boolean flag)
    {
        splashview.y = flag;
        return flag;
    }

    static int b(SplashView splashview)
    {
        return splashview.i;
    }

    private void b()
    {
        if (D != null)
        {
            D.setCallback(null);
        }
    }

    static RelativeLayout c(SplashView splashview)
    {
        return splashview.f;
    }

    static Context d(SplashView splashview)
    {
        return splashview.d;
    }

    static ImageButton e(SplashView splashview)
    {
        return splashview.w;
    }

    static boolean f(SplashView splashview)
    {
        return splashview.y;
    }

    static String g(SplashView splashview)
    {
        return splashview.p;
    }

    static String h(SplashView splashview)
    {
        return splashview.o;
    }

    static Class i(SplashView splashview)
    {
        return splashview.v;
    }

    static void j(SplashView splashview)
    {
        splashview.b();
    }

    static SpotDialogListener k(SplashView splashview)
    {
        return splashview.t;
    }

    public ImageView getSplashImage()
    {
        return e;
    }

    public View getSplashView()
    {
        return x;
    }

    public SpotDialogListener getSpotListener()
    {
        return t;
    }

    public void handleClick()
    {
        if (l != null && !l.equals(""))
        {
            if (v != null)
            {
                y = true;
                Intent intent = new Intent(d, v);
                d.startActivity(intent);
            }
            net.youmi.android.spot.f.a(d, k, l);
            if (v != null)
            {
                b();
                ((Activity)d).finish();
                return;
            }
            break MISSING_BLOCK_LABEL_173;
        }
        try
        {
            net.youmi.android.spot.f.a(d, a, s, r, p, o, q, g, h, 1);
            long l1 = System.currentTimeMillis();
            long l2 = A;
            net.youmi.android.spot.f.a(d, p, o, net.youmi.android.c.a.b.b, l1 - l2, 1);
            return;
        }
        catch (Exception exception)
        {
            net.youmi.android.a.c.b.a.d("handle click faile");
        }
    }

    public void init(String s1)
    {
        A = System.currentTimeMillis();
        m = s1;
        a();
        initDisclkLayout();
    }

    public void initDisclkLayout()
    {
        try
        {
            f = new RelativeLayout(d);
            int i1 = a(40F);
            int j1 = a(115F);
            Object obj = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(13, -1);
            f.setBackgroundColor(Color.parseColor("#AA000000"));
            f.setVisibility(8);
            f.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
            obj = new e(d);
            ((e) (obj)).setId(4);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(j1, i1);
            layoutparams.addRule(13, -1);
            ((e) (obj)).setOnClickListener(u);
            f.addView(((View) (obj)), layoutparams);
            x.addView(f);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public boolean isOpenAnimation()
    {
        return z;
    }

    public void sendShowLog()
    {
        if (!y)
        {
            handler.postDelayed(b, 5000L);
        }
    }

    public void setOpenAnimation(boolean flag)
    {
        z = flag;
    }

    public void setSpotListener(SpotDialogListener spotdialoglistener)
    {
        t = spotdialoglistener;
    }

    public void showAnimation()
    {
        try
        {
            z = d.getPackageManager().getApplicationInfo(d.getPackageName(), 128).metaData.getBoolean("splashAnim", true);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        if (z && android.os.Build.VERSION.SDK_INT >= 14)
        {
            android.view.animation.Animation animation = net.youmi.android.a.b.a.a.a(d, 1000);
            w.startAnimation(animation);
            net.youmi.android.c.a.s.a(d, e);
        }
    }

    public void showFail()
    {
        handler.postDelayed(b, 0L);
    }

    public boolean showSplash(boolean flag, String s1, int i1)
    {
        if (net.youmi.android.a.b.i.k.b(d) == -1) goto _L2; else goto _L1
_L1:
        Object obj;
        String s2;
        try
        {
            obj = net.youmi.android.a.b.b.b.a(m);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            net.youmi.android.a.b.e.b.a(s1);
            continue; /* Loop/switch isn't completed */
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_310;
        }
        s2 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)).getJSONObject("rtg"), "uri", "");
        obj = s2;
        if (!net.youmi.android.a.b.b.e.a(s2))
        {
            break MISSING_BLOCK_LABEL_167;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        s1 = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(s1), "ad", null);
        obj = s2;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        obj = s2;
        if (s1.length() == 0)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        obj = net.youmi.android.a.b.b.b.a(s1, i1, null);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        s1 = s2;
        s2 = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "rtg", new JSONObject()), "uri", "");
        s1 = s2;
        obj = s2;
        if (!net.youmi.android.a.b.b.e.a(s2))
        {
            break MISSING_BLOCK_LABEL_167;
        }
        s1 = s2;
        a(1);
        return false;
        obj;
        m = "";
        obj = s1;
        if (!((String) (obj)).startsWith(net.youmi.android.spot.j.a))
        {
            break MISSING_BLOCK_LABEL_304;
        }
        s1 = net.youmi.android.spot.j.a(Uri.parse(((String) (obj))));
        if (!net.youmi.android.a.b.b.e.a(s1))
        {
            break MISSING_BLOCK_LABEL_233;
        }
        net.youmi.android.a.c.b.a.b("splash image resource load fail");
        a(4);
        return false;
        m = "";
        a(2);
        return false;
        m = "";
        a(3);
        return false;
        D = BitmapDrawable.createFromPath(s1);
        if (D != null)
        {
            break MISSING_BLOCK_LABEL_261;
        }
        net.youmi.android.a.c.b.a.b("splash image drawable is null");
        a(5);
        return false;
        getSplashImage().setImageDrawable(D);
        if (t != null)
        {
            t.onShowSuccess();
        }
        m = "";
        showAnimation();
        sendShowLog();
        return true;
        net.youmi.android.a.c.b.a.d("ad resource's uri is error");
        net.youmi.android.a.c.b.a.d("splash data loading fail, the ad do not show");
        a(7);
_L4:
        return false;
_L2:
        net.youmi.android.a.c.b.a.d("Network is unavailable");
        a(8);
        if (true) goto _L4; else goto _L3
_L3:
    }

}
