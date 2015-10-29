// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.e;

import android.content.Context;
import android.webkit.WebView;
import java.util.Hashtable;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.d.g;

// Referenced classes of package net.youmi.android.a.a.e.e:
//            c

public class b
{

    private static b a;
    private Hashtable b;

    public b()
    {
        b = new Hashtable();
    }

    public static b a()
    {
        if (a == null)
        {
            a = new b();
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
            s = e.b(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (s == null) goto _L1; else goto _L3
_L3:
        if (b == null)
        {
            b = new Hashtable();
        }
        s = (String)b.get(a(s));
        if (s == null) goto _L1; else goto _L4
_L4:
        c.a(context.getApplicationContext(), webview, s);
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
            break MISSING_BLOCK_LABEL_50;
        }
        s1 = e.b(s1);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        if (b == null)
        {
            b = new Hashtable();
        }
        b.put(a(s), s1);
    }
}
