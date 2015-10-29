// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage, UMVideo, UMusic

public class QQShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String f;
    private String g;

    public QQShareContent()
    {
        f = "";
        g = "";
    }

    protected QQShareContent(Parcel parcel)
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

    public QQShareContent(UMImage umimage)
    {
        super(umimage);
        f = "";
        g = "";
    }

    public QQShareContent(UMVideo umvideo)
    {
        super(umvideo);
        f = "";
        g = "";
    }

    public QQShareContent(UMusic umusic)
    {
        super(umusic);
        f = "";
        g = "";
    }

    public QQShareContent(String s)
    {
        super(s);
        f = "";
        g = "";
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.QQ;
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
        if (!TextUtils.isEmpty(s) && SocializeNetUtils.startWithHttp(s))
        {
            g = s;
            return;
        } else
        {
            Log.b(e, "### QQ\u7684targetUrl\u5FC5\u987B\u4EE5http://\u6216\u8005https://\u5F00\u5934");
            return;
        }
    }

    public void setTitle(String s)
    {
        f = s;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(super.toString()))).append("QQShareContent [mTitle=").append(f).append(", mTargetUrl =").append(g).append("]").toString();
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

        public QQShareContent createFromParcel(Parcel parcel)
        {
            return new QQShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public QQShareContent[] newArray(int i)
        {
            return new QQShareContent[i];
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
