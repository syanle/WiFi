// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import android.widget.ImageView;

// Referenced classes of package com.umeng.socialize.view:
//            q

class aa
    implements android.view.View.OnClickListener
{

    final q.a a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener b;

    aa(q.a a1, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        a = a1;
        b = umauthlistener;
        super();
    }

    public void onClick(View view)
    {
        if (!a.d)
        {
            q.a(q.a.a(a), a.a, b);
            return;
        }
        if (a.c.getVisibility() == 0)
        {
            a.c.setVisibility(4);
            return;
        } else
        {
            a.c.setVisibility(0);
            return;
        }
    }
}
