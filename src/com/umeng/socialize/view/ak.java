// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.common.c;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.view.abs.SocialPopupDialog;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

// Referenced classes of package com.umeng.socialize.view:
//            al, am, ao, ap, 
//            aq, as, at, au

public class ak
{

    private static final int g = 8000;
    private static final int h = 1;
    private SocialPopupDialog a;
    private Context b;
    private UMSocialService c;
    private List d;
    private Map e;
    private com.umeng.socialize.controller.listener.SocializeListeners.LoginListener f;
    private Handler i;

    public ak(Context context, String s, com.umeng.socialize.controller.listener.SocializeListeners.LoginListener loginlistener)
    {
        i = new al(this);
        b = context;
        f = loginlistener;
        c = UMServiceFactory.getUMSocialService(s, RequestType.SOCIAL);
        d = com.umeng.socialize.common.c.a(context, c.getConfig());
        e = a(d);
        s = new am(this, context, context);
        loginlistener = e.keySet();
        if (loginlistener == null || loginlistener.size() == 0)
        {
            s.a(8);
        } else
        {
            loginlistener = loginlistener.iterator();
            while (loginlistener.hasNext()) 
            {
                SnsPlatform snsplatform = (SnsPlatform)loginlistener.next();
                s.a((View)e.get(snsplatform), null);
            }
        }
        s.a(context.getResources().getString(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_choose_account")));
        s.b(0);
        s.b("");
        loginlistener = new com.umeng.socialize.view.abs.SocialPopupDialog.b(context);
        loginlistener.a(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_default_avatar"));
        loginlistener.a(context.getResources().getString(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_visitor")));
        loginlistener.a(new ao(this));
        s.b(loginlistener.a(), null);
        if (SocializeUtils.isFloatWindowStyle(context))
        {
            context = SocializeUtils.getFloatWindowSize(context);
            s.a(context[0], context[1]);
        }
        a = s.a();
        a.a(new ap(this));
    }

    static SocialPopupDialog a(ak ak1)
    {
        return ak1.a;
    }

    private Map a(List list)
    {
        Map map = c();
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                return map;
            }
            SnsPlatform snsplatform = (SnsPlatform)list.next();
            com.umeng.socialize.view.abs.SocialPopupDialog.b b1 = new com.umeng.socialize.view.abs.SocialPopupDialog.b(b);
            if (snsplatform.mKeyword.equals("qzone"))
            {
                b1.a(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_qzone_on"));
                b1.a(b.getResources().getString(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_login_qq")));
            } else
            {
                b1.a(snsplatform.mIcon);
                b1.a(snsplatform.mShowWord);
            }
            b1.a(new aq(this, snsplatform));
            map.put(snsplatform, b1.a());
        } while (true);
    }

    private void a(SHARE_MEDIA share_media)
    {
        if (share_media != null)
        {
            c.login(b, share_media, new as(this, share_media));
            return;
        } else
        {
            c.loginout(b, new at(this));
            return;
        }
    }

    static void a(ak ak1, SHARE_MEDIA share_media)
    {
        ak1.a(share_media);
    }

    static com.umeng.socialize.controller.listener.SocializeListeners.LoginListener b(ak ak1)
    {
        return ak1.f;
    }

    static Context c(ak ak1)
    {
        return ak1.b;
    }

    static UMSocialService d(ak ak1)
    {
        return ak1.c;
    }

    public void a()
    {
        if (com.umeng.socialize.db.c.c(b) || com.umeng.socialize.db.c.d(b))
        {
            if (f != null)
            {
                f.loginSuccessed(com.umeng.socialize.db.c.b(b), true);
            }
            return;
        } else
        {
            SocializeUtils.safeShowDialog(a, false);
            return;
        }
    }

    public void b()
    {
        SocializeUtils.safeDismissDialog(a);
    }

    public Map c()
    {
        return new TreeMap(new au(this));
    }
}
