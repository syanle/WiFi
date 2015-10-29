// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.net.utils.a;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.media:
//            BaseMediaObject, UMImage

public class UMVideo extends BaseMediaObject
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private UMImage h;

    protected UMVideo(Parcel parcel)
    {
        super(parcel);
    }

    public UMVideo(String s)
    {
        super(s);
    }

    public UMediaObject.MediaType getMediaType()
    {
        return UMediaObject.MediaType.VEDIO;
    }

    public UMImage getThumbImage()
    {
        return h;
    }

    public boolean isMultiMedia()
    {
        return true;
    }

    public void setThumb(UMImage umimage)
    {
        h = umimage;
    }

    public void toByte(UMediaObject.FetchMediaDataListener fetchmediadatalistener)
    {
    }

    public byte[] toByte()
    {
        if (h != null)
        {
            return h.toByte();
        } else
        {
            return null;
        }
    }

    public String toString()
    {
        return (new StringBuilder("UMVedio [media_url=")).append(a).append(", qzone_title=").append(b).append(", qzone_thumb=").append(c).append("media_url=").append(a).append(", qzone_title=").append(b).append(", qzone_thumb=").append(c).append("]").toString();
    }

    public final Map toUrlExtraParams()
    {
        HashMap hashmap = new HashMap();
        if (isUrlMedia())
        {
            hashmap.put(a.y, a);
            hashmap.put(a.z, getMediaType());
        }
        return hashmap;
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public UMVideo createFromParcel(Parcel parcel)
        {
            return new UMVideo(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public UMVideo[] newArray(int i)
        {
            return new UMVideo[i];
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
