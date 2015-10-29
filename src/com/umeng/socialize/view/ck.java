// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.Dialog;
import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.RelativeLayout;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.view.abs.aa;
import com.umeng.socialize.view.controller.UserCenterController;

// Referenced classes of package com.umeng.socialize.view:
//            cl

public class ck extends Dialog
{

    private Context a;
    private View b;
    private RelativeLayout c;
    private String d;
    private int e;
    private aa f;

    public ck(Context context, String s, int i)
    {
        super(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_popup_dialog"));
        a = context;
        d = s;
        e = i;
        c = new RelativeLayout(context);
        s = new android.view.ViewGroup.LayoutParams(-1, -1);
        c.setLayoutParams(s);
        setContentView(c);
        s = getWindow().getAttributes();
        if (SocializeUtils.isFloatWindowStyle(context))
        {
            context = SocializeUtils.getFloatWindowSize(context);
            s.width = context[0];
            s.height = context[1];
            i = ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_dialog_anim_fade");
        } else
        {
            s.height = -1;
            s.width = -1;
            i = ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_dialog_animations");
        }
        getWindow().getAttributes().windowAnimations = i;
        getWindow().setAttributes(s);
    }

    public void dismiss()
    {
        if (b.getVisibility() == 0)
        {
            return;
        } else
        {
            super.dismiss();
            return;
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 4 && b.getVisibility() == 0)
        {
            b.setVisibility(8);
            f.d();
            return true;
        } else
        {
            return super.dispatchKeyEvent(keyevent);
        }
    }

    public void show()
    {
        if (c.getChildCount() > 0)
        {
            c.removeAllViews();
        }
        UserCenterController usercentercontroller = new UserCenterController(a, d);
        f = new aa(a, usercentercontroller, e);
        b = f.a;
        c.addView(f, new android.view.ViewGroup.LayoutParams(-1, -1));
        f.a(new cl(this));
        f.a();
        super.show();
    }
}
