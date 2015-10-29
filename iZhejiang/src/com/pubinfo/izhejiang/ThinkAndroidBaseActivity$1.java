// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.DialogInterface;

// Referenced classes of package com.pubinfo.izhejiang:
//            ThinkAndroidBaseActivity

class val.isFinish
    implements android.content.ener
{

    final ThinkAndroidBaseActivity this$0;
    private final boolean val$isFinish;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
        if (val$isFinish)
        {
            dialoginterface.dismiss();
        }
    }

    ()
    {
        this$0 = final_thinkandroidbaseactivity;
        val$isFinish = Z.this;
        super();
    }
}
