// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.Window;
import android.widget.Toast;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.ShareType;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.bean.UMToken;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMQQSsoHandler;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.controller.UMSsoHandler;
import com.umeng.socialize.db.OauthHelper;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.media.MailShareContent;
import com.umeng.socialize.media.SmsShareContent;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.sso.QZoneSsoHandler;
import com.umeng.socialize.view.CommentActivity;
import com.umeng.socialize.view.ShareActivity;
import com.umeng.socialize.view.abs.am;
import com.umeng.socialize.view.ak;
import com.umeng.socialize.view.av;
import com.umeng.socialize.view.ce;
import com.umeng.socialize.view.ck;
import com.umeng.socialize.view.q;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.util.b;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            b, d, ab, ae, 
//            h, r, k, i, 
//            ac, ad, p, ai, 
//            ao, v, m, ag, 
//            an, u, ah, j, 
//            o, z, e, f, 
//            g, y, w, x, 
//            aa, aj, n, q, 
//            t, s, am, l, 
//            al, ak, ap, aq

public class c extends com.umeng.socialize.controller.impl.b
    implements UMSocialService
{
    private class a
        implements com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener
    {

        SHARE_MEDIA a;
        com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener b;
        UMSsoHandler c;
        Activity d;
        Bundle e;
        com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener f;
        final c g;

        static c a(a a1)
        {
            return a1.g;
        }

        private com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener b()
        {
            return new ap(this);
        }

        protected com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener a()
        {
            return new aq(this);
        }

        public void onComplete(int i1, Map map)
        {
            String s1 = a.toString();
            if (map == null || !map.containsKey(s1)) goto _L2; else goto _L1
_L1:
            String s2 = map.get(s1).toString();
            if (a != SHARE_MEDIA.SINA) goto _L4; else goto _L3
_L3:
            c.setToken(s2);
            c.authorize(d, f);
_L6:
            return;
_L4:
            if (a == SHARE_MEDIA.TENCENT)
            {
                c.setKey(s2);
                if (c.a(g) != null)
                {
                    c.setToken(((String)c.a(g).get(s1)).toString());
                }
                c.authorize(d, f);
                return;
            }
            if (a == SHARE_MEDIA.QZONE)
            {
                map = map.get(s1).toString();
                Log.d(c.a(), (new StringBuilder("has get ")).append(a).append(" qzone app id: ").append(map).toString());
                c.setToken(map);
                c.authorize(d, f);
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (b != null)
            {
                b.onError(new SocializeException((new StringBuilder("no appkey on")).append(s1).toString()), a);
                return;
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public void onStart()
        {
            if (b != null)
            {
                b.onStart(a);
            }
        }

        public a(Activity activity, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener, UMSsoHandler umssohandler)
        {
            g = c.this;
            super();
            a = share_media;
            b = umauthlistener;
            c = umssohandler;
            d = activity;
            f = b();
        }
    }


    public static com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener b = null;
    public static ProgressDialog c = null;
    public static volatile Map d = new HashMap();
    public static final int e = 0;
    public static Set f = new HashSet();
    public static Handler g = new d(Looper.getMainLooper());
    private static final String h = com/umeng/socialize/controller/impl/c.getName();
    private static SocializeConfig i = SocializeConfig.getSocializeConfig();
    private static final String m = "image_uri_cache";
    private static final String n = "100424468";
    private Map j;
    private Map k;
    private boolean l;
    private ce o;

    public c(SocializeEntity socializeentity)
    {
        super(socializeentity);
        l = false;
        o = null;
    }

    private ProgressDialog a(Context context, SHARE_MEDIA share_media, String s1, boolean flag)
    {
        c = new ProgressDialog(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STYLE, "Theme.UMDialog"));
        if (!flag)
        {
            s1 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(context.getString(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_waitting_redirect"))))).append(com.umeng.socialize.common.c.a(context, share_media)).toString()))).append(context.getString(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_waitting_message"))).toString();
        }
        c.setMessage(s1);
        return c;
    }

    static ProgressDialog a(c c1, Context context, SHARE_MEDIA share_media, String s1, boolean flag)
    {
        return c1.a(context, share_media, s1, flag);
    }

    private com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener a(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        return new ab(this, context, umauthlistener, (com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener[])getConfig().getListener(com/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener));
    }

    static String a()
    {
        return h;
    }

    static Map a(c c1)
    {
        return c1.j;
    }

    private void a(Activity activity, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener, UMSsoHandler umssohandler)
    {
        getEntity().addStatisticsData(activity, share_media, 12);
        umauthlistener = new a(activity, share_media, new ae(this, umauthlistener, activity), umssohandler);
        if (j == null || k == null)
        {
            j = SocializeUtils.getPlatformSecret(activity);
            k = SocializeUtils.getPlatformKey(activity);
        }
        share_media = share_media.toString();
        if (k != null && k.size() > 0 && k.containsKey(share_media) && !TextUtils.isEmpty(k.get(share_media).toString()) && j != null && j.size() > 0 && j.containsKey(share_media) && !TextUtils.isEmpty((CharSequence)j.get(share_media)))
        {
            umauthlistener.onComplete(200, k);
            a(((Context) (activity)), ((com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener) (null)));
            return;
        } else
        {
            a(((Context) (activity)), ((com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener) (umauthlistener)));
            return;
        }
    }

    private void a(Context context, Intent intent, String s1, String s2)
    {
        if (!TextUtils.isEmpty(s1))
        {
            s1 = SocializeUtils.insertImage(context, s1);
            if (s1 != null)
            {
                intent.putExtra("android.intent.extra.STREAM", s1);
                intent.setType("image/png;message/rfc822");
                f.add(s1);
            }
        }
        Iterator iterator = context.getPackageManager().queryIntentActivities(intent, 0).iterator();
        s1 = null;
_L2:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_131;
        }
        ResolveInfo resolveinfo;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        try
        {
            intent.setClassName(((ResolveInfo) (s1)).activityInfo.packageName, ((ResolveInfo) (s1)).activityInfo.name);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.w("com.umeng.socialize", "", s1);
        }
        try
        {
            context.startActivity(intent);
            SocializeUtils.sendAnalytic(context, a.mDescriptor, s2, a.getMedia(), "email");
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            Log.w(h, "", intent);
            Toast.makeText(context, "\u65E0\u6CD5\u901A\u8FC7\u90AE\u4EF6\u5206\u4EAB\uFF01", 0).show();
        }
        setShareType(ShareType.NORMAL);
        return;
        resolveinfo = (ResolveInfo)iterator.next();
        if (resolveinfo.activityInfo.packageName.endsWith(".gm") || resolveinfo.activityInfo.name.toLowerCase().contains("gmail"))
        {
            s1 = resolveinfo;
        }
        continue; /* Loop/switch isn't completed */
        Log.w("com.umeng.socialize", "no found gmail package...");
        break MISSING_BLOCK_LABEL_95;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        (new h(this, socializeclientlistener, this, context, share_media)).execute();
    }

    private void a(Context context, SHARE_MEDIA share_media, Integer integer)
    {
        if (integer.intValue() == 5027 || integer.intValue() == 5028 || integer.intValue() == 5014 || integer.intValue() == 5037)
        {
            OauthHelper.remove(context, share_media);
        }
        if (share_media != null)
        {
            Log.d(h, (new StringBuilder(String.valueOf(share_media.toString()))).append("Error Code : ").append(integer).toString());
        }
    }

    private void a(Context context, com.umeng.socialize.controller.impl.b b1)
    {
        new r(this, b1, context);
    }

    private void a(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        k(context);
        Object obj1 = getEntity();
        Object obj;
        if (((SocializeEntity) (obj1)).getShareType() == ShareType.SHAKE)
        {
            obj = (UMImage)((SocializeEntity) (obj1)).getShareMsg().getMedia();
            obj1 = ((SocializeEntity) (obj1)).getShareMsg().mText;
        } else
        {
            obj = ((SocializeEntity) (obj1)).getMedia(SHARE_MEDIA.SMS);
            if (obj instanceof SmsShareContent)
            {
                obj = (SmsShareContent)obj;
                obj1 = ((SmsShareContent) (obj)).getShareContent();
                obj = ((SmsShareContent) (obj)).getShareImage();
            } else
            {
                obj1 = ((SocializeEntity) (obj1)).getShareContent();
                String s1;
                if (obj instanceof UMImage)
                {
                    obj = (UMImage)obj;
                } else
                {
                    obj = null;
                }
            }
        }
        if (obj != null && ((UMImage) (obj)).isUrlMedia() && !TextUtils.isEmpty(((UMImage) (obj)).toUrl()))
        {
            obj = ((UMImage) (obj)).toUrl();
            c = a(context, ((SHARE_MEDIA) (null)), "\u52A0\u8F7D\u56FE\u7247\u4E2D,\u8BF7\u7A0D\u5019...", true);
            (new k(this, ((String) (obj)), context, ((String) (obj1)), snspostlistener)).execute();
            return;
        }
        s1 = "";
        if (obj != null)
        {
            s1 = ((UMImage) (obj)).getImageCachePath();
        }
        a(context, s1, ((String) (obj1)), snspostlistener);
    }

    private void a(Context context, String s1, String s2, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        setShareType(ShareType.NORMAL);
        boolean flag = DeviceConfig.isAppInstalled("com.android.mms", context);
        Uri uri = SocializeUtils.insertImage(context, s1);
        if (flag)
        {
            if (uri != null)
            {
                s1 = new Intent("android.intent.action.SEND");
                if (flag)
                {
                    try
                    {
                        Class.forName("com.android.mms.ui.ComposeMessageActivity");
                        s1.setClassName("com.android.mms", "com.android.mms.ui.ComposeMessageActivity");
                    }
                    catch (ClassNotFoundException classnotfoundexception)
                    {
                        classnotfoundexception.printStackTrace();
                    }
                }
                s1.putExtra("android.intent.extra.STREAM", uri);
                s1.setType("image/*");
                f.add(uri);
            } else
            {
                s1 = new Intent("android.intent.action.VIEW");
                s1.setType("vnd.android-dir/mms-sms");
            }
        } else
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            String s3 = android.provider.Telephony.Sms.getDefaultSmsPackage(context);
            Intent intent = new Intent("android.intent.action.SEND");
            if (uri == null)
            {
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", s2);
            } else
            {
                intent.setType("image/*");
                intent.putExtra("android.intent.extra.STREAM", uri);
                intent.putExtra("android.intent.extra.TEXT", s2);
            }
            s1 = intent;
            if (s3 != null)
            {
                intent.setPackage(s3);
                s1 = intent;
            }
        } else
        {
            Intent intent1 = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:"));
            s1 = intent1;
            if (uri != null)
            {
                intent1.putExtra("android.intent.extra.STREAM", uri);
                intent1.setType("image/*");
                f.add(uri);
                s1 = intent1;
            }
        }
        s1.putExtra("sms_body", s2);
        context.startActivity(s1);
_L2:
        SocializeUtils.sendAnalytic(context, a.mDescriptor, s2, a.getMedia(), "sms");
        return;
        s1;
        if (snspostlistener == null)
        {
            break; /* Loop/switch isn't completed */
        }
        snspostlistener.onComplete(SHARE_MEDIA.SMS, 10086, a);
_L4:
        s1.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        if (!getConfig().isShowToast()) goto _L4; else goto _L3
_L3:
        Toast.makeText(context, "\u62B1\u6B49,\u60A8\u7684\u8BBE\u5907\u4E2D\u6CA1\u6709\u77ED\u4FE1\u7A0B\u5E8F...", 0).show();
          goto _L4
    }

    private void a(Context context, SNSPair asnspair[], UMComment umcomment, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener)
    {
        (new i(this, mulstatuslistener, this, context, umcomment, asnspair)).execute();
    }

    static void a(c c1, Context context, Intent intent, String s1, String s2)
    {
        c1.a(context, intent, s1, s2);
    }

    static void a(c c1, Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        c1.b(context, share_media, snspostlistener);
    }

    static void a(c c1, Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        c1.a(context, share_media, socializeclientlistener);
    }

    static void a(c c1, Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        c1.c(context, share_media, umauthlistener);
    }

    static void a(c c1, Context context, SHARE_MEDIA share_media, Integer integer)
    {
        c1.a(context, share_media, integer);
    }

    static void a(c c1, Context context, com.umeng.socialize.controller.impl.b b1)
    {
        c1.a(context, b1);
    }

    static void a(c c1, Context context, String s1, String s2, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        c1.a(context, s1, s2, snspostlistener);
    }

    static void a(c c1, Map map)
    {
        c1.j = map;
    }

    static void a(c c1, boolean flag)
    {
        c1.l = flag;
    }

    private boolean a(Activity activity)
    {
        if (activity == null || activity.isFinishing())
        {
            Log.e(h, "### activity == null");
            return false;
        }
        if (o != null && o.isShowing())
        {
            Toast.makeText(activity, "\u5206\u4EAB\u9762\u677F\u5DF2\u6253\u5F00", 0).show();
            return false;
        }
        if (getConfig().getAllPlatforms(activity, this).size() == 0)
        {
            Log.e(h, "### \u5E73\u53F0\u6570\u91CF\u4E3A0");
            Toast.makeText(activity, "\u5E73\u53F0\u6570\u91CF\u4E3A0", 0).show();
            return false;
        } else
        {
            return true;
        }
    }

    private boolean a(SHARE_MEDIA share_media)
    {
        return share_media != SHARE_MEDIA.WEIXIN && share_media != SHARE_MEDIA.WEIXIN_CIRCLE && share_media != SHARE_MEDIA.LAIWANG && share_media != SHARE_MEDIA.LAIWANG_DYNAMIC && share_media != SHARE_MEDIA.YIXIN && share_media != SHARE_MEDIA.YIXIN_CIRCLE && share_media != SHARE_MEDIA.TWITTER && share_media != SHARE_MEDIA.GOOGLEPLUS && share_media != SHARE_MEDIA.SMS && share_media != SHARE_MEDIA.EMAIL && share_media != SHARE_MEDIA.INSTAGRAM && share_media != SHARE_MEDIA.GENERIC;
    }

    private transient SNSPair[] a(Context context, Map map, SHARE_MEDIA ashare_media[])
    {
        ArrayList arraylist = new ArrayList();
        if (ashare_media == null) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        j1 = ashare_media.length;
        i1 = 0;
_L5:
        if (i1 < j1) goto _L3; else goto _L2
_L2:
        return (SNSPair[])arraylist.toArray(new SNSPair[arraylist.size()]);
_L3:
        SHARE_MEDIA share_media;
        share_media = ashare_media[i1];
        if (!OauthHelper.isAuthenticated(context, share_media))
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(new SNSPair(share_media.toString(), OauthHelper.getUsid(context, share_media)));
_L7:
        i1++;
        if (true) goto _L5; else goto _L4
_L4:
        if (map == null) goto _L7; else goto _L6
_L6:
        map.put(share_media, Integer.valueOf(-101));
          goto _L7
    }

    static SocializeConfig b()
    {
        return i;
    }

    private com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener b(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        return new ac(this, context, umauthlistener, (com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener[])getConfig().getListener(com/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener));
    }

    private void b(Activity activity)
    {
        if (activity != null)
        {
            getConfig().supportQQPlatform(activity, "www.umeng.com");
            return;
        } else
        {
            Log.d(h, "addQQPlatform: activity == null is empty.");
            return;
        }
    }

    private void b(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        if (k.get(SHARE_MEDIA.QZONE.toString()) == null || TextUtils.isEmpty(k.get(SHARE_MEDIA.QZONE.toString()).toString()))
        {
            Log.e(h, "\u65E0\u6CD5\u83B7\u53D6\u5230AppId");
            return;
        }
        String s1 = k.get(SHARE_MEDIA.QZONE.toString()).toString();
        if ("100424468".equals(s1) || getConfig().getQZoneAddSharePermission())
        {
            c(context, share_media, snspostlistener);
            return;
        }
        if (DeviceConfig.isAppInstalled("com.tencent.mobileqq", context))
        {
            QZoneSsoHandler.invokeQQShare(getEntity(), context, s1, snspostlistener);
            return;
        } else
        {
            QZoneSsoHandler.invokeWebViewShare(getEntity(), context, s1, snspostlistener);
            return;
        }
    }

    static void b(c c1, Map map)
    {
        c1.k = map;
    }

    static boolean b(c c1)
    {
        return c1.l;
    }

    private void c()
    {
        if (f == null || f.size() <= 0) goto _L2; else goto _L1
_L1:
        HashSet hashset;
        Iterator iterator;
        hashset = new HashSet();
        iterator = f.iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        SocializeUtils.saveObject(hashset, "image_uri_cache");
_L2:
        return;
_L4:
        Uri uri = (Uri)iterator.next();
        hashset.add((new StringBuilder(String.valueOf(uri.getScheme()))).append("://").append(uri.getAuthority()).append(uri.getPath()).toString());
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void c(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        SHARE_MEDIA share_media1 = SHARE_MEDIA.convertToEmun(share_media.toString());
        String s1 = OauthHelper.getUsid(context, share_media1);
        if (OauthHelper.isAuthenticated(context, share_media1))
        {
            postShare(context, s1, share_media, snspostlistener);
            return;
        } else
        {
            l = true;
            postShare(context, share_media, snspostlistener);
            return;
        }
    }

    private void c(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        getEntity().addStatisticsData(context, share_media, 18);
        umauthlistener = new ad(this, umauthlistener, context);
        context = new av(context, a, share_media, umauthlistener);
        if (umauthlistener != null)
        {
            umauthlistener.onStart(share_media);
        }
        SocializeUtils.safeShowDialog(context, false);
    }

    static void c(c c1)
    {
        c1.c();
    }

    private boolean c(Context context, SHARE_MEDIA share_media)
    {
        if (context != null && share_media != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        context = share_media.toString();
        if (!i.isCustomPlatform(share_media))
        {
            break MISSING_BLOCK_LABEL_68;
        }
        share_media = getConfig().getCustomPlatforms().iterator();
_L5:
        if (!share_media.hasNext()) goto _L1; else goto _L3
_L3:
        if (!context.equals(((SnsPlatform)share_media.next()).mKeyword)) goto _L5; else goto _L4
_L4:
        return true;
        boolean flag;
        if (getConfig().containsDeletePlatform(share_media))
        {
            flag = false;
        } else
        {
            flag = true;
        }
        return flag;
    }

    static ce d(c c1)
    {
        return c1.o;
    }

    private void d(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        Object obj = getConfig().getCustomPlatforms();
        if (obj == null || ((List) (obj)).size() <= 0) goto _L2; else goto _L1
_L1:
        obj = ((List) (obj)).iterator();
_L5:
        if (((Iterator) (obj)).hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        CustomPlatform customplatform = (CustomPlatform)((Iterator) (obj)).next();
        if ("sms".equals(share_media.toString()))
        {
            getConfig().closeToast();
            shareSms(context);
            return;
        }
        if ("email".equals(share_media.toString()))
        {
            getConfig().closeToast();
            shareEmail(context);
            return;
        }
        if (customplatform.mKeyword.equals(share_media.toString()))
        {
            getConfig().closeToast();
            customplatform.mClickListener.onClick(customplatform, a, snspostlistener);
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void d(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        if (share_media != SHARE_MEDIA.SMS && share_media != SHARE_MEDIA.EMAIL) goto _L2; else goto _L1
_L1:
        Object obj = (new StringBuilder(String.valueOf(share_media.toString()))).append("\u4E0D\u652F\u6301\u6388\u6743...").toString();
_L4:
        String s1 = ((String) (obj));
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            s1 = (new StringBuilder(String.valueOf(share_media.toString()))).append("\u4E0D\u652F\u6301\u6388\u6743...").toString();
        }
        Toast.makeText(context, s1, 0).show();
        Log.d(h, s1);
        if (umauthlistener != null)
        {
            umauthlistener.onError(new SocializeException(s1), share_media);
        }
        return;
_L2:
        obj = getConfig().getCustomPlatforms().iterator();
        CustomPlatform customplatform;
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                obj = "";
                continue; /* Loop/switch isn't completed */
            }
            customplatform = (CustomPlatform)((Iterator) (obj)).next();
        } while (!customplatform.mKeyword.equals(share_media.toString()));
        obj = (new StringBuilder(String.valueOf(customplatform.mShowWord))).append("\u4E0D\u652F\u6301\u6388\u6743...").toString();
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void e(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        Object obj = new Intent(context, com/umeng/socialize/view/ShareActivity);
        ((Intent) (obj)).putExtra("dc", a.mDescriptor);
        ((Intent) (obj)).putExtra("sns", share_media.toString());
        if (OauthHelper.isAuthenticated(context, share_media))
        {
            if (l)
            {
                obj = OauthHelper.getUsid(context, share_media);
                l = false;
                postShare(context, ((String) (obj)), share_media, snspostlistener);
                return;
            }
            if (getConfig().contains(snspostlistener) <= 0)
            {
                getConfig().registerListener(snspostlistener);
            }
            context.startActivity(((Intent) (obj)));
            return;
        } else
        {
            c = a(context, share_media, "", false);
            doOauthVerify(context, share_media, new p(this, context, snspostlistener, ((Intent) (obj))));
            return;
        }
    }

    private void j(Context context)
    {
        if (b == null)
        {
            b = new ai(this, context);
        }
    }

    private void k(Context context)
    {
        Object obj = (Set)SocializeUtils.getObject("image_uri_cache");
        if (obj == null || ((Set) (obj)).size() <= 0) goto _L2; else goto _L1
_L1:
        obj = ((Set) (obj)).iterator();
_L12:
        if (((Iterator) (obj)).hasNext()) goto _L3; else goto _L2
_L2:
        if (f == null || f.size() <= 0) goto _L5; else goto _L4
_L4:
        obj = f.iterator();
_L8:
        if (((Iterator) (obj)).hasNext()) goto _L7; else goto _L6
_L6:
        f.clear();
_L10:
        return;
_L3:
        String s1 = (String)((Iterator) (obj)).next();
        f.add(Uri.parse(s1));
        continue; /* Loop/switch isn't completed */
_L7:
        context.getContentResolver().delete((Uri)((Iterator) (obj)).next(), null, null);
          goto _L8
_L5:
        if (f != null) goto _L10; else goto _L9
_L9:
        f = new HashSet();
        return;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public void a(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        if (k.get(SHARE_MEDIA.QZONE.toString()) == null || TextUtils.isEmpty(k.get(SHARE_MEDIA.QZONE.toString()).toString()))
        {
            Log.e(h, "\u65E0\u6CD5\u83B7\u53D6\u5230AppId");
            return;
        }
        String s1 = k.get(SHARE_MEDIA.QZONE.toString()).toString();
        if ("100424468".equals(s1) || getConfig().getQZoneAddSharePermission())
        {
            e(context, share_media, snspostlistener);
            return;
        }
        if (DeviceConfig.isAppInstalled("com.tencent.mobileqq", context))
        {
            QZoneSsoHandler.invokeQQShare(getEntity(), context, s1, snspostlistener);
            return;
        } else
        {
            QZoneSsoHandler.invokeWebViewShare(getEntity(), context, s1, snspostlistener);
            return;
        }
    }

    public void a(Context context, com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener umdatalistener)
    {
        (new ao(this, umdatalistener, this, context)).execute();
    }

    public void deleteOauth(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        (new v(this, socializeclientlistener, this, context, share_media)).execute();
    }

    public void directShare(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        getEntity().addStatisticsData(context, share_media, 8);
        if (!c(context, share_media))
        {
            Log.e(h, (new StringBuilder()).append(share_media).append("\u6CA1\u6709\u5728SDK\u4E2D\u914D\u7F6E").toString());
            if (context != null)
            {
                Toast.makeText(context, (new StringBuilder()).append(share_media).append("\u6CA1\u6709\u5728SDK\u4E2D\u914D\u7F6E").toString(), 0).show();
            }
            return;
        }
        if (b == null)
        {
            j(context);
        }
        boolean flag;
        if (a.getShareType() == ShareType.NORMAL)
        {
            SocializeConfig.setSelectedPlatfrom(share_media);
        } else
        {
            SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.GENERIC);
        }
        getConfig().registerListener(b);
        flag = i.isCustomPlatform(share_media);
        if (flag || share_media == SHARE_MEDIA.SMS || share_media == SHARE_MEDIA.EMAIL)
        {
            d(context, share_media, snspostlistener);
            return;
        }
        if (flag)
        {
            Log.e(h, context.getString(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_add_custom_platform")));
            return;
        }
        j = SocializeUtils.getPlatformSecret(context);
        k = SocializeUtils.getPlatformKey(context);
        String s1 = share_media.toString();
        if (share_media == SHARE_MEDIA.QZONE)
        {
            if (k != null && k.size() > 0 && k.containsKey(s1) && !TextUtils.isEmpty(k.get(s1).toString()) && j != null && j.size() > 0 && j.containsKey(s1) && !TextUtils.isEmpty((CharSequence)j.get(s1)))
            {
                b(context, share_media, snspostlistener);
                a(context, ((com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener) (null)));
                return;
            } else
            {
                a(context, new m(this, context, share_media, snspostlistener));
                return;
            }
        } else
        {
            c(context, share_media, snspostlistener);
            return;
        }
    }

    public void doOauthVerify(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        if (!a(share_media))
        {
            d(context, share_media, umauthlistener);
        } else
        {
            getEntity().addStatisticsData(context, share_media, 3);
            com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener2 = b(context, share_media, umauthlistener);
            com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener1 = a(context, share_media, umauthlistener);
            UMSsoHandler umssohandler = getConfig().getSinaSsoHandler();
            UMSsoHandler umssohandler1 = getConfig().getQZoneSsoHandler();
            UMSsoHandler umssohandler2 = getConfig().getTencentWBSsoHandler();
            Log.d(h, (new StringBuilder("######## click sns logo -->  ")).append(share_media.toString()).toString());
            if (share_media == SHARE_MEDIA.SINA && umssohandler != null && i.isOpenSinaSSO() && SocializeConfig.isSupportSinaSSO(context))
            {
                if (context instanceof Activity)
                {
                    a((Activity)context, share_media, umauthlistener2, umssohandler);
                    return;
                } else
                {
                    Log.e("com.umeng.socialize", "can`t do sso,the context param is not activity.");
                    return;
                }
            }
            if (share_media == SHARE_MEDIA.TENCENT && umssohandler2 != null && i.isOpenTencentWBSSO() && SocializeConfig.isSupportTencentWBSSO(context))
            {
                if (context instanceof Activity)
                {
                    a((Activity)context, share_media, umauthlistener2, umssohandler2);
                    return;
                } else
                {
                    Log.e("com.umeng.socialize", "can`t do sso,the context param is not activity.");
                    return;
                }
            }
            if (share_media == SHARE_MEDIA.QZONE && i.isOpenQQZoneSSO() && SocializeConfig.isSupportQQZoneSSO(context) && umssohandler1 != null)
            {
                if (context instanceof Activity)
                {
                    a((Activity)context, share_media, umauthlistener1, umssohandler1);
                    return;
                } else
                {
                    Log.e("com.umeng.socialize", "can`t do sso,the context param is not activity.");
                    return;
                }
            }
            if (share_media == SHARE_MEDIA.QQ)
            {
                if (!DeviceConfig.isAppInstalled("com.tencent.mobileqq", context))
                {
                    Toast.makeText(context, "\u8BF7\u5B89\u88C5\u624B\u673AQQ\u5BA2\u6237\u7AEF...", 0).show();
                    return;
                }
                SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.QQ);
                context = (UMQQSsoHandler)i.getSsoHandler(5658);
                if (context != null)
                {
                    SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.QQ);
                    context.login(umauthlistener1);
                    return;
                } else
                {
                    Log.e("com.umeng.socialize", "\u8BF7\u6DFB\u52A0\u5BF9QQ\u5E73\u53F0\u7684\u652F\u6301...");
                    return;
                }
            }
            if (share_media == SHARE_MEDIA.FACEBOOK)
            {
                share_media = i.getSsoHandler(64206);
                if (share_media != null && (context instanceof Activity))
                {
                    share_media.setShareAfterLogin(false);
                    share_media.authorize((Activity)context, umauthlistener);
                    return;
                }
                if (context != null)
                {
                    Toast.makeText(context, "\u6CA1\u6709\u6DFB\u52A0facebook\u5E73\u53F0 \u6216\u8005 doOauthVerify\u7684context\u53C2\u6570\u4E0D\u662Factivity\u7C7B\u578B", 0).show();
                    Log.e(h, "### \u6CA1\u6709\u6DFB\u52A0facebook\u5E73\u53F0 \u6216\u8005 doOauthVerify\u7684context\u53C2\u6570\u4E0D\u662Factivity\u7C7B\u578B");
                    return;
                }
            } else
            {
                c(context, share_media, umauthlistener2);
                return;
            }
        }
    }

    public transient void follow(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, String as[])
    {
        if (OauthHelper.isAuthenticated(context, share_media))
        {
            String s1 = OauthHelper.getUsid(context, share_media);
            (new ag(this, mulstatuslistener, this, context, new SNSPair(share_media.toString(), s1), as, share_media)).execute();
        } else
        if (mulstatuslistener != null)
        {
            mulstatuslistener.onStart();
            mulstatuslistener.onComplete(new MultiStatus(-101), -101, a);
            return;
        }
    }

    public void getComments(Context context, com.umeng.socialize.controller.listener.SocializeListeners.FetchCommetsListener fetchcommetslistener, long l1)
    {
        (new an(this, fetchcommetslistener, this, context, l1)).execute();
    }

    public SocializeConfig getConfig()
    {
        if (a.getEntityConfig() == null)
        {
            if (i == null)
            {
                i = SocializeConfig.getSocializeConfig();
            }
            return i;
        } else
        {
            return a.getEntityConfig();
        }
    }

    public void getFriends(Context context, com.umeng.socialize.controller.listener.SocializeListeners.FetchFriendsListener fetchfriendslistener, SHARE_MEDIA share_media)
    {
        String s1 = OauthHelper.getUsid(context, share_media);
        if (TextUtils.isEmpty(s1))
        {
            if (fetchfriendslistener != null)
            {
                fetchfriendslistener.onStart();
            }
            if (fetchfriendslistener != null)
            {
                fetchfriendslistener.onComplete(-101, null);
            }
        }
        (new u(this, fetchfriendslistener, this, context, share_media, s1)).execute();
    }

    public void getPlatformInfo(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener umdatalistener)
    {
        if (OauthHelper.isAuthenticated(context, share_media))
        {
            String s1 = OauthHelper.getUsid(context, share_media);
            (new ah(this, umdatalistener, this, context, new SNSPair(share_media.toString(), s1))).execute();
        } else
        if (umdatalistener != null)
        {
            umdatalistener.onStart();
            umdatalistener.onComplete(-101, null);
            return;
        }
    }

    public void getUserInfo(Context context, com.umeng.socialize.controller.listener.SocializeListeners.FetchUserListener fetchuserlistener)
    {
        (new j(this, fetchuserlistener, this, context)).execute();
    }

    public boolean hasShareContent()
    {
        return a != null && !TextUtils.isEmpty(a.getShareContent());
    }

    public boolean hasShareImage()
    {
        return a != null && a.getMedia() != null;
    }

    public void initEntity(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        com.umeng.socom.util.b.a(DeviceConfig.getAppkey(context));
        (new o(this, socializeclientlistener, this, context)).execute();
    }

    public void likeChange(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        (new z(this, socializeclientlistener, this, context)).execute();
    }

    public void login(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        if (OauthHelper.isAuthenticated(context, share_media))
        {
            a(context, share_media, socializeclientlistener);
            return;
        } else
        {
            doOauthVerify(context, share_media, new e(this, context, socializeclientlistener));
            return;
        }
    }

    public void login(Context context, SnsAccount snsaccount, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        (new f(this, socializeclientlistener, context, snsaccount)).execute();
    }

    public void loginout(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        (new g(this, socializeclientlistener, this, context)).execute();
    }

    public void openComment(Context context, boolean flag)
    {
        Intent intent = new Intent(context, com/umeng/socialize/view/CommentActivity);
        intent.putExtra("dc", a.mDescriptor);
        if (flag)
        {
            showLoginDialog(context, new y(this, context, intent));
            return;
        } else
        {
            context.startActivity(intent);
            return;
        }
    }

    public void openShare(Activity activity, boolean flag)
    {
        if (!a(activity))
        {
            return;
        }
        getEntity().addStatisticsData(activity, SHARE_MEDIA.GENERIC, 1);
        o = null;
        am am1 = new am(activity);
        am1.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        o = new ce(activity, am1, UMServiceFactory.getUMSocialService(a.mDescriptor, RequestType.SOCIAL));
        o.setFocusable(true);
        o.setBackgroundDrawable(new BitmapDrawable());
        am1.a(new w(this));
        if (UMQQSsoHandler.getTencent() != null && (UMQQSsoHandler.mActivity == null || UMQQSsoHandler.mActivity.isFinishing()))
        {
            b(activity);
        }
        if (flag)
        {
            showLoginDialog(activity, new x(this, activity));
            return;
        } else
        {
            o.showAtLocation(activity.getWindow().getDecorView(), 80, 0, 0);
            return;
        }
    }

    public transient void openUserCenter(Context context, int ai1[])
    {
        boolean flag = false;
        int i1 = ((flag) ? 1 : 0);
        if (ai1 != null)
        {
            i1 = ((flag) ? 1 : 0);
            if (ai1.length > 0)
            {
                i1 = ai1[0];
            }
        }
        ai1 = new ck(context, a.mDescriptor, i1);
        System.out.println(i1 & 0xf);
        if (1 == (i1 & 0xf))
        {
            showLoginDialog(context, new aa(this, ai1, context));
            return;
        } else
        {
            ai1.show();
            return;
        }
    }

    public transient void postComment(Context context, UMComment umcomment, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, SHARE_MEDIA ashare_media[])
    {
        a(context, a(context, new HashMap(), ashare_media), umcomment, mulstatuslistener);
    }

    public void postLike(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        (new aj(this, socializeclientlistener, this, context)).execute();
    }

    public void postShare(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        getEntity().addStatisticsData(context, share_media, 2);
        if (b == null)
        {
            j(context);
        }
        SocializeConfig.setSelectedPlatfrom(share_media);
        getConfig().registerListener(b);
        boolean flag = i.isCustomPlatform(share_media);
        if (flag || share_media == SHARE_MEDIA.SMS || share_media == SHARE_MEDIA.EMAIL)
        {
            d(context, share_media, snspostlistener);
        } else
        {
            if (flag)
            {
                Log.e(h, context.getString(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_add_custom_platform")));
                return;
            }
            String s1 = share_media.toString();
            j = SocializeUtils.getPlatformSecret(context);
            k = SocializeUtils.getPlatformKey(context);
            if (share_media == SHARE_MEDIA.QZONE)
            {
                if (k != null && k.size() > 0 && k.containsKey(s1) && !TextUtils.isEmpty(k.get(s1).toString()) && j != null && j.size() > 0 && j.containsKey(s1) && !TextUtils.isEmpty((CharSequence)j.get(s1)))
                {
                    a(context, share_media, snspostlistener);
                    if (!l)
                    {
                        a(context, ((com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener) (null)));
                        return;
                    }
                } else
                {
                    a(context, new n(this, context, share_media, snspostlistener));
                    return;
                }
            } else
            {
                e(context, share_media, snspostlistener);
                return;
            }
        }
    }

    public void postShare(Context context, String s1, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        UMShareMsg umsharemsg;
        if (getEntity().getShareMsg() != null)
        {
            umsharemsg = getEntity().getShareMsg();
            getEntity().setShareMsg(null);
        } else
        {
            umsharemsg = new UMShareMsg();
            umsharemsg.mText = a.getShareContent();
            umsharemsg.setMediaData(a.getMedia());
        }
        a.setFireCallback(true);
        postShareByCustomPlatform(context, s1, share_media.toString(), umsharemsg, snspostlistener);
    }

    public void postShareByCustomPlatform(Context context, String s1, String s2, UMShareMsg umsharemsg, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        (new com.umeng.socialize.controller.impl.q(this, snspostlistener, s2, s1, this, context, umsharemsg, SHARE_MEDIA.convertToEmun(s2))).execute();
    }

    public void postShareByID(Context context, String s1, String s2, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        (new t(this, snspostlistener, share_media, s2, s1, this, context)).execute();
    }

    public transient void postShareMulti(Context context, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, SHARE_MEDIA ashare_media[])
    {
        HashMap hashmap = new HashMap();
        ashare_media = a(context, hashmap, ashare_media);
        UMShareMsg umsharemsg = new UMShareMsg();
        umsharemsg.mText = a.getShareContent();
        umsharemsg.setMediaData(a.getMedia());
        if (ashare_media != null && ashare_media.length > 0)
        {
            (new s(this, mulstatuslistener, this, context, ashare_media, umsharemsg, hashmap)).execute();
        } else
        if (mulstatuslistener != null)
        {
            mulstatuslistener.onStart();
            context = new MultiStatus(-105);
            context.setPlatformCode(hashmap);
            mulstatuslistener.onComplete(context, -105, a);
            return;
        }
    }

    public void postUnLike(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        (new com.umeng.socialize.controller.impl.am(this, socializeclientlistener, this, context)).execute();
    }

    public boolean registerListener(com.umeng.socialize.bean.CallbackConfig.ICallbackListener icallbacklistener)
        throws SocializeException
    {
        return getConfig().registerListener(icallbacklistener);
    }

    public boolean registerListener(com.umeng.socialize.bean.CallbackConfig.ICallbackListener icallbacklistener, int i1)
        throws SocializeException
    {
        return getConfig().registerListener(icallbacklistener, i1);
    }

    public void setAppWebSite(SHARE_MEDIA share_media, String s1)
    {
        SocializeEntity.setAppWebSite(share_media, s1);
    }

    public void setAppWebSite(String s1)
    {
        setAppWebSite(SHARE_MEDIA.GENERIC, s1);
    }

    public void setConfig(SocializeConfig socializeconfig)
    {
        if (socializeconfig == null)
        {
            return;
        } else
        {
            a.setConfig(socializeconfig);
            return;
        }
    }

    public void setCustomId(String s1)
    {
        a.mCustomID = s1;
    }

    public void setEntityName(String s1)
    {
        a.setNickName(s1);
    }

    public void setGlobalConfig(SocializeConfig socializeconfig)
    {
        if (socializeconfig == null)
        {
            return;
        } else
        {
            i = socializeconfig;
            return;
        }
    }

    public void setShareContent(String s1)
    {
        a.setShareContent(s1);
    }

    public void setShareImage(UMImage umimage)
    {
        a.setMedia(umimage);
    }

    public boolean setShareMedia(UMediaObject umediaobject)
    {
        if (umediaobject == null)
        {
            a.setMedia(null);
            return true;
        }
        if (umediaobject.isMultiMedia())
        {
            a.setMedia(umediaobject);
            return true;
        } else
        {
            Log.w(h, "unable set share media.type is no support.");
            return false;
        }
    }

    public void setShareType(ShareType sharetype)
    {
        a.setShareType(sharetype);
    }

    public void shareEmail(Context context)
    {
        k(context);
        Object obj2 = getEntity();
        Object obj = getConfig().getMailSubject();
        Object obj3 = ((SocializeEntity) (obj2)).getMedia(SHARE_MEDIA.EMAIL);
        Object obj1;
        if (((SocializeEntity) (obj2)).getShareType() == ShareType.SHAKE)
        {
            obj3 = ((SocializeEntity) (obj2)).getShareMsg().mText;
            obj1 = (UMImage)((SocializeEntity) (obj2)).getShareMsg().getMedia();
            obj2 = obj;
            obj = obj3;
        } else
        {
            obj1 = (UMImage)getEntity().getMedia(com/umeng/socialize/media/UMImage);
            if (obj3 != null && (obj3 instanceof MailShareContent))
            {
                obj2 = ((MailShareContent)obj3).getTitle();
                obj = ((MailShareContent)obj3).getShareContent();
                obj1 = ((MailShareContent)obj3).getShareImage();
            } else
            {
                obj3 = ((SocializeEntity) (obj2)).getShareContent();
                obj2 = obj;
                obj = obj3;
            }
        }
        obj3 = new Intent("android.intent.action.SEND");
        ((Intent) (obj3)).putExtra("android.intent.extra.TITLE", "Share");
        ((Intent) (obj3)).setType("message/rfc822");
        ((Intent) (obj3)).putExtra("android.intent.extra.SUBJECT", ((String) (obj2)));
        if (!TextUtils.isEmpty(((CharSequence) (obj))))
        {
            ((Intent) (obj3)).putExtra("android.intent.extra.TEXT", Html.fromHtml(((String) (obj))));
        }
        if (obj1 != null && ((UMImage) (obj1)).isUrlMedia() && !TextUtils.isEmpty(((UMImage) (obj1)).toUrl()))
        {
            obj1 = ((UMImage) (obj1)).toUrl();
            c = a(context, ((SHARE_MEDIA) (null)), "\u52A0\u8F7D\u56FE\u7247\u4E2D,\u8BF7\u7A0D\u5019...", true);
            (new l(this, ((String) (obj1)), context, ((Intent) (obj3)), ((String) (obj)))).execute();
            return;
        }
        if (obj1 != null)
        {
            obj1 = ((UMImage) (obj1)).getImageCachePath();
        } else
        {
            obj1 = "";
        }
        a(context, ((Intent) (obj3)), ((String) (obj1)), ((String) (obj)));
    }

    public void shareSms(Context context)
    {
        a(context, ((com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener) (null)));
    }

    public void shareTo(Activity activity, SHARE_MEDIA share_media, String s1, byte abyte0[])
    {
        if (!TextUtils.isEmpty(s1))
        {
            setShareContent(s1);
        }
        if (abyte0 != null)
        {
            setShareMedia(new UMImage(activity, abyte0));
        } else
        {
            setShareMedia(null);
        }
        postShare(activity, share_media, null);
    }

    public void shareTo(Activity activity, String s1, byte abyte0[])
    {
        if (!TextUtils.isEmpty(s1))
        {
            setShareContent(s1);
        }
        if (abyte0 != null)
        {
            setShareMedia(new UMImage(activity, abyte0));
        } else
        {
            setShareMedia(null);
        }
        openShare(activity, false);
    }

    public void showLoginDialog(Context context, com.umeng.socialize.controller.listener.SocializeListeners.LoginListener loginlistener)
    {
        (new ak(context, a.mDescriptor, loginlistener)).a();
    }

    public void showPostComment(Context context)
    {
        (new q(context, a)).show();
    }

    public boolean unregisterListener(com.umeng.socialize.bean.CallbackConfig.ICallbackListener icallbacklistener)
    {
        return getConfig().unregisterListener(icallbacklistener);
    }

    public void uploadToken(Context context, UMToken umtoken, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        (new al(this, new com.umeng.socialize.controller.impl.ak(this, socializeclientlistener, umtoken, context), context, umtoken)).execute();
    }

}
