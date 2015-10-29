// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.os.Parcel;

// Referenced classes of package com.umeng.socialize.bean:
//            UMComment

class aj
    implements android.os.Parcelable.Creator
{

    aj()
    {
    }

    public UMComment a(Parcel parcel)
    {
        return new UMComment(parcel, null);
    }

    public UMComment[] a(int i)
    {
        return new UMComment[i];
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
