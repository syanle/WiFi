// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage, UMVideo, UMusic

public class QZoneShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String f;
    private String g;

    public QZoneShareContent()
    {
    }

    protected QZoneShareContent(Parcel parcel)
    {
        super(parcel);
        if (parcel != null)
        {
            f = parcel.readString();
            g = parcel.readString();
        }
    }

    public QZoneShareContent(UMImage umimage)
    {
        super(umimage);
    }

    public QZoneShareContent(UMVideo umvideo)
    {
        super(umvideo);
    }

    public QZoneShareContent(UMusic umusic)
    {
        super(umusic);
    }

    public QZoneShareContent(String s)
    {
        super(s);
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.QZONE;
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
        return (new StringBuilder(String.valueOf(super.toString()))).append("[QZoneShareMedia]").toString();
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

        public QZoneShareContent createFromParcel(Parcel parcel)
        {
            return new QZoneShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public QZoneShareContent[] newArray(int i)
        {
            return new QZoneShareContent[i];
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
