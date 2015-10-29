// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.umeng.socialize.common.ResContainer;

// Referenced classes of package com.umeng.socialize.view.abs:
//            SocialPopupDialog

public static class D
{

    private View a;
    private ImageView b;
    private TextView c;

    public View a()
    {
        return a;
    }

    public a a(int i)
    {
        b.setImageResource(i);
        return this;
    }

    public b a(android.view. )
    {
        a.setOnClickListener();
        return this;
    }

    public a a(String s)
    {
        c.setText(s);
        return this;
    }

    public (Context context)
    {
        a = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common..LAYOUT, "umeng_socialize_full_alert_dialog_item"), null);
        b = (ImageView)a.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common..ID, "umeng_socialize_full_alert_dialog_item_icon"));
        c = (TextView)a.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common..ID, "umeng_socialize_full_alert_dialog_item_text"));
    }
}
