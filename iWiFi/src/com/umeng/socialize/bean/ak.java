// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.os.Parcel;

// Referenced classes of package com.umeng.socialize.bean:
//            UMLocation

class ak
    implements android.os.Parcelable.Creator
{

    ak()
    {
    }

    public UMLocation a(Parcel parcel)
    {
        return new UMLocation(parcel, null);
    }

    public UMLocation[] a(int i)
    {
        return new UMLocation[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }
}
