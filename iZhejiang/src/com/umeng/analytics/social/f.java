// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.social;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.social:
//            e, b, UMPlatformData, a

public abstract class f
{

    private static Map a;

    public f()
    {
    }

    protected static String a(Context context)
    {
        String s = e.d;
        if (!TextUtils.isEmpty(s))
        {
            com.umeng.analytics.social.b.b("MobclickAgent", "use usefully appkey from constant field.");
            return s;
        }
        context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        context = ((ApplicationInfo) (context)).metaData.getString("UMENG_APPKEY");
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        return context.trim();
        com.umeng.analytics.social.b.b("MobclickAgent", "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
_L2:
        return null;
        context;
        com.umeng.analytics.social.b.b("MobclickAgent", "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", context);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static String a(List list)
    {
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            (new UrlEncodedFormEntity(list, "UTF-8")).writeTo(bytearrayoutputstream);
            list = bytearrayoutputstream.toString();
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            list.printStackTrace();
            return null;
        }
        return list;
    }

    private static transient List a(UMPlatformData aumplatformdata[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = new StringBuilder();
        StringBuilder stringbuilder2 = new StringBuilder();
        int j = aumplatformdata.length;
        for (int i = 0; i < j; i++)
        {
            UMPlatformData umplatformdata = aumplatformdata[i];
            stringbuilder.append(umplatformdata.getMeida().toString());
            stringbuilder.append(',');
            stringbuilder1.append(umplatformdata.getUsid());
            stringbuilder1.append(',');
            stringbuilder2.append(umplatformdata.getWeiboId());
            stringbuilder2.append(',');
        }

        if (aumplatformdata.length > 0)
        {
            stringbuilder.deleteCharAt(stringbuilder.length() - 1);
            stringbuilder1.deleteCharAt(stringbuilder1.length() - 1);
            stringbuilder2.deleteCharAt(stringbuilder2.length() - 1);
        }
        aumplatformdata = new ArrayList();
        aumplatformdata.add(new BasicNameValuePair("platform", stringbuilder.toString()));
        aumplatformdata.add(new BasicNameValuePair("usid", stringbuilder1.toString()));
        if (stringbuilder2.length() > 0)
        {
            aumplatformdata.add(new BasicNameValuePair("weiboid", stringbuilder2.toString()));
        }
        return aumplatformdata;
    }

    private static boolean a(Context context, String s)
    {
        return context.getPackageManager().checkPermission(s, context.getPackageName()) == 0;
    }

    protected static transient String[] a(Context context, String s, UMPlatformData aumplatformdata[])
        throws a
    {
        if (aumplatformdata == null || aumplatformdata.length == 0)
        {
            throw new a("platform data is null");
        }
        String s1 = a(context);
        if (TextUtils.isEmpty(s1))
        {
            throw new a("can`t get appkey.");
        }
        ArrayList arraylist = new ArrayList();
        s1 = (new StringBuilder()).append("http://log.umsns.com/share/api/").append(s1).append("/").toString();
        if (a == null || a.isEmpty())
        {
            a = c(context);
        }
        if (a != null && !a.isEmpty())
        {
            java.util.Map.Entry entry;
            for (context = a.entrySet().iterator(); context.hasNext(); arraylist.add(new BasicNameValuePair((String)entry.getKey(), (String)entry.getValue())))
            {
                entry = (java.util.Map.Entry)context.next();
            }

        }
        arraylist.add(new BasicNameValuePair("date", String.valueOf(System.currentTimeMillis())));
        arraylist.add(new BasicNameValuePair("channel", e.e));
        if (!TextUtils.isEmpty(s))
        {
            arraylist.add(new BasicNameValuePair("topic", s));
        }
        arraylist.addAll(a(aumplatformdata));
        s = b(aumplatformdata);
        context = s;
        if (s == null)
        {
            context = "null";
        }
        s = (new StringBuilder()).append(s1).append("?").append(a(((List) (arraylist)))).toString();
        com.umeng.analytics.social.b.c("MobclickAgent", (new StringBuilder()).append("URL:").append(s).toString());
        com.umeng.analytics.social.b.c("MobclickAgent", (new StringBuilder()).append("BODY:").append(context).toString());
        return (new String[] {
            s, context
        });
    }

    private static transient String b(UMPlatformData aumplatformdata[])
    {
        JSONObject jsonobject;
        int i;
        int j;
        jsonobject = new JSONObject();
        j = aumplatformdata.length;
        i = 0;
_L14:
        if (i >= j) goto _L2; else goto _L1
_L1:
        Object obj;
        UMPlatformData umplatformdata;
        String s;
        umplatformdata = aumplatformdata[i];
        obj = umplatformdata.getGender();
        s = umplatformdata.getName();
        if (obj != null) goto _L4; else goto _L3
_L3:
        if (TextUtils.isEmpty(s)) goto _L5; else goto _L4
_L4:
        JSONObject jsonobject1 = new JSONObject();
        if (obj != null) goto _L7; else goto _L6
_L6:
        obj = "";
_L12:
        try
        {
            jsonobject1.put("gender", obj);
        }
        // Misplaced declaration of an exception variable
        catch (UMPlatformData aumplatformdata[])
        {
            throw new a("build body exception", aumplatformdata);
        }
        if (s != null) goto _L9; else goto _L8
_L8:
        obj = "";
_L11:
        jsonobject1.put("name", obj);
        jsonobject.put(umplatformdata.getMeida().toString(), jsonobject1);
        break; /* Loop/switch isn't completed */
_L7:
        obj = String.valueOf(((UMPlatformData.GENDER) (obj)).value);
        continue; /* Loop/switch isn't completed */
_L9:
        obj = String.valueOf(s);
        if (true) goto _L11; else goto _L10
_L10:
        break; /* Loop/switch isn't completed */
_L2:
        if (jsonobject.length() == 0)
        {
            return null;
        } else
        {
            return jsonobject.toString();
        }
        if (true) goto _L12; else goto _L5
_L5:
        i++;
        if (true) goto _L14; else goto _L13
_L13:
    }

    public static Map b(Context context)
    {
        Object obj;
        HashMap hashmap;
        hashmap = new HashMap();
        obj = (TelephonyManager)context.getSystemService("phone");
        if (obj == null)
        {
            com.umeng.analytics.social.b.e("MobclickAgent", "No IMEI.");
        }
        if (!a(context, "android.permission.READ_PHONE_STATE")) goto _L2; else goto _L1
_L1:
        obj = ((TelephonyManager) (obj)).getDeviceId();
_L4:
        String s = d(context);
        context = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (!TextUtils.isEmpty(s))
        {
            hashmap.put("mac", s);
        }
        if (!TextUtils.isEmpty(((CharSequence) (obj))))
        {
            hashmap.put("imei", obj);
        }
        if (!TextUtils.isEmpty(context))
        {
            hashmap.put("android_id", context);
        }
        return hashmap;
        obj;
        com.umeng.analytics.social.b.e("MobclickAgent", "No IMEI.", ((Exception) (obj)));
_L2:
        obj = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static Map c(Context context)
        throws a
    {
        HashMap hashmap = new HashMap();
        Object obj = b(context);
        if (obj != null && !((Map) (obj)).isEmpty())
        {
            context = new StringBuilder();
            StringBuilder stringbuilder = new StringBuilder();
            obj = ((Map) (obj)).entrySet().iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj)).next();
                if (!TextUtils.isEmpty((CharSequence)entry.getValue()))
                {
                    stringbuilder.append((String)entry.getKey()).append(",");
                    context.append((String)entry.getValue()).append(",");
                }
            } while (true);
            if (context.length() > 0)
            {
                context.deleteCharAt(context.length() - 1);
                hashmap.put("deviceid", context.toString());
            }
            if (stringbuilder.length() > 0)
            {
                stringbuilder.deleteCharAt(stringbuilder.length() - 1);
                hashmap.put("idtype", stringbuilder.toString());
            }
            return hashmap;
        } else
        {
            throw new a("can`t get device id.");
        }
    }

    private static String d(Context context)
    {
        try
        {
            WifiManager wifimanager = (WifiManager)context.getSystemService("wifi");
            if (a(context, "android.permission.ACCESS_WIFI_STATE"))
            {
                return wifimanager.getConnectionInfo().getMacAddress();
            }
            com.umeng.analytics.social.b.e("MobclickAgent", "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            com.umeng.analytics.social.b.e("MobclickAgent", (new StringBuilder()).append("Could not get mac address.").append(context.toString()).toString());
        }
        return "";
    }
}
