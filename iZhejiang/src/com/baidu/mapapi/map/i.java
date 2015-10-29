// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.map:
//            d

class i
{
    static abstract class a
    {

        abstract Point a();

        a()
        {
        }
    }


    private final d a;
    private final int b;
    private List c;
    private List d;

    private i(double d1, double d2, double d3, double d4, int j)
    {
        this(new d(d1, d2, d3, d4), j);
    }

    public i(d d1)
    {
        this(d1, 0);
    }

    private i(d d1, int j)
    {
        d = null;
        a = d1;
        b = j;
    }

    private void a()
    {
        d = new ArrayList(4);
        d.add(new i(a.a, a.e, a.b, a.f, b + 1));
        d.add(new i(a.e, a.c, a.b, a.f, b + 1));
        d.add(new i(a.a, a.e, a.f, a.d, b + 1));
        d.add(new i(a.e, a.c, a.f, a.d, b + 1));
        Object obj = c;
        c = null;
        a a1;
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); a(a1.a().x, a1.a().y, a1))
        {
            a1 = (a)((Iterator) (obj)).next();
        }

    }

    private void a(double d1, double d2, a a1)
    {
        if (d == null) goto _L2; else goto _L1
_L1:
        if (d2 >= a.f) goto _L4; else goto _L3
_L3:
        if (d1 >= a.e) goto _L6; else goto _L5
_L5:
        ((i)d.get(0)).a(d1, d2, a1);
_L8:
        return;
_L6:
        ((i)d.get(1)).a(d1, d2, a1);
        return;
_L4:
        if (d1 < a.e)
        {
            ((i)d.get(2)).a(d1, d2, a1);
            return;
        } else
        {
            ((i)d.get(3)).a(d1, d2, a1);
            return;
        }
_L2:
        if (c == null)
        {
            c = new ArrayList();
        }
        c.add(a1);
        if (c.size() > 40 && b < 40)
        {
            a();
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void a(d d1, Collection collection)
    {
        if (a.a(d1)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (d == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Iterator iterator = d.iterator();
        while (iterator.hasNext()) 
        {
            ((i)iterator.next()).a(d1, collection);
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (c != null)
        {
            if (d1.b(a))
            {
                collection.addAll(c);
                return;
            }
            Iterator iterator1 = c.iterator();
            while (iterator1.hasNext()) 
            {
                a a1 = (a)iterator1.next();
                if (d1.a(a1.a()))
                {
                    collection.add(a1);
                }
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public Collection a(d d1)
    {
        ArrayList arraylist = new ArrayList();
        a(d1, ((Collection) (arraylist)));
        return arraylist;
    }

    public void a(a a1)
    {
        Point point = a1.a();
        if (a.a(point.x, point.y))
        {
            a(point.x, point.y, a1);
        }
    }
}
