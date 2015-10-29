// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.os.Handler;
import android.util.FloatMath;
import android.view.Display;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.baidu.platform.comapi.c.c;
import com.baidu.platform.comjni.map.basemap.BaseMapCallback;
import com.baidu.platform.comjni.map.basemap.a;
import com.baidu.platform.comjni.map.basemap.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;

// Referenced classes of package com.baidu.platform.comapi.map:
//            h, z, e, j, 
//            i, o, D, MapRenderer, 
//            g, B, d, w, 
//            k, l, c, n, 
//            a, A, m, b, 
//            y, x

public class f extends GLSurfaceView
    implements android.view.GestureDetector.OnDoubleTapListener, android.view.GestureDetector.OnGestureListener, MapRenderer.a, b
{
    static class a
    {

        float a;
        float b;
        float c;
        float d;
        boolean e;
        float f;
        float g;
        double h;

        a()
        {
        }
    }


    private static final String e = com/baidu/platform/comapi/map/f.getSimpleName();
    private k A;
    private com.baidu.platform.comapi.map.a B;
    private l C;
    private B D;
    private boolean E;
    private int F;
    private int G;
    private int H;
    private int I;
    private a J;
    private VelocityTracker K;
    private GestureDetector L;
    private long M;
    private long N;
    private long O;
    private long P;
    private int Q;
    private float R;
    private float S;
    private boolean T;
    private long U;
    private long V;
    private boolean W;
    private boolean Z;
    public float a;
    private boolean aa;
    public float b;
    List c;
    com.baidu.platform.comjni.map.basemap.a d;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private Context p;
    private MapRenderer q;
    private int r;
    private Handler s;
    private List t;
    private w u;
    private d v;
    private j w;
    private D x;
    private o y;
    private i z;

    public f(Context context, y y1)
    {
        super(context);
        a = 19F;
        b = 3F;
        h = true;
        i = false;
        j = false;
        k = false;
        l = true;
        m = true;
        n = true;
        o = true;
        J = new a();
        p = context;
        if (context == null)
        {
            throw new RuntimeException("when you create an mapview, the context can not be null");
        } else
        {
            L = new GestureDetector(context, this);
            com.baidu.mapapi.utils.b.a(context);
            u();
            v();
            a();
            BaseMapCallback.addLayerDataInterface(r, this);
            a(y1);
            c = new ArrayList();
            w();
            x();
            z();
            setBackgroundColor(0);
            return;
        }
    }

    private void A()
    {
        H = 0;
        J.e = false;
        J.h = 0.0D;
    }

    private void B()
    {
        if (!W)
        {
            W = true;
            for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).a(o())) { }
        }
    }

    private void C()
    {
        W = false;
        if (!Z)
        {
            for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).c(o())) { }
        }
    }

    private void D()
    {
        if (!W && !Z)
        {
            Z = true;
            for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).a(o())) { }
        }
    }

    private void E()
    {
        Z = false;
        W = false;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).c(o())) { }
    }

    private int a(int i1, int j1, int k1)
    {
        return com.baidu.platform.comjni.map.basemap.a.b(r, i1, j1, k1);
    }

    static int a(f f1)
    {
        return f1.r;
    }

    private boolean a(MotionEvent motionevent)
    {
        int i1;
label0:
        {
            int j1 = motionevent.getPointerCount();
            i1 = j1;
            if (j1 != 2)
            {
                break label0;
            }
            if (b((int)motionevent.getX(0), (int)motionevent.getY(0)))
            {
                i1 = j1;
                if (b((int)motionevent.getX(1), (int)motionevent.getY(1)))
                {
                    break label0;
                }
            }
            i1 = 1;
        }
        if (i1 != 2) goto _L2; else goto _L1
_L1:
        float f1;
        float f2;
        float f3;
        float f4;
        f1 = (float)G - motionevent.getY(0);
        f2 = (float)G - motionevent.getY(1);
        f3 = motionevent.getX(0);
        f4 = motionevent.getX(1);
        motionevent.getAction();
        JVM INSTR lookupswitch 4: default 152
    //                   5: 534
    //                   6: 576
    //                   261: 555
    //                   262: 597;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        float f5;
        float f6;
        float f7;
        float f9;
        if (K == null)
        {
            K = VelocityTracker.obtain();
        }
        K.addMovement(motionevent);
        i1 = ViewConfiguration.getMinimumFlingVelocity();
        int k1 = ViewConfiguration.getMaximumFlingVelocity();
        K.computeCurrentVelocity(1000, k1);
        f5 = K.getXVelocity(1);
        f6 = K.getYVelocity(1);
        f7 = K.getXVelocity(2);
        f9 = K.getYVelocity(2);
        if (Math.abs(f5) <= (float)i1 && Math.abs(f6) <= (float)i1 && Math.abs(f7) <= (float)i1 && Math.abs(f9) <= (float)i1) goto _L9; else goto _L8
_L8:
        if (!J.e) goto _L11; else goto _L10
_L10:
        if (H == 0)
        {
            if (J.c - f1 > 0.0F && J.d - f2 > 0.0F || J.c - f1 < 0.0F && J.d - f2 < 0.0F)
            {
                double d1 = Math.atan2(f2 - f1, f4 - f3);
                double d4 = Math.atan2(J.d - J.c, J.b - J.a);
                double d6 = (double)FloatMath.sqrt((f4 - f3) * (f4 - f3) + (f2 - f1) * (f2 - f1)) / J.h;
                i1 = (int)((Math.log(d6) / Math.log(2D)) * 10000D);
                int l1 = (int)(((d1 - d4) * 180D) / 3.1415999999999999D);
                if (d6 > 0.0D && (i1 > 3000 || i1 < -3000) || Math.abs(l1) >= 10)
                {
                    H = 2;
                } else
                {
                    H = 1;
                }
            } else
            {
                H = 2;
            }
            if (H == 0)
            {
                return true;
            }
        }
          goto _L12
_L4:
        N = motionevent.getEventTime();
        Q = Q - 1;
          goto _L3
_L6:
        M = motionevent.getEventTime();
        Q = Q - 1;
          goto _L3
_L5:
        P = motionevent.getEventTime();
        Q = Q + 1;
          goto _L3
_L7:
        O = motionevent.getEventTime();
        Q = Q + 1;
          goto _L3
_L12:
        if (H != 1 || !l) goto _L14; else goto _L13
_L13:
        if (J.c - f1 <= 0.0F || J.d - f2 <= 0.0F) goto _L16; else goto _L15
_L15:
        B();
        a(1, 83, 0);
_L11:
        if (2 != H)
        {
            J.c = f1;
            J.d = f2;
            J.a = f3;
            J.b = f4;
        }
        if (!J.e)
        {
            J.f = F / 2;
            J.g = G / 2;
            J.e = true;
            if (0.0D == J.h)
            {
                double d2 = FloatMath.sqrt((J.b - J.a) * (J.b - J.a) + (J.d - J.c) * (J.d - J.c));
                J.h = d2;
            }
        }
        return true;
_L16:
        if (J.c - f1 < 0.0F && J.d - f2 < 0.0F)
        {
            B();
            a(1, 87, 0);
        }
        continue; /* Loop/switch isn't completed */
_L14:
        double d5;
        int i2;
        if (H != 2 && H != 4 && H != 3)
        {
            continue; /* Loop/switch isn't completed */
        }
        double d3 = Math.atan2(f2 - f1, f4 - f3) - Math.atan2(J.d - J.c, J.b - J.a);
        d5 = (double)FloatMath.sqrt((f4 - f3) * (f4 - f3) + (f2 - f1) * (f2 - f1)) / J.h;
        i1 = (int)((Math.log(d5) / Math.log(2D)) * 10000D);
        double d7 = Math.atan2(J.g - J.c, J.f - J.a);
        double d8 = FloatMath.sqrt((J.f - J.a) * (J.f - J.a) + (J.g - J.c) * (J.g - J.c));
        f5 = (float)(Math.cos(d7 + d3) * d8 * d5 + (double)f3);
        f6 = (float)(Math.sin(d7 + d3) * d8 * d5 + (double)f1);
        i2 = (int)((d3 * 180D) / 3.1415999999999999D);
        if (d5 <= 0.0D || 3 != H && (Math.abs(i1) <= 2000 || 2 != H)) goto _L18; else goto _L17
_L17:
        H = 3;
        float f8 = o().a;
        if (n && f8 <= a && f8 >= b)
        {
            B();
            a(8193, 3, i1);
        }
_L19:
        J.f = f5;
        J.g = f6;
        continue; /* Loop/switch isn't completed */
_L18:
        if (i2 != 0 && (4 == H || Math.abs(i2) > 10 && 2 == H))
        {
            H = 4;
            if (o)
            {
                B();
                a(8193, 1, i2);
            }
        }
        if (true) goto _L19; else goto _L9
_L9:
        if (H == 0 && Q == 0)
        {
            long l2;
            if (O > P)
            {
                l2 = O;
            } else
            {
                l2 = P;
            }
            O = l2;
            if (M < N)
            {
                l2 = N;
            } else
            {
                l2 = M;
            }
            M = l2;
            if (O - M < 200L && n)
            {
                motionevent = o();
                motionevent.a = ((z) (motionevent)).a - 1.0F;
                a(((z) (motionevent)), 300);
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        switch (motionevent.getAction())
        {
        default:
            return false;

        case 0: // '\0'
            b(motionevent);
            return true;

        case 1: // '\001'
            return d(motionevent);

        case 2: // '\002'
            c(motionevent);
            break;
        }
        return true;
        if (true) goto _L11; else goto _L20
_L20:
    }

    static boolean a(f f1, boolean flag)
    {
        f1.E = flag;
        return flag;
    }

    static int b(f f1)
    {
        return f1.F;
    }

    private void b(MotionEvent motionevent)
    {
        if (J.e)
        {
            return;
        }
        V = motionevent.getDownTime();
        if (V - U < 400L)
        {
            if (Math.abs(motionevent.getX() - R) < 120F && Math.abs(motionevent.getY() - S) < 120F)
            {
                U = 0L;
            } else
            {
                U = V;
            }
        } else
        {
            U = V;
        }
        R = motionevent.getX();
        S = motionevent.getY();
        a(4, 0, (int)motionevent.getX() | (int)motionevent.getY() << 16);
        T = true;
    }

    private boolean b(int i1, int j1)
    {
        return i1 >= 0 && i1 <= getWidth() + 0 && j1 >= 0 && j1 <= getHeight() + 0;
    }

    private static boolean b(int i1, int j1, int k1, int l1, int i2, int j2)
    {
        EGL10 egl10 = (EGL10)EGLContext.getEGL();
        javax.microedition.khronos.egl.EGLDisplay egldisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        egl10.eglInitialize(egldisplay, new int[2]);
        EGLConfig aeglconfig[] = new EGLConfig[100];
        int ai[] = new int[1];
        return egl10.eglChooseConfig(egldisplay, new int[] {
            12324, i1, 12323, j1, 12322, k1, 12321, l1, 12325, i2, 
            12326, j2, 12344
        }, aeglconfig, 100, ai) && ai[0] > 0;
    }

    static int c(f f1)
    {
        return f1.G;
    }

    private boolean c(MotionEvent motionevent)
    {
        boolean flag = false;
        if (J.e)
        {
            flag = true;
        } else
        {
            if (aa)
            {
                com.baidu.platform.comapi.c.a.a(e, "handleTouchMove, if (mHasMapObjDraging)");
                for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).d(a((int)motionevent.getX(), (int)motionevent.getY()))) { }
                return true;
            }
            float f1 = Math.abs(motionevent.getX() - R);
            float f2 = Math.abs(motionevent.getY() - S);
            double d1;
            float f3;
            if ((double)c.E > 1.5D)
            {
                d1 = (double)c.E * 1.5D;
            } else
            {
                d1 = c.E;
            }
            f3 = (float)d1;
            if (T && f1 / f3 <= 3F && f2 / f3 <= 3F)
            {
                return true;
            }
            T = false;
            int j1 = (int)motionevent.getX();
            int k1 = (int)motionevent.getY();
            int i1 = j1;
            if (j1 < 0)
            {
                i1 = 0;
            }
            j1 = k1;
            if (k1 < 0)
            {
                j1 = 0;
            }
            if (m)
            {
                B();
                a(3, 0, j1 << 16 | i1);
                return false;
            }
        }
        return flag;
    }

    private void d(Bundle bundle)
    {
        int i1 = bundle.getInt("type");
        if (i1 == e.d.ordinal())
        {
            bundle.putInt("layer_addr", w.a);
            return;
        }
        if (i1 >= e.f.ordinal())
        {
            bundle.putInt("layer_addr", z.a);
            return;
        }
        if (i1 == com.baidu.platform.comapi.map.e.b.ordinal())
        {
            bundle.putInt("layer_addr", y.a);
            return;
        } else
        {
            bundle.putInt("layer_addr", x.a);
            return;
        }
    }

    static void d(f f1)
    {
        f1.E();
    }

    private boolean d(MotionEvent motionevent)
    {
        if (aa)
        {
            for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).e(a((int)motionevent.getX(), (int)motionevent.getY()))) { }
            aa = false;
            return true;
        }
        int i1;
        int j1;
        int k1;
        if (!J.e && motionevent.getEventTime() - V < 400L && Math.abs(motionevent.getX() - R) < 10F && Math.abs(motionevent.getY() - S) < 10F)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        A();
        k1 = (int)motionevent.getX();
        j1 = (int)motionevent.getY();
        if (i1 == 0)
        {
            i1 = k1;
            if (k1 < 0)
            {
                i1 = 0;
            }
            if (j1 < 0)
            {
                j1 = 0;
            }
            a(5, 0, j1 << 16 | i1);
            return true;
        } else
        {
            return false;
        }
    }

    static void e(f f1)
    {
        f1.C();
    }

    static boolean f(f f1)
    {
        return f1.E;
    }

    static boolean g(f f1)
    {
        return f1.W;
    }

    static boolean h(f f1)
    {
        return f1.Z;
    }

    private void u()
    {
        d = new com.baidu.platform.comjni.map.basemap.a();
        d.a();
        r = d.c();
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        Object obj;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        if (com.baidu.platform.comapi.c.c.n() < 180)
        {
            I = 18;
        } else
        if (com.baidu.platform.comapi.c.c.n() < 240)
        {
            I = 25;
        } else
        if (com.baidu.platform.comapi.c.c.n() < 320)
        {
            I = 37;
        } else
        {
            I = 50;
        }
        s5 = com.baidu.platform.comapi.c.c.o();
        s4 = com.baidu.mapapi.utils.b.a();
        s3 = com.baidu.mapapi.utils.b.b();
        s2 = com.baidu.mapapi.utils.b.c();
        i1 = com.baidu.mapapi.utils.b.d();
        j1 = com.baidu.mapapi.utils.b.e();
        k1 = com.baidu.mapapi.utils.b.f();
        if (com.baidu.platform.comapi.c.c.n() >= 180)
        {
            s1 = "/h/";
        } else
        {
            s1 = "/l/";
        }
        s5 = (new StringBuilder()).append(s5).append("/cfg").toString();
        obj = (new StringBuilder()).append(s4).append("/vmp").toString();
        s4 = (new StringBuilder()).append(s5).append(s1).toString();
        s5 = (new StringBuilder()).append(s5).append("/a/").toString();
        s6 = (new StringBuilder()).append(((String) (obj))).append(s1).toString();
        s1 = (new StringBuilder()).append(((String) (obj))).append(s1).toString();
        s3 = (new StringBuilder()).append(s3).append("/tmp/").toString();
        s2 = (new StringBuilder()).append(s2).append("/tmp/").toString();
        obj = ((Activity)p).getWindowManager().getDefaultDisplay();
        l1 = ((Display) (obj)).getWidth();
        i2 = ((Display) (obj)).getHeight();
        d.a(s4, s6, s3, s2, s1, s5, l1, i2, com.baidu.platform.comapi.c.c.n(), i1, j1, k1, 0);
        d.e();
    }

    private void v()
    {
        if (!b(5, 6, 5, 0, 24, 0)) goto _L2; else goto _L1
_L1:
        setEGLConfigChooser(5, 6, 5, 0, 24, 0);
_L4:
        q = new MapRenderer(this, this);
        q.a(r);
        setRenderer(q);
        setRenderMode(1);
        return;
_L2:
        try
        {
            setEGLConfigChooser(true);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            setEGLConfigChooser(true);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void w()
    {
        s = new g(this);
    }

    private void x()
    {
        com.baidu.platform.comjni.engine.a.a(4000, s);
        com.baidu.platform.comjni.engine.a.a(39, s);
        com.baidu.platform.comjni.engine.a.a(41, s);
        com.baidu.platform.comjni.engine.a.a(49, s);
        com.baidu.platform.comjni.engine.a.a(65289, s);
        com.baidu.platform.comjni.engine.a.a(999, s);
    }

    private void y()
    {
        com.baidu.platform.comjni.engine.a.b(4000, s);
        com.baidu.platform.comjni.engine.a.b(41, s);
        com.baidu.platform.comjni.engine.a.b(49, s);
        com.baidu.platform.comjni.engine.a.b(39, s);
        com.baidu.platform.comjni.engine.a.b(65289, s);
        com.baidu.platform.comjni.engine.a.b(999, s);
    }

    private void z()
    {
        D = new B(d);
    }

    public float a(int i1, int j1, int k1, int l1)
    {
        if (!E)
        {
            return 12F;
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putInt("left", i1);
            bundle.putInt("right", k1);
            bundle.putInt("bottom", l1);
            bundle.putInt("top", j1);
            bundle.putInt("hasHW", 0);
            return d.b(bundle);
        }
    }

    public float a(int i1, int j1, int k1, int l1, int i2, int j2)
    {
        if (!E)
        {
            return 12F;
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putInt("left", i1);
            bundle.putInt("right", k1);
            bundle.putInt("bottom", l1);
            bundle.putInt("top", j1);
            bundle.putInt("hasHW", 1);
            bundle.putInt("width", i2);
            bundle.putInt("height", j2);
            return d.b(bundle);
        }
    }

    public int a(Bundle bundle, int i1, int j1, Bundle bundle1)
    {
        if (i1 == v.a)
        {
            bundle.putString("jsondata", v.a());
            bundle.putBundle("param", v.b());
            return v.g;
        }
        if (i1 == u.a)
        {
            bundle.putString("jsondata", u.a());
            bundle.putBundle("param", u.b());
            return u.g;
        }
        if (i1 == A.a)
        {
            i1 = bundle1.getInt("x");
            j1 = bundle1.getInt("y");
            int k1 = bundle1.getInt("zoom");
            bundle.putBundle("param", C.a(i1, j1, k1));
            return A.g;
        } else
        {
            return 0;
        }
    }

    public Point a(com.baidu.platform.comapi.a.b b1)
    {
        return D.a(b1);
    }

    public com.baidu.platform.comapi.a.b a(int i1, int j1)
    {
        return D.a(i1, j1);
    }

    public void a()
    {
        t = new ArrayList();
        a(((com.baidu.platform.comapi.map.b) (new com.baidu.platform.comapi.map.c())));
        w = new j();
        a(((com.baidu.platform.comapi.map.b) (w)));
        A = new k();
        a(((com.baidu.platform.comapi.map.b) (A)));
        a(((com.baidu.platform.comapi.map.b) (new n())));
        B = new com.baidu.platform.comapi.map.a();
        a(((com.baidu.platform.comapi.map.b) (B)));
        a(((com.baidu.platform.comapi.map.b) (new A())));
        a(((com.baidu.platform.comapi.map.b) (new m())));
        z = new i();
        a(((com.baidu.platform.comapi.map.b) (z)));
        x = new D();
        a(((com.baidu.platform.comapi.map.b) (x)));
        v = new d();
        a(((com.baidu.platform.comapi.map.b) (v)));
        u = new w();
        a(((com.baidu.platform.comapi.map.b) (u)));
        y = new o();
        a(((com.baidu.platform.comapi.map.b) (y)));
    }

    public void a(Point point)
    {
        while (point == null || point.x < 0 || point.y < 0 || point.x > getWidth() || point.y > getHeight()) 
        {
            return;
        }
        point = String.format("{\"dataset\":[{\"x\":%d,\"y\":%d,\"hidetime\":1000}]}", new Object[] {
            Integer.valueOf(point.x), Integer.valueOf(point.y)
        });
        v.a(point);
        d.b(v.a);
    }

    public void a(Bundle bundle)
    {
        d(bundle);
        d.c(bundle);
    }

    public void a(com.baidu.platform.comapi.map.b b1)
    {
        b1.a = d.a(b1.c, b1.d, b1.b);
        t.add(b1);
    }

    public void a(h h1)
    {
        c.add(h1);
    }

    public void a(l l1)
    {
        C = l1;
    }

    protected void a(y y1)
    {
        new z();
        y y2 = y1;
        if (y1 == null)
        {
            y2 = new y();
        }
        y1 = y2.a;
        l = y2.f;
        o = y2.d;
        m = y2.e;
        n = y2.g;
        d.a(y1.a(this));
        d.a(com.baidu.platform.comapi.map.x.a.ordinal());
        h = y2.b;
        if (!y2.b)
        {
            d.a(v.a, false);
        } else
        {
            y1 = String.format("{\"dataset\":[{\"x\":%d,\"y\":%d,\"hidetime\":1000}]}", new Object[] {
                Integer.valueOf((int)(c.E * 40F)), Integer.valueOf((int)(c.E * 40F))
            });
            v.a(y1);
            d.a(v.a, true);
        }
        if (y2.c == 2)
        {
            c(true);
        }
    }

    public void a(z z1)
    {
        z1 = z1.a(this);
        z1.putInt("animation", 0);
        z1.putInt("animatime", 0);
        d.a(z1);
    }

    public void a(z z1, int i1)
    {
        z1 = z1.a(this);
        z1.putInt("animation", 1);
        z1.putInt("animatime", i1);
        D();
        d.a(z1);
    }

    public void a(String s1)
    {
        d.a(s1);
        requestRender();
    }

    public void a(String s1, Bundle bundle)
    {
        u.a(s1);
        u.a(bundle);
    }

    public void a(boolean flag)
    {
        k = flag;
        d.b(k);
    }

    public boolean a(int i1)
    {
        for (Iterator iterator = t.iterator(); iterator.hasNext();)
        {
            if (((com.baidu.platform.comapi.map.b)iterator.next()).a == i1)
            {
                return true;
            }
        }

        return false;
    }

    public void b(Bundle bundle)
    {
        d(bundle);
        d.d(bundle);
    }

    public void b(boolean flag)
    {
        f = flag;
        d.c(f);
    }

    public boolean b()
    {
        return f;
    }

    public void c(Bundle bundle)
    {
        d(bundle);
        d.e(bundle);
    }

    public void c(boolean flag)
    {
        g = flag;
        d.a(g);
    }

    public boolean c()
    {
        return k;
    }

    public void d(boolean flag)
    {
        d.d(flag);
    }

    public boolean d()
    {
        return d.i();
    }

    public void e(boolean flag)
    {
        h = flag;
        d.a(v.a, flag);
    }

    public boolean e()
    {
        return g;
    }

    public void f(boolean flag)
    {
        i = flag;
        d.a(u.a, flag);
    }

    public boolean f()
    {
        return d.m();
    }

    public void g(boolean flag)
    {
        j = flag;
        d.a(A.a, flag);
    }

    public boolean g()
    {
        return h;
    }

    public void h(boolean flag)
    {
        m = flag;
    }

    public boolean h()
    {
        return i;
    }

    public void i()
    {
        d.b(A.a);
    }

    public void i(boolean flag)
    {
        n = flag;
    }

    public void j(boolean flag)
    {
        o = flag;
    }

    public boolean j()
    {
        return m;
    }

    public void k(boolean flag)
    {
        l = flag;
    }

    public boolean k()
    {
        return n;
    }

    public boolean l()
    {
        return o;
    }

    public boolean m()
    {
        return l;
    }

    public void n()
    {
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).e()) { }
        y();
        BaseMapCallback.removeLayerDataInterface(r);
        d.b();
        d = null;
    }

    public z o()
    {
        Bundle bundle = d.g();
        z z1 = new z();
        z1.a(bundle);
        return z1;
    }

    public boolean onDoubleTap(MotionEvent motionevent)
    {
        if (d == null || !E)
        {
            return true;
        }
        motionevent = a((int)motionevent.getX(), (int)motionevent.getY());
        if (motionevent != null)
        {
            for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).b(motionevent)) { }
            if (n)
            {
                z z1 = o();
                z1.a = z1.a + 1.0F;
                z1.d = motionevent.b();
                z1.e = motionevent.a();
                a(z1, 300);
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
    }

    public boolean onDoubleTapEvent(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onDown(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        boolean flag1 = false;
        boolean flag;
        if (d == null || !E)
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (m)
            {
                f1 = (float)Math.sqrt(f1 * f1 + f2 * f2);
                flag = flag1;
                if (f1 > 500F)
                {
                    D();
                    a(34, (int)(f1 * 0.6F), (int)motionevent1.getY() << 16 | (int)motionevent1.getX());
                    A();
                    return true;
                }
            }
        }
        return flag;
    }

    public void onLongPress(MotionEvent motionevent)
    {
        if (d != null && E) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s1 = d.a(-1, (int)motionevent.getX(), (int)motionevent.getY(), I);
        com.baidu.platform.comapi.c.a.a(e, (new StringBuilder()).append("onLongPress(), nearly objs: ").append(s1).toString());
        if (s1 == null || s1.equals(""))
        {
            break; /* Loop/switch isn't completed */
        }
        Iterator iterator1 = c.iterator();
        while (iterator1.hasNext()) 
        {
            h h1 = (h)iterator1.next();
            if (h1.b(s1))
            {
                aa = true;
            } else
            {
                h1.c(a((int)motionevent.getX(), (int)motionevent.getY()));
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) 
        {
            ((h)iterator.next()).c(a((int)motionevent.getX(), (int)motionevent.getY()));
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void onPause()
    {
        super.onPause();
        d.d();
    }

    public void onResume()
    {
        super.onResume();
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).c()) { }
        d.f();
        d.e();
        d.l();
        setRenderMode(1);
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        return false;
    }

    public void onShowPress(MotionEvent motionevent)
    {
    }

    public boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        if (d != null && E) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        String s1 = d.a(-1, (int)motionevent.getX(), (int)motionevent.getY(), I);
        if (s1 == null || s1.equals(""))
        {
            break; /* Loop/switch isn't completed */
        }
        motionevent = c.iterator();
        while (motionevent.hasNext()) 
        {
            ((h)motionevent.next()).a(s1);
        }
        if (true) goto _L1; else goto _L3
_L3:
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) 
        {
            ((h)iterator.next()).a(a((int)motionevent.getX(), (int)motionevent.getY()));
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (d != null)
        {
            super.onTouchEvent(motionevent);
            if (!L.onTouchEvent(motionevent))
            {
                return a(motionevent);
            }
        }
        return true;
    }

    public z p()
    {
        Bundle bundle = d.h();
        z z1 = new z();
        z1.a(bundle);
        return z1;
    }

    public double q()
    {
        return o().m;
    }

    public void r()
    {
        d.c(w.a);
        d.c(z.a);
        d.c(x.a);
        d.c(y.a);
    }

    public void s()
    {
        d.n();
        d.b(A.a);
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
    {
        super.surfaceChanged(surfaceholder, i1, j1, k1);
        if (d == null)
        {
            return;
        } else
        {
            q.a = j1;
            q.b = k1;
            F = j1;
            G = k1;
            q.c = 0;
            surfaceholder = o();
            ((z) (surfaceholder)).j.a = 0;
            ((z) (surfaceholder)).j.c = 0;
            ((z) (surfaceholder)).j.d = k1;
            ((z) (surfaceholder)).j.b = j1;
            surfaceholder.f = -1;
            surfaceholder.g = -1;
            a(surfaceholder);
            return;
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        super.surfaceCreated(surfaceholder);
        if (surfaceholder != null && !surfaceholder.getSurface().isValid())
        {
            surfaceDestroyed(surfaceholder);
        }
    }

    public void t()
    {
    }

}
