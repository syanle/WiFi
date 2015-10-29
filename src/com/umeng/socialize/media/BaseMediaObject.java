// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            UMediaObject

public abstract class BaseMediaObject
    implements UMediaObject
{

    protected String a;
    protected String b;
    protected String c;
    protected String d;
    protected String e;
    protected String f;
    protected int g;

    protected BaseMediaObject(Parcel parcel)
    {
        a = "";
        b = "";
        c = "";
        d = "";
        e = "";
        f = "";
        g = 0;
        if (parcel != null)
        {
            a = parcel.readString();
            b = parcel.readString();
            c = parcel.readString();
            d = parcel.readString();
        }
    }

    public BaseMediaObject(String s)
    {
        a = "";
        b = "";
        c = "";
        d = "";
        e = "";
        f = "";
        g = 0;
        a = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.GENERIC;
    }

    public String getTargetUrl()
    {
        return d;
    }

    public String getThumb()
    {
        return c;
    }

    public String getTitle()
    {
        return b;
    }

    public boolean isUrlMedia()
    {
        return !TextUtils.isEmpty(a);
    }

    public void setMediaUrl(String s)
    {
        a = s;
    }

    public void setTargetUrl(String s)
    {
        d = s;
    }

    public void setThumb(String s)
    {
        c = s;
    }

    public void setTitle(String s)
    {
        b = s;
    }

    public String toString()
    {
        return (new StringBuilder("BaseMediaObject [media_url=")).append(a).append(", qzone_title=").append(b).append(", qzone_thumb=").append(c).append("]").toString();
    }

    public String toUrl()
    {
        return a;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(a);
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeString(d);
    }
}
