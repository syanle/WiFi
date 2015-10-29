// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.tools;

import android.os.Parcel;

// Referenced classes of package com.baidu.platform.comjni.tools:
//            ParcelItem

final class b
    implements android.os.Parcelable.Creator
{

    b()
    {
    }

    public ParcelItem a(Parcel parcel)
    {
        ParcelItem parcelitem = new ParcelItem();
        parcelitem.setBundle(parcel.readBundle());
        return parcelitem;
    }

    public ParcelItem[] a(int i)
    {
        return new ParcelItem[i];
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
