// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;

// Referenced classes of package com.umeng.socialize.media:
//            TencentWbShareContent

class 
    implements android.os.ShareContent._cls1
{

    public TencentWbShareContent createFromParcel(Parcel parcel)
    {
        return new TencentWbShareContent(parcel);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public TencentWbShareContent[] newArray(int i)
    {
        return new TencentWbShareContent[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
