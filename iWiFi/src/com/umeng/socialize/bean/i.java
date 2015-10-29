// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.os.Parcel;

// Referenced classes of package com.umeng.socialize.bean:
//            BaseMsg

class i
    implements android.os.Parcelable.Creator
{

    i()
    {
    }

    public BaseMsg a(Parcel parcel)
    {
        return new BaseMsg(parcel);
    }

    public BaseMsg[] a(int j)
    {
        return new BaseMsg[j];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int j)
    {
        return a(j);
    }
}
