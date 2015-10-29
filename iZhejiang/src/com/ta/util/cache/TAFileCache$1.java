// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;


// Referenced classes of package com.ta.util.cache:
//            LruCache, TAFileCache

class > extends LruCache
{

    final TAFileCache this$0;

    protected volatile int sizeOf(Object obj, Object obj1)
    {
        return sizeOf((String)obj, (byte[])obj1);
    }

    protected int sizeOf(String s, byte abyte0[])
    {
        return TAFileCache.access$0(TAFileCache.this, s, abyte0);
    }

    (int i)
    {
        this$0 = TAFileCache.this;
        super(i);
    }
}
