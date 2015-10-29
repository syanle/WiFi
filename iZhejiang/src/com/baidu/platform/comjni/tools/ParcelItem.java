// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.tools;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.baidu.platform.comjni.tools:
//            b

public class ParcelItem
    implements Parcelable
{

    public static final android.os.Parcelable.Creator a = new b();
    private Bundle b;

    public ParcelItem()
    {
    }

    public int describeContents()
    {
        return 0;
    }

    public Bundle getBundle()
    {
        return b;
    }

    public void setBundle(Bundle bundle)
    {
        b = bundle;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeBundle(b);
    }

}
