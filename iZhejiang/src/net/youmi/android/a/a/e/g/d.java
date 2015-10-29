// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.g;

import java.io.Serializable;
import java.util.ArrayList;

// Referenced classes of package net.youmi.android.a.a.e.g:
//            c

public class d
    implements Serializable
{

    private ArrayList a;
    private String b;

    public d()
    {
        a = new ArrayList();
    }

    public c a(int i)
    {
        return (c)a.get(i);
    }

    public void a(String s)
    {
        b = s;
    }

    public boolean a(c c1)
    {
        return a.add(c1);
    }
}
