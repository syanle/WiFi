// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.c.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import net.youmi.android.a.b.h.h;

public class a
{

    private static String a;
    private static String b;
    private static String c;
    private static int d = -1;
    private static int e = -1;
    private static int f = -1;
    private static String g;
    private static boolean h = false;

    public static String a()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("3c7661747e6c7b2d762c7d7c7c", "yKl76nGU1e7a");
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return s;
    }

    public static String a(Context context)
    {
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorenter ;
        if (a != null) goto _L2; else goto _L1
_L1:
        a = net.youmi.android.a.b.h.h.b(context, "CE94557724F842149D690D0E8CBB1CBD", "F1B19978F3D74302BA126760F96262CD", "CBD2998A3D5A4744BF128B91E1410DEA", null);
_L4:
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
_L5:
        return a;
_L2:
        if (a.length() > 0) goto _L4; else goto _L3
_L3:
        a = net.youmi.android.a.b.h.h.b(context, "CE94557724F842149D690D0E8CBB1CBD", "F1B19978F3D74302BA126760F96262CD", "CBD2998A3D5A4744BF128B91E1410DEA", null);
          goto _L4
        context;
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        try
        {
            throw context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
        }
          goto _L5
    }

    public static void a(Context context, int i)
    {
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorenter ;
        if (i >= 0)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        net.youmi.android.a.c.b.a.b("channel Id error: can't less than 0");
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        return;
        if (i <= 65535)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        net.youmi.android.a.c.b.a.b("channel Id error: can't more than 65535");
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        return;
        context;
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        try
        {
            throw context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
        }
        return;
        e = i;
        net.youmi.android.a.b.h.h.a(context, "CE94557724F842149D690D0E8CBB1CBD", "CM2DD1ADT311BYGN21033C8D98050252", (new StringBuilder()).append(e).append("").toString(), "NDF74E2SDF5ASF21E4F5A6E3H584I324");
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
    }

    public static void a(Context context, String s)
    {
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorenter ;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        s = s.trim();
        if (s.length() > 0)
        {
            a = s;
            net.youmi.android.a.b.h.h.a(context, "CE94557724F842149D690D0E8CBB1CBD", "F1B19978F3D74302BA126760F96262CD", s, "CBD2998A3D5A4744BF128B91E1410DEA");
        }
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        return;
        context;
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        try
        {
            throw context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
        }
        return;
    }

    public static void a(boolean flag)
    {
        h = flag;
    }

    public static String b(Context context)
    {
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorenter ;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        context = b;
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        return context;
        b = net.youmi.android.a.b.h.h.b(context, "CE94557724F842149D690D0E8CBB1CBD", "A33E523A1CEF496dB37ABD886CBCB005", "C97CE45F9A5A447c98BBB83D88790503", null);
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
_L2:
        return b;
        context;
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        try
        {
            throw context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void b(Context context, String s)
    {
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorenter ;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        s = s.trim();
        if (s.length() > 0)
        {
            b = s;
            net.youmi.android.a.b.h.h.a(context, "CE94557724F842149D690D0E8CBB1CBD", "A33E523A1CEF496dB37ABD886CBCB005", s, "C97CE45F9A5A447c98BBB83D88790503");
        }
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        return;
        context;
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        try
        {
            throw context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
        }
        return;
    }

    public static boolean b()
    {
        return h;
    }

    public static String c(Context context)
    {
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorenter ;
        if (g != null) goto _L2; else goto _L1
_L1:
        g = net.youmi.android.a.b.h.h.b(context, "CE94557724F842149D690D0E8CBB1CBD", "DD2E1AD5215B757A908C48D980702694", "B77BA25E94FF190AFD2ABAFACE2F7904", null);
_L4:
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
_L5:
        return g;
_L2:
        if (g.length() > 0) goto _L4; else goto _L3
_L3:
        g = net.youmi.android.a.b.h.h.b(context, "CE94557724F842149D690D0E8CBB1CBD", "DD2E1AD5215B757A908C48D980702694", "B77BA25E94FF190AFD2ABAFACE2F7904", null);
          goto _L4
        context;
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        try
        {
            throw context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
        }
          goto _L5
    }

    public static void c(Context context, String s)
    {
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorenter ;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        s = s.trim();
        if (s.length() > 0)
        {
            g = s;
            net.youmi.android.a.b.h.h.a(context, "CE94557724F842149D690D0E8CBB1CBD", "DD2E1AD5215B757A908C48D980702694", s, "B77BA25E94FF190AFD2ABAFACE2F7904");
        }
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        return;
        context;
        "CE94557724F842149D690D0E8CBB1CBD";
        JVM INSTR monitorexit ;
        try
        {
            throw context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
        }
        return;
    }

    public static boolean d(Context context)
    {
        boolean flag1 = false;
        String s;
        int i;
        boolean flag;
        try
        {
            s = a(context);
            context = b(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
            return false;
        }
        flag = flag1;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        flag = flag1;
        if (s.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        flag = flag1;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        i = context.length();
        flag = flag1;
        if (i > 0)
        {
            flag = true;
        }
        return flag;
    }

    public static String e(Context context)
    {
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        return c;
        c = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
_L2:
        return c;
        context;
        net.youmi.android.a.c.b.a.a(context);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static int f(Context context)
    {
        if (d >= 0)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        return d;
        d = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
_L2:
        return d;
        context;
        net.youmi.android.a.c.b.a.a(context);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static int g(Context context)
    {
        if (e < 0)
        {
            try
            {
                e = Integer.parseInt(net.youmi.android.a.b.h.h.b(context, "CE94557724F842149D690D0E8CBB1CBD", "CM2DD1ADT311BYGN21033C8D98050252", "NDF74E2SDF5ASF21E4F5A6E3H584I324", "0"));
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                net.youmi.android.a.c.b.a.a(context);
            }
        }
        return e;
    }

    public static int h(Context context)
    {
        if (f < 0)
        {
            try
            {
                f = Integer.parseInt(net.youmi.android.a.b.h.h.b(context, "CE94557724F842149D690D0E8CBB1CBD", "XSDWC1ADT311BYGN21033C8D98050252", "NDF74E2SDF5ASF21E4F5A6E3H584I324", "0"));
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                net.youmi.android.a.c.b.a.a(context);
            }
        }
        return f;
    }

}
