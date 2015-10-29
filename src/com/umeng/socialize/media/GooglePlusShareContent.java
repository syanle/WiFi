// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage, UMVideo, UMusic

public class GooglePlusShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();

    protected GooglePlusShareContent(Parcel parcel)
    {
        super(parcel);
    }

    public GooglePlusShareContent(UMImage umimage)
    {
        super(umimage);
    }

    public GooglePlusShareContent(UMVideo umvideo)
    {
        super(umvideo);
    }

    public GooglePlusShareContent(UMusic umusic)
    {
        super(umusic);
    }

    public GooglePlusShareContent(String s)
    {
        super(s);
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.GOOGLEPLUS;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(super.toString()))).append("GooglePlusShareContent").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public GooglePlusShareContent createFromParcel(Parcel parcel)
        {
            return new GooglePlusShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public GooglePlusShareContent[] newArray(int i)
        {
            return new GooglePlusShareContent[i];
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
