// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Message;

// Referenced classes of package com.mob.tools:
//            FakeActivity

class this._cls0
    implements android.os.k
{

    final FakeActivity this$0;

    public boolean handleMessage(Message message)
    {
        Object aobj[] = (Object[])(Object[])message.obj;
        message = (Context)aobj[0];
        Intent intent = (Intent)aobj[1];
        if (!(message instanceof Activity))
        {
            intent.addFlags(0x10000000);
        }
        message.startActivity(intent);
        return false;
    }

    ()
    {
        this$0 = FakeActivity.this;
        super();
    }
}
