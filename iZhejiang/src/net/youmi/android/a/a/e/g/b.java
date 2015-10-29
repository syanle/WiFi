// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.g;

import java.util.Locale;
import net.youmi.android.a.b.b.e;
import org.json.JSONObject;

public class b
{

    private String a;
    private String b;
    private String c;
    private String d;

    public b()
    {
    }

    public String a()
    {
        return a;
    }

    public void a(String s)
    {
        a = net.youmi.android.a.b.b.e.b(s);
    }

    public String b()
    {
        return c;
    }

    public void b(String s)
    {
        c = net.youmi.android.a.b.b.e.b(s);
    }

    public String c()
    {
        return b;
    }

    public void c(String s)
    {
        b = net.youmi.android.a.b.b.e.b(s);
    }

    public String d()
    {
        if (net.youmi.android.a.b.b.e.a(d))
        {
            return "";
        } else
        {
            return d;
        }
    }

    public void d(String s)
    {
        d = net.youmi.android.a.b.b.e.b(s);
    }

    public void e(String s)
    {
        try
        {
            s = new JSONObject(s);
            d = s.getString("a");
            b = s.getString("b");
            a = s.getString("c");
            c = s.getString("d");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    public boolean e()
    {
        return a != null && b != null && c != null;
    }

    public String f()
    {
        Object obj;
        try
        {
            obj = new JSONObject();
            ((JSONObject) (obj)).put("a", d);
            ((JSONObject) (obj)).put("b", b);
            ((JSONObject) (obj)).put("c", a);
            ((JSONObject) (obj)).put("d", c);
            obj = ((JSONObject) (obj)).toString();
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return ((String) (obj));
    }

    public String toString()
    {
        String s;
        try
        {
            s = String.format(Locale.getDefault(), "u:[%s]\nr:[%s]\ne:[%s]\nt:[%s]", new Object[] {
                a, c, b, d
            });
        }
        catch (Throwable throwable)
        {
            return super.toString();
        }
        return s;
    }
}
