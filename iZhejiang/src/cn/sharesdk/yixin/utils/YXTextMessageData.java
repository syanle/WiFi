// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.os.Bundle;
import com.mob.tools.utils.Ln;

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
            Ln.e((new StringBuilder()).append("text.length ").append(text.length()).append(">10240").toString(), new Object[0]);
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
