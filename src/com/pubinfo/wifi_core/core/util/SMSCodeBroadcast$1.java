// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.pubinfo.wifi_core.core.util:
//            SMSCodeBroadcast

class this._cls0 extends Handler
{

    final SMSCodeBroadcast this$0;

    public void handleMessage(Message message)
    {
        String s = (String)message.obj;
        if (s == null) goto _L2; else goto _L1
_L1:
        Matcher matcher = Pattern.compile("\\d+").matcher(s);
        if (!matcher.find()) goto _L4; else goto _L3
_L3:
        s = matcher.group();
        SMSCodeBroadcast.access$0(SMSCodeBroadcast.this).autoFill(s);
        SMSCodeBroadcast.access$1(SMSCodeBroadcast.this).getContentResolver().unregisterContentObserver(SMSCodeBroadcast.access$2(SMSCodeBroadcast.this));
_L2:
        super.handleMessage(message);
        return;
_L4:
        int i = s.indexOf("\u60A8\u7684\u9A8C\u8BC1\u7801\u662F");
        if (i >= 0)
        {
            i += "\u60A8\u7684\u9A8C\u8BC1\u7801\u662F".length();
            s = s.substring(i, i + 6);
            SMSCodeBroadcast.access$0(SMSCodeBroadcast.this).autoFill(s);
            SMSCodeBroadcast.access$1(SMSCodeBroadcast.this).getContentResolver().unregisterContentObserver(SMSCodeBroadcast.access$2(SMSCodeBroadcast.this));
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    terReceive()
    {
        this$0 = SMSCodeBroadcast.this;
        super();
    }
}
