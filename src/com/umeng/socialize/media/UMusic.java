// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import android.text.TextUtils;
import com.umeng.socialize.net.utils.a;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.media:
//            BaseMediaObject, UMImage

public class UMusic extends BaseMediaObject
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String h;
    private String i;
    private UMImage j;

    protected UMusic(Parcel parcel)
    {
        super(parcel);
        h = "\u672A\u77E5";
        i = "\u672A\u77E5";
        h = parcel.readString();
        i = parcel.readString();
    }

    public UMusic(String s)
    {
        super(s);
        h = "\u672A\u77E5";
        i = "\u672A\u77E5";
    }

    public String getAuthor()
    {
        return i;
    }

    public UMediaObject.MediaType getMediaType()
    {
        return UMediaObject.MediaType.MUSIC;
    }

    public UMImage getThumbImage()
    {
        return j;
    }

    public String getTitle()
    {
        return h;
    }

    public boolean isMultiMedia()
    {
        return true;
    }

    public void setAuthor(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            i = s;
        }
    }

    public void setThumb(UMImage umimage)
    {
        j = umimage;
    }

    public void setTitle(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            h = s;
        }
    }

    public void toByte(UMediaObject.FetchMediaDataListener fetchmediadatalistener)
    {
    }

    public byte[] toByte()
    {
        if (j != null)
        {
            return j.toByte();
        } else
        {
            return null;
        }
    }

    public String toString()
    {
        return (new StringBuilder("UMusic [title=")).append(h).append(", author=").append(i).append("media_url=").append(a).append(", qzone_title=").append(b).append(", qzone_thumb=").append(c).append("]").toString();
    }

    public final Map toUrlExtraParams()
    {
        HashMap hashmap = new HashMap();
        if (isUrlMedia())
        {
            hashmap.put(a.y, a);
            hashmap.put(a.z, getMediaType());
            hashmap.put(a.A, h);
            hashmap.put(a.C, i);
        }
        return hashmap;
    }

    public void writeToParcel(Parcel parcel, int k)
    {
        super.writeToParcel(parcel, k);
        parcel.writeString(h);
        parcel.writeString(i);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public UMusic createFromParcel(Parcel parcel)
        {
            return new UMusic(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public UMusic[] newArray(int k)
        {
            return new UMusic[k];
        }

        public volatile Object[] newArray(int k)
        {
            return newArray(k);
        }

        _cls1()
        {
        }
    }

}
