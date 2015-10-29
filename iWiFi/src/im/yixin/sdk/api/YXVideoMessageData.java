// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.util.SDKHttpUtils;

public class YXVideoMessageData
    implements YXMessage.YXMessageData
{

    public String videoLowBandUrl;
    public String videoUrl;

    public YXVideoMessageData()
    {
    }

    public YXMessage.MessageType dataType()
    {
        return YXMessage.MessageType.VIDEO;
    }

    public void read(Bundle bundle)
    {
        videoUrl = bundle.getString("_yixinVideoMessageData_videoUrl");
        videoLowBandUrl = bundle.getString("_yixinVideoMessageData_videoLowBandUrl");
    }

    public boolean verifyData()
    {
        if ((videoUrl == null || videoUrl.length() == 0) && (videoLowBandUrl == null || videoLowBandUrl.length() == 0))
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXVideoMessageData, "videoUrl videoLowBandUrl is all blank");
            return false;
        }
        if (videoUrl != null && videoUrl.length() > 10240)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXVideoMessageData, (new StringBuilder()).append("videoUrl.length ").append(videoUrl.length()).append(">10240").toString());
            return false;
        }
        if (videoLowBandUrl != null && videoLowBandUrl.length() > 10240)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXVideoMessageData, (new StringBuilder()).append("videoLowBandUrl.length ").append(videoLowBandUrl.length()).append(">10240").toString());
            return false;
        } else
        {
            return true;
        }
    }

    public void write(Bundle bundle)
    {
        bundle.putString("_yixinVideoMessageData_videoUrl", videoUrl);
        bundle.putString("_yixinVideoMessageData_videoLowBandUrl", videoLowBandUrl);
    }
}
