// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net.utils;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.util.b;
import com.umeng.socom.util.g;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.net.utils:
//            a

public class SocializeNetUtils
{

    private static final String a = com/umeng/socialize/net/utils/SocializeNetUtils.getName();

    public SocializeNetUtils()
    {
    }

    public static String generateGetURL(String s, Map map)
    {
        if (TextUtils.isEmpty(s) || map == null || map.size() == 0)
        {
            return s;
        }
        String s1 = s;
        if (!s.endsWith("?"))
        {
            s1 = (new StringBuilder(String.valueOf(s))).append("?").toString();
        }
        s = new StringBuilder();
        Iterator iterator = map.keySet().iterator();
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    map = new StringBuilder(s1);
                    String s2;
                    try
                    {
                        s = b.c(s.substring(0, s.length() - 1).toString(), "UTF-8");
                        map.append((new StringBuilder("ud_get=")).append(s).toString());
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        s.printStackTrace();
                    }
                    return map.toString();
                }
                s2 = (String)iterator.next();
            } while (map.get(s2) == null);
            s = s.append((new StringBuilder(String.valueOf(s2))).append("=").append(URLEncoder.encode(map.get(s2).toString())).append("&").toString());
        } while (true);
    }

    public static Map getBaseQuery(Context context, SocializeEntity socializeentity, int i)
    {
        HashMap hashmap = new HashMap();
        String s = DeviceConfig.getDeviceId(context);
        if (!TextUtils.isEmpty(s))
        {
            hashmap.put("imei", s);
            hashmap.put("md5imei", g.a(s));
        }
        s = DeviceConfig.getMac(context);
        if (TextUtils.isEmpty(s))
        {
            Log.w(a, (new StringBuilder("Get MacAddress failed. Check permission android.permission.ACCESS_WIFI_STATE [")).append(DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE")).append("]").toString());
        } else
        {
            hashmap.put("mac", s);
        }
        if (!TextUtils.isEmpty(SocializeConstants.UID))
        {
            hashmap.put("uid", SocializeConstants.UID);
        }
        try
        {
            hashmap.put("en", DeviceConfig.getNetworkAccessMode(context)[0]);
        }
        catch (Exception exception)
        {
            hashmap.put("en", "Unknown");
        }
        hashmap.put("de", Build.MODEL);
        hashmap.put("sdkv", "3.3.5140218");
        hashmap.put("os", "Android");
        hashmap.put("dt", Long.valueOf(System.currentTimeMillis()));
        hashmap.put("opid", Integer.valueOf(i));
        context = SocializeUtils.getAppkey(context);
        if (TextUtils.isEmpty(context))
        {
            throw new SocializeException("No found appkey.");
        }
        hashmap.put("ak", context);
        if (!TextUtils.isEmpty(socializeentity.mEntityKey))
        {
            hashmap.put("ek", socializeentity.mEntityKey);
        }
        if (!TextUtils.isEmpty(socializeentity.mSessionID))
        {
            hashmap.put("sid", socializeentity.mSessionID);
        }
        hashmap.put(a.D, "2.0");
        try
        {
            hashmap.put("tp", socializeentity.getRequestType().toString());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return hashmap;
        }
        return hashmap;
    }

    public static byte[] getNetData(String s)
    {
        Object obj1;
        Object obj3;
        Object obj2 = null;
        obj1 = null;
        obj3 = null;
        if (TextUtils.isEmpty(s))
        {
            return null;
        }
        Object obj;
        Exception exception;
        int i;
        try
        {
            obj = new ByteArrayOutputStream();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            obj = null;
            obj1 = obj3;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        obj1 = obj2;
        obj2 = obj;
        s = (InputStream)(new URL(s)).openConnection().getContent();
        obj1 = new byte[4096];
_L1:
        i = s.read(((byte []) (obj1)));
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        obj1 = ((ByteArrayOutputStream) (obj)).toByteArray();
label0:
        {
            if (s == null)
            {
                break label0;
            }
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                if (obj != null)
                {
                    try
                    {
                        ((ByteArrayOutputStream) (obj)).close();
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s) { }
                }
                break label0;
            }
            finally
            {
                if (obj != null)
                {
                    try
                    {
                        ((ByteArrayOutputStream) (obj)).close();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj) { }
                }
                throw s;
            }
            if (obj != null)
            {
                try
                {
                    ((ByteArrayOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (String s) { }
            }
        }
        return ((byte []) (obj1));
        ((ByteArrayOutputStream) (obj)).write(((byte []) (obj1)), 0, i);
          goto _L1
        obj2;
        obj1 = s;
        s = ((String) (obj2));
_L5:
        obj2 = obj;
        throw new RuntimeException(s);
        s;
        obj = obj2;
_L3:
label1:
        {
            if (obj1 == null)
            {
                break label1;
            }
            try
            {
                ((InputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj1)
            {
                if (obj != null)
                {
                    try
                    {
                        ((ByteArrayOutputStream) (obj)).close();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj) { }
                }
                break label1;
            }
            finally
            {
                if (obj != null)
                {
                    try
                    {
                        ((ByteArrayOutputStream) (obj)).close();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj) { }
                }
                throw s;
            }
            if (obj != null)
            {
                try
                {
                    ((ByteArrayOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj) { }
            }
        }
        throw s;
        exception;
        obj1 = s;
        s = exception;
        if (true) goto _L3; else goto _L2
        s;
        obj1 = obj3;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static boolean startWithHttp(String s)
    {
        return s.startsWith("http://") || s.startsWith("https://");
    }

}
