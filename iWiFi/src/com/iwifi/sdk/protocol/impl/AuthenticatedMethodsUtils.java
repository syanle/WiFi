// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.data.CodeResult;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.HttpManager;
import com.iwifi.sdk.tools.HttpUtil;
import com.iwifi.sdk.tools.Logger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.CookieStore;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            SDKCommonMotheds

public class AuthenticatedMethodsUtils extends HttpUtil
{
    class AuthenResultInfo
    {

        String auth_resultInfo;
        boolean auth_status;
        final AuthenticatedMethodsUtils this$0;

        AuthenResultInfo()
        {
            this$0 = AuthenticatedMethodsUtils.this;
            super();
        }
    }

    class LogoffResultInfo
    {

        String logoff_resultInfo;
        boolean logoff_status;
        final AuthenticatedMethodsUtils this$0;

        LogoffResultInfo()
        {
            this$0 = AuthenticatedMethodsUtils.this;
            super();
        }
    }

    public static final class PostEntityTypeEnum extends Enum
    {

        private static final PostEntityTypeEnum ENUM$VALUES[];
        public static final PostEntityTypeEnum POST_ENTITY_TYPE_None;
        public static final PostEntityTypeEnum POST_ENTITY_TYPE_StringEntity;
        public static final PostEntityTypeEnum POST_ENTITY_TYPE_UrlEncodedFormEntity;

        public static PostEntityTypeEnum valueOf(String s)
        {
            return (PostEntityTypeEnum)Enum.valueOf(com/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum, s);
        }

        public static PostEntityTypeEnum[] values()
        {
            PostEntityTypeEnum apostentitytypeenum[] = ENUM$VALUES;
            int i = apostentitytypeenum.length;
            PostEntityTypeEnum apostentitytypeenum1[] = new PostEntityTypeEnum[i];
            System.arraycopy(apostentitytypeenum, 0, apostentitytypeenum1, 0, i);
            return apostentitytypeenum1;
        }

        static 
        {
            POST_ENTITY_TYPE_None = new PostEntityTypeEnum("POST_ENTITY_TYPE_None", 0);
            POST_ENTITY_TYPE_UrlEncodedFormEntity = new PostEntityTypeEnum("POST_ENTITY_TYPE_UrlEncodedFormEntity", 1);
            POST_ENTITY_TYPE_StringEntity = new PostEntityTypeEnum("POST_ENTITY_TYPE_StringEntity", 2);
            ENUM$VALUES = (new PostEntityTypeEnum[] {
                POST_ENTITY_TYPE_None, POST_ENTITY_TYPE_UrlEncodedFormEntity, POST_ENTITY_TYPE_StringEntity
            });
        }

        private PostEntityTypeEnum(String s, int i)
        {
            super(s, i);
        }
    }


    private static int $SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum[];
    public static final String AC_USERNAME_SUFFIX = "@51iwifi.com";
    public static final String AUTHEN_TYPE_AAA = "AAA_AUTH";
    public static final String AUTHEN_TYPE_AC = "AC_AUTH";
    public static final String AUTHEN_TYPE_AP = "AP_AUTH";
    public static final String AUTHEN_TYPE_THIRD = "THIRD_AUTH";

    static int[] $SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum()
    {
        int ai[] = $SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[PostEntityTypeEnum.values().length];
        try
        {
            ai[PostEntityTypeEnum.POST_ENTITY_TYPE_None.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[PostEntityTypeEnum.POST_ENTITY_TYPE_StringEntity.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[PostEntityTypeEnum.POST_ENTITY_TYPE_UrlEncodedFormEntity.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        $SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum = ai;
        return ai;
    }

    public AuthenticatedMethodsUtils()
    {
    }

    private String AC_syncPostConnection(String s, String s1, List list)
    {
        s = syncPostConnect(s, s1, null, null, null, PostEntityTypeEnum.POST_ENTITY_TYPE_UrlEncodedFormEntity, list, null);
        if (s == null) goto _L2; else goto _L1
_L1:
        int i = s.getStatusLine().getStatusCode();
        if (i != 200) goto _L4; else goto _L3
_L3:
        s1 = s.getFirstHeader("Content-type");
        if (s1 == null) goto _L6; else goto _L5
_L5:
        if (s1.getValue() == null || !s1.getValue().startsWith("text/html")) goto _L6; else goto _L7
_L7:
        s = SDKCommonMotheds.JSoupHTMLParse(s.getEntity().getContent());
        s1 = s.getElementsByTag("body");
        if (s1 == null) goto _L9; else goto _L8
_L8:
        s = s1.text();
_L11:
        Logger.i("iWiFiSDK|Common API|AC_syncPostConnection", (new StringBuilder("result: ")).append(s).toString());
        return s;
_L9:
        s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"HTML's content cann't be recognized. That is:")).append(s.toString()).append("\"}").toString();
        continue; /* Loop/switch isn't completed */
_L6:
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_199;
        }
        if (s1.getValue() != null && s1.getValue().startsWith("application/json"))
        {
            s = EntityUtils.toString(s.getEntity());
            continue; /* Loop/switch isn't completed */
        }
        s = "{\"result\":\"FAIL\",\"message\":\"Http response is either HTML or Json \"}";
        continue; /* Loop/switch isn't completed */
        s;
        try
        {
            s.printStackTrace();
            Logger.e("iWiFiSDK|Common API|syncPostConnect", (new StringBuilder("Post request error: ")).append(s.getMessage()).toString());
            s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Http status code is 200, but parsing error: ")).append(s.getMessage()).append("\"}").toString();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Http Post Failed :")).append(s.getMessage()).append("\"}").toString();
        }
        continue; /* Loop/switch isn't completed */
_L4:
        s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Http status code is :")).append(i).append("\"}").toString();
        continue; /* Loop/switch isn't completed */
_L2:
        s = "{\"result\":\"FAIL\",\"message\":\"Http Post Failed response none. \"}";
        if (true) goto _L11; else goto _L10
_L10:
    }

    private String Third_SecondAuthGetConnection(String s, Map map)
    {
        s = syncGetConnect(s, null, null, null);
        if (s != null)
        {
            int i = s.getStatusLine().getStatusCode();
            if (i == 200)
            {
                s = "{\"result\":\"OK\",\"message\":\"Success\"}";
            } else
            {
                s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Http status code is :")).append(i).append("\"}").toString();
            }
        } else
        {
            s = "{\"result\":\"FAIL\",\"message\":\"Http Get Failed response none. \"}";
        }
        Logger.i("iWiFiSDK|Common API|Third_SecondAuthGetConnection", (new StringBuilder("result: ")).append(s).toString());
        return s;
    }

    private String Third_SecondAuthPostConnection(String s, Map map, String s1)
    {
        s = syncPostConnect(s, null, null, null, map, PostEntityTypeEnum.POST_ENTITY_TYPE_StringEntity, null, s1);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        int i = s.getStatusLine().getStatusCode();
        if (i == 200)
        {
            s = "{\"result\":\"OK\",\"message\":\"Success\"}";
        } else
        {
            try
            {
                s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Http status code is :")).append(i).append("\"}").toString();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Http Post Failed :")).append(s.getMessage()).append("\"}").toString();
            }
        }
        Logger.i("iWiFiSDK|Common API|Third_SecondAuthPostConnection", (new StringBuilder("result: ")).append(s).toString());
        return s;
        s = "{\"result\":\"FAIL\",\"message\":\"Http Post Failed response none. \"}";
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_43;
        }
    }

    public AuthenResultInfo AC_sync_LoginAuthen(String s, String s1, String s2, String s3, String s4, String s5)
    {
        AuthenResultInfo authenresultinfo;
        String s7;
        authenresultinfo = new AuthenResultInfo();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("auth_id", s));
        arraylist.add(new DataObject("token", s2));
        arraylist.add(new DataObject("ac_name", s4));
        arraylist.add(new DataObject("ter_ip", s3));
        s7 = AC_syncPostConnection(s5, "auth/appaciauth", arraylist);
        if (s7 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s7);
        if (!jsonobject.getString("result").equalsIgnoreCase("OK")) goto _L4; else goto _L3
_L3:
        authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"OK\",\"message\":\"AC \u8BA4\u8BC1\u6210\u529F\",\"logoffUrl\":\"")).append(s5).append("\",\"ac_name\":\"").append(s4).append("\"}").toString(), "AC_AUTH", s1, null, s2, null, "");
        authenresultinfo.auth_status = true;
_L6:
        Logger.d("iWiFiSDK|Authentication|AC_sync_LoginAuthen", (new StringBuilder("phone=")).append(s).append("&token=").append(s2).append("&ac_name=").append(s4).append("&ter_ip=").append(s3).append(" | result: ").append(authenresultinfo.auth_resultInfo).toString());
        return authenresultinfo;
_L4:
        String s6 = "Authentication Failed";
        try
        {
            if (s7.contains("message"))
            {
                s6 = jsonobject.getString("message");
            }
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"AC \u8BA4\u8BC1\u5931\u8D25:")).append(s6).append("\",\"logoffUrl\":\"").append(s5).append("\",\"ac_name\":\"").append(s4).append("\"}").toString(), "AP_AUTH", s1, null, s2, null, "");
            authenresultinfo.auth_status = false;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(exception.getMessage()).append("\",\"logoffUrl\":\"").append(s5).append("\",\"ac_name\":\"").append(s4).append("\"}").toString(), "AP_AUTH", s1, null, s2, null, "");
            authenresultinfo.auth_status = false;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\",\"logoffUrl\":\"")).append(s5).append("\",\"ac_name\":\"").append(s4).append("\"}").toString(), "AP_AUTH", s1, null, s2, null, "");
        authenresultinfo.auth_status = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public LogoffResultInfo AC_sync_LogoffReq(String s, String s1, String s2)
    {
        LogoffResultInfo logoffresultinfo;
        String s4;
        logoffresultinfo = new LogoffResultInfo();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("ac_name", s));
        arraylist.add(new DataObject("ter_ip", s1));
        s4 = AC_syncPostConnection(s2, "auth/appacilogout", arraylist);
        if (s4 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s4);
        if (jsonobject.getString("result").equals("OK")) goto _L4; else goto _L3
_L3:
        String s3 = "Logoff Failed";
        try
        {
            if (s4.contains("message"))
            {
                s3 = jsonobject.getString("message");
            }
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(s3).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(exception.getMessage()).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
        }
_L6:
        Logger.d("iWiFiSDK|Logoff|AC_sync_LogoffReq", (new StringBuilder("ac_name=")).append(s).append("&ter_ip=").append(s1).append("&host_url=").append(s2).append(" | result: ").append(logoffresultinfo.logoff_resultInfo).toString());
        return logoffresultinfo;
_L4:
        s3 = "Logoff Success";
        if (s4.contains("message"))
        {
            s3 = jsonobject.getString("message");
        }
        logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(s3).append("\"}").toString();
        logoffresultinfo.logoff_status = true;
        continue; /* Loop/switch isn't completed */
_L2:
        logoffresultinfo.logoff_resultInfo = "{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\"}";
        logoffresultinfo.logoff_status = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public AuthenResultInfo AP_sync_LoginAuthen(String s, String s1, String s2, String s3, String s4, String s5)
    {
        AuthenResultInfo authenresultinfo;
        authenresultinfo = new AuthenResultInfo();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("phone", s1));
        arraylist.add(new DataObject("token", s2));
        arraylist.add(new DataObject("dev_type", s3));
        arraylist.add(new DataObject("dev_id", s4));
        arraylist.add(new DataObject("url", s5));
        s = syncConnect((new StringBuilder("http://")).append(s).append(":2060/").toString(), "smartwifi/auth", "", arraylist);
        if (s == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s);
        if (!s.contains("message") || !jsonobject.getString("message").contains(iWiFi20_AUTHEN_STR)) goto _L4; else goto _L3
_L3:
        authenresultinfo.auth_resultInfo = generateAuthResultJson("{\"result\":\"OK\",\"message\":\"\u8BA4\u8BC1\u6210\u529F\"}", "AP_AUTH", s4, null, s2, null, "");
        authenresultinfo.auth_status = true;
_L6:
        Logger.d("iWiFiSDK|Authentication|AP_sync_LoginAuthen", (new StringBuilder("phone=")).append(s1).append("&token=").append(s2).append("&dev_type=").append(s3).append("&dev_id=").append(s4).append("&url=").append(s5).append(" | result: ").append(authenresultinfo.auth_resultInfo).toString());
        return authenresultinfo;
_L4:
        try
        {
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"\u8BA4\u8BC1\u5931\u8D25:")).append(jsonobject.getString("message")).append("\"}").toString(), "AP_AUTH", s4, null, s2, null, "");
            authenresultinfo.auth_status = false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s.getMessage()).append("\"}").toString(), "AP_AUTH", s4, null, s2, null, "");
            authenresultinfo.auth_status = false;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        authenresultinfo.auth_resultInfo = generateAuthResultJson("{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\"}", "AP_AUTH", s4, null, s2, null, "");
        authenresultinfo.auth_status = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public AuthenResultInfo Third_sync_LoginAuthen(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8)
    {
        String s10;
        AuthenResultInfo authenresultinfo;
        authenresultinfo = new AuthenResultInfo();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("auth_id", s));
        arraylist.add(new DataObject("auth_unqid", s2));
        arraylist.add(new DataObject("auth_type", "APPMOBILE"));
        arraylist.add(new DataObject("ter_mac", s3));
        arraylist.add(new DataObject("ter_ip", s4));
        arraylist.add(new DataObject("terminal_type", "android"));
        arraylist.add(new DataObject("imei", s5));
        arraylist.add(new DataObject("appauth_type", "THIRD_AUTH"));
        arraylist.add(new DataObject("token", s6));
        arraylist.add(new DataObject("platform_code", s7));
        arraylist.add(new DataObject("redirect_params", s8));
        s10 = syncConnect(iWiFi20_WIFI_HOST, "platform10/appauth.htm", "", arraylist);
        if (s10 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s10);
        if (jsonobject.getString("result").equals("OK")) goto _L4; else goto _L3
_L3:
        Object obj;
        String s9;
        String s11;
        obj = "Authentication Failed";
        try
        {
            if (s10.contains("message"))
            {
                obj = jsonobject.getString("message");
            }
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(((String) (obj))).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, null, s8);
            authenresultinfo.auth_status = false;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(((Exception) (obj)).getMessage()).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, null, s8);
            authenresultinfo.auth_status = false;
        }
_L12:
        Logger.d("iWiFiSDK|Authentication|Third_sync_LoginAuthen", (new StringBuilder("auth_id=")).append(s).append("&auth_unqid=").append(s2).append("&ter_mac=").append(s3).append("&ter_ip=").append(s4).append("&imei=").append(s5).append("&dev_id=").append(s1).append("&platform_code=").append(s7).append("&portal_url=").append(s8).append(" | result: ").append(authenresultinfo.auth_resultInfo).toString());
        return authenresultinfo;
_L4:
        obj = null;
        if (s10.contains("third_token"))
        {
            obj = jsonobject.getString("third_token");
        }
        if (!s10.contains("online_url"))
        {
            break MISSING_BLOCK_LABEL_872;
        }
        s11 = jsonobject.getString("online_url");
        if (s11.equals(""))
        {
            break MISSING_BLOCK_LABEL_794;
        }
        s9 = s11;
        if (s9.indexOf("?") != -1) goto _L6; else goto _L5
_L5:
        s10 = "";
_L9:
        if (!s10.contains("get=1")) goto _L8; else goto _L7
_L7:
        s11 = Third_SecondAuthGetConnection(s9, null);
        s10 = s9;
        s9 = s11;
_L10:
        if (GetCodeResultParser.GetJsonObject(s9).getString("result").equals("FAIL"))
        {
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"First authen OK, but connect redirect url failed, online_url: ")).append(s10).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, ((String) (obj)), s8);
            authenresultinfo.auth_status = false;
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_762;
_L6:
        s10 = s9.substring(s9.indexOf("?") + 1);
          goto _L9
_L8:
        s11 = s11.substring(0, s11.indexOf("?"));
        s9 = Third_SecondAuthPostConnection(s11, null, s10);
        s10 = s11;
          goto _L10
        authenresultinfo.auth_resultInfo = generateAuthResultJson("{\"result\":\"OK\",\"message\":\"Redirct onLine_url also success: \"}", "THIRD_AUTH", s1, s7, s6, ((String) (obj)), s8);
        authenresultinfo.auth_status = true;
        continue; /* Loop/switch isn't completed */
        s9 = "Authentication Success";
        if (s10.contains("message"))
        {
            s9 = jsonobject.getString("message");
        }
        authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(s9).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, ((String) (obj)), s8);
        authenresultinfo.auth_status = true;
        continue; /* Loop/switch isn't completed */
        s9 = "Authentication Success";
        if (s10.contains("message"))
        {
            s9 = jsonobject.getString("message");
        }
        authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(s9).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, ((String) (obj)), s8);
        authenresultinfo.auth_status = true;
        continue; /* Loop/switch isn't completed */
_L2:
        authenresultinfo.auth_resultInfo = generateAuthResultJson("{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\"}", "THIRD_AUTH", s1, s7, s6, null, s8);
        authenresultinfo.auth_status = false;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public LogoffResultInfo Third_sync_LogoffReq(String s, String s1, String s2, String s3, String s4, String s5)
    {
        Object obj1;
        LogoffResultInfo logoffresultinfo;
        logoffresultinfo = new LogoffResultInfo();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("auth_id", s));
        arraylist.add(new DataObject("token", s3));
        arraylist.add(new DataObject("auth_type", "APPMOBILE"));
        arraylist.add(new DataObject("appauth_type", "THIRD_AUTH"));
        arraylist.add(new DataObject("platform_code", s1));
        arraylist.add(new DataObject("ter_ip", s2));
        arraylist.add(new DataObject("terminal_type", "android"));
        arraylist.add(new DataObject("redirect_params", s5));
        arraylist.add(new DataObject("third_token", s4));
        obj1 = syncConnect(iWiFi20_WIFI_HOST, "platform10/useroffline.htm", "", arraylist);
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(((String) (obj1)));
        if (jsonobject.getString("result").equals("OK")) goto _L4; else goto _L3
_L3:
        Object obj;
        String s6;
        obj = "Logoff Failed";
        try
        {
            if (((String) (obj1)).contains("message"))
            {
                obj = jsonobject.getString("message");
            }
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(((String) (obj))).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(((Exception) (obj)).getMessage()).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
        }
_L12:
        Logger.d("iWiFiSDK|Logoff|AC_sync_LogoffReq", (new StringBuilder("ac_name=")).append(s).append("&token=").append(s3).append("&platform_code=").append(s1).append("&ter_ip=").append(s2).append("&third_token=").append(s4).append("&redirect_params=").append(s5).append(" | result: ").append(logoffresultinfo.logoff_resultInfo).toString());
        return logoffresultinfo;
_L4:
        if (!((String) (obj1)).contains("offline_url"))
        {
            break MISSING_BLOCK_LABEL_712;
        }
        s6 = jsonobject.getString("offline_url");
        if (s6.equals(""))
        {
            break MISSING_BLOCK_LABEL_649;
        }
        obj = s6;
        if (((String) (obj)).indexOf("?") != -1) goto _L6; else goto _L5
_L5:
        obj1 = "";
_L9:
        if (!((String) (obj1)).contains("get=1")) goto _L8; else goto _L7
_L7:
        s6 = Third_SecondAuthGetConnection(((String) (obj)), null);
        obj1 = obj;
        obj = s6;
_L10:
        if (GetCodeResultParser.GetJsonObject(((String) (obj))).getString("result").equals("FAIL"))
        {
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"First authen OK, but reconnect failed, offline_url = ")).append(((String) (obj1))).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_632;
_L6:
        obj1 = ((String) (obj)).substring(((String) (obj)).indexOf("?") + 1);
          goto _L9
_L8:
        s6 = s6.substring(0, s6.indexOf("?"));
        obj = Third_SecondAuthPostConnection(s6, null, ((String) (obj1)));
        obj1 = s6;
          goto _L10
        logoffresultinfo.logoff_resultInfo = "{\"result\":\"OK\",\"message\":\"Redirect offline_url connect also success: \"}";
        logoffresultinfo.logoff_status = true;
        continue; /* Loop/switch isn't completed */
        obj = "Logoff Success";
        if (((String) (obj1)).contains("message"))
        {
            obj = jsonobject.getString("message");
        }
        logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(((String) (obj))).append("\"}").toString();
        logoffresultinfo.logoff_status = true;
        continue; /* Loop/switch isn't completed */
        obj = "Logoff Success";
        if (((String) (obj1)).contains("message"))
        {
            obj = jsonobject.getString("message");
        }
        logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(((String) (obj))).append("\"}").toString();
        logoffresultinfo.logoff_status = true;
        continue; /* Loop/switch isn't completed */
_L2:
        logoffresultinfo.logoff_resultInfo = "{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\"}";
        logoffresultinfo.logoff_status = false;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public String generateAuthResultJson(String s, String s1, String s2, String s3, String s4, String s5, String s6)
    {
        try
        {
            if (s1.equals("AP_AUTH"))
            {
                s = GetCodeResultParser.GetCodeResultList(s, "result", "message", null);
                return generateJson(s.getResult(), s.getMsg(), s1, s2, s3, "", s4, s5, "", s6);
            }
            if (s1.equals("AAA_AUTH"))
            {
                s6 = GetCodeResultParser.GetCodeResultList(s, "result", "msg", null);
                if (!s6.getResult().equals("0"))
                {
                    return generateJson("FAIL", s6.getMsg(), s1, s2, s3, "", s4, s5, "", "");
                } else
                {
                    s = GetCodeResultParser.GetCodeResultList(s, "result", "msg", "logooffurl");
                    return generateJson("OK", s.getMsg(), s1, s2, s3, s.getData(), s4, s5, "", "");
                }
            }
            if (s1.equals("AC_AUTH"))
            {
                s = GetCodeResultParser.GetCodeResultList(s, "result", "message", "logoffUrl", "ac_name");
                return generateJson(s.getResult(), s.getMsg(), s1, s2, s3, s.getData(), s4, s5, s.getData1(), "");
            }
            if (s1.equals("THIRD_AUTH"))
            {
                s = GetCodeResultParser.GetCodeResultList(s, "result", "message", null);
                return generateJson(s.getResult(), s.getMsg(), s1, s2, s3, "", s4, s5, "", s6);
            }
            s = (new StringBuilder("UNKOWN AUTHEN_TYPE : ")).append(s1).toString();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = s.getMessage();
        }
        return generateJson("FAIL", (new StringBuilder("FINAL PARSE JSON FAILED: ")).append(s).toString(), s1, s2, s3, "", s4, s5, "", "");
    }

    public String generateJson(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9)
    {
        String s10 = s;
        if (s == null)
        {
            s10 = "";
        }
        s = s1;
        if (s1 == null)
        {
            s = "";
        }
        s1 = s2;
        if (s2 == null)
        {
            s1 = "";
        }
        s2 = s5;
        if (s5 == null)
        {
            s2 = "";
        }
        s5 = s6;
        if (s6 == null)
        {
            s5 = "";
        }
        s6 = s9;
        if (s9 == null)
        {
            s6 = "";
        }
        s9 = s7;
        if (s7 == null)
        {
            s9 = "";
        }
        s7 = s3;
        if (s3 == null)
        {
            s7 = "";
        }
        s3 = s4;
        if (s4 == null)
        {
            s3 = "";
        }
        s4 = s8;
        if (s8 == null)
        {
            s4 = "";
        }
        return (new StringBuilder("{\"result\":\"")).append(s10).append("\",\"message\":\"").append(s).append("\",\"appauth_type\":\"").append(s1).append("\",\"dev_id\":\"").append(s7).append("\",\"platform_code\":\"").append(s3).append("\",\"logoffUrl\":\"").append(s2).append("\",\"token\":\"").append(s5).append("\",\"third_token\":\"").append(s9).append("\",\"ac_name\":\"").append(s4).append("\",\"portal_url\":\"").append(s6).append("\"}").toString();
    }

    public HttpResponse syncGetConnect(String s, Map map, HttpParams httpparams, CookieStore cookiestore)
    {
        if (s == null)
        {
            return null;
        }
        map = new HttpGet(s);
        s = httpparams;
        if (httpparams == null)
        {
            s = new BasicHttpParams();
        }
        HttpConnectionParams.setConnectionTimeout(s, 3000);
        HttpConnectionParams.setSoTimeout(s, 10000);
        s = new HttpManager();
        if (cookiestore != null)
        {
            s.setCookieStore(cookiestore);
        }
        try
        {
            s = s.execute(map);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public HttpResponse syncPostConnect(String s, String s1, String s2, String s3, Map map, PostEntityTypeEnum postentitytypeenum, List list, 
            String s4)
        throws HttpHostConnectException
    {
        String s5 = s1;
        if (s1 == null)
        {
            s5 = "";
        }
        s1 = s2;
        if (s2 == null)
        {
            s1 = "";
        }
        s2 = s3;
        if (s3 == null)
        {
            s2 = "";
        }
        s2 = (new StringBuilder()).append(s2).toString();
        if (s2 == "")
        {
            if ("getPortalUrl".equals(s5))
            {
                s = (new StringBuilder(String.valueOf(s))).append(s1).toString();
            } else
            {
                s = (new StringBuilder(String.valueOf(s))).append(s5).append(s1).toString();
            }
        } else
        if ("getPortalUrl".equals(s5))
        {
            s = (new StringBuilder(String.valueOf(s))).append(s1).append("?").append(s2).toString();
        } else
        {
            s = (new StringBuilder(String.valueOf(s))).append(s5).append(s1).append("?").append(s2).toString();
        }
        s1 = new HttpPost(s);
        Logger.i("iWiFiSDK|Common API|syncPostConnect", (new StringBuilder("methodName:")).append(s5).append("&url=").append(s).toString());
        s = null;
        if (true)
        {
            s = new BasicHttpParams();
        }
        HttpConnectionParams.setConnectionTimeout(s, 3000);
        HttpConnectionParams.setSoTimeout(s, 10000);
        s2 = new HttpManager();
        if (map == null || map.size() <= 0) goto _L2; else goto _L1
_L1:
        s = map.entrySet().iterator();
_L9:
        if (s.hasNext()) goto _L3; else goto _L2
_L2:
        $SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum()[postentitytypeenum.ordinal()];
        JVM INSTR tableswitch 2 3: default 544
    //                   2 394
    //                   3 496;
           goto _L4 _L5 _L6
_L13:
        if (s == null) goto _L8; else goto _L7
_L7:
        s1.setEntity(s);
_L8:
        s = s2.execute(s1);
        return s;
_L3:
        s3 = (java.util.Map.Entry)s.next();
        s1.addHeader((String)s3.getKey(), (String)s3.getValue());
          goto _L9
_L5:
        s = new ArrayList();
        if (postentitytypeenum != PostEntityTypeEnum.POST_ENTITY_TYPE_UrlEncodedFormEntity || list == null) goto _L11; else goto _L10
_L10:
        int i = 0;
_L14:
        if (i < list.size()) goto _L12; else goto _L11
_L11:
        s = new UrlEncodedFormEntity(s, "UTF-8");
          goto _L13
_L12:
        try
        {
            s.add(new BasicNameValuePair(((DataObject)list.get(i)).getKey(), ((DataObject)list.get(i)).getValue()));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            Logger.e("iWiFiSDK|Common API|syncPostConnect", (new StringBuilder("Post request error: ")).append(s.getMessage()).toString());
            return null;
        }
        i++;
          goto _L14
_L6:
        s = new StringEntity(s4, "UTF-8");
          goto _L13
_L4:
        s = null;
          goto _L13
    }

    public String[] sync_getPortalUrl(String s)
    {
        String as[];
        Object obj;
        as = new String[2];
        as[0] = "";
        as[1] = "";
        obj = syncConnect(s, "getPortalUrl", "", null);
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = GetCodeResultParser.GetCodeResultList(((String) (obj)), "result", "message", null);
        if (!((CodeResult) (obj)).getResult().equals("OK")) goto _L4; else goto _L3
_L3:
        as[0] = "true";
        try
        {
            as[1] = ((CodeResult) (obj)).getMsg();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            as[0] = "false";
            as[1] = exception.getMessage();
            Logger.e("iWiFiSDK|Authentication|sync_getPortalUrl", (new StringBuilder("Error: ")).append(exception.getMessage()).toString());
        }
_L6:
        Logger.d("iWiFiSDK|Authentication|sync_getPortalUrl", (new StringBuilder("url=")).append(s).append(" | result: ").append(as[1]).toString());
        return as;
_L4:
        as[0] = "false";
        as[1] = ((CodeResult) (obj)).getMsg();
        continue; /* Loop/switch isn't completed */
_L2:
        as[0] = "false";
        as[1] = "portal url response is null";
        Logger.e("iWiFiSDK|Authentication|sync_getPortalUrl", "portal url response is null");
        if (true) goto _L6; else goto _L5
_L5:
    }

    public String[] sync_getTempToken(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9)
    {
        String s12;
        String as[];
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("auth_id", s));
        arraylist.add(new DataObject("auth_unqid", s1));
        arraylist.add(new DataObject("auth_type", "APPMOBILE"));
        arraylist.add(new DataObject("ter_mac", s2));
        arraylist.add(new DataObject("ter_ip", s3));
        arraylist.add(new DataObject("terminal_type", "android"));
        arraylist.add(new DataObject("imei", s4));
        arraylist.add(new DataObject("dev_id", s5));
        arraylist.add(new DataObject("ac_name", s6));
        arraylist.add(new DataObject("app_id", s7));
        arraylist.add(new DataObject("platform_code", s8));
        arraylist.add(new DataObject("portal_url", s9));
        s12 = syncConnect(iWiFi20_WIFI_HOST, "platform10/token.htm", "", arraylist);
        as = new String[3];
        as[0] = "";
        as[1] = "";
        as[2] = "";
        if (s12 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s12);
        if (!jsonobject.getString("result").equals("OK")) goto _L4; else goto _L3
_L3:
        String s10;
        String s11;
        s7 = "";
        s10 = "";
        s11 = "";
        if (s12.contains("token"))
        {
            s7 = jsonobject.getString("token");
        }
        if (s12.contains("appauth_type"))
        {
            s10 = jsonobject.getString("appauth_type");
        }
        if (s12.contains("platform_code"))
        {
            s11 = jsonobject.getString("platform_code");
        }
        as[0] = s7;
        as[1] = s10;
        as[2] = s11;
_L2:
        Logger.e("iWiFiSDK|Authentication|sync_getTempToken", (new StringBuilder("auth_id=")).append(s).append("&auth_unqid=").append(s1).append("&ter_mac=").append(s2).append("&ter_ip=").append(s3).append("&imei=").append(s4).append("&dev_id=").append(s5).append("&ac_name=").append(s6).append("&platform_code=").append(s8).append("&portal_url=").append(s9).append(" | result: ").append(s12).toString());
        return as;
_L4:
        as[0] = "FAIL";
        if (!s12.contains("message"))
        {
            break; /* Loop/switch isn't completed */
        }
        s7 = jsonobject.getString("message");
_L6:
        as[1] = s7;
        try
        {
            Logger.d("iWiFiSDK|Authentication|sync_getTempToken", (new StringBuilder("GetToken Error: ")).append(s12).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s7)
        {
            as[0] = "FAIL";
            as[1] = (new StringBuilder("Error is ")).append(s7.getMessage()).append(", Original errInfo is : ").append(s12).toString();
            s7.printStackTrace();
            Logger.e("iWiFiSDK|Authentication|sync_getTempToken", (new StringBuilder("GetToken Error: ")).append(as[1]).toString());
        }
        if (true) goto _L2; else goto _L5
_L5:
        s7 = s12;
          goto _L6
        if (true) goto _L2; else goto _L7
_L7:
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
    }
}
