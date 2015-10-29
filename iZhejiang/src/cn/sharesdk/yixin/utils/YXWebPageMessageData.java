// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.os.Bundle;
import android.text.TextUtils;
import com.mob.tools.utils.Ln;

public class YXWebPageMessageData
    implements YXMessage.YXMessageData
{

    public String webPageUrl;

    public YXWebPageMessageData()
    {
    }

    public YXWebPageMessageData(String s)
    {
        webPageUrl = s;
    }

    public YXMessage.MessageType dataType()
    {
        return YXMessage.MessageType.WEB_PAGE;
    }

    public void read(Bundle bundle)
    {
        webPageUrl = bundle.getString("_yxWebPageMessageData_webPageUrl");
    }

    public boolean verifyData()
    {
        if (TextUtils.isEmpty(webPageUrl))
        {
            Ln.e("webPageUrl is blank", new Object[0]);
            return false;
        }
        if (webPageUrl.length() > 10240)
        {
            Ln.e((new StringBuilder()).append("webPageUrl.length ").append(webPageUrl.length()).append(">10240").toString(), new Object[0]);
            return false;
        } else
        {
            return true;
        }
    }

    public void write(Bundle bundle)
    {
        bundle.putString("_yxWebPageMessageData_webPageUrl", webPageUrl);
    }
}
