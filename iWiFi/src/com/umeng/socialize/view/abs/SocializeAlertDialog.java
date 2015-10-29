// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.umeng.socialize.common.ResContainer;

public class SocializeAlertDialog extends Dialog
{
    public static interface SwitchListener
    {

        public abstract void a();

        public abstract void b();
    }

    public static class a
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

        public a a(View view, android.view.ViewGroup.LayoutParams layoutparams)
        {
            if (layoutparams == null)
            {
                e.addView(view);
                return this;
            } else
            {
                e.addView(view, layoutparams);
                return this;
            }
        }

        public a a(String s)
        {
            c.setText(s);
            c.setVisibility(0);
            return this;
        }

        public a b(View view, android.view.ViewGroup.LayoutParams layoutparams)
        {
            if (layoutparams == null)
            {
                d.addView(view);
                return this;
            } else
            {
                d.addView(view, layoutparams);
                return this;
            }
        }

        public a(Context context)
        {
            a = context;
            b = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_base_alert_dialog"), null);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
            layoutparams.addRule(12);
            b.setLayoutParams(layoutparams);
            d = (ViewGroup)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_footer"));
            e = (ViewGroup)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_body"));
            c = (TextView)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_tipinfo"));
        }
    }


    private SwitchListener a;

    public SocializeAlertDialog(Context context, View view)
    {
        super(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_popup_dialog_anim"));
        context = new RelativeLayout(context);
        context.setBackgroundDrawable(null);
        context.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        layoutparams.addRule(12);
        view.setLayoutParams(layoutparams);
        context.addView(view);
        setContentView(context);
    }

    public SwitchListener a()
    {
        return a;
    }

    public void a(SwitchListener switchlistener)
    {
        a = switchlistener;
    }

    public void dismiss()
    {
        if (a != null)
        {
            a.b();
        }
        super.dismiss();
    }

    public void show()
    {
        if (a != null)
        {
            a.a();
        }
        super.show();
    }
}
