// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            d

private class <init> extends Handler
{

    final d a;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1000: 
            a.b();
            break;
        }
    }

    private (d d1)
    {
        a = d1;
        super();
    }

    a(d d1, a a1)
    {
        this(d1);
    }
}
