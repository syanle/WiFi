// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.net.URL;

public class ServerSetting
{

    public static final int ASK_URL = 8;
    public static final int AUTHORIZE_CGI = 2;
    public static final int BRAG_URL = 7;
    public static final String DEFAULT_CGI_AUTHORIZE = "https://openmobile.qq.com/oauth2.0/m_authorize?";
    public static final String DEFAULT_LOCAL_STORAGE_URI = "http://qzs.qq.com";
    public static final String DEFAULT_REDIRECT_URI = "auth://tauth.qq.com/";
    private static final String DEFAULT_URL_ASK = "http://qzs.qq.com/open/mobile/request/sdk_request.html?";
    public static final String DEFAULT_URL_BRAG = "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?";
    public static final String DEFAULT_URL_GIFT = "http://qzs.qq.com/open/mobile/request/sdk_request.html?";
    public static final String DEFAULT_URL_GRAPH_BASE = "https://openmobile.qq.com/";
    public static final String DEFAULT_URL_INVITE = "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?";
    private static final String DEFAULT_URL_REPORT = "http://wspeed.qq.com/w.cgi";
    public static final String DEFAULT_URL_SEND_STORY = "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?";
    public static final String DEFAULT_URL_VOICE = "http://qzs.qq.com/open/mobile/not_support.html?";
    public static final int ENVIRONMENT_EXPERIENCE = 1;
    public static final int ENVIRONMENT_NORMOL = 0;
    public static final int GIFT_URL = 9;
    public static final int GRAPH_BASE_URL = 6;
    public static final int INVITE_URL = 4;
    private static final String KEY_ASK_URL = "AskUrl";
    private static final String KEY_AUTHORIZE_CGI = "AuthorizeCgi";
    private static final String KEY_BRAG_URL = "BragUrl";
    private static final String KEY_GIFT_URL = "GiftUrl";
    private static final String KEY_GRAPH_BASE_URL = "GraphBaseUrl";
    private static final String KEY_INVITE_URL = "InviteUrl";
    private static final String KEY_LOCAL_STORAGE_URl = "LocalStorageUrl";
    private static final String KEY_REDIRECT_URL = "RedirectUrl";
    private static final String KEY_REPORT_URL = "ReportUrl";
    private static final String KEY_STORY_URL = "StoryUrl";
    public static final int LOCAL_STORAGE_URL = 10;
    public static final int REDIRECT_URL = 1;
    public static final int REPORT_URL = 5;
    private static final String SERVER_PREFS = "ServerPrefs";
    private static final String SERVER_TYPE = "ServerType";
    public static final int STORY_URL = 3;
    private static final String TAG = com/tencent/sdkutil/ServerSetting.getName();
    private static ServerSetting sServerSetting = null;
    private String sAskUrl;
    private String sAuthorizeCgi;
    private String sBragUrl;
    private String sGiftUrl;
    private String sGraphBaseUrl;
    private String sInviteUrl;
    private String sLocalStorageUrl;
    private String sRedirectUrl;
    private String sReportUrl;
    private String sSendStoryUrl;
    private WeakReference sWeakSharedPrefs;

    public ServerSetting()
    {
        sWeakSharedPrefs = null;
        sRedirectUrl = null;
        sAuthorizeCgi = null;
        sSendStoryUrl = null;
        sInviteUrl = null;
        sReportUrl = null;
        sGraphBaseUrl = null;
        sBragUrl = null;
        sAskUrl = null;
        sGiftUrl = null;
        sLocalStorageUrl = null;
    }

    public static ServerSetting getInstance()
    {
        if (sServerSetting == null)
        {
            sServerSetting = new ServerSetting();
        }
        return sServerSetting;
    }

    public void changeServer()
    {
        sWeakSharedPrefs = null;
        sRedirectUrl = null;
        sAuthorizeCgi = null;
        sSendStoryUrl = null;
        sInviteUrl = null;
        sReportUrl = null;
        sGraphBaseUrl = null;
        sBragUrl = null;
        sAskUrl = null;
        sGiftUrl = null;
        sLocalStorageUrl = null;
    }

    public String getEnvUrl(Context context, String s)
    {
        String s1;
        String s2;
        if (sWeakSharedPrefs == null || sWeakSharedPrefs.get() == null)
        {
            sWeakSharedPrefs = new WeakReference(context.getSharedPreferences("ServerPrefs", 0));
        }
        context = s;
        try
        {
            s1 = (new URL(s)).getHost();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            Log.e(TAG, (new StringBuilder()).append("getEnvUrl error. url=").append(context).toString());
            return context;
        }
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        context = s;
        Log.e(TAG, (new StringBuilder()).append("Get host error. url=").append(s).toString());
        return s;
        context = s;
        s2 = ((SharedPreferences)sWeakSharedPrefs.get()).getString(s1, null);
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        context = s;
        if (!s1.equals(s2))
        {
            break MISSING_BLOCK_LABEL_193;
        }
        context = s;
        Log.d(TAG, (new StringBuilder()).append("host=").append(s1).append(", envHost=").append(s2).toString());
        return s;
        context = s;
        s = s.replace(s1, s2);
        context = s;
        Log.d(TAG, (new StringBuilder()).append("return environment url : ").append(s).toString());
        return s;
    }

    public String getSettingUrl(Context context, int i)
    {
        if (context != null && (sWeakSharedPrefs == null || sWeakSharedPrefs.get() == null))
        {
            sWeakSharedPrefs = new WeakReference(context.getSharedPreferences("ServerPrefs", 0));
        }
        switch (i)
        {
        default:
            return "";

        case 1: // '\001'
            if (context == null)
            {
                return "auth://tauth.qq.com/";
            }
            if (sRedirectUrl == null)
            {
                sRedirectUrl = ((SharedPreferences)sWeakSharedPrefs.get()).getString("RedirectUrl", "auth://tauth.qq.com/");
            }
            return sRedirectUrl;

        case 2: // '\002'
            if (context == null)
            {
                return "https://openmobile.qq.com/oauth2.0/m_authorize?";
            }
            if (sAuthorizeCgi == null)
            {
                sAuthorizeCgi = ((SharedPreferences)sWeakSharedPrefs.get()).getString("AuthorizeCgi", "https://openmobile.qq.com/oauth2.0/m_authorize?");
            }
            return sAuthorizeCgi;

        case 3: // '\003'
            if (context == null)
            {
                return "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?";
            }
            if (sSendStoryUrl == null)
            {
                sSendStoryUrl = ((SharedPreferences)sWeakSharedPrefs.get()).getString("StoryUrl", "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?");
            }
            return sSendStoryUrl;

        case 4: // '\004'
            if (context == null)
            {
                return "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?";
            }
            if (sInviteUrl == null)
            {
                sInviteUrl = ((SharedPreferences)sWeakSharedPrefs.get()).getString("InviteUrl", "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?");
            }
            return sInviteUrl;

        case 5: // '\005'
            if (context == null)
            {
                return "http://wspeed.qq.com/w.cgi";
            }
            if (sReportUrl == null)
            {
                sReportUrl = ((SharedPreferences)sWeakSharedPrefs.get()).getString("ReportUrl", "http://wspeed.qq.com/w.cgi");
            }
            return sReportUrl;

        case 6: // '\006'
            if (context == null)
            {
                return "https://openmobile.qq.com/";
            }
            if (sGraphBaseUrl == null)
            {
                sGraphBaseUrl = ((SharedPreferences)sWeakSharedPrefs.get()).getString("GraphBaseUrl", "https://openmobile.qq.com/");
            }
            return sGraphBaseUrl;

        case 7: // '\007'
            if (context == null)
            {
                return "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?";
            }
            if (sBragUrl == null)
            {
                sBragUrl = ((SharedPreferences)sWeakSharedPrefs.get()).getString("BragUrl", "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?");
            }
            return sBragUrl;

        case 8: // '\b'
            if (context == null)
            {
                return "http://qzs.qq.com/open/mobile/request/sdk_request.html?";
            }
            if (sAskUrl == null)
            {
                sAskUrl = ((SharedPreferences)sWeakSharedPrefs.get()).getString("AskUrl", "http://qzs.qq.com/open/mobile/request/sdk_request.html?");
            }
            return sAskUrl;

        case 9: // '\t'
            if (context == null)
            {
                return "http://qzs.qq.com/open/mobile/request/sdk_request.html?";
            }
            if (sGiftUrl == null)
            {
                sGiftUrl = ((SharedPreferences)sWeakSharedPrefs.get()).getString("GiftUrl", "http://qzs.qq.com/open/mobile/request/sdk_request.html?");
            }
            return sGiftUrl;

        case 10: // '\n'
            break;
        }
        if (context == null)
        {
            return "http://qzs.qq.com";
        }
        if (sLocalStorageUrl == null)
        {
            sLocalStorageUrl = ((SharedPreferences)sWeakSharedPrefs.get()).getString("LocalStorageUrl", "http://qzs.qq.com");
        }
        return sLocalStorageUrl;
    }

    public void setEnvironment(Context context, int i)
    {
        if (context != null && (sWeakSharedPrefs == null || sWeakSharedPrefs.get() == null))
        {
            sWeakSharedPrefs = new WeakReference(context.getSharedPreferences("ServerPrefs", 0));
        }
        if (i != 0 && i != 1)
        {
            Log.e(TAG, "\u5207\u6362\u73AF\u5883\u53C2\u6570\u9519\u8BEF\uFF0C\u6B63\u5F0F\u73AF\u5883\u4E3A0\uFF0C\u4F53\u9A8C\u73AF\u5883\u4E3A1");
            return;
        }
        android.content.SharedPreferences.Editor editor1;
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            android.content.SharedPreferences.Editor editor = ((SharedPreferences)sWeakSharedPrefs.get()).edit();
            editor.putInt("ServerType", 0);
            editor.putString("RedirectUrl", "auth://tauth.qq.com/");
            editor.putString("AuthorizeCgi", "https://openmobile.qq.com/oauth2.0/m_authorize?");
            editor.putString("StoryUrl", "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?");
            editor.putString("InviteUrl", "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?");
            editor.putString("ReportUrl", "http://wspeed.qq.com/w.cgi");
            editor.putString("GraphBaseUrl", "https://openmobile.qq.com/");
            editor.putString("BragUrl", "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?");
            editor.putString("AskUrl", "http://qzs.qq.com/open/mobile/request/sdk_request.html?");
            editor.putString("GiftUrl", "http://qzs.qq.com/open/mobile/request/sdk_request.html?");
            editor.putString("LocalStorageUrl", "http://qzs.qq.com");
            editor.commit();
            changeServer();
            Toast.makeText(context, "\u5DF2\u5207\u6362\u5230\u6B63\u5F0F\u73AF\u5883", 0).show();
            return;

        case 1: // '\001'
            editor1 = ((SharedPreferences)sWeakSharedPrefs.get()).edit();
            break;
        }
        editor1.putInt("ServerType", 1);
        editor1.putString("RedirectUrl", "auth://tauth.qq.com/");
        editor1.putString("AuthorizeCgi", "https://test.openmobile.qq.com/oauth2.0/m_authorize?");
        editor1.putString("StoryUrl", "http://testmobile.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?");
        editor1.putString("InviteUrl", "http://testmobile.qq.com/open/mobile/invite/sdk_invite.html?");
        editor1.putString("ReportUrl", "http://wspeed.qq.com/w.cgi");
        editor1.putString("GraphBaseUrl", "https://test.openmobile.qq.com/");
        editor1.putString("BragUrl", "http://testmobile.qq.com/open/mobile/brag/sdk_brag.html?");
        editor1.putString("AskUrl", "http://testmobile.qq.com/open/mobile/request/sdk_request.html?");
        editor1.putString("GiftUrl", "http://testmobile.qq.com/open/mobile/request/sdk_request.html?");
        editor1.putString("LocalStorageUrl", "http://test.openmobile.qq.com");
        editor1.commit();
        changeServer();
        Toast.makeText(context, "\u5DF2\u5207\u6362\u5230\u4F53\u9A8C\u73AF\u5883", 0).show();
    }

}
