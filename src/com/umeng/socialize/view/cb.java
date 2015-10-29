// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import com.umeng.socialize.view.controller.ShareAtController;

// Referenced classes of package com.umeng.socialize.view:
//            bw

class cb
    implements android.view.View.OnClickListener
{

    final bw a;

    cb(bw bw1)
    {
        a = bw1;
        super();
    }

    public void onClick(View view)
    {
        if (bw.a(a) != null)
        {
            bw.i(a).b();
        }
    }
}
