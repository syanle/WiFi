// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.view.b;
import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.view.abs:
//            f, z, y

public abstract class SocializeBaseView extends f
{
    public static interface SocializeInitListener
    {

        public abstract void a(Context context, UMSocialService umsocialservice);

        public abstract void a(SocializeException socializeexception);
    }


    protected UMSocialService b;
    View c;

    public SocializeBaseView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public SocializeBaseView(Context context, String s)
    {
        super(context);
        if (!TextUtils.isEmpty(s))
        {
            b = UMServiceFactory.getUMSocialService(s, RequestType.SOCIAL);
        }
    }

    protected void a(SocializeInitListener socializeinitlistener)
    {
        g();
        b(socializeinitlistener);
    }

    protected void b(SocializeInitListener socializeinitlistener)
    {
        if (b == null)
        {
            socializeinitlistener.a(new SocializeException("no entity descriptor."));
            return;
        } else
        {
            b.initEntity(getContext(), new z(this, socializeinitlistener));
            return;
        }
    }

    protected SocializeInitListener f()
    {
        return new y(this);
    }

    protected void g()
    {
    }

    public abstract View getLoadingView();

    public void onViewLoad()
    {
        super.onViewLoad();
        SocializeInitListener socializeinitlistener = f();
        if (b != null && b.getEntity().mInitialized)
        {
            Log.c("com.umeng.view.SocialView", "entity has initialized.");
            socializeinitlistener.a(getActivity(), b);
            return;
        }
        Log.c("com.umeng.view.SocialView", "entity has no initialized.");
        c = getLoadingView();
        if (c != null)
        {
            addView(c);
        }
        a(socializeinitlistener);
    }

    public void onViewLoad(UMSocialService umsocialservice)
    {
    }

    public void onViewUpdate()
    {
        super.onViewUpdate();
    }

    public void onViewUpdate(b b1)
    {
        removeView(c);
    }

    public void resetUMService(UMSocialService umsocialservice)
    {
        b = umsocialservice;
        super.e();
    }
}
