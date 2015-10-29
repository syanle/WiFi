// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.e;

import android.content.Context;
import android.webkit.WebView;
import java.util.Hashtable;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.d.g;

public class a
{

    private static a a;
    private Hashtable b;

    public a()
    {
        b = new Hashtable();
    }

    public static a a()
    {
        if (a == null)
        {
            a = new a();
        }
        return a;
    }

    public String a(String s)
    {
        return g.a(s);
    }

    public void a(Context context, WebView webview, String s)
    {
        if (context != null && webview != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        try
        {
            context = e.b(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (context == null) goto _L1; else goto _L3
_L3:
        if (b == null)
        {
            b = new Hashtable();
            return;
        }
        context = a(((String) (context)));
        context = (String)b.get(context);
        if (context == null) goto _L1; else goto _L4
_L4:
        webview.loadUrl((new StringBuilder()).append(e.a()).append(context).toString());
        return;
    }

    public void a(String s, String s1)
    {
        try
        {
            s = e.b(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        s = a(s);
        s1 = e.b(s1);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        if (b == null)
        {
            b = new Hashtable();
        }
        b.put(s, s1);
    }
}
