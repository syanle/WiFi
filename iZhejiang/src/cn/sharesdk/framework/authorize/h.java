// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.view.View;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            i, g

class h
    implements android.view.View.OnClickListener
{

    final g a;

    h(g g)
    {
        a = g;
        super();
    }

    public void onClick(View view)
    {
        (new i(this)).start();
    }
}
