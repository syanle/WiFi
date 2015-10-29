// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.e;

import android.content.Context;
import android.webkit.WebView;
import net.youmi.android.a.c.a;

// Referenced classes of package net.youmi.android.a.a.e.e:
//            d

public class c
{

    public static void a(Context context, WebView webview, String s)
    {
        if (context == null || webview == null || s == null)
        {
            return;
        }
        try
        {
            net.youmi.android.a.c.a.a(new d(context, s, webview));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }
}
