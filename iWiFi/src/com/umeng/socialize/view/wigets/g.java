// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.view.View;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            SwitchImageView

class g
    implements android.view.View.OnClickListener
{

    final SwitchImageView a;

    g(SwitchImageView switchimageview)
    {
        a = switchimageview;
        super();
    }

    public void onClick(View view)
    {
        a.startAnimation(SwitchImageView.a(a));
    }
}