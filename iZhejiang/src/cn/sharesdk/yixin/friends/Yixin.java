// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.friends;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.yixin.utils.YixinClientNotExistException;
import cn.sharesdk.yixin.utils.YixinImpl;
import cn.sharesdk.yixin.utils.YixinTimelineNotSupportedException;
import cn.sharesdk.yixin.utils.d;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;

public class Yixin extends Platform
{
    public static class ShareParams extends cn.sharesdk.yixin.utils.YixinImpl.ShareParams
    {

        public ShareParams()
        {
            scene = 0;
        }
    }


    public static final String NAME = cn/sharesdk/yixin/friends/Yixin.getSimpleName();
    private String a;
    private boolean b;

    public Yixin(Context context)
    {
        super(context);
    }

    protected boolean checkAuthorize(int i, Object obj)
    {
        obj = YixinImpl.a();
        ((YixinImpl) (obj)).a(context, a);
        boolean flag = ((YixinImpl) (obj)).b();
        if (!flag && listener != null)
        {
            listener.onError(this, i, new YixinClientNotExistException());
        }
        return flag;
    }

    protected void doAuthorize(String as[])
    {
        as = YixinImpl.a();
        as.a(context, a);
        if (as.b())
        {
            afterRegister(1, null);
        } else
        {
            if (!as.c())
            {
                listener.onError(this, 1, new YixinTimelineNotSupportedException());
                return;
            }
            if (listener != null)
            {
                listener.onError(this, 1, new YixinClientNotExistException());
                return;
            }
        }
    }

    protected void doCustomerProtocol(String s, String s1, int i, HashMap hashmap, HashMap hashmap1)
    {
        if (listener != null)
        {
            listener.onCancel(this, i);
        }
    }

    protected void doShare(cn.sharesdk.framework.Platform.ShareParams shareparams)
    {
        YixinImpl yixinimpl;
        d d1;
        shareparams.set("scene", Integer.valueOf(0));
        yixinimpl = YixinImpl.a();
        yixinimpl.a(context, a);
        d1 = new d(this);
        d1.a(shareparams, listener);
        if (!b)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        yixinimpl.a(d1, shareparams, listener);
_L2:
        return;
        shareparams;
        if (listener == null) goto _L2; else goto _L1
_L1:
        listener.onError(this, 9, shareparams);
        return;
        try
        {
            yixinimpl.a(d1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (cn.sharesdk.framework.Platform.ShareParams shareparams) { }
        if (listener != null)
        {
            listener.onError(this, 9, shareparams);
            return;
        }
          goto _L2
    }

    protected cn.sharesdk.framework.statistics.b.f.a filterShareContent(cn.sharesdk.framework.Platform.ShareParams shareparams, HashMap hashmap)
    {
        String s;
        String s1;
        Object obj;
        android.graphics.Bitmap bitmap;
        hashmap = new cn.sharesdk.framework.statistics.b.f.a();
        s = shareparams.getText();
        hashmap.b = s;
        s1 = shareparams.getImageUrl();
        obj = shareparams.getImagePath();
        bitmap = shareparams.getImageData();
        if (TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).d.add(s1);
_L4:
        String s2 = shareparams.getUrl();
        if (s2 != null)
        {
            ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).c.add(s2);
        }
        obj = new HashMap();
        ((HashMap) (obj)).put("title", shareparams.getTitle());
        ((HashMap) (obj)).put("url", s2);
        ((HashMap) (obj)).put("extInfo", null);
        ((HashMap) (obj)).put("content", s);
        ((HashMap) (obj)).put("image", ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).d);
        ((HashMap) (obj)).put("musicFileUrl", s2);
        hashmap.g = ((HashMap) (obj));
        return hashmap;
_L2:
        if (obj != null)
        {
            ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).e.add(obj);
        } else
        if (bitmap != null)
        {
            ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).f.add(bitmap);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void follow(String s)
    {
        if (listener != null)
        {
            listener.onCancel(this, 6);
        }
    }

    protected void getFriendList(int i, int j, String s)
    {
        if (listener != null)
        {
            listener.onCancel(this, 2);
        }
    }

    public String getName()
    {
        return NAME;
    }

    protected int getPlatformId()
    {
        return 38;
    }

    public int getVersion()
    {
        return 1;
    }

    protected void initDevInfo(String s)
    {
        a = getDevinfo("AppId");
        b = "true".equals(getDevinfo("BypassApproval"));
        if (a == null || a.length() <= 0)
        {
            a = getDevinfo("YixinMoments", "AppId");
            if (a != null && a.length() > 0)
            {
                copyDevinfo("YixinMoments", NAME);
                a = getDevinfo("AppId");
                b = "true".equals(getDevinfo("BypassApproval"));
                if (ShareSDK.isDebug())
                {
                    System.err.println("Try to use the dev info of YixinMoments, this will cause Id and SortId field are always 0.");
                }
            }
        }
    }

    public boolean isClientValid()
    {
        YixinImpl yixinimpl = YixinImpl.a();
        yixinimpl.a(context, a);
        return yixinimpl.b();
    }

    public boolean isValid()
    {
        YixinImpl yixinimpl = YixinImpl.a();
        yixinimpl.a(context, a);
        return yixinimpl.b();
    }

    protected void setNetworkDevinfo()
    {
        a = getNetworkDevinfo("app_id", "AppId");
        if (a == null || a.length() <= 0)
        {
            a = getNetworkDevinfo(39, "app_id", "AppId");
            if (a != null && a.length() > 0)
            {
                copyNetworkDevinfo(39, 38);
                a = getNetworkDevinfo("app_id", "AppId");
                if (ShareSDK.isDebug())
                {
                    System.err.println("Try to use the dev info of YixinMoments, this will cause Id and SortId field are always 0.");
                }
            }
        }
    }

    protected void timeline(int i, int j, String s)
    {
        if (listener != null)
        {
            listener.onCancel(this, 7);
        }
    }

    protected void userInfor(String s)
    {
        if (listener != null)
        {
            listener.onCancel(this, 8);
        }
    }

}
