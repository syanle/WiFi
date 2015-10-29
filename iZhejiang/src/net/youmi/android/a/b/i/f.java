// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import android.content.Context;
import net.youmi.android.a.b.b.d;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.b.i:
//            k, h, g

public class f
{

    public static String a = "";
    protected static int b = 0;
    protected static String c = "";
    protected static int d = 0;
    protected static String e = "";
    protected static int f = 0;
    protected static String g = "";
    protected static int h = 0;
    public static long i = 0L;

    private static void a()
    {
        a = "exrep.youmi.net";
        b = 5002;
        c = "tcp";
        d = 3;
        g = "tcp";
        h = 3;
        e = "tcp";
        f = 3;
    }

    public static void a(Context context, JSONObject jsonobject)
    {
        String s;
        String s1;
        try
        {
            a();
        }
        catch (Throwable throwable) { }
        if (a != null && !a.equals("")) goto _L2; else goto _L1
_L1:
        return;
_L2:
        s1 = "";
        s = "udp";
        k.b(context);
        JVM INSTR tableswitch 100 103: default 143
    //                   100 108
    //                   101 88
    //                   102 98
    //                   103 98;
           goto _L3 _L4 _L5 _L6 _L6
_L3:
        if (a(s1))
        {
            if (s.equals("udp"))
            {
                net.youmi.android.a.b.i.h.a(context, jsonobject, a, b);
                return;
            }
            continue; /* Loop/switch isn't completed */
        }
          goto _L1
_L5:
        s1 = "2g";
        try
        {
            s = g;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
          goto _L3
_L6:
        s1 = "3g";
        s = e;
          goto _L3
_L4:
        s1 = "wifi";
        s = c;
          goto _L3
        if (!s.equals("tcp")) goto _L1; else goto _L7
_L7:
        net.youmi.android.a.b.i.g.a(context, jsonobject, a, b);
        return;
    }

    protected static boolean a(String s)
    {
        int j = net.youmi.android.a.b.b.d.a(100);
        if (!s.equals("wifi")) goto _L2; else goto _L1
_L1:
        if (j >= d) goto _L4; else goto _L3
_L3:
        return true;
_L2:
        if (!s.equals("3g")) goto _L6; else goto _L5
_L5:
        if (j < f) goto _L3; else goto _L4
_L4:
        return false;
_L6:
        if (s.equals("2g") && j < h)
        {
            return true;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

}
