// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.map.commonmemcache;

import android.os.Bundle;

// Referenced classes of package com.baidu.platform.comjni.map.commonmemcache:
//            JNICommonMemCache

public class a
{

    private int a;
    private JNICommonMemCache b;

    public a()
    {
        a = 0;
        b = null;
        b = new JNICommonMemCache();
    }

    public int a()
    {
        a = b.Create();
        return a;
    }

    public void a(Bundle bundle)
    {
        if (a != 0)
        {
            b.Init(a, bundle);
        }
    }

    public int b()
    {
        a = 0;
        return b.Release(a);
    }
}
