// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.Constants;
import com.tencent.tauth.QQToken;
import com.tencent.tauth.Tencent;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.sdkutil:
//            JsonUtil, TemporaryStorage, ServerSetting, Util

public class AppUtils
{

    private static final String CONFIG_FILE = "config.json";
    public static final String DEFAULT_PF = "openmobile_android";
    private static final String QZONE_SIGNATURE = "ec96e9ac1149251acbb1b0c5777cae95";
    private static final String TAG = "AppUtils";
    public static AppUtils instance = null;
    public static int instance_count = 0;
    private Activity activity;
    private QQToken mQQToken;

    public AppUtils(Activity activity1, QQToken qqtoken)
    {
        activity = activity1;
        mQQToken = qqtoken;
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

    private static String[] jsonArrayToStrings(JSONArray jsonarray)
    {
        if (jsonarray == null || jsonarray.length() == 0)
        {
            return null;
        }
        String as[] = new String[jsonarray.length()];
        for (int i = 0; i < jsonarray.length(); i++)
        {
            as[i] = jsonarray.getString(i);
        }

        return as;
    }

    public static Bundle parseJsonToBundle(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        Bundle bundle = new Bundle();
        JSONObject jsonobject = JsonUtil.parseJson(s);
        Iterator iterator = jsonobject.keys();
        do
        {
            s = bundle;
            if (!iterator.hasNext())
            {
                continue;
            }
            s = iterator.next().toString();
            bundle.putString(s, jsonobject.getString(s));
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static Intent parseJsonToIntent(String s)
    {
        if (s == null)
        {
            return null;
        }
        Intent intent = new Intent();
        s = JsonUtil.parseJson(s);
        if (s.has("integer"))
        {
            JSONObject jsonobject = s.getJSONObject("integer");
            String s1;
            for (Iterator iterator1 = jsonobject.keys(); iterator1.hasNext(); intent.putExtra(s1, jsonobject.getInt(s1)))
            {
                s1 = (String)iterator1.next();
            }

        }
        if (s.has("string"))
        {
            JSONObject jsonobject1 = s.getJSONObject("string");
            String s2;
            for (Iterator iterator2 = jsonobject1.keys(); iterator2.hasNext(); intent.putExtra(s2, jsonobject1.getString(s2)))
            {
                s2 = (String)iterator2.next();
            }

        }
        if (s.has("bundle"))
        {
            s = s.getJSONObject("bundle");
            Bundle bundle;
            String s3;
label0:
            for (Iterator iterator = s.keys(); iterator.hasNext(); intent.putExtra(s3, bundle))
            {
                bundle = new Bundle();
                s3 = (String)iterator.next();
                JSONObject jsonobject2 = s.getJSONObject(s3);
                Iterator iterator3 = jsonobject2.keys();
                do
                {
                    if (!iterator3.hasNext())
                    {
                        continue label0;
                    }
                    String s4 = (String)iterator3.next();
                    Object obj = jsonobject2.get(s4);
                    if (obj instanceof String)
                    {
                        if (s4 == "exitAnim")
                        {
                            bundle.putInt("exitAnim", Integer.parseInt(jsonobject2.getString(s4)));
                        }
                        bundle.putString(s4, jsonobject2.getString(s4));
                    } else
                    if (obj instanceof JSONArray)
                    {
                        bundle.putStringArray(s4, jsonArrayToStrings(jsonobject2.getJSONArray(s4)));
                    }
                } while (true);
            }

        }
        return intent;
    }

    private boolean validateActivityIntent(Context context, Intent intent)
    {
        intent = context.getPackageManager().resolveActivity(intent, 0);
        if (intent == null)
        {
            return false;
        } else
        {
            return validateAppSignatureForPackage(context, ((ResolveInfo) (intent)).activityInfo.packageName);
        }
    }

    private boolean validateAppSignatureForPackage(Context context, String s)
    {
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
        for (int i = 0; i < j; i++)
        {
            for (String s1 = encrypt(context[i].toCharsString()); s.equals(Constants.PACKAGE_QZONE) && s1.equals("ec96e9ac1149251acbb1b0c5777cae95") || s.equals(Constants.PACKAGE_QQ);)
            {
                return true;
            }

        }

        return false;
    }

    public void JsAlert(String s, String s1, String s2, String s3, String s4)
    {
        s = (new android.app.AlertDialog.Builder(activity)).setTitle(s).setMessage(s1).setPositiveButton(s2, new _cls2());
        if (s4.equals("false"))
        {
            s.setNegativeButton(s3, new _cls3());
        }
        s.create().show();
    }

    public void OpenTDialog(final String action, final String url, int i)
    {
        Log.i("native", "OpenTDialog");
        final IUiListener listener = TemporaryStorage.getListener(i);
        if (listener != null)
        {
            Log.i("action", action);
            Log.i("listener", "not null");
            activity.runOnUiThread(new _cls1());
        }
    }

    public boolean checkMobileQQ()
    {
label0:
        {
            boolean flag1 = false;
            Object obj = activity.getPackageManager();
            int i;
            int j;
            boolean flag;
            try
            {
                obj = ((PackageManager) (obj)).getPackageInfo("com.tencent.mobileqq", 0);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                Log.d("checkMobileQQ", "error");
                namenotfoundexception.printStackTrace();
                namenotfoundexception = null;
            }
            flag = flag1;
            if (obj == null)
            {
                break label0;
            }
            obj = ((PackageInfo) (obj)).versionName;
            try
            {
                Log.d("MobileQQ verson", ((String) (obj)));
                obj = ((String) (obj)).split("\\.");
                i = Integer.parseInt(obj[0]);
                j = Integer.parseInt(obj[1]);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
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

    public boolean checkSd()
    {
        File file = null;
        if (Environment.getExternalStorageState().equals("mounted"))
        {
            file = Environment.getExternalStorageDirectory();
        }
        return file != null;
    }

    public int compareVersion(String s, String s1)
    {
        int i;
        byte byte0;
        byte0 = -1;
        Log.d("AppUtils", "compareVersion");
        s = s.split("\\.");
        s1 = s1.split("\\.");
        i = 0;
_L2:
        int j;
        int k;
        if (i >= s.length || i >= s1.length)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        j = Integer.parseInt(s[i]);
        k = Integer.parseInt(s1[i]);
        if (j < k)
        {
            return -1;
        }
        break MISSING_BLOCK_LABEL_94;
        if (s.length > i)
        {
            return 1;
        }
        j = s1.length;
        if (j <= i)
        {
            return 0;
        }
        break MISSING_BLOCK_LABEL_91;
        s;
        byte0 = 0;
        return byte0;
        if (j > k)
        {
            return 1;
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String encrypt(String s)
    {
        Log.d("AppUtils", (new StringBuilder()).append("source =").append(s).toString());
        byte abyte0[];
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s.getBytes());
        abyte0 = messagedigest.digest();
        Object obj;
        obj = s;
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        int j;
        obj = new StringBuilder();
        j = abyte0.length;
        int i = 0;
_L2:
        byte byte0;
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
        try
        {
            obj = ((StringBuilder) (obj)).toString();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
            nosuchalgorithmexception = s;
        }
        Log.d("AppUtils", (new StringBuilder()).append("result =").append(((String) (obj))).toString());
        return ((String) (obj));
    }

    public boolean fileExists(String s)
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

    public Bundle fillParams4BrowserLogin(String s)
    {
        Bundle bundle;
        bundle = new Bundle();
        bundle.putString("scope", "all");
        if (!"action_login".equals(s) && !"action_pay".equals(s)) goto _L2; else goto _L1
_L1:
        if (mQQToken != null)
        {
            bundle.putString("client_id", mQQToken.getAppId());
            bundle.putString("pf", "openmobile_android");
            bundle.putString("need_pay", "1");
            s = (new StringBuilder()).append(System.currentTimeMillis() / 1000L).append("").toString();
            bundle.putString("sign", getSignValidString((new StringBuilder()).append(s).append("").toString()));
            bundle.putString("time", s);
        }
_L4:
        bundle.putString("sdkv", "2.0");
        bundle.putString("sdkp", "a");
        return bundle;
_L2:
        if (mQQToken != null)
        {
            bundle.putString("oauth_consumer_key", mQQToken.getAppId());
            if (mQQToken.isSessionValid())
            {
                bundle.putString("access_token", mQQToken.getAccessToken());
            }
            s = mQQToken.getOpenId();
            if (s != null)
            {
                bundle.putString("openid", s);
            }
            try
            {
                bundle.putString("pf", mQQToken.getAppContext().getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                bundle.putString("pf", "openmobile_android");
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String getAppName()
    {
        Resources resources = activity.getResources();
        return resources.getText(resources.getIdentifier("app_name", "string", activity.getPackageName())).toString();
    }

    public String getAppVerison(String s)
    {
        try
        {
            s = activity.getPackageManager().getPackageInfo(s, 0).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public String getApplicationLable()
    {
        if (activity != null)
        {
            CharSequence charsequence = activity.getPackageManager().getApplicationLabel(activity.getApplicationInfo());
            if (charsequence != null)
            {
                return charsequence.toString();
            }
        }
        return null;
    }

    public String getCurrentTimeSeconds()
    {
        return (new StringBuilder()).append(System.currentTimeMillis() / 1000L).append("").toString();
    }

    public String getJSVersion()
    {
        Object obj = (new StringBuilder()).append(activity.getFilesDir()).append(File.separator).append("tencent/js/").append("config.json").toString();
        try
        {
            Object obj1 = new FileInputStream(((String) (obj)));
            obj = new StringBuffer();
            for (obj1 = new Scanner(((java.io.InputStream) (obj1))); ((Scanner) (obj1)).hasNextLine(); ((StringBuffer) (obj)).append(((Scanner) (obj1)).nextLine()).append("\n")) { }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((FileNotFoundException) (obj)).printStackTrace();
            return null;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return null;
        }
        obj = (new JSONObject(((StringBuffer) (obj)).toString())).getString("version");
        return ((String) (obj));
    }

    public String getMachineStatus()
    {
        return Build.MODEL;
    }

    public String getOsStatus()
    {
        return android.os.Build.VERSION.RELEASE;
    }

    public String getQQVersion()
    {
        String s;
        try
        {
            s = activity.getPackageManager().getPackageInfo(Constants.PACKAGE_QQ, 0).versionName;
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }

    public String getQZoneVersion()
    {
        String s;
        try
        {
            s = activity.getPackageManager().getPackageInfo(Constants.PACKAGE_QZONE, 0).versionName;
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }

    public String getSignValidString(String s)
    {
        WnsClientLog.getInstance().v("openSDK_LOG", "OpenUi, getSignValidString");
        MessageDigest messagedigest;
        String s1 = activity.getApplicationContext().getPackageName();
        Signature asignature[] = activity.getApplicationContext().getPackageManager().getPackageInfo(s1, 64).signatures;
        messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(asignature[0].toByteArray());
        String s2 = toHexString(messagedigest.digest());
        messagedigest.reset();
        messagedigest.update((new StringBuilder()).append(s1).append("_").append(s2).append("_").append(s).append("").toString().getBytes());
        s = toHexString(messagedigest.digest());
        messagedigest.reset();
        return s;
        Exception exception;
        exception;
        s = "";
_L2:
        exception.printStackTrace();
        WnsClientLog.getInstance().e("openSDK_LOG", "OpenUi, getSignValidString error", exception);
        return s;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String getStatus_machine()
    {
        return Build.MODEL;
    }

    public String getStatus_os()
    {
        return android.os.Build.VERSION.RELEASE;
    }

    public String getSystemInfo()
    {
        String s = (new WebView(activity)).getSettings().getUserAgentString();
        String s1 = (new StringBuilder()).append("Product: ").append(Build.PRODUCT).toString();
        s1 = (new StringBuilder()).append(s1).append(", CPU_ABI: ").append(Build.CPU_ABI).toString();
        s1 = (new StringBuilder()).append(s1).append(", TAGS: ").append(Build.TAGS).toString();
        s1 = (new StringBuilder()).append(s1).append(", VERSION_CODES.BASE: 1").toString();
        s1 = (new StringBuilder()).append(s1).append(", MODEL: ").append(Build.MODEL).toString();
        s1 = (new StringBuilder()).append(s1).append(", SDK: ").append(android.os.Build.VERSION.SDK).toString();
        s1 = (new StringBuilder()).append(s1).append(", VERSION.RELEASE: ").append(android.os.Build.VERSION.RELEASE).toString();
        s1 = (new StringBuilder()).append(s1).append(", DEVICE: ").append(Build.DEVICE).toString();
        s1 = (new StringBuilder()).append(s1).append(", DISPLAY: ").append(Build.DISPLAY).toString();
        s1 = (new StringBuilder()).append(s1).append(", BRAND: ").append(Build.BRAND).toString();
        s1 = (new StringBuilder()).append(s1).append(", BOARD: ").append(Build.BOARD).toString();
        s1 = (new StringBuilder()).append(s1).append(", FINGERPRINT: ").append(Build.FINGERPRINT).toString();
        s1 = (new StringBuilder()).append(s1).append(", ID: ").append(Build.ID).toString();
        s1 = (new StringBuilder()).append(s1).append(", MANUFACTURER: ").append(Build.MANUFACTURER).toString();
        s1 = (new StringBuilder()).append(s1).append(", USER: ").append(Build.USER).toString();
        return (new StringBuilder()).append(s).append("\n").append(s1).toString();
    }

    public String getUrlByParams(String s)
    {
        s = new Bundle();
        s.putString("scope", "all");
        s.putString("display", "mobile");
        StringBuilder stringbuilder = new StringBuilder();
        s.putString("response_type", "token");
        s.putString("redirect_uri", ServerSetting.getInstance().getSettingUrl(mQQToken.getAppContext(), 1));
        s.putString("cancel_display", "1");
        s.putString("switch", "1");
        s.putString("sdkp", "a");
        s.putString("sdkv", "2.0");
        s.putString("status_userip", getUserIp());
        s.putString("status_os", android.os.Build.VERSION.RELEASE);
        s.putString("status_version", android.os.Build.VERSION.SDK);
        s.putString("status_machine", Build.MODEL);
        stringbuilder.append(ServerSetting.getInstance().getSettingUrl(mQQToken.getAppContext(), 2));
        s.putString("client_id", mQQToken.getAppId());
        s.putString("pf", "openmobile_android");
        s.putString("need_pay", "1");
        String s1 = (new StringBuilder()).append(System.currentTimeMillis() / 1000L).append("").toString();
        s.putString("sign", getSignValidString((new StringBuilder()).append(s1).append("").toString()));
        s.putString("time", s1);
        stringbuilder.append(Util.encodeUrl(s));
        return stringbuilder.toString();
    }

    public String getUserIp()
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

    public String getVersionStatus()
    {
        return android.os.Build.VERSION.SDK;
    }

    public boolean isActivityExist(String s)
    {
        for (s = parseJsonToIntent(s); s == null || activity.getPackageManager().queryIntentActivities(s, 0).size() == 0;)
        {
            return false;
        }

        return true;
    }

    public boolean isValidUrl(String s)
    {
        while (s == null || !s.startsWith("http://") && !s.startsWith("https://")) 
        {
            return false;
        }
        return true;
    }

    public int nextRequestCode()
    {
        return TemporaryStorage.nextRequestCode();
    }

    public void setActivity(Activity activity1)
    {
        activity = activity1;
    }

    public void setToken(QQToken qqtoken)
    {
        mQQToken = qqtoken;
    }

    public String toHexString(byte abyte0[])
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

    public void updateQQToken()
    {
        Tencent.UpdateQQToken();
    }

    public boolean validateActivityIntent4JS(String s, String s1)
    {
        Intent intent = new Intent();
        intent.setClassName(s, s1);
        return validateActivityIntent(activity, intent);
    }




    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        final AppUtils this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            JsBridge.getInstance(activity, JsConfig.mTencentFileProtocolPath).executeMethod("appUtils.onJsAlertCallBack", new String[0]);
        }

        _cls2()
        {
            this$0 = AppUtils.this;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        final AppUtils this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.dismiss();
        }

        _cls3()
        {
            this$0 = AppUtils.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final AppUtils this$0;
        final String val$action;
        final IUiListener val$listener;
        final String val$url;

        public void run()
        {
            (new TDialog(activity, action, url, listener, mQQToken)).show();
        }

        _cls1()
        {
            this$0 = AppUtils.this;
            action = s;
            url = s1;
            listener = iuilistener;
            super();
        }
    }

}
