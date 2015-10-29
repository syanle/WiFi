// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.map.cloud;

import android.os.Bundle;

// Referenced classes of package com.baidu.platform.comjni.map.cloud:
//            JniCloud

public class a
{

    private static final String a = com/baidu/platform/comjni/map/cloud/a.getSimpleName();
    private int b;
    private JniCloud c;

    public a()
    {
        c = new JniCloud();
    }

    public int a()
    {
        b = c.create();
        return b;
    }

    public String a(int i)
    {
        return c.getSearchResult(b, i);
    }

    public void a(Bundle bundle)
    {
        c.cloudSearch(b, bundle);
    }

    public int b()
    {
        return c.release(b);
    }

    public void b(Bundle bundle)
    {
        c.cloudDetailSearch(b, bundle);
    }

}
