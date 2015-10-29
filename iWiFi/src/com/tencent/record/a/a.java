// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.a;

import android.os.Environment;

// Referenced classes of package com.tencent.record.a:
//            e

public class a
{

    public a()
    {
    }

    public static boolean a()
    {
        String s = Environment.getExternalStorageState();
        return "mounted".equals(s) || "mounted_ro".equals(s);
    }

    public static e b()
    {
        if (!a())
        {
            return null;
        } else
        {
            return e.b(Environment.getExternalStorageDirectory());
        }
    }
}
