// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools;

import android.os.Message;

// Referenced classes of package com.mob.tools:
//            FakeActivity

class val.r
    implements android.os.k
{

    final FakeActivity this$0;
    final Runnable val$r;

    public boolean handleMessage(Message message)
    {
        val$r.run();
        return false;
    }

    ()
    {
        this$0 = final_fakeactivity;
        val$r = Runnable.this;
        super();
    }
}
