// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.common.c;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.Log;
import com.umeng.socom.util.b;
import com.umeng.socom.util.i;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.view:
//            aw, ax, ay, bb, 
//            bc, bd

public class av extends Dialog
{
    private class a extends WebViewClient
    {

        final av b;

        private void a(String s)
        {
            Log.c(av.a(), (new StringBuilder("OauthDialog ")).append(s).toString());
            av.a(b, 1);
            av.a(b, SocializeUtils.parseUrl(s));
            if (b.isShowing())
            {
                SocializeUtils.safeDismissDialog(b);
            }
        }

        public void onPageFinished(WebView webview, String s)
        {
            av.e(b).sendEmptyMessage(1);
            super.onPageFinished(webview, s);
            if (av.f(b) == 0 && s.startsWith(av.d(b)))
            {
                a(s);
            }
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            String s1 = s;
            if (s.contains("?ud_get="))
            {
                s1 = av.a(b, s);
            }
            if (s1.contains("access_key") && s1.contains("access_secret"))
            {
                if (s1.startsWith(av.d(b)))
                {
                    a(s1);
                }
                return;
            } else
            {
                super.onPageStarted(webview, s1, bitmap);
                return;
            }
        }

        public void onReceivedError(WebView webview, int i1, String s, String s1)
        {
            Log.b(av.a(), (new StringBuilder("onReceivedError: ")).append(s1).append("\nerrCode: ").append(i1).append(" description:").append(s).toString());
            if (av.a(b).getVisibility() == 0)
            {
                av.a(b).setVisibility(8);
            }
            super.onReceivedError(webview, i1, s, s1);
            SocializeUtils.safeDismissDialog(b);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if (!DeviceConfig.isNetworkAvailable(com.umeng.socialize.view.av.c(b)))
            {
                Toast.makeText(com.umeng.socialize.view.av.c(b), "\u62B1\u6B49,\u60A8\u7684\u7F51\u7EDC\u4E0D\u53EF\u7528...", 0).show();
                return true;
            }
            String s1 = s;
            if (s.contains("?ud_get="))
            {
                s1 = av.a(b, s);
            }
            if (s1.startsWith(av.d(b)))
            {
                a(s1);
            }
            return super.shouldOverrideUrlLoading(webview, s1);
        }

        private a()
        {
            b = av.this;
            super();
        }

        a(a a1)
        {
            this();
        }

        a(a a1, a a2)
        {
            this();
        }
    }


    private static final String a = com/umeng/socialize/view/av.getName();
    private static int p[];
    private WebView b;
    private com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener c;
    private View d;
    private View e;
    private CheckBox f;
    private int g;
    private Bundle h;
    private UMSocialService i;
    private String j;
    private Context k;
    private SHARE_MEDIA l;
    private Set m;
    private com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener n;
    private Handler o;

    public av(Context context, SocializeEntity socializeentity, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        super(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_popup_dialog"));
        g = 0;
        j = "error";
        o = new aw(this);
        k = context;
        c = umauthlistener;
        l = share_media;
        i = UMServiceFactory.getUMSocialService(socializeentity.mDescriptor, RequestType.SOCIAL);
        context = i.getConfig();
        m = context.getFollowFids(share_media);
        n = context.getOauthDialogFollowListener();
        b()[share_media.ordinal()];
        JVM INSTR tableswitch 1 8: default 148
    //                   1 545
    //                   2 585
    //                   3 148
    //                   4 565
    //                   5 148
    //                   6 148
    //                   7 555
    //                   8 575;
           goto _L1 _L2 _L3 _L1 _L4 _L1 _L1 _L5 _L6
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_585;
_L7:
        d = ((LayoutInflater)k.getSystemService("layout_inflater")).inflate(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_oauth_dialog"), null);
        context = d.findViewById(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_follow"));
        f = (CheckBox)d.findViewById(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_follow_check"));
        int i1;
        if (m != null && m.size() > 0 && (share_media == SHARE_MEDIA.SINA || share_media == SHARE_MEDIA.TENCENT))
        {
            context.setVisibility(0);
        } else
        {
            context.setVisibility(8);
        }
        e = d.findViewById(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.ID, "progress_bar_parent"));
        e.setVisibility(0);
        ((Button)d.findViewById(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"))).setOnClickListener(new ax(this));
        d.findViewById(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt")).setVisibility(8);
        ((TextView)d.findViewById(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"))).setText((new StringBuilder("\u6388\u6743")).append(com.umeng.socialize.common.c.a(k, share_media)).toString());
        c();
        socializeentity = d.findViewById(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_titlebar"));
        com.umeng.socom.util.i.a(k);
        i1 = com.umeng.socom.util.i.a(200F);
        context = new ay(this, k, context, socializeentity, i1);
        context.addView(d, -1, -1);
        setContentView(context);
        context = getWindow().getAttributes();
        if (SocializeUtils.isFloatWindowStyle(k))
        {
            socializeentity = SocializeUtils.getFloatWindowSize(k);
            context.width = socializeentity[0];
            context.height = socializeentity[1];
            i1 = ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_dialog_anim_fade");
        } else
        {
            context.height = -1;
            context.width = -1;
            i1 = ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_dialog_animations");
        }
        context.gravity = 17;
        getWindow().getAttributes().windowAnimations = i1;
        return;
_L2:
        j = "http://sns.whalecloud.com/sina2/main?uid";
          goto _L7
_L5:
        j = "http://sns.whalecloud.com/tenc2/main?uid";
          goto _L7
_L4:
        j = "http://sns.whalecloud.com/renr2/main?uid";
          goto _L7
_L6:
        j = "http://sns.whalecloud.com/douban/main?uid";
          goto _L7
        j = "http://sns.whalecloud.com/qzone/main?uid";
          goto _L7
    }

    static View a(av av1)
    {
        return av1.e;
    }

    static String a()
    {
        return a;
    }

    private String a(SocializeEntity socializeentity, SHARE_MEDIA share_media)
    {
        String s = SocializeUtils.getAppkey(k);
        s = (new StringBuilder("http://log.umsns.com/share/auth/")).append(s).append("/").append(socializeentity.mEntityKey).append("/?").toString();
        socializeentity = SocializeNetUtils.getBaseQuery(k, socializeentity, 10);
        share_media = new StringBuilder((new StringBuilder("via=")).append(share_media).append("&").toString());
        Iterator iterator = socializeentity.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if (share_media.length() > 0)
                {
                    share_media.deleteCharAt(share_media.length() - 1);
                }
                String s1;
                try
                {
                    socializeentity = (new StringBuilder("ud_get=")).append(com.umeng.socom.util.b.c(share_media.toString(), "UTF-8")).toString();
                    socializeentity = (new StringBuilder(String.valueOf(s))).append(socializeentity).toString();
                }
                // Misplaced declaration of an exception variable
                catch (SocializeEntity socializeentity)
                {
                    socializeentity.printStackTrace();
                    return s;
                }
                return socializeentity;
            }
            s1 = (String)iterator.next();
            share_media.append((new StringBuilder(String.valueOf(s1))).append("=").append(socializeentity.get(s1)).append("&").toString());
        } while (true);
    }

    static String a(av av1, SocializeEntity socializeentity, SHARE_MEDIA share_media)
    {
        return av1.a(socializeentity, share_media);
    }

    static String a(av av1, String s)
    {
        return av1.a(s);
    }

    private String a(String s)
    {
        String s1;
        try
        {
            String as[] = s.split("ud_get=");
            as[1] = com.umeng.socom.util.b.d(as[1], "UTF-8").trim();
            s1 = (new StringBuilder(String.valueOf(as[0]))).append(as[1]).toString();
        }
        catch (Exception exception)
        {
            Log.b(a, "### AuthWebViewClient\u89E3\u5BC6\u5931\u8D25");
            exception.printStackTrace();
            return s;
        }
        return s1;
    }

    static void a(av av1, int i1)
    {
        av1.g = i1;
    }

    static void a(av av1, Bundle bundle)
    {
        av1.h = bundle;
    }

    static void b(av av1)
    {
        av1.e();
    }

    static int[] b()
    {
        int ai[] = p;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[SHARE_MEDIA.values().length];
        try
        {
            ai[SHARE_MEDIA.DOUBAN.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror18) { }
        try
        {
            ai[SHARE_MEDIA.EMAIL.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror17) { }
        try
        {
            ai[SHARE_MEDIA.FACEBOOK.ordinal()] = 12;
        }
        catch (NoSuchFieldError nosuchfielderror16) { }
        try
        {
            ai[SHARE_MEDIA.GENERIC.ordinal()] = 19;
        }
        catch (NoSuchFieldError nosuchfielderror15) { }
        try
        {
            ai[SHARE_MEDIA.GOOGLEPLUS.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror14) { }
        try
        {
            ai[SHARE_MEDIA.INSTAGRAM.ordinal()] = 18;
        }
        catch (NoSuchFieldError nosuchfielderror13) { }
        try
        {
            ai[SHARE_MEDIA.LAIWANG.ordinal()] = 14;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        try
        {
            ai[SHARE_MEDIA.LAIWANG_DYNAMIC.ordinal()] = 15;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            ai[SHARE_MEDIA.QQ.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            ai[SHARE_MEDIA.QZONE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            ai[SHARE_MEDIA.RENREN.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            ai[SHARE_MEDIA.SINA.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            ai[SHARE_MEDIA.SMS.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai[SHARE_MEDIA.TENCENT.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai[SHARE_MEDIA.TWITTER.ordinal()] = 13;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai[SHARE_MEDIA.WEIXIN.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai[SHARE_MEDIA.WEIXIN_CIRCLE.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[SHARE_MEDIA.YIXIN.ordinal()] = 16;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[SHARE_MEDIA.YIXIN_CIRCLE.ordinal()] = 17;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        p = ai;
        return ai;
    }

    static Context c(av av1)
    {
        return av1.k;
    }

    private boolean c()
    {
        b = (WebView)d.findViewById(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.ID, "webView"));
        b.setWebViewClient(d());
        b.setWebChromeClient(new bb(this));
        b.requestFocusFromTouch();
        b.setVerticalScrollBarEnabled(false);
        b.setHorizontalScrollBarEnabled(false);
        b.setScrollBarStyle(0);
        b.getSettings().setCacheMode(2);
        WebSettings websettings = b.getSettings();
        websettings.setJavaScriptEnabled(true);
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            websettings.setPluginState(android.webkit.WebSettings.PluginState.ON);
        }
        websettings.setSupportZoom(true);
        websettings.setBuiltInZoomControls(true);
        websettings.setAllowFileAccess(true);
        websettings.setLayoutAlgorithm(android.webkit.WebSettings.LayoutAlgorithm.NORMAL);
        websettings.setUseWideViewPort(true);
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            websettings.setLoadWithOverviewMode(true);
            websettings.setDatabaseEnabled(true);
            websettings.setDomStorageEnabled(true);
            websettings.setGeolocationEnabled(true);
            websettings.setAppCacheEnabled(true);
        }
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            try
            {
                Method method = android/webkit/WebSettings.getDeclaredMethod("setDisplayZoomControls", new Class[] {
                    Boolean.TYPE
                });
                method.setAccessible(true);
                method.invoke(websettings, new Object[] {
                    Boolean.valueOf(false)
                });
            }
            catch (Exception exception1) { }
        }
        try
        {
            if (l == SHARE_MEDIA.RENREN)
            {
                CookieSyncManager.createInstance(k);
                CookieManager.getInstance().removeAllCookie();
            }
        }
        catch (Exception exception)
        {
            return true;
        }
        return true;
    }

    private WebViewClient d()
    {
label0:
        {
            boolean flag = true;
            Method method;
            try
            {
                method = android/webkit/WebViewClient.getMethod("onReceivedSslError", new Class[] {
                    android/webkit/WebView, android/webkit/SslErrorHandler, android/net/http/SslError
                });
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                flag = false;
                break label0;
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                flag = false;
                break label0;
            }
            if (method == null)
            {
                flag = false;
            }
        }
        if (flag)
        {
            Log.a(a, "has method onReceivedSslError : ");
            return new bc(this, this);
        } else
        {
            Log.a(a, "has no method onReceivedSslError : ");
            return new a(null, null);
        }
    }

    static String d(av av1)
    {
        return av1.j;
    }

    static Handler e(av av1)
    {
        return av1.o;
    }

    private void e()
    {
        if (m == null || m.size() <= 0) goto _L2; else goto _L1
_L1:
        String as[];
        Iterator iterator;
        int i1;
        as = new String[m.size()];
        iterator = m.iterator();
        i1 = 0;
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        i.follow(k, l, n, as);
        f();
_L2:
        return;
_L4:
        as[i1] = (String)iterator.next();
        i1++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static int f(av av1)
    {
        return av1.g;
    }

    private void f()
    {
        try
        {
            android.content.SharedPreferences.Editor editor = k.getSharedPreferences("umeng_follow", 0).edit();
            editor.putBoolean(l.toString(), true);
            editor.commit();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    static Set g(av av1)
    {
        return av1.m;
    }

    static SHARE_MEDIA h(av av1)
    {
        return av1.l;
    }

    static WebView i(av av1)
    {
        return av1.b;
    }

    static com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener j(av av1)
    {
        return av1.c;
    }

    public void dismiss()
    {
        if (h == null) goto _L2; else goto _L1
_L1:
        if (!TextUtils.isEmpty(h.getString("uid"))) goto _L4; else goto _L3
_L3:
        if (c != null)
        {
            c.onError(new SocializeException("unfetch usid..."), l);
        }
_L6:
        super.dismiss();
        return;
_L4:
        Log.c(a, "### dismiss ");
        if (c != null)
        {
            c.onComplete(h, l);
            if (f != null && f.isChecked())
            {
                o.sendEmptyMessage(2);
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (c != null)
        {
            c.onCancel(l);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        return super.onKeyDown(i1, keyevent);
    }

    public void show()
    {
        super.show();
        h = null;
        Object obj = i.getEntity();
        if (((SocializeEntity) (obj)).mInitialized)
        {
            obj = a(((SocializeEntity) (obj)), l);
            b.loadUrl(((String) (obj)));
            return;
        } else
        {
            i.initEntity(k, new bd(this));
            return;
        }
    }

}
