// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.os.Parcel;

// Referenced classes of package com.mapabc.mapapi.core:
//            GeoPoint

final class h
    implements android.os.Parcelable.Creator
{

    h()
    {
    }

    public GeoPoint a(Parcel parcel)
    {
        return new GeoPoint(parcel, null);
    }

    public GeoPoint[] a(int i)
    {
        return new GeoPoint[i];
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public volatile Object[] newArray(int i)
    {
        return a(i);
    }
}
