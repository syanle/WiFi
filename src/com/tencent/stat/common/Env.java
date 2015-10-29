// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.common;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import com.tencent.stat.StatConfig;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat.common:
//            StatCommonHelper

public class Env
{
    static class BasicEnv
    {

        String appVersion;
        String channel;
        DisplayMetrics display;
        int jb;
        String language;
        String manufacture;
        String model;
        String operator;
        int osVersion;
        String sd;
        String sdkVersion;
        String timezone;

        void encode(JSONObject jsonobject)
            throws JSONException
        {
            jsonobject.put("sr", (new StringBuilder()).append(display.widthPixels).append("*").append(display.heightPixels).toString());
            StatCommonHelper.jsonPut(jsonobject, "av", appVersion);
            StatCommonHelper.jsonPut(jsonobject, "ch", channel);
            StatCommonHelper.jsonPut(jsonobject, "mf", manufacture);
            StatCommonHelper.jsonPut(jsonobject, "sv", sdkVersion);
            StatCommonHelper.jsonPut(jsonobject, "ov", Integer.toString(osVersion));
            jsonobject.put("os", 1);
            StatCommonHelper.jsonPut(jsonobject, "op", operator);
            StatCommonHelper.jsonPut(jsonobject, "lg", language);
            StatCommonHelper.jsonPut(jsonobject, "md", model);
            StatCommonHelper.jsonPut(jsonobject, "tz", timezone);
            if (jb != 0)
            {
                jsonobject.put("jb", jb);
            }
            StatCommonHelper.jsonPut(jsonobject, "sd", sd);
        }

        private BasicEnv(Context context)
        {
            sdkVersion = "1.0.0";
            osVersion = android.os.Build.VERSION.SDK_INT;
            model = Build.MODEL;
            manufacture = Build.MANUFACTURER;
            language = Locale.getDefault().getLanguage();
            jb = 0;
            display = StatCommonHelper.getDisplayMetrics(context);
            appVersion = StatCommonHelper.getCurAppVersion(context);
            channel = StatConfig.getInstallChannel(context);
            operator = StatCommonHelper.getSimOperator(context);
            timezone = TimeZone.getDefault().getID();
            jb = StatCommonHelper.hasRootAccess(context);
            sd = StatCommonHelper.getExternalStorageInfo(context);
        }

    }


    private static JSONObject attr_json = null;
    static BasicEnv basicEnv;
    String conn;
    Integer tel_network;

    public Env(Context context)
    {
        tel_network = null;
        conn = null;
        getBasicEnv(context);
        tel_network = StatCommonHelper.getTelephonyNetworkType(context.getApplicationContext());
        conn = StatCommonHelper.getLinkedWay(context);
    }

    public static void appendEnvAttr(Context context, Map map)
        throws JSONException
    {
        if (map != null)
        {
            if (attr_json == null)
            {
                attr_json = new JSONObject();
            }
            context = map.entrySet().iterator();
            while (context.hasNext()) 
            {
                map = (java.util.Map.Entry)context.next();
                attr_json.put((String)map.getKey(), map.getValue());
            }
        }
    }

    static BasicEnv getBasicEnv(Context context)
    {
        if (basicEnv == null)
        {
            basicEnv = new BasicEnv(context.getApplicationContext());
        }
        return basicEnv;
    }

    public void encode(JSONObject jsonobject)
        throws JSONException
    {
        JSONObject jsonobject1 = new JSONObject();
        if (basicEnv != null)
        {
            basicEnv.encode(jsonobject1);
        }
        StatCommonHelper.jsonPut(jsonobject1, "cn", conn);
        if (tel_network != null)
        {
            jsonobject1.put("tn", tel_network);
        }
        jsonobject.put("ev", jsonobject1);
        if (attr_json != null && attr_json.length() > 0)
        {
            jsonobject.put("eva", attr_json);
        }
    }

}
