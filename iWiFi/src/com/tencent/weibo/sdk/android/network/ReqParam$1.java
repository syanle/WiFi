// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.network;

import java.util.Comparator;

// Referenced classes of package com.tencent.weibo.sdk.android.network:
//            ReqParam

class this._cls0
    implements Comparator
{

    final ReqParam this$0;

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((String)obj, (String)obj1);
    }

    public int compare(String s, String s1)
    {
        if (s.compareTo(s1) > 0)
        {
            return 1;
        }
        return s.compareTo(s1) >= 0 ? 0 : -1;
    }

    ()
    {
        this$0 = ReqParam.this;
        super();
    }
}
