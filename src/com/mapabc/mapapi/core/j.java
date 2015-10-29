// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import java.util.LinkedList;

// Referenced classes of package com.mapabc.mapapi.core:
//            ab

public class j extends ab
{

    public j()
    {
    }

    public void a(Object obj)
    {
        if (!a.contains(obj))
        {
            a.add(obj);
        }
    }

    public void b(Object obj)
    {
        int i = 0;
        do
        {
label0:
            {
                if (i < a.size())
                {
                    if (obj != a.get(i))
                    {
                        break label0;
                    }
                    a.remove(i);
                }
                return;
            }
            i++;
        } while (true);
    }
}
