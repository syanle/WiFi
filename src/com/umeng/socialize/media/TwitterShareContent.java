// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage, UMVideo, UMusic

public class TwitterShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();

    protected TwitterShareContent(Parcel parcel)
    {
        super(parcel);
    }

    public TwitterShareContent(UMImage umimage)
    {
        super(umimage);
    }

    private TwitterShareContent(UMVideo umvideo)
    {
        super(umvideo);
    }

    private TwitterShareContent(UMusic umusic)
    {
        super(umusic);
    }

    public TwitterShareContent(String s)
    {
        super(s);
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.TWITTER;
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public TwitterShareContent createFromParcel(Parcel parcel)
        {
            return new TwitterShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public TwitterShareContent[] newArray(int i)
        {
            return new TwitterShareContent[i];
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
