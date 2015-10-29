// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.e;

import android.content.Context;
import android.webkit.WebView;
import net.youmi.android.a.a.e.b.c;
import net.youmi.android.a.a.i.a.a;
import net.youmi.android.a.b.b.e;

final class d
    implements Runnable
{

    final Context a;
    final String b;
    final WebView c;

    d(Context context, String s, WebView webview)
    {
        a = context;
        b = s;
        c = webview;
        super();
    }

    public void run()
    {
        Object obj;
        String s;
        try
        {
            s = net.youmi.android.a.a.e.b.c.a(a, b, null);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
        obj = s;
        if (s != null) goto _L2; else goto _L1
_L1:
        s = net.youmi.android.a.c.d.c.a(a, b);
        obj = s;
        if (s == null) goto _L2; else goto _L3
_L3:
        net.youmi.android.a.a.e.b.c.a(a, b, s, 0x4d3f6400L);
        obj = s;
          goto _L2
_L5:
        obj = (new StringBuilder()).append(e.a()).append(((String) (obj))).toString();
        c.post(new a(c, ((String) (obj))));
        return;
_L2:
        if (obj == null)
        {
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }
}
