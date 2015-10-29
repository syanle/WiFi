// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import com.umeng.socialize.common.SocializeUtils;

// Referenced classes of package com.umeng.socialize.view:
//            q

class s
    implements android.view.View.OnClickListener
{

    final q a;

    s(q q)
    {
        a = q;
        super();
    }

    public void onClick(View view)
    {
        SocializeUtils.safeDismissDialog(a);
    }
}
