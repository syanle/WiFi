// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SocializeEntity;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.media:
//            SimpleShareContent, UMImage, UMusic, UMVideo, 
//            UMediaObject

public abstract class BaseShareContent extends SimpleShareContent
{

    protected UMusic a;
    protected UMVideo b;

    public BaseShareContent()
    {
        a = null;
        b = null;
    }

    protected BaseShareContent(Parcel parcel)
    {
        a = null;
        b = null;
        if (parcel != null)
        {
            c = parcel.readString();
            d = (UMImage)parcel.readParcelable(com/umeng/socialize/media/UMImage.getClassLoader());
            a = (UMusic)parcel.readParcelable(com/umeng/socialize/media/UMusic.getClassLoader());
            b = (UMVideo)parcel.readParcelable(com/umeng/socialize/media/UMVideo.getClassLoader());
        }
    }

    public BaseShareContent(UMImage umimage)
    {
        a = null;
        b = null;
        d = umimage;
    }

    public BaseShareContent(UMVideo umvideo)
    {
        a = null;
        b = null;
        b = umvideo;
    }

    public BaseShareContent(UMusic umusic)
    {
        a = null;
        b = null;
        a = umusic;
    }

    public BaseShareContent(String s)
    {
        a = null;
        b = null;
        c = s;
    }

    public UMediaObject.MediaType getMediaType()
    {
        if (d != null)
        {
            return d.getMediaType();
        }
        if (a != null)
        {
            return a.getMediaType();
        }
        if (b != null)
        {
            return b.getMediaType();
        } else
        {
            return null;
        }
    }

    public UMediaObject getShareMedia()
    {
        if (d != null)
        {
            return d;
        }
        if (a != null)
        {
            return a;
        }
        if (b != null)
        {
            return b;
        } else
        {
            return null;
        }
    }

    public UMusic getShareMusic()
    {
        return a;
    }

    public UMVideo getShareVideo()
    {
        return b;
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
        }
        if (a != null)
        {
            return a.isUrlMedia();
        }
        if (b != null)
        {
            return b.isUrlMedia();
        } else
        {
            return false;
        }
    }

    public void setAppWebSite(String s)
    {
        SocializeEntity.setAppWebSite(getTargetPlatform(), s);
    }

    public void setShareImage(UMImage umimage)
    {
        super.setShareImage(umimage);
        if (d != null)
        {
            a = null;
            b = null;
        }
    }

    public void setShareMusic(UMusic umusic)
    {
        a = umusic;
        if (a != null)
        {
            d = null;
            b = null;
        }
    }

    public void setShareVideo(UMVideo umvideo)
    {
        b = umvideo;
        if (b != null)
        {
            d = null;
            a = null;
        }
    }

    public void toByte(UMediaObject.FetchMediaDataListener fetchmediadatalistener)
    {
        if (d != null)
        {
            d.toByte(fetchmediadatalistener);
        } else
        {
            if (a != null)
            {
                a.toByte(fetchmediadatalistener);
                return;
            }
            if (b != null)
            {
                b.toByte(fetchmediadatalistener);
                return;
            }
        }
    }

    public byte[] toByte()
    {
        if (d != null)
        {
            return d.toByte();
        }
        if (a != null)
        {
            return a.toByte();
        }
        if (b != null)
        {
            return b.toByte();
        } else
        {
            return null;
        }
    }

    public String toString()
    {
        return (new StringBuilder("BaseShareContent [mShareContent=")).append(c).append(", mShareImage=").append(d).append(", mShareMusic=").append(a).append(", mShareVideo=").append(b).append("]").toString();
    }

    public String toUrl()
    {
        if (d != null)
        {
            return d.toUrl();
        }
        if (a != null)
        {
            return a.toUrl();
        }
        if (b != null)
        {
            return b.toUrl();
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
        }
        if (a != null)
        {
            return a.toUrlExtraParams();
        }
        if (b != null)
        {
            return b.toUrlExtraParams();
        } else
        {
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(c);
        parcel.writeParcelable(d, 0);
        parcel.writeParcelable(a, 0);
        parcel.writeParcelable(b, 0);
    }
}
