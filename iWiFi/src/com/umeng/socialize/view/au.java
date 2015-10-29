// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.bean.SnsPlatform;
import java.util.Comparator;

// Referenced classes of package com.umeng.socialize.view:
//            ak

class au
    implements Comparator
{

    final ak a;

    au(ak ak)
    {
        a = ak;
        super();
    }

    public int a(SnsPlatform snsplatform, SnsPlatform snsplatform1)
    {
        return snsplatform.mIndex - snsplatform1.mIndex;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((SnsPlatform)obj, (SnsPlatform)obj1);
    }
}
