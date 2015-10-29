// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.animation.AnimatorSet;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.k.f;
import net.youmi.android.c.a.c;
import net.youmi.android.c.a.d;
import net.youmi.android.c.a.g;
import net.youmi.android.c.a.k;
import net.youmi.android.c.a.p;
import net.youmi.android.c.a.s;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.spot:
//            SpotManager, SpotDialogListener, b, f, 
//            e, j, c, d

public class a
    implements Runnable
{

    private static float T[] = {
        10F, 10F, 10F, 10F, 10F, 10F, 10F, 10F
    };
    private static int U[] = {
        Color.parseColor("#ECECFB"), Color.parseColor("#CACAD9")
    };
    public static Bitmap k = net.youmi.android.c.a.c.a();
    private boolean A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    private String H;
    private String I;
    private int J;
    private int K;
    private int L;
    private String M;
    private boolean N;
    private int O;
    private final int P = 1;
    private final int Q = 4;
    private ImageView R;
    private JSONObject S;
    private final String V = "#AA000000";
    private float W;
    protected WindowManager a;
    protected RelativeLayout b;
    BitmapDrawable c;
    protected int d;
    protected int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    public Handler l;
    private final int m = 0;
    private final int n = 500;
    private int o;
    private Context p;
    private android.view.WindowManager.LayoutParams q;
    private android.widget.RelativeLayout.LayoutParams r;
    private RelativeLayout s;
    private boolean t;
    private ImageButton u;
    private SpotDialogListener v;
    private net.youmi.android.spot.e w;
    private boolean x;
    private long y;
    private boolean z;

    public a(Context context, JSONObject jsonobject, int i1, SpotDialogListener spotdialoglistener)
    {
        o = 2;
        t = false;
        x = false;
        y = 0L;
        z = false;
        A = true;
        d = -1;
        N = false;
        O = -1;
        f = 0;
        g = 0;
        h = 0;
        W = 1.0F;
        l = new Handler();
        p = context;
        v = spotdialoglistener;
        S = jsonobject;
        O = i1;
        if (O == -1)
        {
            try
            {
                O = p.getPackageManager().getApplicationInfo(p.getPackageName(), 128).metaData.getInt("orientation", 0);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                O = 0;
            }
        }
        if (O > 1 || O < 0)
        {
            O = 0;
        }
        if (net.youmi.android.a.b.b.e.a(jsonobject.toString()))
        {
            z = true;
        }
        i();
    }

    private int a(float f1)
    {
        return (int)TypedValue.applyDimension(1, f1, p.getResources().getDisplayMetrics());
    }

    static ImageButton a(a a1)
    {
        return a1.u;
    }

    private String a(String s1)
    {
        return net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(S, s1, new JSONObject()), "uri", "");
    }

    static boolean a(a a1, boolean flag)
    {
        a1.A = flag;
        return flag;
    }

    public static byte[] a(File file)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        file = new FileInputStream(file);
        bytearrayoutputstream = new ByteArrayOutputStream(file.available());
        abyte0 = new byte[2048];
_L1:
        int i1 = file.read(abyte0);
label0:
        {
            if (i1 == -1)
            {
                break label0;
            }
            try
            {
                bytearrayoutputstream.write(abyte0, 0, i1);
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return null;
            }
        }
          goto _L1
        abyte0 = bytearrayoutputstream.toByteArray();
        try
        {
            file.close();
            bytearrayoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return abyte0;
        }
        return abyte0;
    }

    static ImageView b(a a1)
    {
        return a1.R;
    }

    private String b(String s1)
    {
        return net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(S, s1, new JSONObject()), "pic", "");
    }

    static boolean b(a a1, boolean flag)
    {
        a1.x = flag;
        return flag;
    }

    static Context c(a a1)
    {
        return a1.p;
    }

    static void d(a a1)
    {
        a1.h();
    }

    static int e(a a1)
    {
        return a1.J;
    }

    static void f(a a1)
    {
        a1.j();
    }

    static RelativeLayout g(a a1)
    {
        return a1.s;
    }

    private boolean g()
    {
        A = true;
        y = System.currentTimeMillis();
        if (!z) goto _L2; else goto _L1
_L1:
        SpotManager.n = false;
        net.youmi.android.a.c.b.a.d("spot's resource are not ready to show");
        if (v == null) goto _L4; else goto _L3
_L3:
        v.onShowFailed();
        return false;
_L2:
        net.youmi.android.a.c.b.a.d("ShowSpotDialog");
        double d1;
        boolean flag;
        if (p.getResources().getConfiguration().orientation == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (O != -1 && O != 0) goto _L6; else goto _L5
_L5:
        if (g == 0) goto _L8; else goto _L7
_L7:
        j = (int)((double)g * 0.80000000000000004D);
_L23:
        i = (j * 480) / 800;
        if ((double)i <= (double)f * 0.84999999999999998D) goto _L10; else goto _L9
_L9:
        d1 = (double)f * 0.84999999999999998D;
_L15:
        i = (int)d1;
        if (!flag) goto _L12; else goto _L11
_L11:
        if (f == 0) goto _L14; else goto _L13
_L13:
        j = (int)((double)f * 0.80000000000000004D);
_L16:
        i = (j * 5) / 6;
_L12:
        r.height = j;
        r.width = i;
        a.addView(b, q);
        (new Handler(p.getMainLooper())).postDelayed(new net.youmi.android.spot.b(this), 1000L);
        t = true;
        if (v != null)
        {
            v.onShowSuccess();
        }
        c();
        f();
        return true;
_L8:
        try
        {
            j = a(500F);
        }
        catch (Exception exception)
        {
            net.youmi.android.a.c.b.a.a(exception);
            SpotManager.n = false;
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        d1 = i;
          goto _L15
_L14:
        j = a(300F);
          goto _L16
_L6:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_446;
        }
        if (f == 0) goto _L18; else goto _L17
_L17:
        j = (int)((double)f * 0.80000000000000004D);
_L19:
        i = (int)((float)j * W);
        if ((double)i <= (double)g * 0.84999999999999998D)
        {
            break MISSING_BLOCK_LABEL_437;
        }
        d1 = (double)g * 0.84999999999999998D;
_L20:
        i = (int)d1;
          goto _L12
_L18:
        j = a(300F);
          goto _L19
        d1 = i;
          goto _L20
        if (f == 0)
        {
            break MISSING_BLOCK_LABEL_483;
        }
        i = (int)((double)f * 0.90000000000000002D);
_L21:
        j = (i * 5) / 6;
          goto _L12
        i = a(300F);
          goto _L21
_L4:
        return false;
        if (true) goto _L23; else goto _L22
_L22:
    }

    private void h()
    {
        try
        {
            if (b != null)
            {
                b.setVisibility(4);
                a.removeView(b);
                b.removeView(R);
                b.removeView(u);
                b.removeAllViews();
                if (v != null)
                {
                    v.onSpotClosed();
                }
                SpotManager.getInstance(p).cacheNextAd();
                k();
                R = null;
                b = null;
                SpotManager.n = false;
            }
            return;
        }
        catch (Exception exception)
        {
            SpotManager.n = false;
        }
    }

    static boolean h(a a1)
    {
        return a1.g();
    }

    private void i()
    {
        boolean flag = true;
        e = net.youmi.android.a.b.b.b.a(S, "spotid", 0);
        D = net.youmi.android.a.b.b.b.a(S, "rsd", "");
        B = net.youmi.android.a.b.b.b.a(S, "md5", "");
        C = net.youmi.android.a.b.b.b.a(S, "e", "");
        G = net.youmi.android.a.b.b.b.a(S, "name", "");
        E = net.youmi.android.a.b.b.b.a(S, "app", "");
        F = net.youmi.android.a.b.b.b.a(S, "pn", "");
        H = net.youmi.android.a.b.b.b.a(S, "tips", "");
        I = net.youmi.android.a.b.b.b.a(S, "itips", "");
        J = net.youmi.android.a.b.b.b.a(S, "disclk", 0);
        K = net.youmi.android.a.b.b.b.a(S, "cpt", 0);
        L = net.youmi.android.a.b.b.b.a(S, "io", 0);
        M = net.youmi.android.a.b.b.b.a(S, "url", "");
        if (net.youmi.android.a.b.b.b.a(S, "gif", 0) != 1)
        {
            flag = false;
        }
        N = flag;
        if (e == 0)
        {
            break MISSING_BLOCK_LABEL_247;
        }
        flag = E.equals("");
        if (!flag);
        return;
        Throwable throwable;
        throwable;
    }

    private void j()
    {
        if (M != null && !M.equals(""))
        {
            net.youmi.android.spot.f.a(p, L, M);
        } else
        {
            net.youmi.android.spot.f.a(p, e, G, F, D, C, E, H, I, 0);
            long l1 = System.currentTimeMillis();
            long l2 = y;
            net.youmi.android.spot.f.a(p, D, C, net.youmi.android.c.a.b.b, l1 - l2, 0);
        }
        d();
    }

    private void k()
    {
        Bitmap bitmap;
        try
        {
            if (c == null)
            {
                break MISSING_BLOCK_LABEL_36;
            }
            bitmap = c.getBitmap();
        }
        catch (Exception exception)
        {
            return;
        }
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        bitmap.recycle();
        c.setCallback(null);
        c = null;
        if (N && R != null && (R instanceof k))
        {
            ((k)R).a();
            R.destroyDrawingCache();
        }
        return;
    }

    public void a(int i1)
    {
        o = i1;
        if (o < 0 || o > 2)
        {
            try
            {
                o = p.getPackageManager().getApplicationInfo(p.getPackageName(), 128).metaData.getInt("animType", 2);
            }
            catch (Exception exception)
            {
                o = 2;
            }
        }
        if (o < 0 || o > 2)
        {
            o = 2;
        }
    }

    public boolean a()
    {
        return t;
    }

    public void b()
    {
        int j1 = 0;
        if (android.os.Build.VERSION.SDK_INT < 14) goto _L2; else goto _L1
_L1:
        if (!N) goto _L4; else goto _L3
_L3:
        R = new k(p);
_L13:
        R.setId(1);
        r = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        r.addRule(13, -1);
        R.setLayoutParams(r);
        R.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        R.setHapticFeedbackEnabled(true);
        w = new net.youmi.android.spot.e(this, null);
        R.setOnClickListener(w);
        Object obj;
        Object obj1;
        int i1;
        Object obj2;
        Throwable throwable;
        int k1;
        if (O == 1)
        {
            obj = "blk";
        } else
        {
            obj = "rtg";
        }
        obj1 = obj;
        if (net.youmi.android.a.b.b.e.a(a(((String) (obj)))))
        {
            if (O == 1)
            {
                obj1 = "rtg";
            } else
            {
                obj1 = "blk";
            }
        }
        try
        {
            obj1 = a(((String) (obj1)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            z = true;
            ((Exception) (obj)).printStackTrace();
            return;
        }
        obj = obj1;
        if (!net.youmi.android.a.b.b.e.a(((String) (obj1)))) goto _L6; else goto _L5
_L5:
        if (O == 1)
        {
            obj = "blk";
        } else
        {
            obj = "rtg";
        }
        obj = b(((String) (obj)));
        obj = net.youmi.android.c.a.g.a(p, ((String) (obj)));
        if (obj == null) goto _L8; else goto _L7
_L7:
        if (!((File) (obj)).exists()) goto _L8; else goto _L9
_L9:
        obj = net.youmi.android.spot.j.a(((File) (obj)).getName());
_L6:
        if (!((String) (obj)).startsWith(j.a)) goto _L11; else goto _L10
_L10:
        obj = net.youmi.android.spot.j.a(Uri.parse(((String) (obj))));
        if (net.youmi.android.a.b.b.e.a(((String) (obj))))
        {
            z = true;
            return;
        }
          goto _L12
_L4:
        R = new p(p);
          goto _L13
_L2:
        R = new ImageView(p);
          goto _L13
_L8:
        z = true;
        return;
_L12:
        c = net.youmi.android.c.a.d.a(p, new BitmapDrawable(p.getResources(), ((String) (obj))), 10);
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_1075;
        }
        obj1 = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM, U);
        ((GradientDrawable) (obj1)).setGradientType(0);
        ((GradientDrawable) (obj1)).setCornerRadii(T);
        obj2 = new ShapeDrawable(new RoundRectShape(T, null, null));
        ((ShapeDrawable) (obj2)).getPaint().setColor(Color.parseColor("#33000000"));
        i1 = a(3F);
        ((ShapeDrawable) (obj2)).setPadding(0, 0, i1, i1);
        obj2 = new LayerDrawable(new Drawable[] {
            obj2, obj1
        });
        if (android.os.Build.VERSION.SDK_INT <= 15) goto _L15; else goto _L14
_L14:
        R.setBackground(((Drawable) (obj2)));
_L24:
        k1 = a(3F);
        if (c == null) goto _L17; else goto _L16
_L16:
        R.setPadding(k1, k1, k1 + i1, i1 + k1);
        if (!N || android.os.Build.VERSION.SDK_INT < 14) goto _L19; else goto _L18
_L18:
        obj = new File(((String) (obj)));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_537;
        }
        if (((File) (obj)).exists())
        {
            obj = a(((File) (obj)));
            ((k)R).setGifImage(((byte []) (obj)));
        }
_L25:
        i1 = j1;
        if (c.getIntrinsicWidth() >= c.getIntrinsicHeight())
        {
            i1 = 1;
        }
        O = i1;
        W = (float)c.getIntrinsicWidth() / (float)c.getIntrinsicHeight();
_L26:
        obj = net.youmi.android.a.b.k.f.a(p);
        h = Integer.parseInt(Integer.toString(((f) (obj)).d()));
        f = Integer.parseInt(Integer.toString(((f) (obj)).g()));
        g = Integer.parseInt(Integer.toString(((f) (obj)).h()));
_L27:
        b = new RelativeLayout(p);
        b.setBackgroundColor(0);
        a = (WindowManager)p.getSystemService("window");
        q = new android.view.WindowManager.LayoutParams();
        u = new ImageButton(p);
        u.setImageBitmap(k);
        u.setBackgroundColor(0);
        u.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
        if (h <= 320) goto _L21; else goto _L20
_L20:
        j1 = a(50F);
        i1 = a(20F);
_L28:
        obj = new android.widget.RelativeLayout.LayoutParams(j1, j1);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(6, 1);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(7, 1);
        obj.topMargin = -i1;
        obj.rightMargin = -i1;
        u.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        u.setOnClickListener(w);
        q.height = -1;
        q.width = -1;
        q.format = -2;
        q.gravity = 17;
        if (!net.youmi.android.a.b.k.k.i(p)) goto _L23; else goto _L22
_L22:
        q.type = 2003;
_L29:
        q.flags = 0x100002a;
        q.dimAmount = 0.7F;
        b.addView(R);
        return;
_L15:
        R.setBackgroundDrawable(((Drawable) (obj1)));
          goto _L24
        throwable;
        R.setBackgroundDrawable(((Drawable) (obj1)));
          goto _L24
_L19:
        R.setImageDrawable(c);
          goto _L25
_L17:
        R.setPadding(k1, k1, k1, k1);
        obj = BitmapDrawable.createFromPath(((String) (obj)));
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_982;
        }
        SpotManager.getInstance(p).cacheNextAd();
        z = true;
        return;
        R.setImageDrawable(((Drawable) (obj)));
        if (((Drawable) (obj)).getIntrinsicWidth() >= ((Drawable) (obj)).getIntrinsicHeight())
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        O = i1;
          goto _L26
_L11:
        SpotManager.getInstance(p).cacheNextAd();
        z = true;
        return;
        obj;
        net.youmi.android.a.b.e.b.a(((Throwable) (obj)));
          goto _L27
_L21:
        j1 = a(50F);
        i1 = a(15F);
          goto _L28
_L23:
        q.type = 1003;
          goto _L29
        obj;
          goto _L29
        i1 = 0;
          goto _L24
    }

    public void c()
    {
        try
        {
            s = new RelativeLayout(p);
            int i1 = a(40F);
            int j1 = a(115F);
            Object obj = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(13, -1);
            s.setBackgroundColor(Color.parseColor("#AA000000"));
            s.setVisibility(8);
            s.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
            obj = new net.youmi.android.c.a.e(p);
            ((net.youmi.android.c.a.e) (obj)).setId(4);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(j1, i1);
            layoutparams.addRule(13, -1);
            ((net.youmi.android.c.a.e) (obj)).setOnClickListener(w);
            s.addView(((android.view.View) (obj)), layoutparams);
            b.addView(s);
            return;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
        }
    }

    public boolean d()
    {
        boolean flag1 = true;
        this;
        JVM INSTR monitorenter ;
        if (u != null)
        {
            u.setVisibility(8);
        }
        if (s != null)
        {
            s.setVisibility(8);
        }
        boolean flag = flag1;
        if (x) goto _L2; else goto _L1
_L1:
        t = false;
        if (android.os.Build.VERSION.SDK_INT < 14) goto _L4; else goto _L3
_L3:
        AnimatorSet animatorset = null;
        if (o != 2) goto _L6; else goto _L5
_L5:
        animatorset = net.youmi.android.c.a.s.b(p, R, 500L);
_L10:
        if (animatorset != null) goto _L8; else goto _L7
_L7:
        h();
        flag = flag1;
_L2:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L6:
        if (o != 1) goto _L10; else goto _L9
_L9:
        animatorset = net.youmi.android.c.a.s.d(p, R, 500L);
          goto _L10
_L8:
        x = true;
        animatorset.addListener(new net.youmi.android.spot.c(this));
        flag = flag1;
          goto _L2
_L4:
        h();
        flag = flag1;
          goto _L2
        Object obj;
        obj;
        throw obj;
        obj;
        flag = false;
          goto _L2
    }

    public void e()
    {
        long l1 = System.currentTimeMillis();
        long l2 = y;
        net.youmi.android.spot.f.a(p, D, C, net.youmi.android.c.a.b.a, l1 - l2, 0);
    }

    public void f()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            if (o == 2)
            {
                net.youmi.android.c.a.s.a(p, R, 500L);
            } else
            if (o == 1)
            {
                net.youmi.android.c.a.s.c(p, R, 500L);
                return;
            }
        }
    }

    public void run()
    {
        b();
        (new Handler(Looper.getMainLooper())).post(new net.youmi.android.spot.d(this));
    }

}
