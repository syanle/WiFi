// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage, UMVideo, UMusic

public class CircleShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String f;
    private String g;

    public CircleShareContent()
    {
        f = "";
        g = "";
    }

    protected CircleShareContent(Parcel parcel)
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

    public CircleShareContent(UMImage umimage)
    {
        super(umimage);
        f = "";
        g = "";
    }

    public CircleShareContent(UMVideo umvideo)
    {
        super(umvideo);
        f = "";
        g = "";
    }

    public CircleShareContent(UMusic umusic)
    {
        super(umusic);
        f = "";
        g = "";
    }

    public CircleShareContent(String s)
    {
        super(s);
        f = "";
        g = "";
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.WEIXIN_CIRCLE;
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
        return (new StringBuilder(String.valueOf(super.toString()))).append("CircleShareContent [mTitle=").append(f).append(", mTargetUrl =").append(g).append("]").toString();
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

        public CircleShareContent createFromParcel(Parcel parcel)
        {
            return new CircleShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public CircleShareContent[] newArray(int i)
        {
            return new CircleShareContent[i];
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
