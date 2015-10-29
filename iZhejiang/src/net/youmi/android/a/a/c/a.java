// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.c;

import android.app.Activity;
import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import net.youmi.android.a.a.i.a.a.c;
import net.youmi.android.a.a.i.a.b.f;
import net.youmi.android.a.b.h.e;

// Referenced classes of package net.youmi.android.a.a.c:
//            g, i, h, j

public class a
{

    public static int a()
    {
        int k;
        try
        {
            k = e.e();
        }
        catch (Throwable throwable)
        {
            return 1;
        }
        return k;
    }

    public static WebChromeClient a(Context context, c c)
    {
        try
        {
            context = g.a(c);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return context;
    }

    public static WebViewClient a(f f)
    {
        try
        {
            if (a() >= 8)
            {
                return i.a(f);
            }
            f = h.a(f);
        }
        // Misplaced declaration of an exception variable
        catch (f f)
        {
            return null;
        }
        return f;
    }

    public static void a(Context context)
    {
        try
        {
            ((Activity)context).overridePendingTransition(0x10a0000, 0x10a0001);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public static void a(Context context, WebSettings websettings)
    {
        try
        {
            j.a(context, websettings);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }
}
