// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.media:
//            BaseMediaObject, UMImage

public class UMWebPage extends BaseMediaObject
{

    private String h;
    private UMImage i;

    protected UMWebPage(Parcel parcel)
    {
        super(parcel);
        h = "";
        i = null;
    }

    public UMWebPage(String s)
    {
        super(s);
        h = "";
        i = null;
        d = s;
    }

    public String getDescription()
    {
        return h;
    }

    public UMediaObject.MediaType getMediaType()
    {
        return UMediaObject.MediaType.WEBPAGE;
    }

    public UMImage getThumbImage()
    {
        return i;
    }

    public boolean isMultiMedia()
    {
        return true;
    }

    public void setDescription(String s)
    {
        h = s;
    }

    public void setTargetUrl(String s)
    {
        super.setTargetUrl(s);
        a = s;
    }

    public void setThumb(UMImage umimage)
    {
        i = umimage;
    }

    public void toByte(UMediaObject.FetchMediaDataListener fetchmediadatalistener)
    {
    }

    public byte[] toByte()
    {
        return null;
    }

    public String toString()
    {
        return (new StringBuilder("UMWebPage [mDescription=")).append(h).append(", mMediaTitle=").append(b).append(", mMediaThumb=").append(c).append(", mMediaTargetUrl=").append(d).append(", mLength=").append(g).append("]").toString();
    }

    public Map toUrlExtraParams()
    {
        return null;
    }
}
