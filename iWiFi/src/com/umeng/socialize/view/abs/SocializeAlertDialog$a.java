// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.umeng.socialize.common.ResContainer;

// Referenced classes of package com.umeng.socialize.view.abs:
//            SocializeAlertDialog

public static class d
{

    private Context a;
    private View b;
    private TextView c;
    private ViewGroup d;
    private ViewGroup e;

    public Dialog a()
    {
        return new SocializeAlertDialog(a, b);
    }

    public b a(View view, android.view.zeAlertDialog.a a1)
    {
        if (a1 == null)
        {
            e.addView(view);
            return this;
        } else
        {
            e.addView(view, a1);
            return this;
        }
    }

    public e a(String s)
    {
        c.setText(s);
        c.setVisibility(0);
        return this;
    }

    public c b(View view, android.view.zeAlertDialog.a a1)
    {
        if (a1 == null)
        {
            d.addView(view);
            return this;
        } else
        {
            d.addView(view, a1);
            return this;
        }
    }

    public _cls9(Context context)
    {
        a = context;
        b = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.YOUT, "umeng_socialize_base_alert_dialog"), null);
        android.widget.rams rams = new android.widget.rams(-1, -2);
        rams.addRule(12);
        b.setLayoutParams(rams);
        d = (ViewGroup)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common., "umeng_socialize_alert_footer"));
        e = (ViewGroup)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common., "umeng_socialize_alert_body"));
        c = (TextView)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common., "umeng_socialize_tipinfo"));
    }
}
