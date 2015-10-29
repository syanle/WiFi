// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.media:
//            UMediaObject, UMImage

public class SimpleShareContent
    implements UMediaObject
{

    protected String c;
    protected UMImage d;
    protected String e;

    public SimpleShareContent()
    {
        c = "";
        d = null;
        e = getClass().getName();
    }

    protected SimpleShareContent(Parcel parcel)
    {
        c = "";
        d = null;
        e = getClass().getName();
        if (parcel != null)
        {
            c = parcel.readString();
            d = (UMImage)parcel.readParcelable(com/umeng/socialize/media/UMImage.getClassLoader());
        }
    }

    public SimpleShareContent(UMImage umimage)
    {
        c = "";
        d = null;
        e = getClass().getName();
        d = umimage;
    }

    public SimpleShareContent(String s)
    {
        c = "";
        d = null;
        e = getClass().getName();
        c = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public UMediaObject.MediaType getMediaType()
    {
        if (d != null)
        {
            return d.getMediaType();
        } else
        {
            return null;
        }
    }

    public String getShareContent()
    {
        return c;
    }

    public UMImage getShareImage()
    {
        return d;
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.GENERIC;
    }

    public boolean isMultiMedia()
    {
        return true;
    }

    public boolean isUrlMedia()
    {
        if (d != null)
        {
            return d.isUrlMedia();
        } else
        {
            return false;
        }
    }

    public void setShareContent(String s)
    {
        c = s;
    }

    public void setShareImage(UMImage umimage)
    {
        d = umimage;
    }

    public void toByte(UMediaObject.FetchMediaDataListener fetchmediadatalistener)
    {
        if (d != null)
        {
            d.toByte(fetchmediadatalistener);
        }
    }

    public byte[] toByte()
    {
        if (d != null)
        {
            return d.toByte();
        } else
        {
            return null;
        }
    }

    public String toString()
    {
        return (new StringBuilder("SimplaShareContent [mShareContent=")).append(c).append(", mShareImage=").append(d).append("]").toString();
    }

    public String toUrl()
    {
        if (d != null)
        {
            return d.toUrl();
        } else
        {
            return "";
        }
    }

    public Map toUrlExtraParams()
    {
        if (d != null)
        {
            return d.toUrlExtraParams();
        } else
        {
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(c);
        parcel.writeParcelable(d, 0);
    }
}
