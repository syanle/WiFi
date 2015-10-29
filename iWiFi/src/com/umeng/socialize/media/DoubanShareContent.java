// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage, UMVideo, UMusic

public class DoubanShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();

    public DoubanShareContent()
    {
    }

    protected DoubanShareContent(Parcel parcel)
    {
        super(parcel);
    }

    public DoubanShareContent(UMImage umimage)
    {
        super(umimage);
    }

    public DoubanShareContent(UMVideo umvideo)
    {
        super(umvideo);
    }

    public DoubanShareContent(UMusic umusic)
    {
        super(umusic);
    }

    public DoubanShareContent(String s)
    {
        super(s);
    }

    public int describeContents()
    {
        return 0;
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.DOUBAN;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(super.toString()))).append("DoubanShareContent").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public DoubanShareContent createFromParcel(Parcel parcel)
        {
            return new DoubanShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public DoubanShareContent[] newArray(int i)
        {
            return new DoubanShareContent[i];
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
