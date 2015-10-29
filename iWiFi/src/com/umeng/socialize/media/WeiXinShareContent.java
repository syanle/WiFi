// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage, UMVideo, UMusic

public class WeiXinShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    protected String f;
    private String g;

    public WeiXinShareContent()
    {
        f = "";
        g = "";
    }

    protected WeiXinShareContent(Parcel parcel)
    {
        super(parcel);
        f = "";
        g = "";
        if (parcel != null)
        {
            f = parcel.readString();
            g = parcel.readString();
        }
    }

    public WeiXinShareContent(UMImage umimage)
    {
        super(umimage);
        f = "";
        g = "";
    }

    public WeiXinShareContent(UMVideo umvideo)
    {
        super(umvideo);
        f = "";
        g = "";
    }

    public WeiXinShareContent(UMusic umusic)
    {
        super(umusic);
        f = "";
        g = "";
    }

    public WeiXinShareContent(String s)
    {
        super(s);
        f = "";
        g = "";
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.WEIXIN;
    }

    public String getTargetUrl()
    {
        return g;
    }

    public String getTitle()
    {
        return f;
    }

    public void setTargetUrl(String s)
    {
        g = s;
    }

    public void setTitle(String s)
    {
        f = s;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(super.toString()))).append("WeiXinShareMedia [mTitle=").append(f).append(", mTargetUrl =").append(g).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(f);
        parcel.writeString(g);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public WeiXinShareContent createFromParcel(Parcel parcel)
        {
            return new WeiXinShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public WeiXinShareContent[] newArray(int i)
        {
            return new WeiXinShareContent[i];
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
