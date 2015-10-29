// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.umeng.socialize.common.ResContainer;

// Referenced classes of package com.umeng.socialize.view.abs:
//            x

public class SocialPopupDialog extends Dialog
{
    public static interface SwitchListener
    {

        public abstract void a();

        public abstract void b();
    }

    public static abstract class a
    {

        private Context a;
        private View b;
        private ViewGroup c;
        private ViewGroup d;
        private View e;
        private int f[];

        public a a(int i)
        {
            c.setVisibility(i);
            ((TextView)b.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_first_area_title"))).setVisibility(i);
            return this;
        }

        public a a(int i, int j)
        {
            f = (new int[] {
                i, j
            });
            return this;
        }

        public a a(View view, android.view.ViewGroup.LayoutParams layoutparams)
        {
            if (layoutparams == null)
            {
                c.addView(view);
                return this;
            } else
            {
                c.addView(view, layoutparams);
                return this;
            }
        }

        public a a(String s)
        {
            TextView textview = (TextView)b.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_first_area_title"));
            if (TextUtils.isEmpty(s))
            {
                textview.setVisibility(8);
                return this;
            } else
            {
                textview.setText(s);
                return this;
            }
        }

        public SocialPopupDialog a()
        {
            return new SocialPopupDialog(a, b, f);
        }

        public abstract void a(View view);

        public a b(int i)
        {
            d.setVisibility(i);
            ((TextView)b.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_second_area_title"))).setVisibility(i);
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

        public a b(String s)
        {
            TextView textview = (TextView)b.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_second_area_title"));
            if (TextUtils.isEmpty(s))
            {
                textview.setVisibility(8);
                return this;
            } else
            {
                textview.setText(s);
                return this;
            }
        }

        public a(Context context)
        {
            a = context;
            b = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_full_alert_dialog"), null);
            c = (ViewGroup)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_first_area"));
            d = (ViewGroup)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_second_area"));
            e = b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title"));
            a(e);
        }
    }

    public static class b
    {

        private View a;
        private ImageView b;
        private TextView c;

        public View a()
        {
            return a;
        }

        public b a(int i)
        {
            b.setImageResource(i);
            return this;
        }

        public b a(android.view.View.OnClickListener onclicklistener)
        {
            a.setOnClickListener(onclicklistener);
            return this;
        }

        public b a(String s)
        {
            c.setText(s);
            return this;
        }

        public b(Context context)
        {
            a = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_full_alert_dialog_item"), null);
            b = (ImageView)a.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_full_alert_dialog_item_icon"));
            c = (TextView)a.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_full_alert_dialog_item_text"));
        }
    }


    private RelativeLayout a;
    private View b;
    private SwitchListener c;

    public SocialPopupDialog(Context context, View view, int ai[])
    {
        super(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_popup_dialog"));
        a = new RelativeLayout(context);
        a.setBackgroundDrawable(null);
        android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-1, -1);
        a.setLayoutParams(layoutparams);
        view.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        a.addView(view);
        b = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_full_curtain"), null);
        context = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        a.addView(b, context);
        b.setClickable(false);
        b.setOnTouchListener(new x(this));
        setContentView(a);
        context = getWindow().getAttributes();
        int i;
        if (ai == null || ai.length < 2)
        {
            context.height = -1;
            context.width = -1;
            i = ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_dialog_animations");
        } else
        {
            context.width = ai[0];
            context.height = ai[1];
            i = ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_dialog_anim_fade");
        }
        getWindow().getAttributes().windowAnimations = i;
        getWindow().setAttributes(context);
        c();
    }

    public SwitchListener a()
    {
        return c;
    }

    public void a(SwitchListener switchlistener)
    {
        c = switchlistener;
    }

    public void b()
    {
        b.setVisibility(0);
    }

    public void c()
    {
        b.setVisibility(4);
    }

    public void dismiss()
    {
        if (c != null)
        {
            c.b();
        }
        super.dismiss();
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 4 && b.getVisibility() == 0)
        {
            b.setVisibility(8);
            return true;
        } else
        {
            return super.dispatchKeyEvent(keyevent);
        }
    }

    public void show()
    {
        if (c != null)
        {
            c.a();
        }
        super.show();
    }
}
