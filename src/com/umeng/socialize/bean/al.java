// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.os.Parcel;

// Referenced classes of package com.umeng.socialize.bean:
//            UMShareMsg

class al
    implements android.os.Parcelable.Creator
{

    al()
    {
    }

    public UMShareMsg a(Parcel parcel)
    {
        return new UMShareMsg(parcel, null);
    }

    public UMShareMsg[] a(int i)
    {
        return new UMShareMsg[i];
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
