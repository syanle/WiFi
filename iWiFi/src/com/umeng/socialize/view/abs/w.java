// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.umeng.socialize.view.abs:
//            s

class w
    implements android.content.DialogInterface.OnClickListener
{

    final s a;

    w(s s1)
    {
        a = s1;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            dialoginterface = new Intent("android.intent.action.GET_CONTENT");
            dialoginterface.setType("image/*");
            a.startActivityForResult(dialoginterface, 0xff00f01);
            return;

        case 1: // '\001'
            dialoginterface = new Intent("android.media.action.IMAGE_CAPTURE");
            break;
        }
        a.startActivityForResult(dialoginterface, 0xff00f02);
    }
}
