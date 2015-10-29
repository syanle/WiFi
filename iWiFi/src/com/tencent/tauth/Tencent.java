// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.CookieSyncManager;
import android.widget.Toast;
import com.tencent.connect.a.a;
import com.tencent.connect.a.b;
import com.tencent.javascript.RawFile;
import com.tencent.jsutil.IntentMap;
import com.tencent.jsutil.JsBridge;
import com.tencent.jsutil.JsConfig;
import com.tencent.jsutil.JsDialogListener;
import com.tencent.jsutil.JsTokenListener;
import com.tencent.jsutil.JumpController;
import com.tencent.jsutil.PackIRequestListener;
import com.tencent.jsutil.PackIUiListener;
import com.tencent.jsutil.ReportUtils;
import com.tencent.mta.TencentStat;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import com.tencent.open.SocialApi;
import com.tencent.open.TaskGuide;
import com.tencent.plus.ImageActivity;
import com.tencent.record.a.c;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.sdkutil.AppUtils;
import com.tencent.sdkutil.DataStorage;
import com.tencent.sdkutil.HttpUtils;
import com.tencent.sdkutil.JsonUtil;
import com.tencent.sdkutil.Security;
import com.tencent.sdkutil.TemporaryStorage;
import com.tencent.sdkutil.Util;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.tauth:
//            QQToken, IRequestListener, IUiListener

public class Tencent
{

    public static final String DEFAULT_PF = "openmobile_android";
    protected static final String PREFERENCE_PF = "pfStore";
    public static final String SHARE_TO_QQ_APP_NAME = "appName";
    public static final String SHARE_TO_QQ_AUDIO_URL = "audio_url";
    public static final String SHARE_TO_QQ_EXT_INT = "cflag";
    public static final String SHARE_TO_QQ_EXT_STR = "share_qq_ext_str";
    public static final int SHARE_TO_QQ_FLAG_QZONE_AUTO_OPEN = 1;
    public static final int SHARE_TO_QQ_FLAG_QZONE_ITEM_HIDE = 2;
    public static final String SHARE_TO_QQ_IMAGE_LOCAL_URL = "imageLocalUrl";
    public static final String SHARE_TO_QQ_IMAGE_URL = "imageUrl";
    public static final String SHARE_TO_QQ_KEY_TYPE = "req_type";
    public static final String SHARE_TO_QQ_SITE = "site";
    public static final String SHARE_TO_QQ_SUMMARY = "summary";
    public static final String SHARE_TO_QQ_TARGET_URL = "targetUrl";
    public static final String SHARE_TO_QQ_TITLE = "title";
    public static final int SHARE_TO_QQ_TYPE_AUDIO = 2;
    public static final int SHARE_TO_QQ_TYPE_DEFAULT = 1;
    protected static final int SHARE_TO_QQ_TYPE_HYPERTEXT = 3;
    public static final int SHARE_TO_QQ_TYPE_IMAGE = 5;
    protected static final int SHARE_TO_QQ_TYPE_VIDEO = 4;
    static AppUtils appUtils;
    public static IntentMap intentmap;
    private static QQToken jsQQToken;
    public static JsBridge mBridge;
    static JumpController mController;
    static JsDialogListener mJsDialogListener;
    static boolean mbHasInitJS = false;
    private final int JSFILESUM = 5;
    public final int SETAVATAR_REQUESTCODE = 0;
    private int jsDebugFlag;
    private Activity mActivity;
    private b mCheckUpdate;
    private Context mContext;
    private JsConfig mJsConfig;
    private QQToken mQQToken;
    private JsTokenListener tokenListener;

    private Tencent(String s, Context context)
    {
        jsDebugFlag = 0;
        mContext = context;
        mJsConfig = JsConfig.getInstance(context);
        mCheckUpdate = new b(context);
    }

    private void JsQQTokenUpdate()
    {
        if (jsQQToken == null)
        {
            return;
        } else
        {
            jsQQToken.copyData(mQQToken);
            return;
        }
    }

    public static void UpdateQQToken()
    {
        Tencent tencent = DataStorage.getTencentInstance(jsQQToken.getAppId());
        if (tencent != null)
        {
            tencent.mQQToken.copyData(jsQQToken);
        }
    }

    private void checkLoadFile(Context context)
    {
        JSONObject jsonobject;
        Object obj;
        Log.d("Tencent", (new StringBuilder()).append("tencent_file_path:").append(mJsConfig.getTencentFilePath()).toString());
        obj = new File((new StringBuilder()).append(mJsConfig.getDirZipTemp()).append(File.separator).append("js.zip").toString());
        if (!((File) (obj)).exists())
        {
            break MISSING_BLOCK_LABEL_170;
        }
        jsonobject = mJsConfig.getConfig();
        obj = mJsConfig.readConfigFromZip(((File) (obj)));
        if (jsonobject == null || obj == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        long l;
        long l1;
        l = jsonobject.getLong("version");
        l1 = ((JSONObject) (obj)).getLong("version");
        Log.d("Tencent", (new StringBuilder()).append("checkloadFile : dataVersion = ").append(l).append("zipVersion = ").append(l1).toString());
        if (l < l1)
        {
            try
            {
                mCheckUpdate.c();
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
        }
        if ((new File(mJsConfig.getTencentFilePath())).exists())
        {
            mBridge = JsBridge.getInstance(context, mJsConfig.getTencentFileProtocolPath());
        } else
        {
            moveRawFile(mContext, (new StringBuilder()).append(mJsConfig.getDirZipTemp()).append("/js.zip").toString());
            File file = new File(mJsConfig.getTencentFilePath());
            Log.d("Tencent", (new StringBuilder()).append("fileExist:").append(file.exists()).toString());
            if (file.exists())
            {
                mBridge = JsBridge.getInstance(context, mJsConfig.getTencentFileProtocolPath());
                return;
            }
        }
        return;
    }

    public static Tencent createInstance(String s, Context context)
    {
        c.a(context.getApplicationContext());
        WnsClientLog.getInstance().v("openSDK_LOG", "createInstance() --start");
        if (DataStorage.hasTencentInstance(s))
        {
            WnsClientLog.getInstance().v("openSDK_LOG", "createInstance() ,sessionMap.containsKey --end");
            return DataStorage.getTencentInstance(s);
        }
        Tencent tencent;
        try
        {
            ComponentName componentname = new ComponentName(context.getPackageName(), "com.tencent.tauth.AuthActivity");
            context.getPackageManager().getActivityInfo(componentname, 0);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = (new StringBuilder()).append("\u6CA1\u6709\u5728AndroidManifest.xml\u4E2D\u68C0\u6D4B\u5230com.tencent.tauth.AuthActivity,\u8BF7\u52A0\u4E0Acom.tencent.open.AuthActivity,\u5E76\u914D\u7F6E<data android:scheme=\"tencent").append(s).append("\" />,\u8BE6\u7EC6\u4FE1\u606F\u8BF7\u67E5\u770B\u5B98\u7F51\u6587\u6863.").toString();
            s = (new StringBuilder()).append(context).append("\n\u914D\u7F6E\u793A\u4F8B\u5982\u4E0B: \n<activity\n     android:name=\"com.tencent.connect.util.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n     <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent").append(s).append("\" />\n").append("</intent-filter>\n").append("</activity>").toString();
            WnsClientLog.getInstance().e("AndroidManifest.xml \u6CA1\u6709\u68C0\u6D4B\u5230com.tencent.tauth.AuthActivity", s);
            return null;
        }
        tencent = new Tencent(s, context.getApplicationContext());
        tencent.mQQToken = new QQToken(s, context.getApplicationContext());
        tencent.initJs();
        DataStorage.setTencentInstance(s, tencent);
        Log.d("appid", s);
        WnsClientLog.getInstance().v("openSDK_LOG", "createInstance()  --end");
        return tencent;
    }

    private Bundle fillParams(String s, Bundle bundle)
    {
        JsQQTokenUpdate();
        Bundle bundle1 = bundle;
        if (bundle == null)
        {
            bundle1 = new Bundle();
        }
        bundle1.putString("format", "json");
        bundle1.putString("status_os", android.os.Build.VERSION.RELEASE);
        bundle1.putString("status_machine", Build.MODEL);
        bundle1.putString("status_version", android.os.Build.VERSION.SDK);
        bundle1.putString("sdkv", "2.0");
        bundle1.putString("sdkp", "a");
        if (mQQToken == null)
        {
            return bundle1;
        }
        if (isSessionValid())
        {
            bundle1.putString("access_token", getAccessToken());
        }
        if (!"oauth2.0/m_me".equals(s))
        {
            bundle1.putString("oauth_consumer_key", (new StringBuilder()).append(mQQToken.getAppId()).append("").toString());
            if (mQQToken.getOpenId() != null)
            {
                bundle1.putString("openid", (new StringBuilder()).append(mQQToken.getOpenId()).append("").toString());
            }
        }
        bundle1.putString("appid_for_getting_config", (new StringBuilder()).append(mQQToken.getAppId()).append("").toString());
        try
        {
            bundle1.putString("pf", mQQToken.getAppContext().getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            bundle1.putString("pf", "openmobile_android");
            return bundle1;
        }
        return bundle1;
    }

    private void initJs()
    {
        if (mbHasInitJS)
        {
            return;
        }
        mbHasInitJS = true;
        Context context = mContext;
        String as[] = RawFile.fileList;
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            String s = as[i];
            moveJsFile(mContext, s);
        }

        switch (jsDebugFlag)
        {
        default:
            Log.e("Tencent js", "javascript \u5305\u4E0B  js\u6587\u4EF6\u4E0D\u5B8C\u6574");
            return;

        case 0: // '\0'
            checkLoadFile(context);
            startUpdate();
            if (Security.verify(mJsConfig.getDirJsRoot()))
            {
                registerObj(context);
                Log.d("Tencent", "verifysuccess");
                return;
            } else
            {
                Log.d("Tencent", "verifyfailed");
                mJsConfig.setJsVersion("0");
                moveRawFile(mContext, (new StringBuilder()).append(mJsConfig.getDirZipTemp()).append("/js.zip").toString());
                startUpdate();
                registerObj(context);
                return;
            }

        case 5: // '\005'
            registerObj(context);
            return;
        }
    }

    private void moveJsFile(Context context, String s)
    {
        URL url = com/tencent/javascript/RawFile.getResource(s);
        if (url == null)
        {
            return;
        }
        try
        {
            a.a(url.openConnection().getInputStream(), new File((new StringBuilder()).append(context.getFilesDir().toString()).append("/tencent/js/").append(s).toString()));
            jsDebugFlag = jsDebugFlag + 1;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    private void moveRawFile(Context context, String s)
    {
        context = com/tencent/javascript/RawFile.getResource("js.zip");
        try
        {
            context = context.openConnection().getInputStream();
            s = new File(s);
            a.a(context, s);
            a.a(s, new File(mJsConfig.getDirJsRoot()));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    private void registerObj(Context context)
    {
        mBridge = JsBridge.getInstance(context, JsConfig.mTencentFileProtocolPath);
        if (jsQQToken != null)
        {
            return;
        } else
        {
            jsQQToken = new QQToken(null, null);
            mBridge.regiesterObj(jsQQToken, "sdk_QQToken");
            mBridge.regiesterObj(WnsClientLog.getInstance(), "sdk_log");
            mBridge.regiesterObj(new PackIRequestListener(), "sdk_reqeustListener");
            mBridge.regiesterObj(new PackIUiListener(), "sdk_uiListener");
            mBridge.regiesterObj(new HttpUtils(mContext, jsQQToken), "sdk_httpUtils");
            mBridge.regiesterObj(new JsonUtil(), "sdk_jsonUtil");
            mBridge.regiesterObj(new ReportUtils(mContext, jsQQToken), "sdk_reportUtils");
            mController = new JumpController(null, jsQQToken);
            mBridge.regiesterObj(mController, "sdk_jump");
            appUtils = new AppUtils(null, jsQQToken);
            mBridge.regiesterObj(appUtils, "sdk_appUtils");
            mJsDialogListener = new JsDialogListener(jsQQToken, null);
            mBridge.regiesterObj(mJsDialogListener, "sdk_dialogListener");
            intentmap = new IntentMap(new Intent());
            mBridge.regiesterObj(intentmap, "sdk_data");
            mBridge.loadUrl(JsConfig.mTencentFileProtocolPath);
            return;
        }
    }

    private void setBundleParams(Bundle bundle)
    {
        if (mQQToken != null)
        {
            bundle.putString("appid", mQQToken.getAppId());
            if (mQQToken.isSessionValid())
            {
                bundle.putString("keystr", mQQToken.getAccessToken());
                bundle.putString("keytype", "0x80");
            }
            String s = mQQToken.getOpenId();
            if (s != null)
            {
                bundle.putString("hopenid", s);
            }
            bundle.putString("platform", "androidqz");
            try
            {
                bundle.putString("pf", mContext.getSharedPreferences("pfStore", 0).getString("pf", "pf"));
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                bundle.putString("pf", "pf");
            }
        }
        bundle.putString("sdkv", "2.0");
        bundle.putString("sdkp", "a");
    }

    private void startUpdate()
    {
        (new Thread(new _cls1())).start();
    }

    public static int startWPAConversation(Context context, String s, String s1)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        if (TextUtils.isEmpty(s))
        {
            return -1;
        }
        if (s.length() < 5)
        {
            return -3;
        }
        for (int i = 0; i < s.length(); i++)
        {
            if (!Character.isDigit(s.charAt(i)))
            {
                return -4;
            }
        }

        String s2 = "";
        if (!TextUtils.isEmpty(s1))
        {
            s2 = Base64.encodeToString(s1.getBytes(), 2);
        }
        intent.setData(Uri.parse(String.format("mqqwpa://im/chat?chat_type=wpa&uin=%1$s&version=1&src_type=app&attach_content=%2$s", new Object[] {
            s, s2
        })));
        s = context.getPackageManager();
        if (s.queryIntentActivities(intent, 0x10000).size() > 0)
        {
            context.startActivity(intent);
            return 0;
        }
        intent.setData(Uri.parse("http://www.myapp.com/forward/a/45592?g_f=990935"));
        if (s.queryIntentActivities(intent, 0x10000).size() > 0)
        {
            context.startActivity(intent);
            return 0;
        } else
        {
            return -2;
        }
    }

    public int ask(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        (new SocialApi(activity, mQQToken)).ask(activity, bundle, iuilistener);
        return -1;
    }

    public int brag(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        (new SocialApi(activity, mQQToken)).brag(activity, bundle, iuilistener);
        return -1;
    }

    public int challenge(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        (new SocialApi(activity, mQQToken)).challenge(activity, bundle, iuilistener);
        return -1;
    }

    protected Bundle composeActivityParams()
    {
        Bundle bundle = new Bundle();
        bundle.putString("appid", mQQToken.getAppId());
        if (mQQToken.isSessionValid())
        {
            bundle.putString("keystr", mQQToken.getAccessToken());
            bundle.putString("keytype", "0x80");
        }
        String s = mQQToken.getOpenId();
        if (s != null)
        {
            bundle.putString("hopenid", s);
        }
        bundle.putString("platform", "androidqz");
        bundle.putString("pf", mContext.getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
        bundle.putString("pf", "openmobile_android");
        bundle.putString("sdkv", "2.0");
        bundle.putString("sdkp", "a");
        return bundle;
    }

    protected Bundle composeCGIParams()
    {
        Bundle bundle = new Bundle();
        bundle.putString("format", "json");
        bundle.putString("status_os", android.os.Build.VERSION.RELEASE);
        bundle.putString("status_machine", Build.MODEL);
        bundle.putString("status_version", android.os.Build.VERSION.SDK);
        bundle.putString("sdkv", "2.0");
        bundle.putString("sdkp", "a");
        if (mQQToken != null && mQQToken.isSessionValid())
        {
            bundle.putString("access_token", mQQToken.getAccessToken());
            bundle.putString("oauth_consumer_key", mQQToken.getAppId());
            bundle.putString("openid", mQQToken.getOpenId());
        }
        bundle.putString("appid_for_getting_config", mQQToken.getAppId());
        bundle.putString("pf", mContext.getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
        return bundle;
    }

    public String getAccessToken()
    {
        WnsClientLog.getInstance().v("openSDK_LOG", "getAccessToken()");
        return mQQToken.getAccessToken();
    }

    public void getAppFriends(IRequestListener irequestlistener)
    {
        requestAsync("user/get_app_friends", null, "GET", irequestlistener, null);
    }

    public String getAppId()
    {
        WnsClientLog.getInstance().v("openSDK_LOG", "getAppId()");
        return mQQToken.getAppId();
    }

    public long getExpiresIn()
    {
        WnsClientLog.getInstance().v("openSDK_LOG", "getExpiresIn()");
        return mQQToken.getExpiresIn();
    }

    public String getOpenId()
    {
        WnsClientLog.getInstance().v("openSDK_LOG", "getOpenId()");
        return mQQToken.getOpenId();
    }

    public void getPhotoList(String s, IRequestListener irequestlistener)
    {
        Bundle bundle = new Bundle();
        bundle.putString("albumid", s);
        requestAsync("photo/list_photo", bundle, "GET", irequestlistener, null);
    }

    public void getWPAUserOnlineState(String s, IRequestListener irequestlistener)
    {
        if (s == null)
        {
            try
            {
                throw new Exception("uin null");
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
            if (irequestlistener != null)
            {
                irequestlistener.onUnknowException(s, null);
            }
            return;
        }
        if (s.length() < 5)
        {
            throw new Exception("uin length < 5");
        }
        break MISSING_BLOCK_LABEL_127;
_L3:
        int i;
        if (i >= s.length()) goto _L2; else goto _L1
_L1:
        if (!Character.isDigit(s.charAt(i)))
        {
            throw new Exception("uin not digit");
        }
        i++;
          goto _L3
_L2:
        s = (new StringBuilder()).append("http://webpresence.qq.com/getonline?Type=1&").append(s).append(":").toString();
        requestAsync(mQQToken.getAppContext(), s, irequestlistener, null);
        return;
        i = 0;
          goto _L3
    }

    public int gift(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        (new SocialApi(activity, mQQToken)).gift(activity, bundle, iuilistener);
        return -1;
    }

    public void grade(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        (new SocialApi(activity, mQQToken)).grade(activity, bundle, iuilistener);
    }

    public int invite(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        (new SocialApi(activity, mQQToken)).invite(activity, bundle, iuilistener);
        return -1;
    }

    public boolean isSessionValid()
    {
        WnsClientLog wnsclientlog = WnsClientLog.getInstance();
        StringBuilder stringbuilder = (new StringBuilder()).append("isSessionValid(), result = ");
        String s;
        if (mQQToken.isSessionValid())
        {
            s = "true";
        } else
        {
            s = "false";
        }
        wnsclientlog.v("openSDK_LOG", stringbuilder.append(s).append("").toString());
        return mQQToken.isSessionValid();
    }

    public int login(Activity activity, String s, IUiListener iuilistener)
    {
        JsQQTokenUpdate();
        mActivity = activity;
        tokenListener = new JsTokenListener(iuilistener, mQQToken, mContext);
        TemporaryStorage.setListener(new FeedConfirmListener(tokenListener));
        mController.setActivity(activity);
        mJsDialogListener.setActivity(activity);
        appUtils.setActivity(activity);
        mBridge.executeMethod("login", new String[] {
            s
        });
        return -1;
    }

    public void logout(Context context)
    {
        WnsClientLog.getInstance().v("openSDK_LOG", "logout() --start");
        CookieSyncManager.createInstance(context);
        setAccessToken(null, null);
        setOpenId(null);
        WnsClientLog.getInstance().v("openSDK_LOG", "logout() --end");
    }

    public JSONObject parseBundleToJSON4QQShare(Bundle bundle, int i)
    {
        JSONObject jsonobject = new JSONObject();
        int j = bundle.getInt("req_type", 1);
        jsonobject.put("shareType", i);
        jsonobject.put("type", (new StringBuilder()).append(j).append("").toString());
        jsonobject.put("req_type", bundle.get("req_type"));
        jsonobject.put("cflag", bundle.getInt("cflag"));
        jsonobject.put("object_title", (String)bundle.get("title"));
        jsonobject.put("object_description", bundle.get("summary"));
        if (bundle.get("imageUrl") == null) goto _L2; else goto _L1
_L1:
        Object obj = bundle.get("imageUrl");
        if (!(obj instanceof String)) goto _L4; else goto _L3
_L3:
        Log.d("iamgeUrl", bundle.getString("imageUrl"));
        jsonobject.put("IsImageUrlArrayList", false);
        jsonobject.put("object_imageUrl", bundle.getString("imageUrl"));
_L6:
        jsonobject.put("object_targetUrl", bundle.get("targetUrl"));
        jsonobject.put("audioUrl", bundle.get("audio_url"));
        jsonobject.put("app_name", bundle.get("appName"));
        jsonobject.put("platform", "android");
        return jsonobject;
_L4:
        if (!(obj instanceof ArrayList)) goto _L6; else goto _L5
_L5:
        String s = "";
        try
        {
            obj = (ArrayList)obj;
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            bundle.printStackTrace();
            return jsonobject;
        }
        i = 0;
_L7:
        if (i >= ((ArrayList) (obj)).size())
        {
            break MISSING_BLOCK_LABEL_389;
        }
        if (!Util.isValidUrl((String)((ArrayList) (obj)).get(i)) && !Util.fileExists((String)((ArrayList) (obj)).get(i)))
        {
            ((ArrayList) (obj)).remove(i);
            break MISSING_BLOCK_LABEL_438;
        }
        if (i == ((ArrayList) (obj)).size() - 1)
        {
            s = (new StringBuilder()).append(s).append((String)((ArrayList) (obj)).get(i)).toString();
            break MISSING_BLOCK_LABEL_438;
        }
        s = (new StringBuilder()).append(s).append((String)((ArrayList) (obj)).get(i)).append(";").toString();
        break MISSING_BLOCK_LABEL_438;
        jsonobject.put("IsImageUrlArrayList", true);
        jsonobject.put("object_imageUrl", s);
          goto _L6
_L2:
        jsonobject.put("object_imageUrl", bundle.get("imageLocalUrl"));
          goto _L6
        i++;
          goto _L7
    }

    public int pay(Activity activity, IUiListener iuilistener)
    {
        return -1;
    }

    public int reAuth(Activity activity, String s, IUiListener iuilistener)
    {
        JsQQTokenUpdate();
        tokenListener = new JsTokenListener(iuilistener, mQQToken, mContext);
        TemporaryStorage.setListener(tokenListener);
        mBridge.executeMethod("reAuth", new String[] {
            s
        });
        return -1;
    }

    public boolean ready(Context context)
    {
        if (mQQToken == null)
        {
            return false;
        }
        boolean flag;
        if (mQQToken.isSessionValid() && mQQToken.getOpenId() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            Toast.makeText(context, "login and get openId first, please!", 0).show();
        }
        return flag;
    }

    public JSONObject request(String s, Bundle bundle, String s1)
    {
        JsQQTokenUpdate();
        WnsClientLog.getInstance().v("openSDK_LOG", (new StringBuilder()).append("request() ,graphPath = ").append(s).append("").toString());
        new JSONObject();
        s = JsonUtil.parseJson(HttpUtils.openUrl(mQQToken.getAppContext(), s, s1, bundle).response);
        Log.i("request-result", s.toString());
        return s;
    }

    public void requestAsync(Context context, String s, IRequestListener irequestlistener, Object obj)
    {
        context = TemporaryStorage.getId();
        obj = new Bundle();
        ((Bundle) (obj)).putString("oauth_consumer_key", mQQToken.getAppId());
        ((Bundle) (obj)).putString("action", "get_wpastate");
        TemporaryStorage.set(context, obj);
        obj = TemporaryStorage.getId();
        TemporaryStorage.set(((String) (obj)), irequestlistener);
        mBridge.executeMethod("tencent.wpaApi.getWAPUserState", new String[] {
            s, context, obj
        });
    }

    public void requestAsync(String s, Bundle bundle, String s1, IRequestListener irequestlistener, Object obj)
    {
        WnsClientLog.getInstance().v("openSDK_LOG", (new StringBuilder()).append("requestAsync() ,graphPath = ").append(s).append("").toString());
        JsQQTokenUpdate();
        obj = TemporaryStorage.getId();
        s1 = bundle;
        if (bundle == null)
        {
            s1 = new Bundle();
        }
        s1.putString("oauth_consumer_key", mQQToken.getAppId());
        s1.putString("openid", mQQToken.getOpenId());
        s1.putString("access_token", mQQToken.getAccessToken());
        s1.putString("format", "json");
        TemporaryStorage.set(((String) (obj)), s1);
        bundle = TemporaryStorage.getId();
        TemporaryStorage.set(bundle, irequestlistener);
        mBridge.executeMethod("requestAsync", new String[] {
            s, obj, bundle
        });
    }

    public JSONObject requestSync(String s, Bundle bundle, String s1)
    {
        JSONObject jsonobject;
        JsQQTokenUpdate();
        jsonobject = new JSONObject();
        Log.i("params", bundle.toString());
        bundle = fillParams(s, bundle);
        bundle.putString("appid_for_getting_config", (new StringBuilder()).append(mQQToken.getAppId()).append("").toString());
        s = HttpUtils.openUrl(mQQToken.getAppContext(), s, s1, bundle).response;
        bundle = JsonUtil.parseJson(s);
        s = bundle;
        Log.i("requestSync-result", bundle.toString());
        return bundle;
        s1;
        bundle = jsonobject;
_L4:
        s = bundle;
        s1.printStackTrace();
        return bundle;
        bundle;
_L2:
        bundle.printStackTrace();
        WnsClientLog.getInstance().e("openSDK_LOG", "requestSync() error", bundle);
        try
        {
            s.put("ret", -1);
            s.put("msg", bundle.toString());
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            bundle.printStackTrace();
            return s;
        }
        return s;
        bundle;
        s = jsonobject;
        if (true) goto _L2; else goto _L1
_L1:
        s1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setAccessToken(String s, String s1)
    {
        WnsClientLog.getInstance().v("openSDK_LOG", (new StringBuilder()).append("setAccessToken(), expiresIn = ").append(s1).append("").toString());
        mQQToken.setAccessToken(s, s1);
    }

    public void setAvatar(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        bundle.putString("appid", mQQToken.getAppId());
        bundle.putString("access_token", mQQToken.getAccessToken());
        bundle.putLong("expires_in", mQQToken.getExpiresIn());
        bundle.putString("openid", mQQToken.getOpenId());
        setBundleParams(bundle);
        iuilistener = new Intent();
        iuilistener.putExtra("key_action", "action_avatar");
        iuilistener.putExtra("key_params", bundle);
        iuilistener.setClass(activity, com/tencent/plus/ImageActivity);
        activity.startActivityForResult(iuilistener, 0);
    }

    public void setAvatar(Activity activity, Bundle bundle, IUiListener iuilistener, int i, int j)
    {
        Toast.makeText(activity, "setAvatar...Anim", 0).show();
        bundle.putInt("exitAnim", j);
        activity.overridePendingTransition(i, 0);
        setAvatar(activity, bundle, iuilistener);
    }

    public void setOpenId(String s)
    {
        WnsClientLog.getInstance().v("openSDK_LOG", "setOpenId() --start");
        mQQToken.setOpenId(s);
        TencentStat.c(mContext, mQQToken);
        WnsClientLog.getInstance().v("openSDK_LOG", "setOpenId() --end");
    }

    public void shareToQQ(final Activity activity, final Bundle params, final IUiListener listener)
    {
        JsQQTokenUpdate();
        if (mBridge != null)
        {
            activity.runOnUiThread(new _cls2());
        }
    }

    public void shareToQzone(final Activity activity, final Bundle params, final IUiListener listener)
    {
        JsQQTokenUpdate();
        if (mBridge != null)
        {
            activity.runOnUiThread(new _cls3());
        }
    }

    public void showTaskGuideWindow(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        (new TaskGuide(activity, mQQToken)).showTaskGuideWindow(activity, bundle, iuilistener);
    }

    public int story(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        (new SocialApi(activity, mQQToken)).story(activity, bundle, iuilistener);
        return -1;
    }

    public JSONObject upload(String s, Bundle bundle)
    {
        try
        {
            bundle = fillParams(s, bundle);
            s = HttpUtils.upload(mQQToken.getAppContext(), s, bundle);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public void voice(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        (new SocialApi(activity, mQQToken)).voice(activity, bundle, iuilistener);
    }

    public void webViewDestory()
    {
    }






    private class _cls1
        implements Runnable
    {

        final Tencent this$0;

        public void run()
        {
            mCheckUpdate.a();
        }

        _cls1()
        {
            this$0 = Tencent.this;
            super();
        }
    }


    private class FeedConfirmListener
        implements IUiListener
    {

        private String KEY_SHOWFEED;
        private String KEY_WORDING;
        private String SEND_INSTALL_APP_FEED_CGI;
        final Tencent this$0;
        IUiListener userListener;

        private View createContentView(Context context, Drawable drawable, String s, android.view.View.OnClickListener onclicklistener, android.view.View.OnClickListener onclicklistener1)
        {
            Object obj = new DisplayMetrics();
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(((DisplayMetrics) (obj)));
            float f = ((DisplayMetrics) (obj)).density;
            obj = new RelativeLayout(context);
            Object obj1 = new ImageView(context);
            ((ImageView) (obj1)).setImageDrawable(drawable);
            ((ImageView) (obj1)).setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
            ((ImageView) (obj1)).setId(1);
            int i = (int)(60F * f);
            int j = (int)(60F * f);
            int k = (int)(14F * f);
            k = (int)(18F * f);
            int l = (int)(6F * f);
            int i1 = (int)(18F * f);
            drawable = new android.widget.RelativeLayout.LayoutParams(i, j);
            drawable.addRule(9);
            drawable.setMargins(0, k, l, i1);
            ((RelativeLayout) (obj)).addView(((View) (obj1)), drawable);
            drawable = new TextView(context);
            drawable.setText(s);
            drawable.setTextSize(14F);
            drawable.setGravity(3);
            drawable.setIncludeFontPadding(false);
            drawable.setPadding(0, 0, 0, 0);
            drawable.setLines(2);
            drawable.setId(5);
            drawable.setMinWidth((int)(185F * f));
            s = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            s.addRule(1, 1);
            s.addRule(6, 1);
            i = (int)(10F * f);
            s.setMargins(0, 0, (int)(5F * f), 0);
            ((RelativeLayout) (obj)).addView(drawable, s);
            drawable = new View(context);
            drawable.setBackgroundColor(Color.rgb(214, 214, 214));
            drawable.setId(3);
            s = new android.widget.RelativeLayout.LayoutParams(-2, 2);
            s.addRule(3, 1);
            s.addRule(5, 1);
            s.addRule(7, 5);
            s.setMargins(0, 0, 0, (int)(12F * f));
            ((RelativeLayout) (obj)).addView(drawable, s);
            drawable = new LinearLayout(context);
            s = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            s.addRule(5, 1);
            s.addRule(7, 5);
            s.addRule(3, 3);
            obj1 = new Button(context);
            ((Button) (obj1)).setText("\u8DF3\u8FC7");
            ((Button) (obj1)).setBackgroundDrawable(getDrawable("buttonNegt.png", context));
            ((Button) (obj1)).setTextColor(Color.rgb(36, 97, 131));
            ((Button) (obj1)).setTextSize(20F);
            ((Button) (obj1)).setOnClickListener(onclicklistener1);
            ((Button) (obj1)).setId(4);
            onclicklistener1 = new android.widget.LinearLayout.LayoutParams(0, (int)(45F * f));
            onclicklistener1.rightMargin = (int)(14F * f);
            onclicklistener1.leftMargin = (int)(4F * f);
            onclicklistener1.weight = 1.0F;
            drawable.addView(((View) (obj1)), onclicklistener1);
            onclicklistener1 = new Button(context);
            onclicklistener1.setText("\u786E\u5B9A");
            onclicklistener1.setTextSize(20F);
            onclicklistener1.setTextColor(Color.rgb(255, 255, 255));
            onclicklistener1.setBackgroundDrawable(getDrawable("buttonPost.png", context));
            onclicklistener1.setOnClickListener(onclicklistener);
            context = new android.widget.LinearLayout.LayoutParams(0, (int)(45F * f));
            context.weight = 1.0F;
            context.rightMargin = (int)(4F * f);
            drawable.addView(onclicklistener1, context);
            ((RelativeLayout) (obj)).addView(drawable, s);
            context = new android.widget.FrameLayout.LayoutParams((int)(279F * f), (int)(163F * f));
            ((RelativeLayout) (obj)).setPadding((int)(14F * f), 0, (int)(12F * f), (int)(12F * f));
            ((RelativeLayout) (obj)).setLayoutParams(context);
            ((RelativeLayout) (obj)).setBackgroundColor(Color.rgb(247, 251, 247));
            context = new PaintDrawable(Color.rgb(247, 251, 247));
            context.setCornerRadius(f * 5F);
            ((RelativeLayout) (obj)).setBackgroundDrawable(context);
            return ((View) (obj));
        }

        private Drawable getDrawable(String s, Context context)
        {
            context = context.getApplicationContext().getAssets();
            context = context.open(s);
            if (context == null)
            {
                return null;
            }
            if (!s.endsWith(".9.png")) goto _L2; else goto _L1
_L1:
            s = BitmapFactory.decodeStream(context);
            if (s == null) goto _L4; else goto _L3
_L3:
            context = s.getNinePatchChunk();
            NinePatch.isNinePatchChunk(context);
            s = new NinePatchDrawable(s, context, new Rect(), null);
            return s;
            context;
            s = null;
_L6:
            context.printStackTrace();
            return s;
_L4:
            return null;
_L2:
            s = Drawable.createFromStream(context, s);
            context.close();
            return s;
            context;
            if (true) goto _L6; else goto _L5
_L5:
        }

        private void showFeedConfrimDialog(String s, final IUiListener userListener, final JSONObject response)
        {
            Drawable drawable = null;
            final Dialog final_dialog = new Dialog(mActivity);
            final_dialog.requestWindowFeature(1);
            Object obj1 = mActivity.getPackageManager();
            class _cls1 extends ButtonListener
            {

                final FeedConfirmListener this$1;
                final JSONObject val$response;
                final IUiListener val$userListener;

                public void onClick(View view)
                {
                    sendFeedConfirmCgi();
                    if (dialog != null && dialog.isShowing())
                    {
                        dialog.dismiss();
                    }
                    if (userListener != null)
                    {
                        userListener.onComplete(response);
                    }
                }

                _cls1(JSONObject jsonobject)
                {
                    this$1 = FeedConfirmListener.this;
                    userListener = iuilistener;
                    response = jsonobject;
                    class ButtonListener
                        implements android.view.View.OnClickListener
                    {

                        Dialog dialog;
                        final FeedConfirmListener this$1;

                            ButtonListener(Dialog dialog1)
                            {
                                this$1 = FeedConfirmListener.this;
                                super();
                                dialog = dialog1;
                            }
                    }

                    super(final_dialog);
                }
            }

            class _cls2 extends ButtonListener
            {

                final FeedConfirmListener this$1;
                final JSONObject val$response;
                final IUiListener val$userListener;

                public void onClick(View view)
                {
                    if (dialog != null && dialog.isShowing())
                    {
                        dialog.dismiss();
                    }
                    if (userListener != null)
                    {
                        userListener.onComplete(response);
                    }
                }

                _cls2(JSONObject jsonobject)
                {
                    this$1 = FeedConfirmListener.this;
                    userListener = iuilistener;
                    response = jsonobject;
                    super(final_dialog);
                }
            }

            class _cls3
                implements android.content.DialogInterface.OnCancelListener
            {

                final FeedConfirmListener this$1;
                final JSONObject val$response;
                final IUiListener val$userListener;

                public void onCancel(DialogInterface dialoginterface)
                {
                    if (userListener != null)
                    {
                        userListener.onComplete(response);
                    }
                }

                _cls3()
                {
                    this$1 = FeedConfirmListener.this;
                    userListener = iuilistener;
                    response = jsonobject;
                    super();
                }
            }

            Object obj;
            ColorDrawable colordrawable;
            try
            {
                obj = ((PackageManager) (obj1)).getPackageInfo(mActivity.getPackageName(), 0);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                namenotfoundexception.printStackTrace();
                namenotfoundexception = null;
            }
            if (obj != null)
            {
                drawable = ((PackageInfo) (obj)).applicationInfo.loadIcon(((PackageManager) (obj1)));
            }
            obj = new _cls1(response);
            obj1 = new _cls2(response);
            colordrawable = new ColorDrawable();
            colordrawable.setAlpha(0);
            final_dialog.getWindow().setBackgroundDrawable(colordrawable);
            final_dialog.setContentView(createContentView(mActivity, drawable, s, ((android.view.View.OnClickListener) (obj)), ((android.view.View.OnClickListener) (obj1))));
            final_dialog.setOnCancelListener(new _cls3());
            if (mActivity != null && !mActivity.isFinishing())
            {
                final_dialog.show();
            }
        }

        public void onCancel()
        {
            if (userListener != null)
            {
                userListener.onCancel();
            }
        }

        public void onComplete(JSONObject jsonobject)
        {
            boolean flag;
            boolean flag1;
            flag1 = false;
            flag = false;
            if (jsonobject == null) goto _L2; else goto _L1
_L1:
            if (jsonobject == null) goto _L4; else goto _L3
_L3:
            String s = "";
            if (jsonobject.getInt(KEY_SHOWFEED) == 1)
            {
                flag = true;
            }
            flag1 = flag;
            String s1 = jsonobject.getString(KEY_WORDING);
            s = s1;
_L10:
            s = URLDecoder.decode(s);
            Log.d("TAG", (new StringBuilder()).append(" WORDING = ").append(s).append("xx").toString());
            if (!flag || TextUtils.isEmpty(s)) goto _L6; else goto _L5
_L5:
            showFeedConfrimDialog(s, userListener, jsonobject);
_L4:
            return;
_L6:
            if (userListener == null) goto _L4; else goto _L7
_L7:
            userListener.onComplete(jsonobject);
            return;
_L2:
            if (userListener == null) goto _L4; else goto _L8
_L8:
            userListener.onComplete(null);
            return;
            JSONException jsonexception;
            jsonexception;
            flag = flag1;
            if (true) goto _L10; else goto _L9
_L9:
        }

        public void onError(UiError uierror)
        {
            if (userListener != null)
            {
                userListener.onError(uierror);
            }
        }

        protected void sendFeedConfirmCgi()
        {
            Bundle bundle = composeActivityParams();
            HttpUtils.requestAsync(mQQToken, mActivity, SEND_INSTALL_APP_FEED_CGI, bundle, "POST", null);
        }

        public FeedConfirmListener(IUiListener iuilistener)
        {
            this$0 = Tencent.this;
            super();
            KEY_SHOWFEED = "sendinstall";
            KEY_WORDING = "installwording";
            SEND_INSTALL_APP_FEED_CGI = "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi";
            userListener = iuilistener;
        }
    }


    private class _cls2
        implements Runnable
    {

        final Tencent this$0;
        final Activity val$activity;
        final IUiListener val$listener;
        final Bundle val$params;

        public void run()
        {
            Tencent.mBridge.executeMethod("reportUtils.startQQ4Connect", new String[] {
                "false"
            });
            Log.i("params", params.toString());
            JSONObject jsonobject = parseBundleToJSON4QQShare(params, 0);
            Log.i("params", (new StringBuilder()).append("-------------").append(jsonobject.toString()).toString());
            if (mContext != null)
            {
                TemporaryStorage.setListener(listener);
            }
            Tencent.mController.setActivity(activity);
            Tencent.mJsDialogListener.setActivity(activity);
            Tencent.appUtils.setActivity(activity);
            Tencent.mBridge.executeMethod("tencent.share.shareMessageToQQ", new String[] {
                jsonobject.toString()
            });
        }

        _cls2()
        {
            this$0 = Tencent.this;
            params = bundle;
            listener = iuilistener;
            activity = activity1;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        final Tencent this$0;
        final Activity val$activity;
        final IUiListener val$listener;
        final Bundle val$params;

        public void run()
        {
            Log.i("params", params.toString());
            Tencent.mBridge.executeMethod("reportUtils.startQQ4Connect", new String[] {
                "false"
            });
            JSONObject jsonobject = parseBundleToJSON4QQShare(params, 1);
            if (mContext != null)
            {
                TemporaryStorage.setListener(listener);
            }
            Tencent.mController.setActivity(activity);
            Tencent.mJsDialogListener.setActivity(activity);
            Tencent.appUtils.setActivity(activity);
            Tencent.mBridge.executeMethod("tencent.share.shareMessageToQQ", new String[] {
                jsonobject.toString()
            });
        }

        _cls3()
        {
            this$0 = Tencent.this;
            params = bundle;
            listener = iuilistener;
            activity = activity1;
            super();
        }
    }

}
