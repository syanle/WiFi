// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.os.Handler;
import android.os.Message;
import com.umeng.socialize.view.abs.SocialPopupDialog;

// Referenced classes of package com.umeng.socialize.view:
//            ak

class al extends Handler
{

    final ak a;

    al(ak ak1)
    {
        a = ak1;
        super();
    }

    public void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            ak.a(a).c();
        }
    }
}
