// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.os.Parcel;

// Referenced classes of package com.laiwang.sdk.openapi:
//            LWAPIAccount

class 
    implements android.os.tor
{

    public LWAPIAccount createFromParcel(Parcel parcel)
    {
        return new LWAPIAccount(parcel, null);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public LWAPIAccount[] newArray(int i)
    {
        return new LWAPIAccount[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
