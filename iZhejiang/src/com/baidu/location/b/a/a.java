// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location.b.a;

import android.content.Context;
import android.text.TextUtils;

// Referenced classes of package com.baidu.location.b.a:
//            b

public class a
{

    private static final boolean a = false;
    private static final String _fldif = com/baidu/location/b/a/a.getSimpleName();

    public a()
    {
    }

    private static String a(Context context)
    {
        return b.a(context);
    }

    public static String _mthif(Context context)
    {
        String s1 = a(context);
        String s = b._mthdo(context);
        context = s;
        if (TextUtils.isEmpty(s))
        {
            context = "0";
        }
        context = (new StringBuffer(context)).reverse().toString();
        return (new StringBuilder()).append(s1).append("|").append(context).toString();
    }

}
