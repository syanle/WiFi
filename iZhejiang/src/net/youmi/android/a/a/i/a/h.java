// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import net.youmi.android.a.a.c.a;

// Referenced classes of package net.youmi.android.a.a.i.a:
//            g

class h
    implements DownloadListener
{

    final g a;

    h(g g1)
    {
        a = g1;
        super();
    }

    public void onDownloadStart(String s, String s1, String s2, String s3, long l)
    {
        try
        {
            s = new Intent("android.intent.action.VIEW", Uri.parse(s));
            s.addFlags(0x10000000);
            a.getContext().startActivity(s);
            net.youmi.android.a.a.c.a.a(net.youmi.android.a.a.i.a.g.a(a));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }
}
