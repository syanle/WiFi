// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.NinePatch;
import android.graphics.drawable.NinePatchDrawable;
import android.util.Base64;
import net.youmi.android.a.b.b.e;

public class b
{

    public static Bitmap a(String s)
    {
        Object obj = null;
        net/youmi/android/a/b/k/b;
        JVM INSTR monitorenter ;
        if (s != null) goto _L2; else goto _L1
_L1:
        s = obj;
_L4:
        net/youmi/android/a/b/k/b;
        JVM INSTR monitorexit ;
        return s;
_L2:
        byte abyte0[] = Base64.decode(s, 0);
        s = obj;
        if (abyte0 != null)
        {
            try
            {
                s = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s = obj;
            }
            finally
            {
                net/youmi/android/a/b/k/b;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        JVM INSTR monitorexit ;
        throw s;
    }

    public static NinePatchDrawable a(Context context, String s, String s1)
    {
        Object obj = null;
        net/youmi/android/a/b/k/b;
        JVM INSTR monitorenter ;
        NinePatchDrawable ninepatchdrawable = obj;
        if (context == null) goto _L2; else goto _L1
_L1:
        ninepatchdrawable = obj;
        if (e.a(s)) goto _L2; else goto _L3
_L3:
        boolean flag = e.a(s1);
        if (!flag) goto _L5; else goto _L4
_L4:
        ninepatchdrawable = obj;
_L2:
        net/youmi/android/a/b/k/b;
        JVM INSTR monitorexit ;
        return ninepatchdrawable;
_L5:
        s = a(s);
        ninepatchdrawable = obj;
        if (s == null) goto _L7; else goto _L6
_L6:
        s1 = Base64.decode(s1, 0);
        ninepatchdrawable = obj;
        if (s1 != null)
        {
            try
            {
                s = new NinePatch(s, s1, null);
                ninepatchdrawable = new NinePatchDrawable(context.getResources(), s);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                ninepatchdrawable = obj;
            }
            finally
            {
                net/youmi/android/a/b/k/b;
            }
        }
_L7:
        if (true) goto _L2; else goto _L8
_L8:
        JVM INSTR monitorexit ;
        throw context;
    }
}
