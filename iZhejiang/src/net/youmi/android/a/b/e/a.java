// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.e;

import android.util.Log;
import java.util.Locale;

public class a
{

    protected static boolean a = true;

    protected static transient void a(int i, String s, Throwable throwable, String s1, Object aobj[])
    {
        net/youmi/android/a/b/e/a;
        JVM INSTR monitorenter ;
        boolean flag = a;
        if (!flag) goto _L2; else goto _L1
_L1:
        if (s == null) goto _L4; else goto _L3
_L3:
        String s2 = s;
        if (!"".equals(s.trim())) goto _L5; else goto _L4
_L5:
        s = s1;
        if (aobj.length != 0)
        {
            s = String.format(Locale.getDefault(), s1, aobj);
        }
          goto _L6
_L7:
        Log.v(s2, s, throwable);
_L2:
        net/youmi/android/a/b/e/a;
        JVM INSTR monitorexit ;
        return;
_L8:
        Log.d(s2, s, throwable);
          goto _L2
        s;
        s.printStackTrace();
          goto _L2
        s;
        throw s;
_L11:
        Log.e(s2, s, throwable);
          goto _L2
_L9:
        Log.i(s2, s, throwable);
          goto _L2
_L10:
        Log.w(s2, s, throwable);
          goto _L2
_L4:
        s2 = "debug";
          goto _L5
_L6:
        i;
        JVM INSTR tableswitch 3 6: default 164
    //                   3 68
    //                   4 104
    //                   5 115
    //                   6 93;
           goto _L7 _L8 _L9 _L10 _L11
    }

}
