// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.controller.UMSsoHandler;
import com.umeng.socialize.sso.QZoneSsoHandler;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.abs:
//            s, c, b

public abstract class BaseComentActivity extends s
{
    public static interface FetchDataListener
    {

        public abstract void a();

        public abstract void a(List list);
    }


    protected static final String e = com/umeng/socialize/view/abs/BaseComentActivity.getName();
    private boolean a;
    private Handler b;
    protected SocializeEntity f;
    protected UMSocialService g;
    protected FetchDataListener h;

    public BaseComentActivity()
    {
        a = false;
    }

    static Handler a(BaseComentActivity basecomentactivity)
    {
        return basecomentactivity.b;
    }

    static void a(BaseComentActivity basecomentactivity, boolean flag)
    {
        basecomentactivity.a = flag;
    }

    static boolean b(BaseComentActivity basecomentactivity)
    {
        return basecomentactivity.a;
    }

    public void fetchFormNet(FetchDataListener fetchdatalistener, long l)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Log.d(e, "Reflush data form NET......");
        fetchdatalistener = new c(this, fetchdatalistener);
        g.getComments(this, fetchdatalistener, l);
        if (true) goto _L1; else goto _L3
_L3:
        fetchdatalistener;
        throw fetchdatalistener;
    }

    public void fetchFromDBElseNet(FetchDataListener fetchdatalistener)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d(e, "Reflush data form DB......");
        (new Thread(new b(this, fetchdatalistener))).start();
        this;
        JVM INSTR monitorexit ;
        return;
        fetchdatalistener;
        throw fetchdatalistener;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        SocializeConfig socializeconfig = g.getConfig();
        if (socializeconfig != null)
        {
            if (i == 5668 && socializeconfig.getSinaSsoHandler() != null)
            {
                socializeconfig.getSinaSsoHandler().authorizeCallBack(i, j, intent);
            }
            if (i == 5657 && socializeconfig.getQZoneSsoHandler() != null)
            {
                socializeconfig.getQZoneSsoHandler().authorizeCallBack(i, j, intent);
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        bundle = getIntent().getStringExtra("dc");
        if (TextUtils.isEmpty(bundle))
        {
            Log.e(e, "No EntityPool key..............");
            finish();
        }
        g = UMServiceFactory.getUMSocialService(bundle, RequestType.SOCIAL);
        g.getConfig().setSsoHandler(new QZoneSsoHandler(this));
        f = g.getEntity();
        b = new Handler();
    }

}
