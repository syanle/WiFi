// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.view.abs:
//            UserCenterItems, av, aw, au

public static abstract class b
{

    public Dialog a;
    private Context b;
    private List c;
    private Map d;
    private View e;

    private void b()
    {
        og.a a1 = new og.a(b);
        Object obj = c.iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                e = View.inflate(b, ResContainer.getResourceId(b, com.umeng.socialize.common.pe.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
                obj = (Button)e.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.pe.ID, "umeng_socialize_alert_button"));
                ((Button) (obj)).setText("\u4F7F\u7528\u533F\u540D\u8D26\u53F7");
                ((Button) (obj)).setBackgroundResource(ResContainer.getResourceId(b, com.umeng.socialize.common.pe.DRAWABLE, "umeng_socialize_button_white_blue"));
                ((Button) (obj)).setOnClickListener(new av(this));
                a1.a(e, null);
                obj = View.inflate(b, ResContainer.getResourceId(b, com.umeng.socialize.common.pe.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
                Button button = (Button)((View) (obj)).findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.pe.ID, "umeng_socialize_alert_button"));
                button.setText("\u53D6\u6D88");
                button.setBackgroundResource(ResContainer.getResourceId(b, com.umeng.socialize.common.pe.DRAWABLE, "umeng_socialize_button_grey_blue"));
                button.setOnClickListener(new aw(this));
                a1.b(((View) (obj)), null);
                a = a1.a();
                return;
            }
            SnsPlatform snsplatform = (SnsPlatform)((Iterator) (obj)).next();
            View view = View.inflate(b, ResContainer.getResourceId(b, com.umeng.socialize.common.pe.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
            Button button1 = (Button)view.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.pe.ID, "umeng_socialize_alert_button"));
            button1.setText((new StringBuilder("\u4F7F\u7528")).append(snsplatform.mShowWord).append("\u8D26\u53F7").toString());
            button1.setBackgroundResource(ResContainer.getResourceId(b, com.umeng.socialize.common.pe.DRAWABLE, "umeng_socialize_button_white_blue"));
            button1.setOnClickListener(new au(this, snsplatform));
            a1.a(view, null);
            d.put(snsplatform, view);
        } while (true);
    }

    public void a()
    {
        e.setVisibility(8);
        if (a.isShowing()) goto _L2; else goto _L1
_L1:
        Iterator iterator;
        boolean flag;
        iterator = d.keySet().iterator();
        flag = false;
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        SocializeUtils.safeShowDialog(a, false);
_L2:
        return;
_L4:
        SnsPlatform snsplatform = (SnsPlatform)iterator.next();
        if (!snsplatform.mBind && snsplatform.mOauth)
        {
            ((View)d.get(snsplatform)).setVisibility(0);
        } else
        {
            ((View)d.get(snsplatform)).setVisibility(8);
        }
        if (snsplatform.mBind)
        {
            e.setVisibility(0);
        }
        if (snsplatform.mOauth)
        {
            flag = true;
        }
        if (true) goto _L6; else goto _L5
_L5:
        Toast.makeText(b, "\u8BF7\u5148\u6388\u6743\u5206\u4EAB\u5E73\u53F0.", 1).show();
        return;
    }

    public abstract void a(SnsPlatform snsplatform);

    public (Context context, List list)
    {
        b = context;
        c = list;
        d = new HashMap();
        b();
    }
}
