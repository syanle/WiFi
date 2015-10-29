// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import android.widget.Button;
import com.umeng.socialize.common.SocializeUtils;

// Referenced classes of package com.umeng.socialize.view:
//            bw

class ca
    implements android.view.View.OnClickListener
{

    final bw a;

    ca(bw bw1)
    {
        a = bw1;
        super();
    }

    public void onClick(View view)
    {
        bw.h(a).setClickable(false);
        SocializeUtils.safeDismissDialog(a);
    }
}
