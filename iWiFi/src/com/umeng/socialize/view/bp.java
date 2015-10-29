// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;

// Referenced classes of package com.umeng.socialize.view:
//            ab, ShareActivity

class bp extends ab
{

    final ShareActivity c;

    bp(ShareActivity shareactivity, Context context)
    {
        c = shareactivity;
        super(context);
    }

    public void a()
    {
        super.a();
        ShareActivity.b(c).setVisibility(8);
    }
}
