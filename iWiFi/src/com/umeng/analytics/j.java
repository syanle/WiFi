// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.a.g;
import com.umeng.common.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.net.URLEncoder;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics:
//            g

public final class j
{

    static long a = 0L;
    static long b = 0L;
    private static final String c = "cache_version";
    private static final String d = "error";
    private static final String e = "mobclick_agent_user_";
    private static final String f = "mobclick_agent_online_setting_";
    private static final String g = "mobclick_agent_header_";
    private static final String h = "mobclick_agent_update_";
    private static final String i = "mobclick_agent_state_";
    private static final String j = "mobclick_agent_cached_";

    public j()
    {
    }

    static SharedPreferences a(Context context)
    {
        return context.getSharedPreferences((new StringBuilder()).append("mobclick_agent_user_").append(context.getPackageName()).toString(), 0);
    }

    static String a(InputStream inputstream)
        throws IOException
    {
        inputstream = new InputStreamReader(inputstream);
        char ac[] = new char[1024];
        StringWriter stringwriter = new StringWriter();
        do
        {
            int k = inputstream.read(ac);
            if (-1 != k)
            {
                stringwriter.write(ac, 0, k);
            } else
            {
                return stringwriter.toString();
            }
        } while (true);
    }

    static JSONObject a(Context context, String s)
    {
        Object obj = g(context);
        File file = new File(context.getFilesDir(), ((String) (obj)));
        if (!a(file))
        {
            break MISSING_BLOCK_LABEL_32;
        }
        file.delete();
        return null;
        obj = context.openFileInput(((String) (obj)));
        String s1 = a(((InputStream) (obj)));
        ((FileInputStream) (obj)).close();
        int k;
        obj = new JSONObject(s1);
        if (!((JSONObject) (obj)).optString("cache_version").equals(s))
        {
            ((JSONObject) (obj)).remove("error");
        }
        ((JSONObject) (obj)).remove("cache_version");
        k = ((JSONObject) (obj)).length();
        if (k != 0)
        {
            return ((JSONObject) (obj));
        }
        break MISSING_BLOCK_LABEL_126;
        context;
        context.printStackTrace();
        ((FileInputStream) (obj)).close();
        return null;
        context;
        try
        {
            ((FileInputStream) (obj)).close();
            throw context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        break MISSING_BLOCK_LABEL_126;
        s;
        j(context);
        s.printStackTrace();
        return null;
        return null;
    }

    static void a(Context context, g g1, String s)
    {
        if (g1 == null)
        {
            return;
        }
        try
        {
            JSONObject jsonobject = new JSONObject();
            g1.b(jsonobject);
            a(context, jsonobject, s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.b("MobclickAgent", "cache message error", context);
        }
    }

    static void a(Context context, JSONObject jsonobject, String s)
        throws Exception
    {
        if (jsonobject == null)
        {
            return;
        } else
        {
            String s1 = g(context);
            jsonobject.put("cache_version", s);
            context = context.openFileOutput(s1, 0);
            context.write(jsonobject.toString().getBytes());
            context.flush();
            context.close();
            Log.c("MobclickAgent", "cache buffer success");
            return;
        }
    }

    static boolean a(File file)
    {
        long l = file.length();
        return file.exists() && l > b;
    }

    public static SharedPreferences b(Context context)
    {
        return context.getSharedPreferences((new StringBuilder()).append("mobclick_agent_online_setting_").append(context.getPackageName()).toString(), 0);
    }

    static void b(Context context, JSONObject jsonobject, String s)
    {
        if (jsonobject == null)
        {
            return;
        }
        try
        {
            a(context, jsonobject.optJSONObject("body"), s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.b("MobclickAgent", "cache message error", context);
        }
    }

    public static SharedPreferences c(Context context)
    {
        return context.getSharedPreferences((new StringBuilder()).append("mobclick_agent_header_").append(context.getPackageName()).toString(), 0);
    }

    static SharedPreferences d(Context context)
    {
        return context.getSharedPreferences((new StringBuilder()).append("mobclick_agent_update_").append(context.getPackageName()).toString(), 0);
    }

    public static SharedPreferences e(Context context)
    {
        return context.getSharedPreferences((new StringBuilder()).append("mobclick_agent_state_").append(context.getPackageName()).toString(), 0);
    }

    static String f(Context context)
    {
        return (new StringBuilder()).append("mobclick_agent_header_").append(context.getPackageName()).toString();
    }

    static String g(Context context)
    {
        return (new StringBuilder()).append("mobclick_agent_cached_").append(context.getPackageName()).toString();
    }

    static JSONObject h(Context context)
    {
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        context = a(context);
        int k;
        if (context.getInt("gender", -1) != -1)
        {
            jsonobject.put("sex", context.getInt("gender", -1));
        }
        if (context.getInt("age", -1) != -1)
        {
            jsonobject.put("age", context.getInt("age", -1));
        }
        if (!"".equals(context.getString("user_id", "")))
        {
            jsonobject.put("id", context.getString("user_id", ""));
        }
        if (!"".equals(context.getString("id_source", "")))
        {
            jsonobject.put("url", URLEncoder.encode(context.getString("id_source", ""), "UTF-8"));
        }
        k = jsonobject.length();
        if (k > 0)
        {
            return jsonobject;
        }
        break MISSING_BLOCK_LABEL_162;
        context;
        context.printStackTrace();
        return null;
    }

    public static int[] i(Context context)
    {
        context = b(context);
        int ai[] = new int[2];
        if (context.getInt("umeng_net_report_policy", -1) != -1)
        {
            ai[0] = context.getInt("umeng_net_report_policy", 1);
            ai[1] = (int)context.getLong("umeng_net_report_interval", g.h);
            return ai;
        } else
        {
            ai[0] = context.getInt("umeng_local_report_policy", 1);
            ai[1] = (int)context.getLong("umeng_local_report_interval", g.h);
            return ai;
        }
    }

    static void j(Context context)
    {
        context.deleteFile(f(context));
        context.deleteFile(g(context));
    }

    static 
    {
        a = 0x48190800L;
        b = 0x200000L;
    }
}
