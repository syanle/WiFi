// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.DialogInterface;

// Referenced classes of package com.umeng.socialize.view.abs:
//            s

class v
    implements android.content.DialogInterface.OnClickListener
{

    final s a;

    v(s s)
    {
        a = s;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
    }
}
