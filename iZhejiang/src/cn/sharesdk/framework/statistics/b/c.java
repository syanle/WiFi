// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.b;

import android.content.Context;

public abstract class c
{

    public long e;
    public String f;
    public String g;
    public String h;
    public int i;
    public String j;
    public int k;
    public String l;
    public String m;

    public c()
    {
    }

    protected abstract String a();

    protected abstract void a(long l1);

    public boolean a(Context context)
    {
        int i1 = b();
        int j1 = c();
        long l1 = System.currentTimeMillis();
        if (l1 - e() < (long)i1)
        {
            return d() < (long)j1;
        } else
        {
            a(l1);
            return true;
        }
    }

    protected abstract int b();

    public void b(Context context)
    {
        f();
    }

    protected abstract int c();

    protected abstract long d();

    protected abstract long e();

    protected abstract void f();

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(a()).append(':');
        stringbuilder.append(e).append('|');
        stringbuilder.append(f).append('|');
        stringbuilder.append(g).append('|');
        stringbuilder.append(h).append('|');
        stringbuilder.append(i).append('|');
        stringbuilder.append(j).append('|');
        stringbuilder.append(k).append('|');
        stringbuilder.append(l);
        return stringbuilder.toString();
    }
}
