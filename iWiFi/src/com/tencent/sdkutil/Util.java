// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Environment;
import java.io.File;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class Util
{

    private static final String ENDLINE = "\r\n";

    public Util()
    {
    }

    public static boolean checkMobileQQ(Context context)
    {
label0:
        {
            boolean flag1 = false;
            context = context.getPackageManager();
            int i;
            int j;
            boolean flag;
            try
            {
                context = context.getPackageInfo("com.tencent.mobileqq", 0);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context.printStackTrace();
                context = null;
            }
            flag = flag1;
            if (context == null)
            {
                break label0;
            }
            context = ((PackageInfo) (context)).versionName;
            try
            {
                context = context.split("\\.");
                i = Integer.parseInt(context[0]);
                j = Integer.parseInt(context[1]);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context.printStackTrace();
                return false;
            }
            if (i <= 4)
            {
                flag = flag1;
                if (i != 4)
                {
                    break label0;
                }
                flag = flag1;
                if (j < 1)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public static boolean checkSd()
    {
        File file = null;
        if (Environment.getExternalStorageState().equals("mounted"))
        {
            file = Environment.getExternalStorageDirectory();
        }
        return file != null;
    }

    public static int compareVersion(String s, String s1)
    {
        if (s != null || s1 != null) goto _L2; else goto _L1
_L1:
        return 0;
_L2:
        String as[];
        String as1[];
        int i;
        if (s != null && s1 == null)
        {
            return 1;
        }
        if (s == null && s1 != null)
        {
            return -1;
        }
        as = s.split("\\.");
        as1 = s1.split("\\.");
        i = 0;
_L3:
        int j;
        int k;
        if (i >= as.length || i >= as1.length)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        j = Integer.parseInt(as[i]);
        k = Integer.parseInt(as1[i]);
        if (j < k)
        {
            return -1;
        }
        break MISSING_BLOCK_LABEL_117;
        if (as.length > i)
        {
            return 1;
        }
        try
        {
            j = as1.length;
        }
        catch (NumberFormatException numberformatexception)
        {
            return s.compareTo(s1);
        }
        if (j > i)
        {
            return -1;
        }
          goto _L1
        if (j > k)
        {
            return 1;
        }
        i++;
          goto _L3
    }

    public static Bundle decodeUrl(String s)
    {
        Bundle bundle = new Bundle();
        if (s != null)
        {
            s = s.split("&");
            int j = s.length;
            for (int i = 0; i < j; i++)
            {
                String as[] = s[i].split("=");
                if (as.length == 2)
                {
                    bundle.putString(URLDecoder.decode(as[0]), URLDecoder.decode(as[1]));
                }
            }

        }
        return bundle;
    }

    public static JSONObject decodeUrlToJson(JSONObject jsonobject, String s)
    {
        JSONObject jsonobject1 = jsonobject;
        if (jsonobject == null)
        {
            jsonobject1 = new JSONObject();
        }
        if (s != null)
        {
            jsonobject = s.split("&");
            int j = jsonobject.length;
            int i = 0;
            while (i < j) 
            {
                s = jsonobject[i].split("=");
                if (s.length == 2)
                {
                    try
                    {
                        jsonobject1.put(URLDecoder.decode(s[0]), URLDecoder.decode(s[1]));
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        s.printStackTrace();
                    }
                }
                i++;
            }
        }
        return jsonobject1;
    }

    public static String encodePostBody(Bundle bundle, String s)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        int j = bundle.size();
        Iterator iterator = bundle.keySet().iterator();
        int i = -1;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            i++;
            Object obj = bundle.get(s1);
            if (obj instanceof String)
            {
                stringbuilder.append((new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(s1).append("\"").append("\r\n").append("\r\n").append((String)obj).toString());
                if (i < j - 1)
                {
                    stringbuilder.append((new StringBuilder()).append("\r\n--").append(s).append("\r\n").toString());
                }
            }
        } while (true);
        return stringbuilder.toString();
    }

    public static String encodeUrl(Bundle bundle)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = bundle.keySet().iterator();
        boolean flag = true;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = (String)iterator.next();
            Object obj1 = bundle.get(((String) (obj)));
            if ((obj1 instanceof String) || (obj1 instanceof String[]))
            {
                if (obj1 instanceof String[])
                {
                    int i;
                    if (flag)
                    {
                        flag = false;
                    } else
                    {
                        stringbuilder.append("&");
                    }
                    stringbuilder.append((new StringBuilder()).append(URLEncoder.encode(((String) (obj)))).append("=").toString());
                    obj = (String[])bundle.getStringArray(((String) (obj)));
                    i = 0;
                    while (i < obj.length) 
                    {
                        if (i == 0)
                        {
                            stringbuilder.append(URLEncoder.encode(obj[i]));
                        } else
                        {
                            stringbuilder.append(URLEncoder.encode((new StringBuilder()).append(",").append(obj[i]).toString()));
                        }
                        i++;
                    }
                } else
                {
                    if (flag)
                    {
                        flag = false;
                    } else
                    {
                        stringbuilder.append("&");
                    }
                    stringbuilder.append((new StringBuilder()).append(URLEncoder.encode(((String) (obj)))).append("=").append(URLEncoder.encode(bundle.getString(((String) (obj))))).toString());
                }
            }
        } while (true);
        return stringbuilder.toString();
    }

    public static String encrypt(String s)
    {
        Object obj;
        byte abyte0[];
        int i;
        int j;
        byte byte0;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(s.getBytes());
            abyte0 = messagedigest.digest();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
            return s;
        }
        obj = s;
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        obj = new StringBuilder();
        j = abyte0.length;
        i = 0;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        byte0 = abyte0[i];
        ((StringBuilder) (obj)).append(hexDigit(byte0 >>> 4));
        ((StringBuilder) (obj)).append(hexDigit(byte0));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        obj = ((StringBuilder) (obj)).toString();
        return ((String) (obj));
    }

    public static boolean fileExists(String s)
    {
        if (s != null)
        {
            if ((s = new File(s)) != null && s.exists())
            {
                return true;
            }
        }
        return false;
    }

    public static String getAppName(Context context)
    {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }

    public static String getAppSignatureMD5(Context context, String s)
    {
        MessageDigest messagedigest;
        String s1 = context.getPackageName();
        context = context.getPackageManager().getPackageInfo(s1, 64).signatures;
        messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(context[0].toByteArray());
        context = toHexString(messagedigest.digest());
        messagedigest.reset();
        messagedigest.update((new StringBuilder()).append(s1).append("_").append(context).append("_").append(s).append("").toString().getBytes());
        context = toHexString(messagedigest.digest());
        messagedigest.reset();
        return context;
        s;
        context = "";
_L2:
        s.printStackTrace();
        return context;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getAppVersion(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            context = packagemanager.getPackageInfo(context.getPackageName(), 0).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return "";
        }
        return context;
    }

    public static String getAppVersionName(Context context, String s)
    {
        context = context.getPackageManager();
        try
        {
            context = context.getPackageInfo(s, 0).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return context;
    }

    public static String getUserIp()
    {
        Object obj = NetworkInterface.getNetworkInterfaces();
_L2:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        Enumeration enumeration;
        if (!((Enumeration) (obj)).hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_67;
        }
        enumeration = ((NetworkInterface)((Enumeration) (obj)).nextElement()).getInetAddresses();
_L4:
        if (!enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        InetAddress inetaddress = (InetAddress)enumeration.nextElement();
        if (inetaddress.isLoopbackAddress()) goto _L4; else goto _L3
_L3:
        obj = inetaddress.getHostAddress().toString();
        return ((String) (obj));
        SocketException socketexception;
        socketexception;
        return "";
    }

    public static boolean hasActivityForIntent(Context context, Intent intent)
    {
        if (intent != null)
        {
            return isActivityExist(context, intent);
        } else
        {
            return false;
        }
    }

    private static char hexDigit(int i)
    {
        i &= 0xf;
        if (i < 10)
        {
            return (char)(i + 48);
        } else
        {
            return (char)((i - 10) + 97);
        }
    }

    public static boolean isActivityExist(Context context, Intent intent)
    {
        while (context == null || intent == null || context.getPackageManager().queryIntentActivities(intent, 0).size() == 0) 
        {
            return false;
        }
        return true;
    }

    public static boolean isAppSignatureValid(Context context, String s, String s1)
    {
        boolean flag1 = false;
        int i;
        int j;
        try
        {
            context = context.getPackageManager().getPackageInfo(s, 64);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        context = ((PackageInfo) (context)).signatures;
        j = context.length;
        i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < j)
                {
                    if (!encrypt(context[i].toCharsString()).equals(s1))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    public static boolean isEmpty(String s)
    {
        return s == null || s.length() == 0;
    }

    public static final boolean isValidUrl(String s)
    {
        while (s == null || !s.startsWith("http://") && !s.startsWith("https://")) 
        {
            return false;
        }
        return true;
    }

    public static Bundle parseUrl(String s)
    {
        s = s.replace("auth://", "http://");
        Bundle bundle;
        try
        {
            s = new URL(s);
            bundle = decodeUrl(s.getQuery());
            bundle.putAll(decodeUrl(s.getRef()));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return new Bundle();
        }
        return bundle;
    }

    public static JSONObject parseUrlToJson(String s)
    {
        s = s.replace("auth://", "http://");
        JSONObject jsonobject;
        try
        {
            s = new URL(s);
            jsonobject = decodeUrlToJson(null, s.getQuery());
            decodeUrlToJson(jsonobject, s.getRef());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return new JSONObject();
        }
        return jsonobject;
    }

    public static String toHexString(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder(abyte0.length * 2);
        for (int i = 0; i < abyte0.length; i++)
        {
            String s1 = Integer.toString(abyte0[i] & 0xff, 16);
            String s = s1;
            if (s1.length() == 1)
            {
                s = (new StringBuilder()).append("0").append(s1).toString();
            }
            stringbuilder.append(s);
        }

        return stringbuilder.toString();
    }
}
