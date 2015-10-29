// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.umeng.socialize.common.ResContainer;

// Referenced classes of package com.umeng.socialize.view:
//            cj

public class ci extends RelativeLayout
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        private static final a e[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/umeng/socialize/view/ci$a, s);
        }

        public static a[] values()
        {
            a aa[] = e;
            int i = aa.length;
            a aa1[] = new a[i];
            System.arraycopy(aa, 0, aa1, 0, i);
            return aa1;
        }

        static 
        {
            a = new a("UNSHOW", 0);
            b = new a("LOADING", 1);
            c = new a("CLICKTOLOAD", 2);
            d = new a("TOTOP", 3);
            e = (new a[] {
                a, b, c, d
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }


    private static int f[];
    private Context a;
    private a b;
    private View c;
    private View d;
    private TextView e;

    public ci(Context context)
    {
        super(context);
        a = context;
        d();
    }

    static a a(ci ci1)
    {
        return ci1.b;
    }

    static int[] c()
    {
        int ai[] = f;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[a.values().length];
        try
        {
            ai[a.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai[a.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[a.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[a.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        f = ai;
        return ai;
    }

    private void d()
    {
        c = inflate(a, ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_comment_more"), null);
        addView(c, -1, -1);
        e = (TextView)c.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_text"));
        d = c.findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_pb"));
        setOnClickListener(new cj(this));
    }

    public void a()
    {
    }

    public void a(a a1)
    {
        Log.d("com.umeng.socialize", (new StringBuilder("Footer change status ")).append(a1).toString());
        switch (c()[a1.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            c.setVisibility(4);
            setFocusable(false);
            setClickable(false);
            b = a.a;
            return;

        case 2: // '\002'
            e.setText("\u6B63\u5728\u52A0\u8F7D");
            c.setVisibility(0);
            d.setVisibility(0);
            setFocusable(false);
            setClickable(false);
            b = a.b;
            return;

        case 3: // '\003'
            e.setText("\u70B9\u51FB\u52A0\u8F7D\u66F4\u591A\u8BC4\u8BBA");
            c.setVisibility(0);
            setFocusable(true);
            setClickable(true);
            d.setVisibility(8);
            b = a.c;
            return;

        case 4: // '\004'
            e.setText("\u56DE\u5230\u9876\u90E8");
            break;
        }
        c.setVisibility(0);
        setClickable(true);
        setFocusable(true);
        d.setVisibility(8);
        b = a.d;
    }

    public void b()
    {
    }
}
