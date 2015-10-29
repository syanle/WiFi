// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.common;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.media.BaseMediaObject;
import com.umeng.socialize.media.BaseShareContent;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socom.Log;
import com.umeng.socom.util.BitmapUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.umeng.socialize.common:
//            ResContainer, SocializeConstants

public class SocializeUtils
{

    protected static final String a = com/umeng/socialize/common/SocializeUtils.getName();
    private static String b;
    private static String c;
    private static String d;
    private static Pattern e = null;
    private static int f = 0;

    public SocializeUtils()
    {
    }

    private static Pattern a()
    {
        if (e == null)
        {
            e = Pattern.compile("[^\\x00-\\xff]");
        }
        return e;
    }

    public static String beforeData(Context context, long l)
    {
        long l2 = (System.currentTimeMillis() - l) / 1000L;
        long l1 = l2;
        if (l2 < 0L)
        {
            l1 = 0L;
        }
        if (TextUtils.isEmpty(b) || TextUtils.isEmpty(c) || TextUtils.isEmpty(d))
        {
            b = context.getResources().getString(ResContainer.getResourceId(context, ResContainer.ResType.STRING, "umeng_socialize_msg_sec"));
            c = context.getResources().getString(ResContainer.getResourceId(context, ResContainer.ResType.STRING, "umeng_socialize_msg_min"));
            d = context.getResources().getString(ResContainer.getResourceId(context, ResContainer.ResType.STRING, "umeng_socialize_msg_hor"));
        }
        Object obj;
        if (l1 / 60L == 0L)
        {
            context = (new StringBuilder(String.valueOf(l1))).append(b).toString();
        } else
        if (l1 / 3600L == 0L)
        {
            context = (new StringBuilder(String.valueOf(l1 / 60L))).append(c).toString();
        } else
        if (l1 / 0x15180L == 0L)
        {
            context = (new StringBuilder(String.valueOf(l1 / 3600L))).append(d).toString();
        } else
        {
            context = null;
        }
        obj = context;
        if (context == null)
        {
            obj = (new SimpleDateFormat("yyyy-MM-dd HH:mm")).format(Long.valueOf(l));
        }
        return ((String) (obj));
    }

    public static int countContentLength(String s)
    {
        s = s.trim();
        int i = 0;
        Matcher matcher = a().matcher(s);
        do
        {
            if (!matcher.find())
            {
                int j = s.length() - i;
                if (j % 2 != 0)
                {
                    return i + (j + 1) / 2;
                } else
                {
                    return i + j / 2;
                }
            }
            i++;
        } while (true);
    }

    public static int countContentLength2(String s)
    {
        s = filterHtml(s);
        int l = "http://".length();
        int k = s.indexOf("http://", 0);
        int i;
        int j;
        if (k != -1)
        {
            i = 0;
        } else
        {
            return s.length();
        }
        if (k != -1) goto _L2; else goto _L1
_L1:
        return s.length() + i;
_L2:
        j = i + k;
        if (k + l != s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        s = s.substring(k);
        i = j;
        if (true) goto _L1; else goto _L3
_L3:
        i = k + l;
        k = s.charAt(i);
_L6:
        if (k <= 'Z' && k >= 'A' || k <= 'z' && k >= 'a' || k <= '9' && k >= '0' || k == '_' || k == '.' || k == '?' || k == '/' || k == '%' || k == '&' || k == ':' || k == '=' || k == '-') goto _L5; else goto _L4
_L4:
        j += 10;
        s = s.substring(i);
        k = s.indexOf("http://", 0);
        i = j;
        break MISSING_BLOCK_LABEL_27;
_L5:
label0:
        {
            i++;
            if (i >= s.length())
            {
                break label0;
            }
            k = s.charAt(i);
        }
          goto _L6
        i--;
        j--;
          goto _L4
    }

    public static Bundle decodeUrl(String s)
    {
        Bundle bundle = new Bundle();
        if (s == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        s = s.split("&");
        j = s.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return bundle;
_L3:
        String as[] = s[i].split("=");
        bundle.putString(URLDecoder.decode(as[0]), URLDecoder.decode(as[1]));
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static String filterHtml(String s)
    {
        return parseHtml(unicodeToGBK(s.replaceAll("<(?!br|img)[^>]+>", "").trim())).trim();
    }

    public static String getAppkey(Context context)
    {
        String s;
        s = SocializeConstants.APPKEY;
        if (!TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_67;
        }
        context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        context = ((Context) (((ApplicationInfo) (context)).metaData.get("UMENG_APPKEY")));
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        return context.toString();
        Log.a("com.umeng.socialize", "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
        return s;
        context;
        Log.a("com.umeng.socialize", "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", context);
        return s;
    }

    public static int[] getFloatWindowSize(Context context)
    {
        return (new int[] {
            (int)context.getResources().getDimension(ResContainer.getResourceId(context, ResContainer.ResType.DIMEN, "umeng_socialize_pad_window_width")), (int)context.getResources().getDimension(ResContainer.getResourceId(context, ResContainer.ResType.DIMEN, "umeng_socialize_pad_window_height"))
        });
    }

    public static byte[] getImageBytesFromUri(Activity activity, Uri uri)
    {
        if (uri == null) goto _L2; else goto _L1
_L1:
        if ("".equals(uri.toString())) goto _L2; else goto _L3
_L3:
        Object obj = uri.getScheme();
        if (!((String) (obj)).equals("file")) goto _L5; else goto _L4
_L4:
        uri = new File(uri.getPath());
_L20:
        if (uri != null)
        {
            try
            {
                if (uri.length() >= 0x500000L)
                {
                    throw new RuntimeException("\u56FE\u7247\u592A\u5927\u4E86...");
                }
            }
            // Misplaced declaration of an exception variable
            catch (Uri uri)
            {
                Toast.makeText(activity, "\u56FE\u7247\u6587\u4EF6\u592A\u5927\u4E86\u3002\u3002\u8BF7\u9009\u62E95M\u4EE5\u4E0B\u7684", 0).show();
            }
        }
_L2:
        Object obj1 = null;
_L9:
        return ((byte []) (obj1));
_L5:
        boolean flag = ((String) (obj)).equals("content");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_538;
        }
        uri = activity.managedQuery(uri, new String[] {
            "_data"
        }, null, null, null);
        int i = uri.getColumnIndexOrThrow("_data");
        uri.moveToFirst();
        uri = new File(uri.getString(i));
        if (uri == null)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        if (uri.exists())
        {
            break MISSING_BLOCK_LABEL_222;
        }
        Toast.makeText(activity, "\u65E0\u6CD5\u83B7\u53D6\u56FE\u7247\u3002\u3002\u3002", 0).show();
        if (false)
        {
            break MISSING_BLOCK_LABEL_180;
        }
_L7:
        return null;
        try
        {
            throw new NullPointerException();
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri) { }
        finally
        {
            if (true) goto _L0; else goto _L0
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        throw new NullPointerException();
        activity;
        if (true) goto _L7; else goto _L6
_L6:
        try
        {
            throw new NullPointerException();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw uri;
        }
        obj = new ByteArrayOutputStream();
        uri = new FileInputStream(uri);
        byte abyte0[];
        obj1 = uri;
        abyte0 = ((byte []) (obj));
        byte abyte1[] = new byte[1024];
_L11:
        obj1 = uri;
        abyte0 = ((byte []) (obj));
        int j = uri.read(abyte1);
        if (j != -1)
        {
            break MISSING_BLOCK_LABEL_320;
        }
        obj1 = uri;
        abyte0 = ((byte []) (obj));
        ((ByteArrayOutputStream) (obj)).flush();
        obj1 = uri;
        abyte0 = ((byte []) (obj));
        abyte1 = ((ByteArrayOutputStream) (obj)).toByteArray();
        abyte0 = abyte1;
        obj1 = abyte0;
        if (obj == null) goto _L9; else goto _L8
_L8:
        ((ByteArrayOutputStream) (obj)).close();
        obj1 = abyte0;
        if (uri == null) goto _L9; else goto _L10
_L10:
        uri.close();
        return abyte0;
        activity;
        return abyte0;
        obj1 = uri;
        abyte0 = ((byte []) (obj));
        ((ByteArrayOutputStream) (obj)).write(abyte1, 0, j);
          goto _L11
        Exception exception;
        exception;
_L18:
        obj1 = uri;
        abyte0 = ((byte []) (obj));
        Log.b(a, exception.toString());
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_371;
        }
        ((ByteArrayOutputStream) (obj)).close();
        if (uri == null)
        {
            break MISSING_BLOCK_LABEL_371;
        }
        uri.close();
_L14:
        return null;
        obj;
        obj1 = abyte0;
        if (uri == null) goto _L9; else goto _L12
_L12:
        uri.close();
        return abyte0;
        activity;
        return abyte0;
        obj;
        if (uri == null)
        {
            break MISSING_BLOCK_LABEL_399;
        }
        try
        {
            uri.close();
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri) { }
        throw obj;
        obj;
        if (uri == null) goto _L14; else goto _L13
_L13:
        uri.close();
          goto _L14
        activity;
          goto _L14
        obj;
        if (uri == null)
        {
            break MISSING_BLOCK_LABEL_426;
        }
        try
        {
            uri.close();
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri) { }
        throw obj;
        uri;
        obj1 = null;
        obj = null;
_L17:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_452;
        }
        ((ByteArrayOutputStream) (obj)).close();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_452;
        }
        try
        {
            ((InputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        throw uri;
        obj;
        if (obj1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        ((InputStream) (obj1)).close();
        continue; /* Loop/switch isn't completed */
        obj;
        if (true) goto _L16; else goto _L15
_L15:
        break MISSING_BLOCK_LABEL_472;
_L16:
        break MISSING_BLOCK_LABEL_452;
        uri;
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_483;
        }
        try
        {
            ((InputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        throw uri;
        activity;
          goto _L14
        uri;
        obj1 = null;
          goto _L17
        uri;
        obj = abyte0;
          goto _L17
        exception;
        uri = null;
        obj = null;
          goto _L18
        exception;
        uri = null;
          goto _L18
        uri = null;
        if (true) goto _L20; else goto _L19
_L19:
    }

    public static Object getObject(String s)
    {
        s = new File(BitmapUtils.getFileName((new StringBuilder(String.valueOf(BitmapUtils.PATH))).append(s).toString()));
        if (!s.exists())
        {
            return null;
        }
        s = ((String) ((new ObjectInputStream(new FileInputStream(s))).readObject()));
        if (s != null)
        {
            return s;
        }
        break MISSING_BLOCK_LABEL_70;
        s;
        s.printStackTrace();
        return null;
    }

    public static Map getPlatformKey(Context context)
    {
        int i = 0;
        if (context != null) goto _L2; else goto _L1
_L1:
        context = null;
_L4:
        return context;
_L2:
        SharedPreferences sharedpreferences = context.getSharedPreferences("umeng_socialize_key", 0);
        HashMap hashmap = new HashMap();
        SHARE_MEDIA ashare_media[] = SHARE_MEDIA.values();
        int j = ashare_media.length;
        do
        {
            context = hashmap;
            if (i >= j)
            {
                continue;
            }
            context = ashare_media[i].toString();
            if (sharedpreferences.contains(context))
            {
                hashmap.put(context, sharedpreferences.getString(context, ""));
            }
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static Map getPlatformSecret(Context context)
    {
        int i = 0;
        if (context != null) goto _L2; else goto _L1
_L1:
        context = null;
_L4:
        return context;
_L2:
        SharedPreferences sharedpreferences = context.getSharedPreferences("umeng_socialize_secret", 0);
        HashMap hashmap = new HashMap();
        SHARE_MEDIA ashare_media[] = SHARE_MEDIA.values();
        int j = ashare_media.length;
        do
        {
            context = hashmap;
            if (i >= j)
            {
                continue;
            }
            context = ashare_media[i].toString();
            if (sharedpreferences.contains(context))
            {
                hashmap.put(context, sharedpreferences.getString(context, ""));
            }
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static Uri insertImage(Context context, String s)
    {
        if (!TextUtils.isEmpty(s) && (new File(s)).exists()) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (TextUtils.isEmpty(context = android.provider.MediaStore.Images.Media.insertImage(context.getContentResolver(), s, "umeng_social_shareimg", null))) goto _L1; else goto _L3
_L3:
        context = Uri.parse(context);
        return context;
        context;
        Log.b("com.umeng.socialize", "", context);
        return null;
        context;
        Log.b("com.umeng.socialize", "", context);
        return null;
    }

    public static boolean isFloatWindowStyle(Context context)
    {
        if (SocializeConstants.SUPPORT_PAD)
        {
            if (f == 0)
            {
                WindowManager windowmanager = (WindowManager)context.getSystemService("window");
                Object obj = windowmanager.getDefaultDisplay();
                int i = ((Display) (obj)).getWidth();
                int j = ((Display) (obj)).getHeight();
                if (i > j)
                {
                    i = j;
                }
                obj = new DisplayMetrics();
                windowmanager.getDefaultDisplay().getMetrics(((DisplayMetrics) (obj)));
                f = (int)((float)i / ((DisplayMetrics) (obj)).density + 0.5F);
            }
            if ((context.getResources().getConfiguration().screenLayout & 0xf) >= 3 && f >= 550)
            {
                return true;
            }
        }
        return false;
    }

    public static boolean isGoogleMapExist()
    {
        try
        {
            Class.forName("com.google.android.maps.MapActivity");
        }
        catch (Exception exception)
        {
            Log.e(a, "The device has no google map lib!");
            return false;
        }
        return true;
    }

    public static String parseHtml(String s)
    {
        String s1;
        String s2;
        int i;
        s2 = "";
        i = s.indexOf("<img src=", 0);
        s1 = s;
        if (i == -1) goto _L2; else goto _L1
_L1:
        s1 = s2;
_L6:
        if (i != -1) goto _L4; else goto _L3
_L3:
        s1 = (new StringBuilder(String.valueOf(s1))).append(s).toString();
_L2:
        return s1;
_L4:
        s1 = (new StringBuilder(String.valueOf(s1))).append(s.substring(0, i)).toString();
        int j = s.indexOf(">", "<img src=".length() + i);
        s.substring(i + 10, j - 1);
        s = s.substring(j + 1);
        i = s.indexOf("<img src=");
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static Bundle parseUrl(String s)
    {
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

    public static Object[] readSIMCard(Context context)
    {
        Object aobj[];
        aobj = new Object[3];
        context = (TelephonyManager)context.getSystemService("phone");
        aobj[0] = Boolean.valueOf(false);
        context.getSimState();
        JVM INSTR tableswitch 0 5: default 140
    //                   0 108
    //                   1 64
    //                   2 151
    //                   3 160
    //                   4 142
    //                   5 124;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        aobj[1] = "\u65E0\u5361";
        break; /* Loop/switch isn't completed */
_L2:
        try
        {
            aobj[0] = Boolean.valueOf(true);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.b(a, (new StringBuilder("cannot read SIM card. [")).append(context.toString()).append("]").toString());
            return null;
        }
        aobj[1] = "\u672A\u77E5\u72B6\u6001";
        break; /* Loop/switch isn't completed */
_L7:
        aobj[0] = Boolean.valueOf(true);
        aobj[1] = "\u826F\u597D";
_L9:
        return aobj;
_L6:
        aobj[1] = "\u9700\u8981NetworkPIN\u89E3\u9501";
        continue; /* Loop/switch isn't completed */
_L4:
        aobj[1] = "\u9700\u8981PIN\u89E3\u9501";
        continue; /* Loop/switch isn't completed */
_L5:
        aobj[1] = "\u9700\u8981PUK\u89E3\u9501";
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static void safeDismissDialog(Dialog dialog)
    {
        if (dialog == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        dialog.dismiss();
        return;
        dialog;
        Log.b(a, "dialog dismiss error", dialog);
        return;
    }

    public static void safeShowDialog(Dialog dialog, boolean flag)
    {
        if (dialog == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        if (!dialog.isShowing())
        {
            dialog.show();
        }
_L1:
        return;
        dialog;
        Log.b(a, "dialog show error", dialog);
        if (flag)
        {
            throw new SocializeException("", dialog);
        }
          goto _L1
    }

    public static void saveObject(Object obj, String s)
    {
        try
        {
            s = new File(BitmapUtils.getFileName((new StringBuilder(String.valueOf(BitmapUtils.PATH))).append(s).toString()));
            if (s.exists())
            {
                s.delete();
            }
            s.createNewFile();
            s = new ObjectOutputStream(new FileOutputStream(s));
            s.writeObject(obj);
            s.flush();
            s.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
    }

    public static void savePlatformKey(Context context, Map map)
    {
        if (context == null || map == null || map.size() == 0)
        {
            return;
        }
        context = context.getSharedPreferences("umeng_socialize_key", 0).edit();
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                context.commit();
                return;
            }
            String s = (String)iterator.next();
            context.putString(s, map.get(s).toString());
        } while (true);
    }

    public static void savePlatformSecret(Context context, Map map)
    {
        if (context == null || map == null || map.size() == 0)
        {
            return;
        }
        context = context.getSharedPreferences("umeng_socialize_secret", 0).edit();
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                context.commit();
                return;
            }
            String s = (String)iterator.next();
            context.putString(s, ((String)map.get(s)).toString());
        } while (true);
    }

    public static void sendAnalytic(Context context, String s, String s1, UMediaObject umediaobject, String s2)
    {
        UMShareMsg umsharemsg;
        s = UMServiceFactory.getUMSocialService(s, RequestType.ANALYTICS);
        umsharemsg = new UMShareMsg();
        Log.a(a, (new StringBuilder("send analytic report , the entity name is ")).append(s.getEntity().mDescriptor).toString());
        if (!(umediaobject instanceof BaseMediaObject)) goto _L2; else goto _L1
_L1:
        umsharemsg.setMediaData(umediaobject);
_L4:
        s.getEntity().setFireCallback(false);
        umsharemsg.mText = s1;
        s.postShareByCustomPlatform(context, null, s2, umsharemsg, null);
        return;
_L2:
        if (umediaobject instanceof BaseShareContent)
        {
            umsharemsg.setMediaData(((BaseShareContent)umediaobject).getShareMedia());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String unicodeToGBK(String s)
    {
        String as[] = s.split(";");
        s = "";
        int i = 0;
        do
        {
            if (i >= as.length)
            {
                return s;
            }
            int j = as[i].indexOf("&#");
            String s3 = as[i];
            if (j > -1)
            {
                String s2 = s3;
                String s1 = s;
                if (j > 0)
                {
                    s1 = s3.substring(0, j);
                    s1 = (new StringBuilder(String.valueOf(s))).append(s1).toString();
                    s2 = s3.substring(j);
                }
                char c1 = (char)Integer.parseInt(s2.replace("&#", ""));
                s = (new StringBuilder(String.valueOf(s1))).append(c1).toString();
            } else
            {
                s = (new StringBuilder(String.valueOf(s))).append(as[i]).toString();
            }
            i++;
        } while (true);
    }

}
