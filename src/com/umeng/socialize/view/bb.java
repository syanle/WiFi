// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.os.Handler;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

// Referenced classes of package com.umeng.socialize.view:
//            av

class bb extends WebChromeClient
{

    final av a;

    bb(av av1)
    {
        a = av1;
        super();
    }

    public void onProgressChanged(WebView webview, int i)
    {
        super.onProgressChanged(webview, i);
        if (i < 90)
        {
            av.a(a).setVisibility(0);
            return;
        } else
        {
            av.e(a).sendEmptyMessage(1);
            return;
        }
    }
}
