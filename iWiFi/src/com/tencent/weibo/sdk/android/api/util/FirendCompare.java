// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.util;

import com.tencent.weibo.sdk.android.model.Firend;
import java.util.Comparator;

// Referenced classes of package com.tencent.weibo.sdk.android.api.util:
//            HypyUtil

public class FirendCompare
    implements Comparator
{

    public FirendCompare()
    {
    }

    public int compare(Firend firend, Firend firend1)
    {
        return HypyUtil.cn2py(firend.getName()).substring(0, 1).toUpperCase().compareTo(HypyUtil.cn2py(firend1.getName()).substring(0, 1).toUpperCase());
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((Firend)obj, (Firend)obj1);
    }
}
