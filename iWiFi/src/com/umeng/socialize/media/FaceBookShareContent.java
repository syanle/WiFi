// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            SimpleShareContent, UMImage

public class FaceBookShareContent extends SimpleShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String a;
    private String b;
    private String f;
    private String g;

    protected FaceBookShareContent(Parcel parcel)
    {
        super(parcel);
        a = "";
        b = "";
        f = "";
        g = "";
        if (parcel != null)
        {
            a = parcel.readString();
            f = parcel.readString();
            g = parcel.readString();
            b = parcel.readString();
        }
    }

    public FaceBookShareContent(UMImage umimage)
    {
        super(umimage);
        a = "";
        b = "";
        f = "";
        g = "";
        if (d != null)
        {
            a = d.getTitle();
            b = d.getTargetUrl();
        }
    }

    public FaceBookShareContent(String s)
    {
        super(s);
        a = "";
        b = "";
        f = "";
        g = "";
    }

    public String getCaption()
    {
        return f;
    }

    public String getDescription()
    {
        return g;
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.FACEBOOK;
    }

    public String getTargetUrl()
    {
        return b;
    }

    public String getTitle()
    {
        return a;
    }

    public void setCaption(String s)
    {
        f = s;
    }

    public void setDescription(String s)
    {
        g = s;
    }

    public void setTargetUrl(String s)
    {
        b = s;
    }

    public void setTitle(String s)
    {
        a = s;
    }

    public String toString()
    {
        return (new StringBuilder("FaceBookShareContent [mTitle=")).append(a).append(", mTargetUrl=").append(b).append(", mCaption=").append(f).append(", mDescription=").append(g).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(a);
        parcel.writeString(f);
        parcel.writeString(g);
        parcel.writeString(b);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public FaceBookShareContent createFromParcel(Parcel parcel)
        {
            return new FaceBookShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public FaceBookShareContent[] newArray(int i)
        {
            return new FaceBookShareContent[i];
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
