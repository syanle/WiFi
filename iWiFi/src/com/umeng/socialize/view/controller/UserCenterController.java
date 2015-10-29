// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeUser;
import com.umeng.socialize.common.c;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.sso.QZoneSsoHandler;
import com.umeng.socialize.sso.SinaSsoHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.controller:
//            e, g, f, h, 
//            k, i, j

public class UserCenterController
{
    public static interface ASYNCListener
    {

        public abstract void a();

        public abstract void a(com.umeng.socom.net.o.a a1);
    }

    public static interface OBListener
    {

        public abstract void a(a a1);
    }

    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/umeng/socialize/view/controller/UserCenterController$a, s);
        }

        public static a[] values()
        {
            a aa[] = c;
            int l = aa.length;
            a aa1[] = new a[l];
            System.arraycopy(aa, 0, aa1, 0, l);
            return aa1;
        }

        static 
        {
            a = new a("SYNC", 0);
            b = new a("STABLE", 1);
            c = (new a[] {
                a, b
            });
        }

        private a(String s, int l)
        {
            super(s, l);
        }
    }


    private static final String a = com/umeng/socialize/view/controller/UserCenterController.getName();
    private List b;
    private Context c;
    private UMSocialService d;
    private OBListener e;
    private List f;
    private SnsAccount g;
    private a h;

    public UserCenterController(Context context, String s)
    {
        c = context;
        h = a.b;
        e = new e(this);
        d = UMServiceFactory.getUMSocialService(s, RequestType.SOCIAL);
        d.getConfig().setSsoHandler(new SinaSsoHandler());
        if (context instanceof Activity)
        {
            d.getConfig().setSsoHandler(new QZoneSsoHandler((Activity)context));
        }
        b = com.umeng.socialize.common.c.a(context, d.getConfig());
    }

    static List a(UserCenterController usercentercontroller)
    {
        return usercentercontroller.f;
    }

    private void a(SocializeUser socializeuser)
    {
        Iterator iterator = socializeuser.mAccounts.iterator();
_L2:
        SnsAccount snsaccount;
        String s;
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            snsaccount = (SnsAccount)iterator.next();
            s = snsaccount.getPlatform();
        } while (s == null);
        Iterator iterator1 = b.iterator();
label0:
        do
        {
            SnsPlatform snsplatform;
            do
            {
                if (!iterator1.hasNext())
                {
                    continue label0;
                }
                snsplatform = (SnsPlatform)iterator1.next();
            } while (TextUtils.isEmpty(snsplatform.mKeyword) || TextUtils.isEmpty(s) || !snsplatform.mKeyword.equalsIgnoreCase(s));
            snsplatform.mAccount = snsaccount;
            snsplatform.mUsid = snsaccount.getUsid();
            if (!TextUtils.isEmpty(snsplatform.mUsid))
            {
                snsplatform.mOauth = true;
            }
            try
            {
                if (socializeuser.mDefaultPlatform.toString().equals(snsplatform.mKeyword))
                {
                    snsplatform.mBind = true;
                }
            }
            catch (Exception exception) { }
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    static void a(UserCenterController usercentercontroller, SnsAccount snsaccount)
    {
        usercentercontroller.g = snsaccount;
    }

    static void a(UserCenterController usercentercontroller, SocializeUser socializeuser)
    {
        usercentercontroller.a(socializeuser);
    }

    static Context b(UserCenterController usercentercontroller)
    {
        return usercentercontroller.c;
    }

    static List c(UserCenterController usercentercontroller)
    {
        return usercentercontroller.b;
    }

    public List a()
    {
        return b;
    }

    public void a(SnsPlatform snsplatform, ASYNCListener asynclistener)
    {
        this;
        JVM INSTR monitorenter ;
        d.deleteOauth(c, SHARE_MEDIA.convertToEmun(snsplatform.mKeyword), new g(this, asynclistener, snsplatform));
        this;
        JVM INSTR monitorexit ;
        return;
        snsplatform;
        throw snsplatform;
    }

    public void a(ASYNCListener asynclistener)
    {
        asynclistener = new f(this, asynclistener);
        d.getUserInfo(c, asynclistener);
    }

    public void a(OBListener oblistener)
    {
        if (f == null)
        {
            f = new ArrayList();
        }
        if (f.contains(oblistener))
        {
            Log.d(a, "this OBListener has register..");
            return;
        } else
        {
            f.add(oblistener);
            return;
        }
    }

    public void a(a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (h != a1)
        {
            h = a1;
            e.a(a1);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        a1;
        throw a1;
    }

    public SnsAccount b()
    {
        return g;
    }

    public void b(SnsPlatform snsplatform, ASYNCListener asynclistener)
    {
        this;
        JVM INSTR monitorenter ;
        if (asynclistener == null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        asynclistener.a();
        d.doOauthVerify(c, SHARE_MEDIA.convertToEmun(snsplatform.mKeyword), new h(this, asynclistener, snsplatform));
        this;
        JVM INSTR monitorexit ;
        return;
        snsplatform;
        throw snsplatform;
    }

    public void b(ASYNCListener asynclistener)
    {
        if (asynclistener != null)
        {
            asynclistener.a();
        }
        d.showLoginDialog(c, new k(this, asynclistener));
    }

    public void b(OBListener oblistener)
    {
        while (f == null || !f.contains(oblistener)) 
        {
            return;
        }
        f.remove(oblistener);
    }

    public void c(SnsPlatform snsplatform, ASYNCListener asynclistener)
    {
        if (snsplatform.mOauth)
        {
            a(snsplatform, new i(this, asynclistener, snsplatform));
            return;
        } else
        {
            b(snsplatform, new j(this, asynclistener, snsplatform));
            return;
        }
    }

}
