// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.util.SDKHttpUtils;

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
        if (webPageUrl == null || webPageUrl.length() == 0 || webPageUrl.length() > 10240)
        {
            SDKHttpUtils sdkhttputils = SDKHttpUtils.getInstance();
            String s;
            if (webPageUrl == null || webPageUrl.length() == 0)
            {
                s = "webPageUrl is blank";
            } else
            {
                s = (new StringBuilder()).append("webPageUrl.length ").append(webPageUrl.length()).append(">10240").toString();
            }
            sdkhttputils.get4ErrorLog(im/yixin/sdk/api/YXWebPageMessageData, s);
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
