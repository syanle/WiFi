// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.DialogInterface;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity

class bi
    implements android.content.DialogInterface.OnClickListener
{

    final ShareActivity a;

    bi(ShareActivity shareactivity)
    {
        a = shareactivity;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        ShareActivity.a(a, null);
        ShareActivity.b(a, false);
        dialoginterface.cancel();
    }
}
