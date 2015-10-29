// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;

// Referenced classes of package com.umeng.socialize.view:
//            ck

class cl
    implements android.view.View.OnClickListener
{

    final ck a;

    cl(ck ck1)
    {
        a = ck1;
        super();
    }

    public void onClick(View view)
    {
        a.dismiss();
    }
}
