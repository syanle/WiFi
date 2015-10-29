// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.os.Parcel;

// Referenced classes of package com.mapabc.mapapi.core:
//            OverlayItem

final class p
    implements android.os.Parcelable.Creator
{

    p()
    {
    }

    public OverlayItem a(Parcel parcel)
    {
        return new OverlayItem(parcel);
    }

    public OverlayItem[] a(int i)
    {
        return new OverlayItem[i];
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
