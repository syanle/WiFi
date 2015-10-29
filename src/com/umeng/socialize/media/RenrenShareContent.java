// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage, UMVideo, UMusic

public class RenrenShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();

    public RenrenShareContent()
    {
    }

    protected RenrenShareContent(Parcel parcel)
    {
        super(parcel);
    }

    public RenrenShareContent(UMImage umimage)
    {
        super(umimage);
    }

    public RenrenShareContent(UMVideo umvideo)
    {
        super(umvideo);
    }

    public RenrenShareContent(UMusic umusic)
    {
        super(umusic);
    }

    public RenrenShareContent(String s)
    {
        super(s);
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.RENREN;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(super.toString()))).append("RenrenShareMedia").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public RenrenShareContent createFromParcel(Parcel parcel)
        {
            return new RenrenShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public RenrenShareContent[] newArray(int i)
        {
            return new RenrenShareContent[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

        _cls1()
        {
        }
    }

}
