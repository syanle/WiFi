// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.h;
import java.io.File;
import java.io.FileInputStream;

// Referenced classes of package u.aly:
//            d, f, t, bj, 
//            ck, br, cq, bn, 
//            c, aa, w, cd

public class y
{

    private static final int a = 1;
    private static final int b = 2;
    private static final int c = 3;
    private d d;
    private f e;
    private final int f = 1;
    private Context g;
    private aa h;
    private t i;
    private bn j;
    private boolean k;
    private boolean l;

    public y(Context context, aa aa1)
    {
        k = false;
        d = u.aly.d.a(context);
        e = u.aly.f.a(context);
        g = context;
        h = aa1;
        i = new t(context);
        i.a(h);
    }

    static int a(y y1, byte abyte0[])
    {
        return y1.a(abyte0);
    }

    private int a(byte abyte0[])
    {
        bj bj1 = new bj();
        ck ck1 = new ck(new cz.a());
        try
        {
            ck1.a(bj1, abyte0);
            if (bj1.a == 1)
            {
                e.b(bj1.j());
                e.c();
            }
            br.a("MobclickAgent", (new StringBuilder()).append("send log:").append(bj1.f()).toString());
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        return bj1.a != 1 ? 3 : 2;
    }

    static t a(y y1)
    {
        return y1.i;
    }

    static aa b(y y1)
    {
        return y1.h;
    }

    private void b()
    {
        com.umeng.analytics.h.a(g).i().a(new com.umeng.analytics.h.b() {

            final y a;

            public void a(File file)
            {
            }

            public boolean b(File file)
            {
                FileInputStream fileinputstream = new FileInputStream(file);
                file = cd.b(fileinputstream);
                int i1;
                try
                {
                    cd.c(fileinputstream);
                    file = y.a(a).a(file);
                }
                // Misplaced declaration of an exception variable
                catch (File file)
                {
                    return false;
                }
                if (file != null) goto _L2; else goto _L1
_L1:
                i1 = 1;
_L3:
                if (i1 != 2)
                {
                    break MISSING_BLOCK_LABEL_64;
                }
                if (y.b(a).m())
                {
                    y.b(a).l();
                }
                break MISSING_BLOCK_LABEL_64;
_L4:
                cd.c(fileinputstream);
                throw file;
_L2:
                i1 = y.a(a, file);
                  goto _L3
                if (y.c(a))
                {
                    return true;
                }
                return i1 != 1;
                file;
                  goto _L4
                file;
                fileinputstream = null;
                  goto _L4
            }

            public void c(File file)
            {
                y.b(a).k();
            }

            
            {
                a = y.this;
                super();
            }
        });
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
                br.c("MobclickAgent", bn1.toString());
            }
        }
        // Misplaced declaration of an exception variable
        catch (bn bn1)
        {
            br.b("MobclickAgent", "Fail to serialize log ...", bn1);
            return null;
        }
        return abyte0;
    }

    private void c()
    {
        d.a();
        Object obj = j;
        ((bn) (obj)).a(d.b());
        obj = b(((bn) (obj)));
        if (obj == null)
        {
            br.e("MobclickAgent", "message is null");
            return;
        }
        byte abyte0[];
        int i1;
        if (!k)
        {
            obj = u.aly.c.a(g, AnalyticsConfig.getAppkey(g), ((byte []) (obj)));
        } else
        {
            obj = u.aly.c.b(g, AnalyticsConfig.getAppkey(g), ((byte []) (obj)));
        }
        obj = ((c) (obj)).c();
        com.umeng.analytics.h.a(g).g();
        abyte0 = i.a(((byte []) (obj)));
        if (abyte0 == null)
        {
            i1 = 1;
        } else
        {
            i1 = a(abyte0);
        }
        switch (i1)
        {
        default:
            return;

        case 1: // '\001'
            if (!l)
            {
                com.umeng.analytics.h.a(g).b(((byte []) (obj)));
            }
            br.b("MobclickAgent", "connection error");
            return;

        case 2: // '\002'
            if (h.m())
            {
                h.l();
            }
            d.d();
            h.k();
            return;

        case 3: // '\003'
            h.k();
            return;
        }
    }

    static boolean c(y y1)
    {
        return y1.l;
    }

    public void a()
    {
        if (j != null)
        {
            c();
            return;
        } else
        {
            b();
            return;
        }
    }

    public void a(bn bn1)
    {
        j = bn1;
    }

    public void a(w w)
    {
        e.a(w);
    }

    public void a(boolean flag)
    {
        k = flag;
    }

    public void b(boolean flag)
    {
        l = flag;
    }
}
