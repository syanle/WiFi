// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.location.Location;

// Referenced classes of package com.autonavi.aps.api:
//            Location

public interface IAPS
{

    public abstract com.autonavi.aps.api.Location getCurrentLocation(Location location);

    public abstract String getVersion();

    public abstract void onDestroy();

    public abstract void setLicence(String s);

    public abstract void setOpenGps(boolean flag);

    public abstract void setOpenSystemNetworkLocation(boolean flag);

    public abstract void setProductName(String s);
}
