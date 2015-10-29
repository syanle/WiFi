// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.umeng.socialize.common.ResContainer;

// Referenced classes of package com.umeng.socialize.view.abs:
//            SocialPopupDialog

public static abstract class e
{

    private Context a;
    private View b;
    private ViewGroup c;
    private ViewGroup d;
    private View e;
    private int f[];

    public e a(int i)
    {
        c.setVisibility(i);
        ((TextView)b.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common..ID, "umeng_socialize_first_area_title"))).setVisibility(i);
        return this;
    }

    public D a(int i, int j)
    {
        f = (new int[] {
            i, j
        });
        return this;
    }

    public f a(View view, android.view.ms ms)
    {
        if (ms == null)
        {
            c.addView(view);
            return this;
        } else
        {
            c.addView(view, ms);
            return this;
        }
    }

    public c a(String s)
    {
        TextView textview = (TextView)b.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common..ID, "umeng_socialize_first_area_title"));
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

    public f b(int i)
    {
        d.setVisibility(i);
        ((TextView)b.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common..ID, "umeng_socialize_second_area_title"))).setVisibility(i);
        return this;
    }

    public D b(View view, android.view.ms ms)
    {
        if (ms == null)
        {
            d.addView(view);
            return this;
        } else
        {
            d.addView(view, ms);
            return this;
        }
    }

    public d b(String s)
    {
        TextView textview = (TextView)b.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common..ID, "umeng_socialize_second_area_title"));
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

    public (Context context)
    {
        a = context;
        b = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common..LAYOUT, "umeng_socialize_full_alert_dialog"), null);
        c = (ViewGroup)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common..ID, "umeng_socialize_first_area"));
        d = (ViewGroup)b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common..ID, "umeng_socialize_second_area"));
        e = b.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common..ID, "umeng_socialize_title"));
        a(e);
    }
}
