// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;

// Referenced classes of package com.umeng.socialize.media:
//            YiXinCircleShareContent

class _cls9
    implements android.os.ShareContent._cls1
{

    public YiXinCircleShareContent createFromParcel(Parcel parcel)
    {
        return new YiXinCircleShareContent(parcel);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public YiXinCircleShareContent[] newArray(int i)
    {
        return new YiXinCircleShareContent[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    _cls9()
    {
    }
}
