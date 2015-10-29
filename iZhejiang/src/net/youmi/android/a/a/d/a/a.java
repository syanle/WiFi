// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.d.a;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import net.youmi.android.a.b.k.n;

public final class a extends net.youmi.android.a.b.g.c.a
{

    protected a(File file, long l, long l1)
    {
        super(file, l, l1);
    }

    protected static File a(String s)
    {
        try
        {
            s = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/Android/data/").append(b()).append("/").append(s).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    protected static a a(Context context, a a1, a a2, int i, long l)
    {
        i;
        JVM INSTR tableswitch 0 1: default 24
    //                   0 26
    //                   1 34;
           goto _L1 _L2 _L3
_L1:
        return a1;
_L2:
        if (!n.a())
        {
            return a2;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        boolean flag;
        try
        {
            flag = n.a(context, l);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return a1;
        }
        if (!flag)
        {
            return a2;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private static String b()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("4d480b14580d560751585c", "I176py7D");
        }
        catch (Throwable throwable)
        {
            return ".cache";
        }
        return s;
    }
}
