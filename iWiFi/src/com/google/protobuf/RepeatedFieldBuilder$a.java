// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.AbstractList;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            RepeatedFieldBuilder

private static class a extends AbstractList
    implements List
{

    RepeatedFieldBuilder a;

    public r a(int i)
    {
        return a.getBuilder(i);
    }

    void a()
    {
        modCount = modCount + 1;
    }

    public volatile Object get(int i)
    {
        return a(i);
    }

    public int size()
    {
        return a.getCount();
    }

    r(RepeatedFieldBuilder repeatedfieldbuilder)
    {
        a = repeatedfieldbuilder;
    }
}
