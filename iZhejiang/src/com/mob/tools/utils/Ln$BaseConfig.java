// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.content.Context;
import android.text.TextUtils;

// Referenced classes of package com.mob.tools.utils:
//            Ln

private static class scope
{

    public int minimumLogLevel;
    public String packageName;
    public String scope;

    public void setContext(Context context)
    {
        if (context == null)
        {
            return;
        }
        packageName = context.getPackageName();
        if (TextUtils.isEmpty(packageName))
        {
            packageName = "";
            return;
        } else
        {
            scope = packageName.toUpperCase();
            return;
        }
    }

    public ()
    {
        minimumLogLevel = 2;
        packageName = "";
        scope = "";
    }
}
