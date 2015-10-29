// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.graphics.drawable.AnimationDrawable;
import android.widget.ImageView;
import android.widget.TextView;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

class val.content
    implements Runnable
{

    final ConnectActivity this$0;
    private final String val$content;

    public void run()
    {
        iv_tag.setVisibility(8);
        tv_msg.setText(val$content);
        if (ConnectActivity.access$13(ConnectActivity.this).isRunning())
        {
            ConnectActivity.access$13(ConnectActivity.this).stop();
            ConnectActivity.access$13(ConnectActivity.this).start();
            return;
        } else
        {
            ConnectActivity.access$13(ConnectActivity.this).start();
            return;
        }
    }

    le()
    {
        this$0 = final_connectactivity;
        val$content = String.this;
        super();
    }
}
