// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            SimpleShareContent, UMediaObject, UMImage, UMusic, 
//            UMVideo

public class YiXinShareContent extends SimpleShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private UMediaObject a;
    private String b;
    private String f;

    public YiXinShareContent()
    {
        a = null;
        b = "";
        f = "";
    }

    protected YiXinShareContent(Parcel parcel)
    {
        super(parcel);
        a = null;
        b = "";
        f = "";
        if (parcel != null)
        {
            a = (UMediaObject)parcel.readParcelable(com/umeng/socialize/media/UMediaObject.getClassLoader());
            b = parcel.readString();
            f = parcel.readString();
        }
    }

    public YiXinShareContent(UMediaObject umediaobject)
    {
        a = null;
        b = "";
        f = "";
        a = umediaobject;
    }

    public YiXinShareContent(String s)
    {
        a = null;
        b = "";
        f = "";
        c = s;
    }

    public UMImage getShareImage()
    {
        return super.getShareImage();
    }

    public UMediaObject getShareMedia()
    {
        return a;
    }

    public UMediaObject getShareMusic()
    {
        return a;
    }

    public UMediaObject getShareVideo()
    {
        return a;
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.YIXIN;
    }

    public String getTargetUrl()
    {
        return f;
    }

    public String getTitle()
    {
        return b;
    }

    public void setShareImage(UMImage umimage)
    {
        super.setShareImage(umimage);
        a = umimage;
    }

    public void setShareMedia(UMediaObject umediaobject)
    {
        a = umediaobject;
    }

    public void setShareMusic(UMusic umusic)
    {
        a = umusic;
    }

    public void setShareVideo(UMVideo umvideo)
    {
        a = umvideo;
    }

    public void setTargetUrl(String s)
    {
        f = s;
    }

    public void setTitle(String s)
    {
        b = s;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(a, 0);
        parcel.writeString(b);
        parcel.writeString(f);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public YiXinShareContent createFromParcel(Parcel parcel)
        {
            return new YiXinShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public YiXinShareContent[] newArray(int i)
        {
            return new YiXinShareContent[i];
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
