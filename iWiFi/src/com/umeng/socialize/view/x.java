// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.DialogInterface;

// Referenced classes of package com.umeng.socialize.view:
//            q

class x
    implements android.content.DialogInterface.OnClickListener
{

    final q a;

    x(q q)
    {
        a = q;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
    }
}
