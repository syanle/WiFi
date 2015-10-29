// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.util.SDKHttpUtils;

public class YXTextMessageData
    implements YXMessage.YXMessageData
{

    public String text;

    public YXTextMessageData()
    {
    }

    public YXTextMessageData(String s)
    {
        text = s;
    }

    public YXMessage.MessageType dataType()
    {
        return YXMessage.MessageType.TEXT;
    }

    public void read(Bundle bundle)
    {
        text = bundle.getString("_yixinTextMessageData_text");
    }

    public boolean verifyData()
    {
        if (text == null || text.length() == 0 || text.length() > 10240)
        {
            SDKHttpUtils sdkhttputils = SDKHttpUtils.getInstance();
            String s;
            if (text == null || text.length() == 0)
            {
                s = "text is blank";
            } else
            {
                s = (new StringBuilder()).append("text.length ").append(text.length()).append(">10240").toString();
            }
            sdkhttputils.get4ErrorLog(im/yixin/sdk/api/YXTextMessageData, s);
            return false;
        } else
        {
            return true;
        }
    }

    public void write(Bundle bundle)
    {
        bundle.putString("_yixinTextMessageData_text", text);
    }
}
