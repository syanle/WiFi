// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.umeng.socialize.bean:
//            BaseMsg, al

public class UMShareMsg extends BaseMsg
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new al();
    public String mWeiBoId;

    public UMShareMsg()
    {
    }

    private UMShareMsg(Parcel parcel)
    {
        super(parcel);
        mWeiBoId = parcel.readString();
    }

    UMShareMsg(Parcel parcel, UMShareMsg umsharemsg)
    {
        this(parcel);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(mWeiBoId);
    }

}
