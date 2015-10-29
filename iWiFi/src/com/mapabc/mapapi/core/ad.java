// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ad
{
    static class a
    {

        private String a;
        private Object b;

        public String a()
        {
            return a;
        }

        public void a(Object obj)
        {
            b = obj;
        }

        public Object b()
        {
            return b;
        }

        public a(String s, Object obj)
        {
            a = s;
            b = obj;
        }
    }


    private static String a = "<?xml version=\"1.0\" encoding=\"utf-8\"?>";
    private String b;
    private Object c;
    private List d;
    private List e;

    public ad(String s)
    {
        b = s;
    }

    private final String a(String s, String s1, int i)
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (int j = 0; j < i; j++)
        {
            stringbuffer.append(s);
        }

        StringBuffer stringbuffer1 = new StringBuffer();
        stringbuffer1.append((new StringBuilder()).append(stringbuffer).append("<").append(b).toString());
        if (d != null)
        {
            a a1;
            for (Iterator iterator = d.iterator(); iterator.hasNext(); stringbuffer1.append((new StringBuilder()).append(" ").append(a1.a()).append("=\"").append(a1.b()).append("\"").toString()))
            {
                a1 = (a)iterator.next();
            }

        }
        if (e == null)
        {
            if (c == null)
            {
                stringbuffer1.append((new StringBuilder()).append("/>").append(s1).toString());
            } else
            {
                stringbuffer1.append(">");
                stringbuffer1.append(c);
                stringbuffer1.append((new StringBuilder()).append("</").append(b).append(">").append(s1).toString());
            }
        } else
        {
            stringbuffer1.append((new StringBuilder()).append(">").append(s1).toString());
            for (Iterator iterator1 = e.iterator(); iterator1.hasNext(); stringbuffer1.append(((ad)iterator1.next()).a(s, s1, i + 1))) { }
            stringbuffer1.append((new StringBuilder()).append(stringbuffer).append("</").append(b).append(">").append(s1).toString());
        }
        return stringbuffer1.toString();
    }

    public final String a()
    {
        return (new StringBuilder()).append(a).append(a("", "")).toString();
    }

    protected final String a(String s, String s1)
    {
        return a(s, s1, 0);
    }

    public final void a(ad ad1)
    {
        if (e == null)
        {
            e = new ArrayList();
        }
        e.add(ad1);
    }

    public final void a(Object obj)
    {
        c = obj;
    }

    public final void a(String s, Object obj)
    {
        Iterator iterator;
        if (d == null)
        {
            d = new ArrayList();
        }
        iterator = d.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        a a1 = (a)iterator.next();
        if (!s.equalsIgnoreCase(a1.a())) goto _L4; else goto _L3
_L3:
        if (a1 == null)
        {
            s = new a(s, obj);
            d.add(s);
            return;
        } else
        {
            a1.a(obj);
            return;
        }
_L2:
        a1 = null;
        if (true) goto _L3; else goto _L5
_L5:
    }

}
