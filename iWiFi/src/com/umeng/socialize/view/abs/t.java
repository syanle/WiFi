// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;

// Referenced classes of package com.umeng.socialize.view.abs:
//            s

class t
    implements android.view.View.OnClickListener
{

    final s a;

    t(s s1)
    {
        a = s1;
        super();
    }

    public void onClick(View view)
    {
        if (a.getImageBytes() != null && a.getImageBytes().length > 0)
        {
            s.a(a);
            return;
        } else
        {
            s.b(a);
            return;
        }
    }
}
