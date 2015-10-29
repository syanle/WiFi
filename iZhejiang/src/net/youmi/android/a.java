// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android;

import android.view.View;

// Referenced classes of package net.youmi.android:
//            AdBrowser

class a
    implements android.view.View.OnClickListener
{

    final AdBrowser a;

    a(AdBrowser adbrowser)
    {
        a = adbrowser;
        super();
    }

    public void onClick(View view)
    {
        a.finish();
    }
}
