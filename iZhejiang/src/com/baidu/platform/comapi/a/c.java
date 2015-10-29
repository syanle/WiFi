// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.a;

import java.io.Serializable;

// Referenced classes of package com.baidu.platform.comapi.a:
//            d

public class c
    implements Serializable
{

    public d a;
    public d b;

    public c()
    {
        if (a == null)
        {
            a = new d();
        }
        if (b == null)
        {
            b = new d();
        }
    }

    public void a(d d1)
    {
        a = d1;
    }

    public void b(d d1)
    {
        b = d1;
    }
}
