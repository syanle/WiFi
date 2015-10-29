// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.view:
//            av

class aw extends Handler
{

    final av a;

    aw(av av1)
    {
        a = av1;
        super();
    }

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        if (message.what == 1 && av.a(a) != null)
        {
            av.a(a).setVisibility(8);
        }
        if (message.what != 2)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        av.b(a);
        return;
        message;
        Log.b(av.a(), "follow error", message);
        return;
    }
}
