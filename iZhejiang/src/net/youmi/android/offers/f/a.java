// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.f;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.a.b;

public class a extends b
{

    public static boolean a = true;
    public static boolean b = false;
    private static String c;
    private static String d;
    private static String e;
    private static String f;

    public static final String b(Context context)
    {
        return a(context, c, "androido", "oav");
    }

    public static final String c(Context context)
    {
        return a(context, d, "androido", "oa5");
    }

    public static final String d(Context context)
    {
        return a(context, d, "androido", "oau");
    }

    public static final String e(Context context)
    {
        return (new StringBuilder()).append(context.getApplicationContext().getFilesDir().getPath()).append(File.separator).append(a(context, e, "androido", "oar")).toString();
    }

    public static final String f(Context context)
    {
        return (new StringBuilder()).append(context.getApplicationContext().getFilesDir().getPath()).append(File.separator).append(a(context, f, "androido", "oat")).toString();
    }

}
