// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import com.umeng.analytics.f;
import com.umeng.analytics.g;
import com.umeng.analytics.onlineconfig.a;
import com.umeng.analytics.onlineconfig.c;

// Referenced classes of package u.aly:
//            p, k, q

public final class l
    implements p
{

    private static l c;
    private p a;
    private Context b;

    private l(Context context)
    {
        b = context.getApplicationContext();
        a = new k(b);
    }

    public static l a(Context context)
    {
        u/aly/l;
        JVM INSTR monitorenter ;
        if (c != null || context == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        c = new l(context);
        context = c;
        u/aly/l;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    static p a(l l1)
    {
        return l1.a;
    }

    public void a()
    {
        f.b(new g() {

            final l a;

            public void a()
            {
                u.aly.l.a(a).a();
            }

            
            {
                a = l.this;
                super();
            }
        });
    }

    public void a(a a1)
    {
        if (a1 != null && a != null)
        {
            a1.a((c)a);
        }
    }

    public void a(p p1)
    {
        a = p1;
    }

    public void a(q q)
    {
        f.b(new g(q) {

            final q a;
            final l b;

            public void a()
            {
                u.aly.l.a(b).a(a);
            }

            
            {
                b = l.this;
                a = q;
                super();
            }
        });
    }

    public void b()
    {
        f.b(new g() {

            final l a;

            public void a()
            {
                u.aly.l.a(a).b();
            }

            
            {
                a = l.this;
                super();
            }
        });
    }

    public void b(q q)
    {
        a.b(q);
    }

    public void c()
    {
        f.c(new g() {

            final l a;

            public void a()
            {
                u.aly.l.a(a).c();
            }

            
            {
                a = l.this;
                super();
            }
        });
    }
}
