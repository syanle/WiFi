// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.b;
import com.umeng.analytics.f;
import com.umeng.analytics.g;
import com.umeng.analytics.h;
import com.umeng.analytics.onlineconfig.c;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package u.aly:
//            p, w, ak, s, 
//            aa, bn, ck, d, 
//            c, am, bq, br, 
//            cq, y, bl, aq, 
//            bd, q

public final class k
    implements c, p, w
{
    public class a
    {

        final k a;
        private final long b = 0x4d3f6400L;
        private final int c = 0x1b7740;
        private final int d = 10000;
        private com.umeng.analytics.ReportPolicy.g e;
        private int f;
        private int g;
        private int h;
        private int i;
        private boolean j;

        private com.umeng.analytics.ReportPolicy.g b(int l, int i1)
        {
            switch (l)
            {
            case 2: // '\002'
            case 3: // '\003'
            default:
                return new com.umeng.analytics.ReportPolicy.c();

            case 1: // '\001'
                return new com.umeng.analytics.ReportPolicy.c();

            case 6: // '\006'
                return new com.umeng.analytics.ReportPolicy.d(u.aly.k.b(a), i1);

            case 4: // '\004'
                return new com.umeng.analytics.ReportPolicy.f(u.aly.k.b(a));

            case 0: // '\0'
                return new com.umeng.analytics.ReportPolicy.g();

            case 5: // '\005'
                return new com.umeng.analytics.ReportPolicy.h(k.d(a));
            }
        }

        private int c(int l)
        {
            int i1 = l;
            if (l > 0x1b7740)
            {
                i1 = 0x1b7740;
            }
            return i1;
        }

        protected void a()
        {
            boolean flag;
            boolean flag1;
            flag1 = true;
            flag = true;
            if (f <= 0) goto _L2; else goto _L1
_L1:
            Object obj;
            if (!(e instanceof com.umeng.analytics.ReportPolicy.a) || !e.a())
            {
                flag = false;
            }
            if (flag)
            {
                obj = e;
            } else
            {
                obj = new com.umeng.analytics.ReportPolicy.a(u.aly.k.b(a), u.aly.k.c(a));
            }
            e = ((com.umeng.analytics.ReportPolicy.g) (obj));
_L4:
            j = false;
            return;
_L2:
            int l;
            if ((e instanceof com.umeng.analytics.ReportPolicy.b) && e.a())
            {
                l = ((flag1) ? 1 : 0);
            } else
            {
                l = 0;
            }
            if (l == 0)
            {
                if (b())
                {
                    String s1 = u.aly.c.a(k.d(a));
                    l = com.umeng.analytics.b.a(g, s1);
                    e = new com.umeng.analytics.ReportPolicy.b(l);
                    k.a(a, l);
                } else
                {
                    e = b(h, i);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public void a(int l)
        {
            g = c(l);
            d();
        }

        public void a(int l, int i1)
        {
            h = l;
            i = i1;
            d();
        }

        public void b(int l)
        {
            f = l;
            d();
        }

        protected boolean b()
        {
            while (k.a(a).h() || u.aly.k.b(a).f() || System.currentTimeMillis() - u.aly.k.b(a).o() <= 0x4d3f6400L) 
            {
                return false;
            }
            return true;
        }

        public com.umeng.analytics.ReportPolicy.g c()
        {
            a();
            return e;
        }

        protected void d()
        {
            j = true;
        }

        public a()
        {
            a = k.this;
            super();
            j = false;
            f = k.a(k.this).d();
            int l = k.a(k.this).e();
            if (l > 0)
            {
                g = c(l);
            } else
            if (AnalyticsConfig.sLatentWindow > 0)
            {
                g = c(AnalyticsConfig.sLatentWindow);
            } else
            {
                g = 10000;
            }
            k1 = k.a(k.this).c();
            h = k.this[0];
            i = k.this[1];
        }
    }


    private s a;
    private h b;
    private aa c;
    private ak d;
    private a e;
    private int f;
    private int g;
    private Context h;

    public k(Context context)
    {
        a = null;
        b = null;
        c = null;
        d = new ak();
        e = null;
        f = 10;
        h = context;
        a = new s(context);
        c = new aa(context);
        b = com.umeng.analytics.h.a(context);
        d.a(b.d());
        e = new a();
        g = b.d(-1);
    }

    static h a(k k1)
    {
        return k1.b;
    }

    private bn a(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        bn bn1;
        try
        {
            bn1 = new bn();
            (new ck()).a(bn1, abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0.printStackTrace();
            return null;
        }
        return bn1;
    }

    private void a(bn bn1)
    {
        d d1;
label0:
        {
            if (bn1 != null)
            {
                d1 = u.aly.d.a(h);
                d1.a();
                bn1.a(d1.b());
                bn1 = b(bn1);
                if (bn1 != null)
                {
                    break label0;
                }
            }
            return;
        }
        h h1;
        if (f())
        {
            bn1 = u.aly.c.b(h, AnalyticsConfig.getAppkey(h), bn1);
        } else
        {
            bn1 = u.aly.c.a(h, AnalyticsConfig.getAppkey(h), bn1);
        }
        bn1 = bn1.c();
        h1 = com.umeng.analytics.h.a(h);
        h1.g();
        h1.b(bn1);
        d1.d();
    }

    static void a(k k1, int i)
    {
        k1.e(i);
    }

    private void a(boolean flag)
    {
        boolean flag1 = c.f();
        if (flag1)
        {
            a.a(new am(c.n()));
        }
        if (b(flag))
        {
            e();
        } else
        if (flag1 || d())
        {
            b();
            return;
        }
    }

    static aa b(k k1)
    {
        return k1.c;
    }

    private boolean b(boolean flag)
    {
        boolean flag2 = true;
        if (bq.l(h)) goto _L2; else goto _L1
_L1:
        boolean flag1;
        if (br.a)
        {
            u.aly.br.c("MobclickAgent", "network is unavailable");
        }
        flag1 = false;
_L4:
        return flag1;
_L2:
        flag1 = flag2;
        if (c.f()) goto _L4; else goto _L3
_L3:
        if (!br.a)
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = flag2;
        if (bq.w(h)) goto _L4; else goto _L5
_L5:
        return e.c().a(flag);
    }

    private byte[] b(bn bn1)
    {
        if (bn1 == null)
        {
            return null;
        }
        byte abyte0[];
        try
        {
            abyte0 = (new cq()).a(bn1);
            if (br.a)
            {
                u.aly.br.c("MobclickAgent", bn1.toString());
            }
        }
        // Misplaced declaration of an exception variable
        catch (bn bn1)
        {
            u.aly.br.b("MobclickAgent", "Fail to serialize log ...", bn1);
            return null;
        }
        return abyte0;
    }

    static ak c(k k1)
    {
        return k1.d;
    }

    static Context d(k k1)
    {
        return k1.h;
    }

    private void d(int i)
    {
        a(a(new int[] {
            i, (int)(System.currentTimeMillis() - c.o())
        }));
        com.umeng.analytics.f.a(new g() {

            final k a;

            public void a()
            {
                a.a();
            }

            
            {
                a = k.this;
                super();
            }
        }, i);
    }

    private boolean d()
    {
        return a.b() > f;
    }

    private void e()
    {
        if (b.h())
        {
            y y1 = new y(h, c);
            y1.a(this);
            if (d.c())
            {
                y1.b(true);
            }
            y1.a();
            return;
        }
        Object obj = a(new int[0]);
        if (obj == null)
        {
            try
            {
                br.a("MobclickAgent", "No data to report");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                if (!(obj instanceof OutOfMemoryError));
            }
            if (obj != null)
            {
                ((Throwable) (obj)).printStackTrace();
                return;
            }
            break MISSING_BLOCK_LABEL_141;
        }
        y y2 = new y(h, c);
        y2.a(this);
        if (d.c())
        {
            y2.b(true);
        }
        y2.a(((bn) (obj)));
        y2.a(f());
        y2.a();
    }

    private void e(int i)
    {
        d(i);
    }

    private boolean f()
    {
        switch (g)
        {
        case 0: // '\0'
        default:
            return false;

        case 1: // '\001'
            return true;

        case -1: 
            return AnalyticsConfig.sEncrypt;
        }
    }

    protected transient bn a(int ai[])
    {
        boolean flag = false;
        if (!TextUtils.isEmpty(AnalyticsConfig.getAppkey(h)))
        {
            break MISSING_BLOCK_LABEL_26;
        }
        u.aly.br.b("MobclickAgent", "Appkey is missing ,Please check AndroidManifest.xml");
        return null;
        Object obj;
        try
        {
            obj = com.umeng.analytics.h.a(h).f();
        }
        // Misplaced declaration of an exception variable
        catch (int ai[])
        {
            u.aly.br.b("MobclickAgent", "Fail to construct message ...", ai);
            com.umeng.analytics.h.a(h).g();
            return null;
        }
        if (obj != null) goto _L2; else goto _L1
_L1:
        obj = null;
_L4:
        if (obj != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (a.b() == 0)
        {
            return null;
        }
        break; /* Loop/switch isn't completed */
_L2:
        obj = a(((byte []) (obj)));
        if (true) goto _L4; else goto _L3
_L3:
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        obj = new bn();
        a.a(((bn) (obj)));
        if (!br.a || !((bn) (obj)).B())
        {
            break MISSING_BLOCK_LABEL_154;
        }
        for (Iterator iterator = ((bn) (obj)).z().iterator(); iterator.hasNext();)
        {
            if (((bl)iterator.next()).p() > 0)
            {
                flag = true;
            }
        }

        if (flag)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        br.e("MobclickAgent", "missing Activities or PageViews");
        obj = d.a(h, ((bn) (obj)));
        if (ai == null)
        {
            break MISSING_BLOCK_LABEL_244;
        }
        if (ai.length != 2)
        {
            break MISSING_BLOCK_LABEL_244;
        }
        aq aq1 = new aq();
        aq1.a(new bd(ai[0] / 1000, ai[1]));
        ((bn) (obj)).a(aq1);
        return ((bn) (obj));
        return ((bn) (obj));
    }

    public void a()
    {
        if (bq.l(h))
        {
            e();
        } else
        if (br.a)
        {
            u.aly.br.c("MobclickAgent", "network is unavailable");
            return;
        }
    }

    public void a(int i)
    {
        if (i >= 0 && i <= 3)
        {
            d.a(i);
            e.b(i);
        }
    }

    public void a(int i, long l)
    {
        e.a(i, (int)l);
    }

    public void a(q q)
    {
        if (q != null)
        {
            a.a(q);
        }
        a(q instanceof bl);
    }

    public void b()
    {
        if (a.b() <= 0)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        byte abyte0[] = b(a(new int[0]));
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        b.a(abyte0);
_L1:
        return;
        Throwable throwable;
        throwable;
        if (throwable instanceof OutOfMemoryError)
        {
            b.g();
        }
        if (throwable != null)
        {
            throwable.printStackTrace();
            return;
        }
          goto _L1
    }

    public void b(int i)
    {
        if (i > 0)
        {
            e.a(i);
        }
    }

    public void b(q q)
    {
        a.a(q);
    }

    public void c()
    {
        a(a(new int[0]));
    }

    public void c(int i)
    {
        g = i;
    }
}
