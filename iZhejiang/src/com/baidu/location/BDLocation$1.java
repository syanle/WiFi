// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Parcel;

// Referenced classes of package com.baidu.location:
//            BDLocation

final class 
    implements android.os.eator
{

    public BDLocation a(Parcel parcel)
    {
        return new BDLocation(parcel, null);
    }

    public BDLocation[] a(int i)
    {
        return new BDLocation[i];
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public volatile Object[] newArray(int i)
    {
        return a(i);
    }

    ()
    {
    }
}
