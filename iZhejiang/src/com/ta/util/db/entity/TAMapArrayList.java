// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.entity;

import java.util.ArrayList;

// Referenced classes of package com.ta.util.db.entity:
//            TAHashMap

public class TAMapArrayList extends ArrayList
{

    private static final long serialVersionUID = 1L;

    public TAMapArrayList()
    {
    }

    public boolean add(TAHashMap tahashmap)
    {
        if (tahashmap != null)
        {
            return super.add(tahashmap);
        } else
        {
            return false;
        }
    }

    public volatile boolean add(Object obj)
    {
        return add((TAHashMap)obj);
    }
}
