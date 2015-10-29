// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.AbstractList;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            RepeatedFieldBuilder, GeneratedMessage

private static class a extends AbstractList
    implements List
{

    RepeatedFieldBuilder a;

    public GeneratedMessage a(int i)
    {
        return a.getMessage(i);
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

    (RepeatedFieldBuilder repeatedfieldbuilder)
    {
        a = repeatedfieldbuilder;
    }
}
