// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import com.umeng.socialize.common.SocializeUtils;

// Referenced classes of package com.umeng.socialize.view:
//            am, ak

class an
    implements android.view.View.OnClickListener
{

    final am a;

    an(am am1)
    {
        a = am1;
        super();
    }

    public void onClick(View view)
    {
        SocializeUtils.safeDismissDialog(ak.a(am.a(a)));
    }
}
