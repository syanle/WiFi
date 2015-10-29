// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.os.Bundle;
import android.text.TextUtils;
import com.mob.tools.utils.Ln;

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
        if (TextUtils.isEmpty(videoUrl) && TextUtils.isEmpty(videoLowBandUrl))
        {
            Ln.e("videoUrl videoLowBandUrl is all blank", new Object[0]);
            return false;
        }
        if (videoUrl != null && videoUrl.length() > 10240)
        {
            Ln.e((new StringBuilder()).append("videoUrl.length ").append(videoUrl.length()).append(">10240").toString(), new Object[0]);
            return false;
        }
        if (videoLowBandUrl != null && videoLowBandUrl.length() > 10240)
        {
            Ln.e((new StringBuilder()).append("videoLowBandUrl.length ").append(videoLowBandUrl.length()).append(">10240").toString(), new Object[0]);
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
