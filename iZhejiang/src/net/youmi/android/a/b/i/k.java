// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class k
{

    public static boolean a(Context context)
    {
        if (!net.youmi.android.a.b.k.k.b(context))
        {
            return false;
        } else
        {
            return d(context);
        }
    }

    public static int b(Context context)
    {
        if (net.youmi.android.a.b.k.k.b(context));
        if (net.youmi.android.a.b.k.k.d(context));
        if (net.youmi.android.a.b.k.k.g(context));
        context = e(context);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        if (!context.isAvailable())
        {
            return -1;
        }
        int i = context.getType();
        i;
        JVM INSTR tableswitch 0 1: default 68
    //                   0 70
    //                   1 159;
           goto _L1 _L2 _L3
_L1:
        return -1;
_L2:
        i = context.getSubtype();
        switch (i)
        {
        default:
            return 102;

        case 1: // '\001'
        case 2: // '\002'
        case 4: // '\004'
        case 7: // '\007'
        case 11: // '\013'
            return 101;

        case 3: // '\003'
        case 5: // '\005'
        case 6: // '\006'
        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 12: // '\f'
        case 14: // '\016'
        case 15: // '\017'
            return 102;

        case 13: // '\r'
            return 103;

        case 0: // '\0'
            break;
        }
        break MISSING_BLOCK_LABEL_176;
_L3:
        return 100;
        context;
        return 102;
        context;
        return -1;
    }

    public static String c(Context context)
    {
        if (!net.youmi.android.a.b.k.k.d(context)) goto _L2; else goto _L1
_L1:
        context = e(context);
        if (context == null) goto _L2; else goto _L3
_L3:
        if (!context.isAvailable()) goto _L2; else goto _L4
_L4:
        int i = context.getType();
        i;
        JVM INSTR tableswitch 0 1: default 52
    //                   0 60
    //                   1 57;
           goto _L2 _L5 _L6
_L2:
        context = "";
_L10:
        return context;
_L6:
        return "wifi";
_L5:
        context = context.getExtraInfo();
        if (context == null) goto _L8; else goto _L7
_L7:
        String s = context.trim().toLowerCase();
        context = s;
        if (s.length() <= 25) goto _L10; else goto _L9
_L9:
        return s.substring(0, 25);
_L8:
        return "";
        context;
        if (true) goto _L2; else goto _L11
_L11:
    }

    private static boolean d(Context context)
    {
        if (net.youmi.android.a.b.k.k.d(context)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        context = e(context);
        if (context == null)
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag = context.isAvailable();
        if (flag) goto _L1; else goto _L3
_L3:
        return false;
        context;
        if (true) goto _L3; else goto _L4
_L4:
    }

    private static NetworkInfo e(Context context)
    {
        try
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return context;
    }
}
