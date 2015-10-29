// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.c;

import android.content.Context;
import android.webkit.WebSettings;
import java.io.File;

class j
{

    static void a(Context context, WebSettings websettings)
    {
        try
        {
            websettings.setDomStorageEnabled(true);
            websettings.setAppCacheEnabled(true);
            websettings.setAppCacheMaxSize(0x7fffffffffffffffL);
            websettings.setAppCachePath(context.getCacheDir().getAbsolutePath());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }
}
