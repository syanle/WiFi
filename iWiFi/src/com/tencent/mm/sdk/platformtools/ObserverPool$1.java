// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import java.util.Comparator;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            ObserverPool

class az
    implements Comparator
{

    final ObserverPool az;

    public int compare(stener stener, stener stener1)
    {
        return com.tencent.mm.sdk.platformtools.stener.a(stener1) - com.tencent.mm.sdk.platformtools.stener.a(stener);
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((stener)obj, (stener)obj1);
    }

    stener(ObserverPool observerpool)
    {
        az = observerpool;
        super();
    }
}
