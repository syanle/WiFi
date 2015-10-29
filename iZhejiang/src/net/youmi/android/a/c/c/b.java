// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.c.c;

import android.content.Context;
import android.os.Build;
import java.util.Properties;
import net.youmi.android.a.b.b.c;
import net.youmi.android.a.b.b.d;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.h.e;
import net.youmi.android.a.c.a.a;

public class b
{

    private static String f = f();
    private String a;
    private String b;
    private String c;
    private String d;
    private boolean e;

    public b(Context context)
    {
        boolean flag2 = false;
        super();
        a = "";
        b = "";
        c = "";
        e = false;
        a = net.youmi.android.a.b.h.e.b(context);
        b = net.youmi.android.a.b.h.e.d(context);
        boolean flag;
        boolean flag1;
        if (a == null)
        {
            a = "";
            flag = true;
        } else
        if (a.length() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (b == null)
        {
            b = "";
            flag1 = true;
        } else
        if (b.length() == 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag || !flag1) goto _L2; else goto _L1
_L1:
        c = net.youmi.android.a.b.h.e.a(context);
        if (c == null || c.length() != 0) goto _L2; else goto _L3
_L3:
        flag = true;
_L5:
        flag1 = flag2;
        if (flag)
        {
            c = net.youmi.android.a.b.h.e.f(context);
            flag1 = flag2;
            if (c != null)
            {
                flag1 = flag2;
                if (c.length() == 0)
                {
                    flag1 = true;
                }
            }
        }
        if (flag1)
        {
            d = a(net.youmi.android.a.b.d.b.a(a(context).substring(7, 25)));
        } else
        {
            d = a(net.youmi.android.a.b.d.b.a(net.youmi.android.a.b.d.g.a((new StringBuilder()).append(a).append(b).append(c).append(f).toString()).substring(7, 25)));
        }
        e = g();
        return;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static String a(String s)
    {
        int i;
        int j;
        i = 0;
        j = 0;
_L2:
        char c1;
        if (j >= s.length())
        {
            break MISSING_BLOCK_LABEL_70;
        }
        c1 = s.charAt(j);
        if (j % 2 == 0)
        {
            String s1;
            int k;
            try
            {
                k = net.youmi.android.a.b.d.b.a(c1) * 2;
            }
            catch (Throwable throwable)
            {
                return s;
            }
            i = i + (k & 0x3f) + (k >> 6);
            break MISSING_BLOCK_LABEL_132;
        }
        k = net.youmi.android.a.b.d.b.a(c1);
        i += k * k;
        break MISSING_BLOCK_LABEL_132;
        i &= 0x3f;
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        return (new StringBuilder()).append(s).append("0").toString();
        s1 = (new StringBuilder()).append(s).append(Character.toString(net.youmi.android.a.b.d.b.b(64 - i))).toString();
        return s1;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static String f()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("4040724c5d4f565a6a42005a622f5d7f", "android");
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return s;
    }

    private boolean g()
    {
        if ("unknown".equals(Build.BOARD) && "generic".equals(Build.DEVICE) && "generic".equals(Build.BRAND))
        {
            return true;
        }
        String s = Build.MODEL;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        boolean flag;
        s = s.trim().toLowerCase();
        if (s.equals("sdk"))
        {
            break MISSING_BLOCK_LABEL_74;
        }
        flag = s.equals("google_sdk");
        if (flag)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        return false;
        Throwable throwable;
        throwable;
        return true;
    }

    public String a()
    {
        return d;
    }

    String a(Context context)
    {
        String s;
        String s1;
        s1 = null;
        Properties properties;
        try
        {
            properties = net.youmi.android.a.b.b.c.a(context, "DD5E8CD46CF94B22BAAD68AB06710752");
            if (properties.containsKey("46C02DF8DF4C4C18A578C63449C7F64D"))
            {
                s1 = (String)properties.get("46C02DF8DF4C4C18A578C63449C7F64D");
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return "";
        }
        s = s1;
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        s1 = net.youmi.android.a.b.d.g.a((new StringBuilder()).append(net.youmi.android.a.b.h.e.b()).append(net.youmi.android.a.b.h.e.d()).append(net.youmi.android.a.b.b.d.a(0x7fffffff)).append(System.currentTimeMillis()).append(net.youmi.android.a.b.h.e.c()).append(f).toString());
        s = s1;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        properties.put("46C02DF8DF4C4C18A578C63449C7F64D", s1);
        net.youmi.android.a.b.b.c.a(context, properties, "DD5E8CD46CF94B22BAAD68AB06710752");
        s = s1;
_L2:
        context = s;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        context = net.youmi.android.a.b.d.g.a(Build.MODEL);
        return context;
        context;
        s = s1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String b()
    {
        return c;
    }

    public String c()
    {
        return b;
    }

    public String d()
    {
        return a;
    }

    public boolean e()
    {
        return e;
    }

}
