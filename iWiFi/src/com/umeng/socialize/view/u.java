// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.db.c;
import com.umeng.socom.DeviceConfig;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            q, CommentActivity, v

class u
    implements android.view.View.OnClickListener
{

    final q a;

    u(q q1)
    {
        a = q1;
        super();
    }

    static q a(u u1)
    {
        return u1.a;
    }

    public void onClick(View view)
    {
        boolean flag = true;
        if (DeviceConfig.checkPermission(q.g(a), "android.permission.ACCESS_NETWORK_STATE") && !DeviceConfig.isOnline(q.g(a)))
        {
            Toast.makeText(q.g(a), q.g(a).getResources().getString(ResContainer.getResourceId(q.g(a), com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_network_break_alert")), 1).show();
            return;
        }
        if (TextUtils.isEmpty(q.i(a).getText().toString().trim()))
        {
            Toast.makeText(q.g(a), "\u8F93\u5165\u5185\u5BB9\u4E3A\u7A7A...", 0).show();
            return;
        }
        boolean flag1 = c.f(q.g(a));
        if (q.d(a) == null || q.f(a).getConfig().getPlatforms().size() == 0)
        {
            flag = false;
        }
        if (q.b() && !flag1 && flag && flag)
        {
            q.f(a).showLoginDialog(q.g(a), new v(this));
            return;
        } else
        {
            q.j(a);
            return;
        }
    }
}
