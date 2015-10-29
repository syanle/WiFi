// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.debug;

import java.io.Writer;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class c
    implements Iterable
{

    private ConcurrentLinkedQueue a;
    private AtomicInteger b;

    public c()
    {
        a = null;
        b = null;
        a = new ConcurrentLinkedQueue();
        b = new AtomicInteger(0);
    }

    public int a()
    {
        return b.get();
    }

    public int a(String s)
    {
        int i = s.length();
        a.add(s);
        return b.addAndGet(i);
    }

    public void a(Writer writer, char ac[])
    {
        int k1;
        if (writer == null || ac == null || ac.length == 0)
        {
            return;
        }
        int i1 = ac.length;
        Iterator iterator1 = iterator();
        k1 = 0;
        int j1 = i1;
        do
        {
label0:
            {
                if (!iterator1.hasNext())
                {
                    break label0;
                }
                String s = (String)iterator1.next();
                int k = s.length();
                int l = 0;
                int i = j1;
                int j = k1;
                do
                {
                    k1 = j;
                    j1 = i;
                    if (k <= 0)
                    {
                        break;
                    }
                    if (i > k)
                    {
                        j1 = k;
                    } else
                    {
                        j1 = i;
                    }
                    s.getChars(l, l + j1, ac, j);
                    i -= j1;
                    j += j1;
                    k -= j1;
                    l = j1 + l;
                    if (i == 0)
                    {
                        writer.write(ac, 0, i1);
                        j = 0;
                        i = i1;
                    }
                } while (true);
            }
        } while (true);
        if (k1 > 0)
        {
            writer.write(ac, 0, k1);
        }
        writer.flush();
        return;
    }

    public void b()
    {
        a.clear();
        b.set(0);
    }

    public Iterator iterator()
    {
        return a.iterator();
    }
}
