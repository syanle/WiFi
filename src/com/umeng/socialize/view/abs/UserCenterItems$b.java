// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;

// Referenced classes of package com.umeng.socialize.view.abs:
//            UserCenterItems, ao, ap, aq, 
//            ar, as, SocializeAlertDialog, at

public static abstract class e
{

    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    private Dialog a;
    private Context e;
    private SnsPlatform f;
    private int g;
    private View h;
    private boolean i;
    private boolean j;
    private android.app.r k;

    static int a(e e1)
    {
        return e1.g;
    }

    private Dialog a(Context context)
    {
        k = (new android.app.r(context)).setCancelable(false).setPositiveButton("\u662F", new ao(this)).setNegativeButton("\u5426", new ap(this)).setOnCancelListener(new aq(this));
        return k.create();
    }

    static void a(k k1, boolean flag)
    {
        k1.i = flag;
    }

    private Dialog b(Context context)
    {
        h = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.pe.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
        Button button = (Button)h.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.pe.ID, "umeng_socialize_alert_button"));
        View view = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.pe.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
        Button button1 = (Button)view.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.pe.ID, "umeng_socialize_alert_button"));
        button1.setText("\u53D6\u6D88");
        button1.setBackgroundResource(ResContainer.getResourceId(context, com.umeng.socialize.common.pe.DRAWABLE, "umeng_socialize_button_grey_blue"));
        button1.setOnClickListener(new ar(this));
        button.setOnClickListener(new as(this));
        context = new og.a(context);
        context.b(h, null);
        context.b(view, null);
        context = (SocializeAlertDialog)context.a();
        context.a(new at(this));
        return context;
    }

    static SnsPlatform b(og.SwitchListener switchlistener)
    {
        return switchlistener.f;
    }

    static boolean c(f f1)
    {
        return f1.i;
    }

    static Dialog d(i l)
    {
        return l.a;
    }

    public abstract void a(SnsPlatform snsplatform);

    public void a(SnsPlatform snsplatform, int l)
    {
        f = snsplatform;
        if (g == l) goto _L2; else goto _L1
_L1:
        g = l;
        l;
        JVM INSTR tableswitch 1 3: default 44
    //                   1 53
    //                   2 149
    //                   3 245;
           goto _L2 _L3 _L4 _L5
_L2:
        SocializeUtils.safeShowDialog(a, false);
        return;
_L3:
        if (j)
        {
            a = k.setMessage((new StringBuilder("\u4F60\u786E\u5B9A\u7ED1\u5B9A")).append(snsplatform.mShowWord).append("?").toString()).create();
        } else
        {
            snsplatform = (Button)h.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.pe.ID, "umeng_socialize_alert_button"));
            snsplatform.setText("\u7ED1\u5B9A");
            snsplatform.setBackgroundResource(ResContainer.getResourceId(e, com.umeng.socialize.common.pe.DRAWABLE, "umeng_socialize_button_white_blue"));
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (j)
        {
            a = k.setMessage((new StringBuilder("\u4F60\u786E\u5B9A\u89E3\u9664")).append(snsplatform.mShowWord).append("\u7ED1\u5B9A?").toString()).create();
        } else
        {
            snsplatform = (Button)h.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.pe.ID, "umeng_socialize_alert_button"));
            snsplatform.setText("\u89E3\u9664\u7ED1\u5B9A");
            snsplatform.setBackgroundResource(ResContainer.getResourceId(e, com.umeng.socialize.common.pe.DRAWABLE, "umeng_socialize_button_red_blue"));
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (j)
        {
            a = k.setMessage((new StringBuilder("\u4F60\u786E\u5B9A\u89E3\u9664")).append(snsplatform.mShowWord).append("\u6388\u6743?").toString()).create();
        } else
        {
            snsplatform = (Button)h.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.pe.ID, "umeng_socialize_alert_button"));
            snsplatform.setText("\u89E3\u9664\u6388\u6743");
            snsplatform.setBackgroundResource(ResContainer.getResourceId(e, com.umeng.socialize.common.pe.DRAWABLE, "umeng_socialize_button_red_blue"));
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    protected void a(SnsPlatform snsplatform, boolean flag)
    {
    }

    public abstract void b(SnsPlatform snsplatform);

    public abstract void c(SnsPlatform snsplatform);

    protected void d(SnsPlatform snsplatform)
    {
        i = false;
    }

    public og(Context context)
    {
        f = null;
        i = false;
        j = false;
        e = context;
        j = SocializeUtils.isFloatWindowStyle(context);
        if (!j)
        {
            a = b(e);
            return;
        } else
        {
            a = a(e);
            return;
        }
    }
}
