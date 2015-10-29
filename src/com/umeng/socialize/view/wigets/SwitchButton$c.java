// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            SwitchButton

private class <init> extends Handler
{

    final SwitchButton a;

    public void handleMessage(Message message)
    {
        boolean flag;
        if (message.what == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (SwitchButton.a(a) != flag)
        {
            SwitchButton.a(a, flag);
            if (SwitchButton.b(a))
            {
                return;
            }
            SwitchButton.b(a, true);
            if (SwitchButton.c(a) != null)
            {
                SwitchButton.c(a).onCheckedChanged(a, SwitchButton.a(a));
            }
            if (SwitchButton.d(a) != null)
            {
                SwitchButton.d(a).onCheckedChanged(a, SwitchButton.a(a));
            }
            SwitchButton.b(a, false);
        }
        super.handleMessage(message);
    }

    private stener(SwitchButton switchbutton)
    {
        a = switchbutton;
        super();
    }

    a(SwitchButton switchbutton, a a1)
    {
        this(switchbutton);
    }
}
