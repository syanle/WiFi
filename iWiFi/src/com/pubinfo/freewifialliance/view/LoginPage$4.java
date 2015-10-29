// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.DialogInterface;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            LoginPage

class val.isFinish
    implements android.content.ace.OnClickListener
{

    final LoginPage this$0;
    private final boolean val$isFinish;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
        if (val$isFinish)
        {
            dialoginterface.dismiss();
        }
    }

    r()
    {
        this$0 = final_loginpage;
        val$isFinish = Z.this;
        super();
    }
}
