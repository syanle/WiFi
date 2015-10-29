// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.SparseArray;
import com.sina.sso.RemoteSSO;
import com.umeng.socialize.common.c;
import com.umeng.socialize.controller.UMQQSsoHandler;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.controller.UMSsoHandler;
import com.umeng.socialize.controller.UMWXHandler;
import com.umeng.socialize.controller.a;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.bean:
//            CallbackConfig, SHARE_MEDIA, CustomPlatform, SnsPlatform, 
//            SocializeEntity, QQShareMsg, APP_PLATFORM

public class SocializeConfig extends CallbackConfig
{

    private static SparseArray h = new SparseArray();
    private static SHARE_MEDIA i;
    private static List j = Collections.synchronizedList(new ArrayList());
    private static SHARE_MEDIA k[] = null;
    private static List l = new ArrayList();
    private static SocializeConfig m = new SocializeConfig();
    private List b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private Map n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private String s;
    private List t;
    private CustomPlatform u;
    private CustomPlatform v;
    private boolean w;
    private com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener x;

    private SocializeConfig()
    {
        b = new ArrayList();
        c = true;
        d = true;
        e = true;
        f = true;
        g = true;
        o = false;
        p = true;
        q = true;
        r = false;
        s = "Sharing Socialize";
        t = new ArrayList();
        w = true;
        b.add(SHARE_MEDIA.SINA);
        b.add(SHARE_MEDIA.QZONE);
        b.add(SHARE_MEDIA.DOUBAN);
        b.add(SHARE_MEDIA.RENREN);
        b.add(SHARE_MEDIA.TENCENT);
        u = new CustomPlatform("sms", -1);
        u.mTag = "com.umeng.socialize.sms";
        addCustomPlatform(u);
        v = new CustomPlatform("email", -1);
        v.mTag = "com.umeng.socialize.mail";
        addCustomPlatform(v);
        k = (new SHARE_MEDIA[] {
            SHARE_MEDIA.WEIXIN, SHARE_MEDIA.WEIXIN_CIRCLE, SHARE_MEDIA.QZONE, SHARE_MEDIA.QQ, SHARE_MEDIA.SINA
        });
    }

    private static String a(String s1, Context context)
    {
        try
        {
            s1 = context.getPackageManager().getPackageInfo(s1, 0).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return null;
        }
        return s1;
    }

    private void a(List list, String s1)
    {
        int i1 = 0;
        do
        {
            if (i1 >= list.size())
            {
                return;
            }
            SnsPlatform snsplatform = (SnsPlatform)list.get(i1);
            if (s1.equals(snsplatform.mKeyword))
            {
                list.remove(snsplatform);
            }
            i1++;
        } while (true);
    }

    public static SHARE_MEDIA getSelectedPlatfrom()
    {
        return i;
    }

    public static SocializeConfig getSocializeConfig()
    {
        return m;
    }

    public static boolean isSupportQQZoneSSO(Context context)
    {
        if (DeviceConfig.isAppInstalled("com.tencent.mobileqq", context))
        {
            if ((context = a("com.tencent.mobileqq", context)) != null && context.compareTo("4.1") > 0)
            {
                return true;
            }
        }
        return false;
    }

    public static boolean isSupportSinaSSO(Context context)
    {
        if (DeviceConfig.isAppInstalled("com.sina.weibo", context))
        {
            try
            {
                com/sina/sso/RemoteSSO.getPackage();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return false;
            }
            context = a("com.sina.weibo", context);
            if (context != null && context.compareTo("3.0.0") > 0)
            {
                return true;
            }
        }
        return false;
    }

    public static boolean isSupportTencentWBSSO(Context context)
    {
        if (DeviceConfig.isAppInstalled("com.tencent.WBlog", context))
        {
            if ((context = a("com.tencent.WBlog", context)) != null && context.compareTo("3.8.1") > 0)
            {
                return true;
            }
        }
        return false;
    }

    public static void setSelectedPlatfrom(SHARE_MEDIA share_media)
    {
        i = share_media;
        if (i == null)
        {
            i = SHARE_MEDIA.GENERIC;
        }
    }

    public void addCustomPlatform(CustomPlatform customplatform)
    {
        t.add(customplatform);
    }

    public void addFollow(SHARE_MEDIA share_media, String s1)
    {
        if (TextUtils.isEmpty(s1) || share_media == null)
        {
            return;
        }
        if (n == null)
        {
            n = new HashMap();
        }
        if (n.containsKey(share_media))
        {
            ((HashSet)n.get(share_media)).add(s1);
            return;
        } else
        {
            HashSet hashset = new HashSet();
            hashset.add(s1);
            n.put(share_media, hashset);
            return;
        }
    }

    public void addFollow(SHARE_MEDIA share_media, String as[])
    {
        if (as != null && as.length != 0)
        {
            int j1 = as.length;
            int i1 = 0;
            while (i1 < j1) 
            {
                addFollow(share_media, as[i1]);
                i1++;
            }
        }
    }

    public void changeOrder()
    {
        if (k != null && k.length != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i1;
        int j1;
        i1 = 0;
        j1 = 0;
_L6:
        if (i1 >= k.length) goto _L1; else goto _L3
_L3:
        Iterator iterator = j.iterator();
_L8:
        if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
        i1++;
          goto _L6
_L5:
        SnsPlatform snsplatform = (SnsPlatform)iterator.next();
        if (!snsplatform.mKeyword.equals(k[i1].toString())) goto _L8; else goto _L7
_L7:
        Log.c("", (new StringBuilder("\u5E73\u53F0 + ")).append(snsplatform.mKeyword).append(i1).append(", keyWord ").append(k[i1].toString()).toString());
        iterator.remove();
        j.add(j1, snsplatform);
        j1++;
          goto _L4
    }

    public void closeQQZoneSso()
    {
        f = false;
    }

    public void closeSinaSSo()
    {
        e = false;
    }

    public void closeTencentWBSso()
    {
        g = false;
    }

    public void closeToast()
    {
        a = false;
    }

    public boolean containsDeletePlatform(SHARE_MEDIA share_media)
    {
        return l.contains(share_media);
    }

    public void fireAllListenersOnComplete(Class class1, SHARE_MEDIA share_media, int i1, SocializeEntity socializeentity)
    {
        class1 = (com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener[])getListener(class1);
        if (class1 != null && class1.length != 0)
        {
            int k1 = class1.length;
            int j1 = 0;
            while (j1 < k1) 
            {
                com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener = class1[j1];
                if (snspostlistener != null)
                {
                    snspostlistener.onComplete(share_media, i1, socializeentity);
                }
                j1++;
            }
        }
    }

    public void fireAllListenersOnStart(Class class1)
    {
        class1 = (com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener[])getListener(class1);
        if (class1 != null && class1.length != 0)
        {
            int j1 = class1.length;
            int i1 = 0;
            while (i1 < j1) 
            {
                com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener = class1[i1];
                if (snspostlistener != null)
                {
                    snspostlistener.onStart();
                }
                i1++;
            }
        }
    }

    public List getAllPlatforms(Context context, UMSocialService umsocialservice)
    {
        boolean flag;
        flag = false;
        j.clear();
        SocializeConfig socializeconfig = umsocialservice.getConfig();
        context = com.umeng.socialize.common.c.a(context, socializeconfig);
        j.addAll(context);
        context = socializeconfig.getCustomPlatforms();
        j.addAll(context);
        context = j.iterator();
_L7:
        if (context.hasNext()) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L8:
        if (i1 < l.size()) goto _L4; else goto _L3
_L3:
        context = new HashMap();
        i1 = ((flag) ? 1 : 0);
_L9:
        if (i1 < j.size()) goto _L6; else goto _L5
_L5:
        j.clear();
        umsocialservice = context.keySet().iterator();
_L10:
        if (!umsocialservice.hasNext())
        {
            changeOrder();
            return j;
        }
        break MISSING_BLOCK_LABEL_242;
_L2:
        ((SnsPlatform)context.next()).setEntityDescriptor(umsocialservice.getEntity().mDescriptor);
          goto _L7
_L4:
        a(j, ((SHARE_MEDIA)l.get(i1)).toString());
        i1++;
          goto _L8
_L6:
        context.put(((SnsPlatform)j.get(i1)).mKeyword, (SnsPlatform)j.get(i1));
        i1++;
          goto _L9
        String s1 = (String)umsocialservice.next();
        j.add((SnsPlatform)context.get(s1));
          goto _L10
    }

    public List getCustomPlatforms()
    {
        return t;
    }

    public Set getFollowFids(SHARE_MEDIA share_media)
    {
        if (n != null && n.containsKey(share_media))
        {
            return new HashSet((Collection)n.get(share_media));
        } else
        {
            return null;
        }
    }

    public String getMailSubject()
    {
        return s;
    }

    public com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener getOauthDialogFollowListener()
    {
        return x;
    }

    public List getPlatforms()
    {
        return b;
    }

    public UMSsoHandler getQQSsoHandler()
    {
        return (UMSsoHandler)h.get(5658);
    }

    public boolean getQZoneAddSharePermission()
    {
        return r;
    }

    public UMSsoHandler getQZoneSsoHandler()
    {
        return (UMSsoHandler)h.get(5657);
    }

    public UMSsoHandler getSinaSsoHandler()
    {
        return (UMSsoHandler)h.get(5668);
    }

    public UMSsoHandler getSsoHandler(int i1)
    {
        Log.c("", (new StringBuilder("## origin requestCode = ")).append(i1).toString());
        if (SHARE_MEDIA.QQ == i)
        {
            i1 = 5658;
        }
        if (SHARE_MEDIA.QZONE == i)
        {
            i1 = 5657;
        }
        Log.c("", (new StringBuilder("## get sso Handler, requestCode = ")).append(i1).toString());
        return (UMSsoHandler)h.get(i1);
    }

    public SparseArray getSsoHandlersMap()
    {
        return h;
    }

    public UMSsoHandler getTencentWBSsoHandler()
    {
        if (g)
        {
            return (UMSsoHandler)h.get(5669);
        } else
        {
            return null;
        }
    }

    public boolean isCustomPlatform(SHARE_MEDIA share_media)
    {
        if (share_media == null)
        {
            return false;
        }
        Iterator iterator = t.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
        } while (!((CustomPlatform)iterator.next()).mKeyword.equals(share_media.toString()));
        return true;
    }

    public boolean isDefaultShareComment()
    {
        return d;
    }

    public boolean isDefaultShareLocation()
    {
        return c;
    }

    public boolean isOpenQQZoneSSO()
    {
        return f;
    }

    public boolean isOpenSinaSSO()
    {
        return e;
    }

    public boolean isOpenTencentWBSSO()
    {
        return g;
    }

    public boolean isSendBlock()
    {
        return o;
    }

    public boolean isShareMail()
    {
        return q;
    }

    public boolean isShareSms()
    {
        return p;
    }

    public boolean isShowToast()
    {
        return a;
    }

    public boolean isSyncUserInfo()
    {
        return w;
    }

    public void openQQZoneSso()
    {
        f = true;
    }

    public void openSinaSso()
    {
        e = true;
    }

    public void openTencentWBSso()
    {
        g = true;
    }

    public void openToast()
    {
        a = true;
    }

    public transient void removePlatform(SHARE_MEDIA ashare_media[])
    {
        if (ashare_media != null && ashare_media.length > 0)
        {
            int j1 = ashare_media.length;
            int i1 = 0;
            while (i1 < j1) 
            {
                SHARE_MEDIA share_media = ashare_media[i1];
                if (!l.contains(share_media))
                {
                    l.add(share_media);
                }
                i1++;
            }
        }
    }

    public transient void setCustomtPlatform(APP_PLATFORM aapp_platform[])
    {
        if (aapp_platform == null) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L6:
        if (i1 < aapp_platform.length) goto _L3; else goto _L2
_L2:
        return;
_L3:
        Iterator iterator = t.iterator();
_L8:
        if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
        i1++;
          goto _L6
_L5:
        CustomPlatform customplatform = (CustomPlatform)iterator.next();
        if (!customplatform.mKeyword.equals(aapp_platform.toString())) goto _L8; else goto _L7
_L7:
        t.remove(customplatform);
        t.add(i1, customplatform);
          goto _L4
    }

    public void setDefaultShareComment(boolean flag)
    {
        d = flag;
    }

    public void setDefaultShareLocation(boolean flag)
    {
        c = flag;
    }

    public void setMailSubject(String s1)
    {
        s = s1;
    }

    public void setOauthDialogFollowListener(com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener)
    {
        x = mulstatuslistener;
    }

    public transient void setPlatformOrder(SHARE_MEDIA ashare_media[])
    {
        k = ashare_media;
    }

    public transient void setPlatforms(SHARE_MEDIA ashare_media[])
    {
        setPlatformOrder(ashare_media);
    }

    public void setQZoneAddSharePermission(boolean flag)
    {
        r = flag;
    }

    public void setQZoneSsoHandler(UMSsoHandler umssohandler)
    {
        if (h.get(5657) != null)
        {
            h.remove(5657);
        }
        h.put(5657, umssohandler);
    }

    public void setSendBlock(boolean flag)
    {
        o = flag;
    }

    public void setShareMail(boolean flag)
    {
        q = flag;
        if (flag && !t.contains(v))
        {
            addCustomPlatform(v);
        } else
        if (!flag && t.contains(v))
        {
            t.remove(v);
            return;
        }
    }

    public void setShareSms(boolean flag)
    {
        p = flag;
        if (flag && !t.contains(u))
        {
            addCustomPlatform(u);
        } else
        if (!flag && t.contains(u))
        {
            t.remove(u);
            return;
        }
    }

    public void setSinaSsoHandler(UMSsoHandler umssohandler)
    {
        if (h.get(5668) == null)
        {
            h.put(5668, umssohandler);
        }
    }

    public void setSsoHandler(UMSsoHandler umssohandler)
    {
        int i1 = umssohandler.getRequstCode();
        if (h.get(i1, null) != null)
        {
            h.remove(i1);
        }
        Log.c("", (new StringBuilder("#### set sso handler, code = ")).append(i1).toString());
        h.put(i1, umssohandler);
    }

    public void setTencentWBSsoHandler(UMSsoHandler umssohandler)
    {
        if (h.get(5669) == null)
        {
            h.put(5669, umssohandler);
        }
    }

    public void supportAppPlatform(Context context, SHARE_MEDIA share_media, String s1, boolean flag)
    {
        if (flag)
        {
            context = com.umeng.socialize.controller.a.a(context, share_media, s1);
            if (!t.contains(context))
            {
                addCustomPlatform(context);
            }
        } else
        {
            context = com.umeng.socialize.controller.a.a(context, share_media, s1);
            if (t.contains(context))
            {
                t.remove(context);
                return;
            }
        }
    }

    public void supportQQPlatform(Activity activity, String s1)
    {
        supportQQPlatform(activity, false, s1);
    }

    public void supportQQPlatform(Activity activity, String s1, String s2)
    {
        supportQQPlatform(activity, false, s1, s2);
    }

    public void supportQQPlatform(Activity activity, boolean flag, String s1)
    {
        supportQQPlatform(activity, flag, "", s1);
    }

    public void supportQQPlatform(Activity activity, boolean flag, String s1, String s2)
    {
        Iterator iterator;
        activity = UMServiceFactory.getUMQQHandler(activity, s1);
        activity.setTargetUrl(s2);
        activity.getQqShareMsg().d(s2);
        activity.canOpenShareActivity(flag);
        s1 = activity.build();
        s2 = getCustomPlatforms();
        iterator = s2.iterator();
_L2:
        if (iterator.hasNext())
        {
            CustomPlatform customplatform = (CustomPlatform)iterator.next();
            if (!customplatform.toString().equals(s1.toString()))
            {
                continue; /* Loop/switch isn't completed */
            }
            Log.e("com.umeng.socialize", "find the same custom-platform has added,and then remove old one.");
            s2.remove(customplatform);
        }
        addCustomPlatform(s1);
        setSsoHandler(activity);
        return;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public UMWXHandler supportWXCirclePlatform(Context context, String s1, String s2)
    {
        s1 = UMServiceFactory.getUMWXHandler(context, s1);
        s1.setContentURL(s2);
        s1.setToCircle(true);
        supportWXPlatform(context, s1);
        return s1;
    }

    public UMWXHandler supportWXPlatform(Context context, String s1, String s2)
    {
        s1 = UMServiceFactory.getUMWXHandler(context, s1);
        s1.setContentURL(s2);
        supportWXPlatform(context, ((UMWXHandler) (s1)));
        return s1;
    }

    public void supportWXPlatform(Context context, UMWXHandler umwxhandler)
    {
        Iterator iterator;
        context = umwxhandler.build();
        umwxhandler = getCustomPlatforms();
        iterator = umwxhandler.iterator();
_L2:
        if (iterator.hasNext())
        {
            CustomPlatform customplatform = (CustomPlatform)iterator.next();
            if (!customplatform.toString().equals(context.toString()))
            {
                continue; /* Loop/switch isn't completed */
            }
            Log.e("com.umeng.socialize", "find the same custom-platform has added,and then remove old one.");
            umwxhandler.remove(customplatform);
        }
        addCustomPlatform(context);
        return;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static 
    {
        i = SHARE_MEDIA.GENERIC;
    }
}
