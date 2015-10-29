// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;

// Referenced classes of package com.umeng.analytics:
//            h

public class e
{

    private static String a[] = new String[2];

    public e()
    {
    }

    public static void a(Context context, String s, String s1)
    {
        a[0] = s;
        a[1] = s1;
        if (context != null)
        {
            h.a(context).a(s, s1);
        }
    }

    public static String[] a(Context context)
    {
        if (!TextUtils.isEmpty(a[0]) && !TextUtils.isEmpty(a[1]))
        {
            return a;
        }
        if (context != null)
        {
            context = h.a(context).a();
            if (context != null)
            {
                a[0] = context[0];
                a[1] = context[1];
                return a;
            }
        }
        return null;
    }

    public static void b(Context context)
    {
        a[0] = null;
        a[1] = null;
        if (context != null)
        {
            h.a(context).b();
        }
    }

}
