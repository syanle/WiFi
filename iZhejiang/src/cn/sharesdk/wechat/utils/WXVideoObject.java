// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import com.mob.tools.utils.Ln;

public class WXVideoObject
    implements WXMediaMessage.IMediaObject
{

    public String videoLowBandUrl;
    public String videoUrl;

    public WXVideoObject()
    {
    }

    public boolean checkArgs()
    {
        if ((videoUrl == null || videoUrl.length() == 0) && (videoLowBandUrl == null || videoLowBandUrl.length() == 0))
        {
            Ln.e("both arguments are null", new Object[0]);
            return false;
        }
        if (videoUrl != null && videoUrl.length() > 10240)
        {
            Ln.e("checkArgs fail, videoUrl is too long", new Object[0]);
            return false;
        }
        if (videoLowBandUrl != null && videoLowBandUrl.length() > 10240)
        {
            Ln.e("checkArgs fail, videoLowBandUrl is too long", new Object[0]);
            return false;
        } else
        {
            return true;
        }
    }

    public void serialize(Bundle bundle)
    {
        bundle.putString("_wxvideoobject_videoUrl", videoUrl);
        bundle.putString("_wxvideoobject_videoLowBandUrl", videoLowBandUrl);
    }

    public int type()
    {
        return 4;
    }

    public void unserialize(Bundle bundle)
    {
        videoUrl = bundle.getString("_wxvideoobject_videoUrl");
        videoLowBandUrl = bundle.getString("_wxvideoobject_videoLowBandUrl");
    }
}
