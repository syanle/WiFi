// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;


// Referenced classes of package net.youmi.android.a.b.f:
//            d, j

public class b
{

    private d a[];

    public b()
    {
        a = new d[17];
    }

    public int a(j j)
    {
        int i = j.hashCode();
        d d1 = a[(i & 0x7fffffff) % 17];
        i = -1;
        for (; d1 != null; d1 = d1.c)
        {
            if (d1.a.equals(j))
            {
                i = d1.b;
            }
        }

        return i;
    }

    public void a(int i, j j)
    {
        if (i > 16383)
        {
            return;
        } else
        {
            int k = (j.hashCode() & 0x7fffffff) % 17;
            d d1 = new d(null);
            d1.a = j;
            d1.b = i;
            d1.c = a[k];
            a[k] = d1;
            return;
        }
    }
}
