// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.onlineconfig;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.h;
import java.util.Iterator;
import org.json.JSONObject;
import u.aly.bq;
import u.aly.br;
import u.aly.bw;
import u.aly.bx;
import u.aly.by;
import u.aly.cd;

// Referenced classes of package com.umeng.analytics.onlineconfig:
//            b, UmengOnlineConfigureListener, c

public class com.umeng.analytics.onlineconfig.a
{
    class a extends bx
    {

        final com.umeng.analytics.onlineconfig.a a;
        private final String e = "http://oc.umeng.com/v2/check_config_update";
        private JSONObject f;

        private JSONObject a(Context context)
        {
            JSONObject jsonobject = new JSONObject();
            try
            {
                jsonobject.put("type", "online_config");
                jsonobject.put("appkey", AnalyticsConfig.getAppkey(context));
                jsonobject.put("version_code", bq.c(context));
                jsonobject.put("package", bq.u(context));
                jsonobject.put("sdk_version", AnalyticsConfig.getSDKVersion());
                jsonobject.put("idmd5", cd.b(bq.f(context)));
                jsonobject.put("channel", AnalyticsConfig.getChannel(context));
                jsonobject.put("report_policy", com.umeng.analytics.h.a(context).c()[0]);
                jsonobject.put("last_config_time", com.umeng.analytics.onlineconfig.a.a(a, context));
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                br.b("MobclickAgent", "exception in onlineConfigInternal");
                return null;
            }
            return jsonobject;
        }

        public JSONObject a()
        {
            return f;
        }

        public String b()
        {
            return d;
        }

        public a(Context context)
        {
            a = com.umeng.analytics.onlineconfig.a.this;
            super(null);
            d = "http://oc.umeng.com/v2/check_config_update";
            f = a(context);
        }
    }

    public class b extends bw
        implements Runnable
    {

        Context a;
        final com.umeng.analytics.onlineconfig.a b;

        private void b()
        {
            com.umeng.analytics.onlineconfig.b b1 = (com.umeng.analytics.onlineconfig.b)a(b. new a(a), com/umeng/analytics/onlineconfig/b);
            if (b1 == null)
            {
                com.umeng.analytics.onlineconfig.a.a(b, null);
                return;
            }
            if (b1.b)
            {
                if (com.umeng.analytics.onlineconfig.a.a(b) != null)
                {
                    com.umeng.analytics.onlineconfig.a.a(b).a(b1.c, b1.d);
                }
                com.umeng.analytics.onlineconfig.a.a(b, a, b1);
                com.umeng.analytics.onlineconfig.a.b(b, a, b1);
                com.umeng.analytics.onlineconfig.a.a(b, b1.a);
                return;
            } else
            {
                com.umeng.analytics.onlineconfig.a.a(b, null);
                return;
            }
        }

        private boolean c()
        {
            boolean flag2 = true;
            if (!TextUtils.isEmpty(AnalyticsConfig.getAppkey(a))) goto _L2; else goto _L1
_L1:
            br.b("MobclickAgent", "Appkey is missing ,Please check AndroidManifest.xml");
_L4:
            return false;
_L2:
            boolean flag1;
            Object obj;
            SharedPreferences sharedpreferences;
            android.content.SharedPreferences.Editor editor;
            boolean flag;
            long l1;
            long l2;
            if (br.a && bq.w(a))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                break; /* Loop/switch isn't completed */
            }
            obj = com.umeng.analytics.h.a(a).j();
            l1 = ((SharedPreferences) (obj)).getLong("last_test_t", 0L);
            l2 = System.currentTimeMillis();
            if (l2 - l1 <= ((SharedPreferences) (obj)).getLong("oc_req_i", 0x927c0L))
            {
                break; /* Loop/switch isn't completed */
            }
            ((SharedPreferences) (obj)).edit().putLong("last_test_t", l2).commit();
            flag1 = true;
_L5:
            if (flag || flag1)
            {
                obj = (d)a(b. new c(a), com/umeng/analytics/onlineconfig/a$d);
                if (obj != null)
                {
                    sharedpreferences = com.umeng.analytics.h.a(a).j();
                    if (((d) (obj)).a <= sharedpreferences.getLong("oc_mdf_t", 0L))
                    {
                        flag2 = false;
                    }
                    editor = sharedpreferences.edit();
                    if (((d) (obj)).b >= 0L)
                    {
                        editor.putLong("oc_req_i", ((d) (obj)).b);
                    }
                    if (((d) (obj)).a >= 0L)
                    {
                        editor.putLong("oc_mdf_told", sharedpreferences.getLong("oc_mdf_t", 0L));
                        editor.putLong("oc_mdf_t", ((d) (obj)).a);
                    }
                    editor.commit();
                    return flag2;
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
            flag1 = false;
              goto _L5
            if (true) goto _L4; else goto _L6
_L6:
        }

        public boolean a()
        {
            return true;
        }

        public void run()
        {
            try
            {
                if (c())
                {
                    b();
                }
                return;
            }
            catch (Exception exception)
            {
                com.umeng.analytics.onlineconfig.a.a(b, null);
                br.c("MobclickAgent", "request online config error", exception);
                return;
            }
        }

        public b(Context context)
        {
            b = com.umeng.analytics.onlineconfig.a.this;
            super();
            a = context.getApplicationContext();
        }
    }

    class c extends bx
    {

        final com.umeng.analytics.onlineconfig.a a;
        private final String e = "http://oc.umeng.com/v2/get_update_time";
        private JSONObject f;

        private JSONObject a(Context context)
        {
            JSONObject jsonobject = new JSONObject();
            try
            {
                jsonobject.put("appkey", AnalyticsConfig.getAppkey(context));
                jsonobject.put("version_code", bq.c(context));
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                br.b("MobclickAgent", "exception in onlineConfigInternal");
                return null;
            }
            return jsonobject;
        }

        public JSONObject a()
        {
            return f;
        }

        public String b()
        {
            return d;
        }

        public c(Context context)
        {
            a = com.umeng.analytics.onlineconfig.a.this;
            super(null);
            d = "http://oc.umeng.com/v2/get_update_time";
            f = a(context);
        }
    }

    public static class d extends by
    {

        public long a;
        public long b;

        private void a(JSONObject jsonobject)
        {
            if (jsonobject == null)
            {
                return;
            }
            try
            {
                a = jsonobject.optLong("last_config_time", -1L);
                b = jsonobject.optLong("oc_interval", -1L) * 60L * 1000L;
                return;
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                br.e("MobclickAgent", "fail to parce online config response", jsonobject);
            }
        }

        public d(JSONObject jsonobject)
        {
            super(jsonobject);
            a = -1L;
            b = -1L;
            a(jsonobject);
        }
    }


    public static final String a = "type";
    public static final String b = "package";
    public static final String c = "channel";
    public static final String d = "idmd5";
    public static final String e = "version_code";
    public static final String f = "appkey";
    public static final String g = "sdk_version";
    private static final long k = 0x927c0L;
    private final String h = "last_config_time";
    private final String i = "report_policy";
    private final String j = "online_config";
    private UmengOnlineConfigureListener l;
    private com.umeng.analytics.onlineconfig.c m;

    public com.umeng.analytics.onlineconfig.a()
    {
        l = null;
        m = null;
    }

    static long a(com.umeng.analytics.onlineconfig.a a1, Context context)
    {
        return a1.b(context);
    }

    static com.umeng.analytics.onlineconfig.c a(com.umeng.analytics.onlineconfig.a a1)
    {
        return a1.m;
    }

    private void a(Context context, com.umeng.analytics.onlineconfig.b b1)
    {
        if (b1.c != -1)
        {
            com.umeng.analytics.h.a(context).a(b1.c, b1.d);
        }
    }

    static void a(com.umeng.analytics.onlineconfig.a a1, Context context, com.umeng.analytics.onlineconfig.b b1)
    {
        a1.a(context, b1);
    }

    static void a(com.umeng.analytics.onlineconfig.a a1, JSONObject jsonobject)
    {
        a1.a(jsonobject);
    }

    private void a(JSONObject jsonobject)
    {
        if (l != null)
        {
            l.onDataReceived(jsonobject);
        }
    }

    private long b(Context context)
    {
        return com.umeng.analytics.h.a(context).j().getLong("oc_mdf_told", 0L);
    }

    private void b(Context context, com.umeng.analytics.onlineconfig.b b1)
    {
        if (b1.a == null || b1.a.length() == 0)
        {
            return;
        }
        context = com.umeng.analytics.h.a(context).j().edit();
        try
        {
            b1 = b1.a;
            String s;
            for (Iterator iterator = b1.keys(); iterator.hasNext(); context.putString(s, b1.getString(s)))
            {
                s = (String)iterator.next();
            }

        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.c("MobclickAgent", "save online config params", context);
            return;
        }
        context.commit();
        br.a("MobclickAgent", (new StringBuilder()).append("get online setting params: ").append(b1).toString());
        return;
    }

    static void b(com.umeng.analytics.onlineconfig.a a1, Context context, com.umeng.analytics.onlineconfig.b b1)
    {
        a1.b(context, b1);
    }

    public void a()
    {
        l = null;
    }

    public void a(Context context)
    {
        if (context == null)
        {
            try
            {
                br.b("MobclickAgent", "unexpected null context in updateOnlineConfig");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                br.b("MobclickAgent", "exception in updateOnlineConfig");
            }
            break MISSING_BLOCK_LABEL_43;
        }
        (new Thread(new b(context.getApplicationContext()))).start();
        return;
    }

    public void a(UmengOnlineConfigureListener umengonlineconfigurelistener)
    {
        l = umengonlineconfigurelistener;
    }

    public void a(com.umeng.analytics.onlineconfig.c c1)
    {
        m = c1;
    }

    public void b()
    {
        m = null;
    }
}
