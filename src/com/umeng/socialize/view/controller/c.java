// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socom.Log;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.controller:
//            d

public class c
{

    private static final String a = com/umeng/socialize/view/controller/c.getSimpleName();
    private UMSocialService b;
    private Context c;

    public c(Context context, UMSocialService umsocialservice)
    {
        b = umsocialservice;
        c = context;
    }

    static Context a(c c1)
    {
        return c1.c;
    }

    private boolean e()
    {
        Object aobj[];
        String s;
        Exception exception;
        try
        {
            aobj = SocializeUtils.readSIMCard(c);
        }
        catch (Exception exception1)
        {
            Log.b(a, "check sim error.....", exception1);
            return false;
        }
        if (aobj == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        if (Boolean.parseBoolean(aobj[0].toString()))
        {
            break MISSING_BLOCK_LABEL_52;
        }
        s = new String(aobj[1].toString());
        Toast.makeText(c, s, 0).show();
        return false;
        b.shareSms(c);
_L2:
        return true;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public List a()
    {
        return b.getConfig().getAllPlatforms(c, b);
    }

    public boolean a(SnsPlatform snsplatform, com.umeng.socialize.controller.listener.SocializeListeners.DirectShareListener directsharelistener)
    {
        SocializeEntity socializeentity = b.getEntity();
        SHARE_MEDIA share_media = SHARE_MEDIA.convertToEmun(snsplatform.mKeyword);
        socializeentity.addStatisticsData(c, share_media, 14);
        SocializeConfig.setSelectedPlatfrom(share_media);
        if (snsplatform instanceof CustomPlatform)
        {
            snsplatform = (CustomPlatform)snsplatform;
            if (com.umeng.socialize.controller.impl.c.b != null && b.getConfig().contains(com.umeng.socialize.controller.impl.c.b) > 0)
            {
                b.getConfig().closeToast();
            }
            if (!TextUtils.isEmpty(((CustomPlatform) (snsplatform)).mTag) && "com.umeng.socialize.sms".equals(((CustomPlatform) (snsplatform)).mTag))
            {
                return e();
            }
            if (!TextUtils.isEmpty(((CustomPlatform) (snsplatform)).mTag) && "com.umeng.socialize.mail".equals(((CustomPlatform) (snsplatform)).mTag))
            {
                b.shareEmail(c);
                return true;
            } else
            {
                ((CustomPlatform) (snsplatform)).mClickListener.onClick(snsplatform, socializeentity, null);
                return true;
            }
        }
        snsplatform = new d(this, directsharelistener);
        if (share_media != null)
        {
            b.postShare(c, share_media, snsplatform);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean b()
    {
        Iterator iterator = a().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
        } while ((SnsPlatform)iterator.next() instanceof CustomPlatform);
        return true;
    }

    public boolean c()
    {
        Iterator iterator = a().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
        } while (!((SnsPlatform)iterator.next() instanceof CustomPlatform));
        return true;
    }

    public UMSocialService d()
    {
        return b;
    }

}
