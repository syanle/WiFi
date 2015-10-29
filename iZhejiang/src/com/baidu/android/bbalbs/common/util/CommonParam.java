// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.android.bbalbs.common.util;

import android.content.Context;
import android.text.TextUtils;

// Referenced classes of package com.baidu.android.bbalbs.common.util:
//            a

public class CommonParam
{

    private static final String a = com/baidu/android/bbalbs/common/util/CommonParam.getSimpleName();

    public CommonParam()
    {
    }

    public static String a(Context context)
    {
        String s1 = b(context);
        String s = com.baidu.android.bbalbs.common.util.a.b(context);
        context = s;
        if (TextUtils.isEmpty(s))
        {
            context = "0";
        }
        context = (new StringBuffer(context)).reverse().toString();
        return (new StringBuilder(String.valueOf(s1))).append("|").append(context).toString();
    }

    private static String b(Context context)
    {
        return com.baidu.android.bbalbs.common.util.a.a(context);
    }

}
