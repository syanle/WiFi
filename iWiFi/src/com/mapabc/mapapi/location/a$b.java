// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.location;

import android.location.Location;
import android.location.LocationListener;

// Referenced classes of package com.mapabc.mapapi.location:
//            a

public static class c
{

    public long a;
    public float b;
    public LocationListener c;
    public long d;
    public boolean e;
    public Location f;

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        obj = (c)obj;
        if (c != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (((c) (obj)).c == null) goto _L1; else goto _L3
_L3:
        return false;
        if (c.equals(((c) (obj)).c)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public int hashCode()
    {
        int i;
        if (c == null)
        {
            i = 0;
        } else
        {
            i = c.hashCode();
        }
        return i + 31;
    }

    public er(long l, float f1, LocationListener locationlistener)
    {
        e = true;
        f = null;
        a = l;
        b = f1;
        c = locationlistener;
    }
}
