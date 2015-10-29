// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.location;

import android.location.LocationListener;
import android.location.LocationManager;

// Referenced classes of package com.umeng.socialize.location:
//            d

class e
    implements Runnable
{

    final d a;
    private final String b;
    private final long c;
    private final float d;
    private final LocationListener e;

    e(d d1, String s, long l, float f, LocationListener locationlistener)
    {
        a = d1;
        b = s;
        c = l;
        d = f;
        e = locationlistener;
        super();
    }

    public void run()
    {
        a.a.requestLocationUpdates(b, c, d, e);
    }
}
