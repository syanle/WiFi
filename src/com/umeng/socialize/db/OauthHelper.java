// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.db;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.common.c;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class OauthHelper
{

    private static final String a = com/umeng/socialize/db/OauthHelper.getName();
    private static final String b = "qq_sso";

    public OauthHelper()
    {
    }

    private static String a(String s)
    {
        return String.valueOf(System.currentTimeMillis() + Long.parseLong(s) * 1000L);
    }

    private static void a(Context context, String s, String s1, String s2)
    {
        synchronized (context.getSharedPreferences("umeng_socialize_qq", 1))
        {
            android.content.SharedPreferences.Editor editor = context.edit();
            if (!TextUtils.isEmpty(s) || !TextUtils.isEmpty(s1))
            {
                editor.putString("qq_sso_token", s);
                editor.putString("qq_sso_openid", s1);
                editor.putString("qq_sso_expires_in", a(s2));
                editor.commit();
                Log.d(a, "### Saved QQ Token.");
            }
        }
        return;
        s;
        context;
        JVM INSTR monitorexit ;
        throw s;
    }

    public static String[] getAccessToken(Context context, SHARE_MEDIA share_media)
    {
        context = context.getSharedPreferences("umeng_socialize", 1);
        String s = c.a(share_media);
        share_media = (new StringBuilder(String.valueOf(s))).append("_ak").toString();
        s = (new StringBuilder(String.valueOf(s))).append("_as").toString();
        if (context.contains(share_media) && context.contains(s))
        {
            return (new String[] {
                context.getString(share_media, ""), context.getString(s, "")
            });
        } else
        {
            return new String[0];
        }
    }

    public static String[] getAccessTokenForQQ(Context context)
    {
        String s;
        Object obj;
label0:
        {
            obj = context.getSharedPreferences("umeng_socialize_qq", 1);
            if (((SharedPreferences) (obj)).contains("qq_sso_token") && ((SharedPreferences) (obj)).contains("qq_sso_openid"))
            {
                context = ((SharedPreferences) (obj)).getString("qq_sso_token", "");
                s = ((SharedPreferences) (obj)).getString("qq_sso_openid", "");
                obj = ((SharedPreferences) (obj)).getString("qq_sso_expires_in", "");
                Log.d(a, (new StringBuilder("get QQ Token.")).append(((String) (obj))).toString());
                if (!isQQAuthExpired(((String) (obj))))
                {
                    break label0;
                }
            }
            return null;
        }
        return (new String[] {
            context, s, obj
        });
    }

    public static Map getAuthenticatedPlatform(Context context)
    {
        int i;
        HashMap hashmap = new HashMap();
        SHARE_MEDIA ashare_media[];
        SHARE_MEDIA share_media;
        String s;
        int j;
        try
        {
            ashare_media = SHARE_MEDIA.getDefaultPlatform();
            j = ashare_media.length;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.i(a, "no authenticated platform.......");
            return null;
        }
        i = 0;
_L2:
        if (i < j)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        Log.i(a, (new StringBuilder("found platform count ")).append(hashmap.size()).toString());
        return hashmap;
        share_media = ashare_media[i];
        if (isAuthenticated(context, share_media))
        {
            s = getUsid(context, share_media);
            hashmap.put(share_media, s);
            Log.i(a, (new StringBuilder("found platform ")).append(share_media.toString()).append(" usid=").append(s).toString());
            break MISSING_BLOCK_LABEL_166;
        }
        Log.i(a, (new StringBuilder("No found oauthed platform ")).append(share_media.toString()).toString());
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getQQAppId(Context context)
    {
        return context.getSharedPreferences("umeng_socialize_qq", 1).getString("qq_appid", "");
    }

    public static String getUsid(Context context, SHARE_MEDIA share_media)
    {
        if (share_media != null)
        {
            context = context.getSharedPreferences("umeng_socialize", 1);
            share_media = c.a(share_media);
            if (!TextUtils.isEmpty(share_media))
            {
                return context.getString(share_media, "");
            }
        }
        return "";
    }

    public static boolean isAuthenticated(Context context, SHARE_MEDIA share_media)
    {
        return !TextUtils.isEmpty(getUsid(context, share_media));
    }

    public static boolean isQQAuthExpired(String s)
    {
        return System.currentTimeMillis() >= Long.parseLong(s);
    }

    public static void remove(Context context, SHARE_MEDIA share_media)
    {
        synchronized (context.getSharedPreferences("umeng_socialize", 1))
        {
            android.content.SharedPreferences.Editor editor = context.edit();
            editor.remove(share_media.toString());
            editor.remove((new StringBuilder(String.valueOf(share_media.toString()))).append("_ak").toString());
            editor.remove((new StringBuilder(String.valueOf(share_media.toString()))).append("_as").toString());
            editor.commit();
            Log.d(a, (new StringBuilder("Remove platform ")).append(share_media.toString()).toString());
        }
        return;
        share_media;
        context;
        JVM INSTR monitorexit ;
        throw share_media;
    }

    public static void saveAccessToken(Context context, SHARE_MEDIA share_media, String s, String s1)
    {
        synchronized (context.getSharedPreferences("umeng_socialize", 1))
        {
            android.content.SharedPreferences.Editor editor = context.edit();
            share_media = c.a(share_media);
            if (!TextUtils.isEmpty(share_media))
            {
                editor.putString((new StringBuilder(String.valueOf(share_media))).append("_ak").toString(), s);
                editor.putString((new StringBuilder(String.valueOf(share_media))).append("_as").toString(), s1);
                editor.commit();
            }
        }
        return;
        share_media;
        context;
        JVM INSTR monitorexit ;
        throw share_media;
    }

    public static void saveQQAccessToken(Context context, Bundle bundle)
    {
        a(context, bundle.getString("access_token"), bundle.getString("openid"), bundle.getString("expires_in"));
    }

    public static void saveQQAccessToken(Context context, JSONObject jsonobject)
    {
        a(context, jsonobject.optString("access_token", ""), jsonobject.optString("openid", ""), jsonobject.optString("expires_in", ""));
    }

    public static void saveQQAppId(Context context, String s)
    {
        synchronized (context.getSharedPreferences("umeng_socialize_qq", 1))
        {
            android.content.SharedPreferences.Editor editor = context.edit();
            if (!TextUtils.isEmpty(s))
            {
                editor.putString("qq_appid", s);
                editor.commit();
            }
        }
        return;
        s;
        context;
        JVM INSTR monitorexit ;
        throw s;
    }

    public static void setUsid(Context context, SHARE_MEDIA share_media, String s)
    {
        synchronized (context.getSharedPreferences("umeng_socialize", 1))
        {
            android.content.SharedPreferences.Editor editor = context.edit();
            share_media = c.a(share_media);
            if (!TextUtils.isEmpty(share_media))
            {
                editor.putString(share_media, s);
                editor.commit();
                Log.d(a, (new StringBuilder("Save platform ")).append(share_media).append("   ").append(s).toString());
            }
        }
        return;
        share_media;
        context;
        JVM INSTR monitorexit ;
        throw share_media;
    }

}
