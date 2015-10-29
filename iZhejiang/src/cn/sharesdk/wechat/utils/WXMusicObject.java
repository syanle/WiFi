// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import android.text.TextUtils;
import com.mob.tools.utils.Ln;

public class WXMusicObject
    implements WXMediaMessage.IMediaObject
{

    public String musicDataUrl;
    public String musicLowBandDataUrl;
    public String musicLowBandUrl;
    public String musicUrl;

    public WXMusicObject()
    {
    }

    public boolean checkArgs()
    {
        if (TextUtils.isEmpty(musicUrl) && TextUtils.isEmpty(musicLowBandUrl))
        {
            Ln.e("both musicUrl and musicLowBandUrl are null", new Object[0]);
            return false;
        }
        if (musicUrl != null && musicUrl.length() > 10240)
        {
            Ln.e("checkArgs fail, musicUrl is too long", new Object[0]);
            return false;
        }
        if (musicLowBandUrl != null && musicLowBandUrl.length() > 10240)
        {
            Ln.e("checkArgs fail, musicLowBandUrl is too long", new Object[0]);
            return false;
        } else
        {
            return true;
        }
    }

    public void serialize(Bundle bundle)
    {
        bundle.putString("_wxmusicobject_musicUrl", musicUrl);
        bundle.putString("_wxmusicobject_musicLowBandUrl", musicLowBandUrl);
        bundle.putString("_wxmusicobject_musicDataUrl", musicDataUrl);
        bundle.putString("_wxmusicobject_musicLowBandDataUrl", musicLowBandDataUrl);
    }

    public int type()
    {
        return 3;
    }

    public void unserialize(Bundle bundle)
    {
        musicUrl = bundle.getString("_wxmusicobject_musicUrl");
        musicLowBandUrl = bundle.getString("_wxmusicobject_musicLowBandUrl");
        musicDataUrl = bundle.getString("_wxmusicobject_musicDataUrl");
        musicLowBandDataUrl = bundle.getString("_wxmusicobject_musicLowBandDataUrl");
    }
}
