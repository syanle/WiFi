// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage, UMVideo, UMusic

public class TencentWbShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();

    public TencentWbShareContent()
    {
    }

    protected TencentWbShareContent(Parcel parcel)
    {
        super(parcel);
    }

    public TencentWbShareContent(UMImage umimage)
    {
        super(umimage);
    }

    public TencentWbShareContent(UMVideo umvideo)
    {
        super(umvideo);
    }

    public TencentWbShareContent(UMusic umusic)
    {
        super(umusic);
    }

    public TencentWbShareContent(String s)
    {
        super(s);
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.TENCENT;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(super.toString()))).append("TencentWbShareContent").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
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

        _cls1()
        {
        }
    }

}
