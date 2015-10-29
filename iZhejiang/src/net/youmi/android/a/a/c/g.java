// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.c;

import android.graphics.Bitmap;
import android.view.View;
import net.youmi.android.a.a.i.a.a.c;

// Referenced classes of package net.youmi.android.a.a.c:
//            c

class g extends net.youmi.android.a.a.c.c
{

    g(c c1)
    {
        super(c1);
    }

    static g a(c c1)
    {
        try
        {
            c1 = new g(c1);
        }
        // Misplaced declaration of an exception variable
        catch (c c1)
        {
            return null;
        }
        return c1;
    }

    public Bitmap getDefaultVideoPoster()
    {
        return super.getDefaultVideoPoster();
    }

    public View getVideoLoadingProgressView()
    {
        return super.getVideoLoadingProgressView();
    }

    public void onHideCustomView()
    {
        super.onHideCustomView();
    }

    public void onReachedMaxAppCacheSize(long l, long l1, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        try
        {
            quotaupdater.updateQuota(2L * l);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (android.webkit.WebStorage.QuotaUpdater quotaupdater)
        {
            return;
        }
    }

    public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        super.onShowCustomView(view, customviewcallback);
    }
}
