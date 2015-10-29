// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.util.SDKHttpUtils;

public class YXMusicMessageData
    implements YXMessage.YXMessageData
{

    public String musicDataUrl;
    public String musicLowBandDataUrl;
    public String musicLowBandUrl;
    public String musicUrl;

    public YXMusicMessageData()
    {
    }

    public YXMessage.MessageType dataType()
    {
        return YXMessage.MessageType.MUSIC;
    }

    public void read(Bundle bundle)
    {
        musicUrl = bundle.getString("_yixinMusicMessageData_musicUrl");
        musicLowBandUrl = bundle.getString("_yixinMusicMessageData_musicLowBandUrl");
        musicDataUrl = bundle.getString("_yixinMusicMessageData_musicDataUrl");
        musicLowBandDataUrl = bundle.getString("_yixinMusicMessageData_musicLowBandDataUrl");
    }

    public boolean verifyData()
    {
        if ((musicUrl == null || musicUrl.length() == 0) && (musicLowBandUrl == null || musicLowBandUrl.length() == 0))
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMusicMessageData, "musicUrl, musicLowBandUrl is all blank");
            return false;
        }
        if (musicUrl != null && musicUrl.length() > 10240)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMusicMessageData, (new StringBuilder()).append("musicUrl.length ").append(musicUrl.length()).append(">10240").toString());
            return false;
        }
        if (musicLowBandUrl != null && musicLowBandUrl.length() > 10240)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMusicMessageData, (new StringBuilder()).append("musicLowBandUrl.length ").append(musicLowBandUrl.length()).append(">10240").toString());
            return false;
        }
        if (musicDataUrl != null && musicDataUrl.length() > 10240)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMusicMessageData, (new StringBuilder()).append("musicLowBandUrl.length ").append(musicDataUrl.length()).append(">10240").toString());
            return false;
        }
        if (musicLowBandDataUrl != null && musicLowBandDataUrl.length() > 10240)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMusicMessageData, (new StringBuilder()).append("musicLowBandUrl.length ").append(musicLowBandDataUrl.length()).append(">10240").toString());
            return false;
        } else
        {
            return true;
        }
    }

    public void write(Bundle bundle)
    {
        bundle.putString("_yixinMusicMessageData_musicUrl", musicUrl);
        bundle.putString("_yixinMusicMessageData_musicLowBandUrl", musicLowBandUrl);
        bundle.putString("_yixinMusicMessageData_musicDataUrl", musicDataUrl);
        bundle.putString("_yixinMusicMessageData_musicLowBandDataUrl", musicLowBandDataUrl);
    }
}
