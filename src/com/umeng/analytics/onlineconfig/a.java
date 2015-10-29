// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.onlineconfig;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.g;
import com.umeng.analytics.j;
import com.umeng.common.Log;
import com.umeng.common.b;
import com.umeng.common.net.r;
import com.umeng.common.net.s;
import com.umeng.common.util.h;
import java.util.Iterator;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.onlineconfig:
//            b, UmengOnlineConfigureListener, c

public class com.umeng.analytics.onlineconfig.a
{
    public class a extends s
    {

        final com.umeng.analytics.onlineconfig.a a;
        private JSONObject e;

        public JSONObject a()
        {
            return e;
        }

        public String b()
        {
            return d;
        }

        public a(JSONObject jsonobject)
        {
            a = com.umeng.analytics.onlineconfig.a.this;
            super(null);
            e = jsonobject;
        }
    }

    public class b extends r
        implements Runnable
    {

        Context a;
        final com.umeng.analytics.onlineconfig.a b;

        private void b()
        {
            Object obj = com.umeng.analytics.onlineconfig.a.a(b, a);
            a a1 = b. new a(((JSONObject) (obj)));
            String as[] = g.s;
            int i = 0;
            obj = null;
label0:
            do
            {
label1:
                {
                    if (i < as.length)
                    {
                        a1.a(as[i]);
                        obj = (com.umeng.analytics.onlineconfig.b)a(a1, com/umeng/analytics/onlineconfig/b);
                        if (obj == null)
                        {
                            break label1;
                        }
                    }
                    if (obj == null)
                    {
                        com.umeng.analytics.onlineconfig.a.a(b, null);
                        return;
                    }
                    break label0;
                }
                i++;
            } while (true);
            Log.a("MobclickAgent", (new StringBuilder()).append("response : ").append(((com.umeng.analytics.onlineconfig.b) (obj)).b).toString());
            if (((com.umeng.analytics.onlineconfig.b) (obj)).b)
            {
                if (com.umeng.analytics.onlineconfig.a.a(b) != null)
                {
                    com.umeng.analytics.onlineconfig.a.a(b).a(((com.umeng.analytics.onlineconfig.b) (obj)).c, ((com.umeng.analytics.onlineconfig.b) (obj)).d);
                }
                com.umeng.analytics.onlineconfig.a.a(b, a, ((com.umeng.analytics.onlineconfig.b) (obj)));
                com.umeng.analytics.onlineconfig.a.b(b, a, ((com.umeng.analytics.onlineconfig.b) (obj)));
                com.umeng.analytics.onlineconfig.a.a(b, ((com.umeng.analytics.onlineconfig.b) (obj)).a);
                return;
            } else
            {
                com.umeng.analytics.onlineconfig.a.a(b, null);
                return;
            }
        }

        public boolean a()
        {
            return false;
        }

        public void run()
        {
            try
            {
                b();
                return;
            }
            catch (Exception exception)
            {
                com.umeng.analytics.onlineconfig.a.a(b, null);
                Log.c("MobclickAgent", "reques update error", exception);
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


    private final String a = "last_config_time";
    private final String b = "report_policy";
    private final String c = "online_config";
    private String d;
    private String e;
    private UmengOnlineConfigureListener f;
    private c g;

    public com.umeng.analytics.onlineconfig.a()
    {
        d = null;
        e = null;
        f = null;
        g = null;
    }

    static c a(com.umeng.analytics.onlineconfig.a a1)
    {
        return a1.g;
    }

    static JSONObject a(com.umeng.analytics.onlineconfig.a a1, Context context)
    {
        return a1.d(context);
    }

    private void a(Context context, com.umeng.analytics.onlineconfig.b b1)
    {
        context = j.b(context).edit();
        if (!TextUtils.isEmpty(b1.e))
        {
            context.putString("umeng_last_config_time", b1.e);
        }
        if (b1.c != -1)
        {
            context.putInt("umeng_net_report_policy", b1.c);
            context.putLong("umeng_net_report_interval", b1.d);
        }
        context.commit();
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
        if (f != null)
        {
            f.onDataReceived(jsonobject);
        }
    }

    private String b(Context context)
        throws Exception
    {
        String s1 = d;
        String s = s1;
        if (s1 == null)
        {
            s = com.umeng.common.b.q(context);
        }
        if (s == null)
        {
            throw new Exception("none appkey exception");
        } else
        {
            return s;
        }
    }

    private void b(Context context, com.umeng.analytics.onlineconfig.b b1)
    {
        if (b1.a == null || b1.a.length() == 0)
        {
            return;
        }
        context = j.b(context).edit();
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
            Log.c("MobclickAgent", "save online config params", context);
            return;
        }
        context.commit();
        Log.a("MobclickAgent", (new StringBuilder()).append("get online setting params: ").append(b1).toString());
        return;
    }

    static void b(com.umeng.analytics.onlineconfig.a a1, Context context, com.umeng.analytics.onlineconfig.b b1)
    {
        a1.b(context, b1);
    }

    private String c(Context context)
    {
        if (e == null)
        {
            return com.umeng.common.b.u(context);
        } else
        {
            return e;
        }
    }

    private JSONObject d(Context context)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            getClass();
            jsonobject.put("type", "online_config");
            jsonobject.put("appkey", b(context));
            jsonobject.put("version_code", com.umeng.common.b.d(context));
            jsonobject.put("package", com.umeng.common.b.v(context));
            jsonobject.put("sdk_version", "4.6.3");
            jsonobject.put("idmd5", h.b(com.umeng.common.b.g(context)));
            jsonobject.put("channel", c(context));
            jsonobject.put("report_policy", j.i(context)[0]);
            jsonobject.put("last_config_time", e(context));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.b("MobclickAgent", "exception in onlineConfigInternal");
            return null;
        }
        return jsonobject;
    }

    private String e(Context context)
    {
        return j.b(context).getString("umeng_last_config_time", "");
    }

    public void a()
    {
        f = null;
    }

    public void a(Context context)
    {
        if (context == null)
        {
            try
            {
                Log.b("MobclickAgent", "unexpected null context in updateOnlineConfig");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.b("MobclickAgent", "exception in updateOnlineConfig");
            }
            break MISSING_BLOCK_LABEL_41;
        }
        (new Thread(new b(context))).start();
        return;
    }

    public void a(Context context, String s, String s1)
    {
        d = s;
        e = s1;
        a(context);
    }

    public void a(UmengOnlineConfigureListener umengonlineconfigurelistener)
    {
        f = umengonlineconfigurelistener;
    }

    public void a(c c1)
    {
        g = c1;
    }

    public void b()
    {
        g = null;
    }
}
