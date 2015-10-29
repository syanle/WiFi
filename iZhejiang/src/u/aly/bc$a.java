// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package u.aly:
//            dq, bc, cn, dg, 
//            db, dj, dc, at, 
//            av, ch

private static class <init> extends dq
{

    public void a(dg dg1, bc bc1)
        throws cn
    {
        dg1.j();
_L7:
        Object obj;
        obj = dg1.l();
        if (((db) (obj)).b == 0)
        {
            dg1.k();
            bc1.v();
            return;
        }
        ((db) (obj)).c;
        JVM INSTR tableswitch 1 4: default 60
    //                   1 75
    //                   2 111
    //                   3 211
    //                   4 311;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_311;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        dj.a(dg1, ((db) (obj)).b);
_L8:
        dg1.m();
        if (true) goto _L7; else goto _L6
_L6:
        if (((db) (obj)).b == 11)
        {
            bc1.a = dg1.z();
            bc1.a(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
_L3:
        if (((db) (obj)).b == 15)
        {
            obj = dg1.p();
            bc1.b = new ArrayList(((dc) (obj)).b);
            for (int i = 0; i < ((dc) (obj)).b; i++)
            {
                at at1 = new at();
                at1.a(dg1);
                bc1.b.add(at1);
            }

            dg1.q();
            bc1.b(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
_L4:
        if (((db) (obj)).b == 15)
        {
            obj = dg1.p();
            bc1.c = new ArrayList(((dc) (obj)).b);
            for (int j = 0; j < ((dc) (obj)).b; j++)
            {
                av av1 = new av();
                av1.a(dg1);
                bc1.c.add(av1);
            }

            dg1.q();
            bc1.c(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
        if (((db) (obj)).b == 15)
        {
            obj = dg1.p();
            bc1.d = new ArrayList(((dc) (obj)).b);
            for (int k = 0; k < ((dc) (obj)).b; k++)
            {
                av av2 = new av();
                av2.a(dg1);
                bc1.d.add(av2);
            }

            dg1.q();
            bc1.d(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (bc)ch);
    }

    public void b(dg dg1, bc bc1)
        throws cn
    {
        bc1.v();
        dg1.a(bc.w());
        if (bc1.a != null)
        {
            dg1.a(bc.x());
            dg1.a(bc1.a);
            dg1.c();
        }
        if (bc1.b != null && bc1.k())
        {
            dg1.a(bc.y());
            dg1.a(new dc((byte)12, bc1.b.size()));
            for (Iterator iterator = bc1.b.iterator(); iterator.hasNext(); ((at)iterator.next()).b(dg1)) { }
            dg1.f();
            dg1.c();
        }
        if (bc1.c != null && bc1.p())
        {
            dg1.a(bc.z());
            dg1.a(new dc((byte)12, bc1.c.size()));
            for (Iterator iterator1 = bc1.c.iterator(); iterator1.hasNext(); ((av)iterator1.next()).b(dg1)) { }
            dg1.f();
            dg1.c();
        }
        if (bc1.d != null && bc1.u())
        {
            dg1.a(bc.A());
            dg1.a(new dc((byte)12, bc1.d.size()));
            for (bc1 = bc1.d.iterator(); bc1.hasNext(); ((av)bc1.next()).b(dg1)) { }
            dg1.f();
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (bc)ch);
    }

    private terator()
    {
    }

    terator(terator terator)
    {
        this();
    }
}
