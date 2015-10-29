// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import com.cat.data.SsidData;
import java.util.Comparator;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            SsidFragment

class this._cls1
    implements Comparator
{

    final compare this$1;

    public int compare(SsidData ssiddata, SsidData ssiddata1)
    {
        int i = ssiddata.getLevel();
        int j = ssiddata1.getLevel();
        return Math.abs(i) <= Math.abs(j) ? -1 : 1;
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((SsidData)obj, (SsidData)obj1);
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
