// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.content.Intent;
import android.net.Uri;
import android.view.View;

// Referenced classes of package org.androidpn.client:
//            NotificationDetailsActivity

class val.uri
    implements android.view.ivity._cls1
{

    final NotificationDetailsActivity this$0;
    private final String val$uri;

    public void onClick(View view)
    {
        if (val$uri != null && val$uri.length() > 0 && (val$uri.startsWith("http:") || val$uri.startsWith("https:") || val$uri.startsWith("tel:") || val$uri.startsWith("geo:")))
        {
            view = new Intent("android.intent.action.VIEW", Uri.parse(val$uri));
        } else
        {
            view = (new Intent()).setClassName(NotificationDetailsActivity.access$0(NotificationDetailsActivity.this), NotificationDetailsActivity.access$1(NotificationDetailsActivity.this));
            view.setFlags(0x10000000);
            view.setFlags(0x20000000);
            view.setFlags(0x4000000);
        }
        startActivity(view);
        finish();
    }

    ()
    {
        this$0 = final_notificationdetailsactivity;
        val$uri = String.this;
        super();
    }
}
