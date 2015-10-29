// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.data.CodeResult;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.HttpConf;
import com.iwifi.sdk.tools.HttpManager;
import com.iwifi.sdk.tools.HttpUtil;
import com.iwifi.sdk.tools.Logger;
import java.io.IOException;
import java.net.URLEncoder;
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
    public static final String AUTHEN_TYPE_ACBAS = "BAS_AUTH";
    public static final String AUTHEN_TYPE_ACFIT = "FIT_AP_AUTH";
    public static final String AUTHEN_TYPE_ACVLAN = "VLAN_AUTH";
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
            break MISSING_BLOCK_LABEL_198;
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
            break MISSING_BLOCK_LABEL_92;
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
            break MISSING_BLOCK_LABEL_42;
        }
    }

    public static HttpResponse syncGetConnect(String s, Map map, HttpParams httpparams, CookieStore cookiestore)
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

    public static HttpResponse syncPostConnect(String s, String s1, String s2, String s3, Map map, PostEntityTypeEnum postentitytypeenum, List list, String s4)
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
        JVM INSTR tableswitch 2 3: default 536
    //                   2 386
    //                   3 488;
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

    public AuthenResultInfo AC_sync_LoginAuthen(String s, String s1, String s2, String s3, String s4, String s5, String s6)
    {
        AuthenResultInfo authenresultinfo;
        String s8;
        authenresultinfo = new AuthenResultInfo();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("username", s));
        arraylist.add(new DataObject("password", s2));
        arraylist.add(new DataObject("user_ip", s3));
        arraylist.add(new DataObject("ac_name", s4));
        s8 = AC_syncPostConnection(HttpConf.iWiFi20_AC_HOST, "appaciauth.htm", arraylist);
        if (s8 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s8);
        if (!jsonobject.getString("result").equalsIgnoreCase("OK")) goto _L4; else goto _L3
_L3:
        authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"OK\",\"message\":\"AC \u8BA4\u8BC1\u6210\u529F\",\"logoffUrl\":\"")).append(s6).append("\",\"ac_name\":\"").append(s4).append("\"}").toString(), "AC_AUTH", s1, null, s2, null, s5, "");
        authenresultinfo.auth_status = true;
_L6:
        Logger.d("iWiFiSDK|Authentication|AC_sync_LoginAuthen", (new StringBuilder("phone=")).append(s).append("&token=").append(s2).append("&ac_name=").append(s4).append("&ter_ip=").append(s3).append(" | result: ").append(authenresultinfo.auth_resultInfo).toString());
        return authenresultinfo;
_L4:
        String s7 = "Authentication Failed";
        try
        {
            if (s8.contains("message"))
            {
                s7 = jsonobject.getString("message");
            }
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"AC \u8BA4\u8BC1\u5931\u8D25:")).append(s7).append("\",\"logoffUrl\":\"").append(s6).append("\",\"ac_name\":\"").append(s4).append("\"}").toString(), "AC_AUTH", s1, null, s2, null, s5, "");
            authenresultinfo.auth_status = false;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(exception.getMessage()).append("\",\"logoffUrl\":\"").append(s6).append("\",\"ac_name\":\"").append(s4).append("\"}").toString(), "AC_AUTH", s1, null, s2, null, s5, "");
            authenresultinfo.auth_status = false;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\",\"logoffUrl\":\"")).append(s6).append("\",\"ac_name\":\"").append(s4).append("\"}").toString(), "AC_AUTH", s1, null, s2, null, s5, "");
        authenresultinfo.auth_status = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public LogoffResultInfo AC_sync_LogoffReq(String s, String s1, String s2, String s3, String s4)
    {
        LogoffResultInfo logoffresultinfo;
        logoffresultinfo = new LogoffResultInfo();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("username", s));
        arraylist.add(new DataObject("password", s1));
        arraylist.add(new DataObject("user_ip", s3));
        arraylist.add(new DataObject("ac_name", s2));
        s1 = AC_syncPostConnection(HttpConf.iWiFi20_AC_HOST, "appacilogout.htm", arraylist);
        if (s1 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s1);
        if (jsonobject.getString("result").equals("OK")) goto _L4; else goto _L3
_L3:
        s = "Logoff Failed";
        try
        {
            if (s1.contains("message"))
            {
                s = jsonobject.getString("message");
            }
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(s).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s.getMessage()).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
        }
_L6:
        Logger.d("iWiFiSDK|Logoff|AC_sync_LogoffReq", (new StringBuilder("ac_name=")).append(s2).append("&ter_ip=").append(s3).append("&host_url=").append(s4).append(" | result: ").append(logoffresultinfo.logoff_resultInfo).toString());
        return logoffresultinfo;
_L4:
        s = "Logoff Success";
        if (s1.contains("message"))
        {
            s = jsonobject.getString("message");
        }
        logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(s).append("\"}").toString();
        logoffresultinfo.logoff_status = true;
        continue; /* Loop/switch isn't completed */
_L2:
        logoffresultinfo.logoff_resultInfo = "{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\"}";
        logoffresultinfo.logoff_status = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public AuthenResultInfo AP_sync_LoginAuthen(String s, String s1, String s2, String s3, String s4, String s5, String s6)
    {
        AuthenResultInfo authenresultinfo;
        authenresultinfo = new AuthenResultInfo();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("phone", s1));
        arraylist.add(new DataObject("token", s2));
        arraylist.add(new DataObject("dev_type", s3));
        arraylist.add(new DataObject("dev_id", s4));
        arraylist.add(new DataObject("url", s6));
        s = syncConnect((new StringBuilder("http://")).append(s).append(":2060/").toString(), "smartwifi/auth", "", arraylist);
        if (s == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s);
        if (!s.contains("message") || !jsonobject.getString("message").contains(iWiFi20_AUTHEN_STR) && !jsonobject.getString("message").contains(iWiFi20_AUTHEN_STR2)) goto _L4; else goto _L3
_L3:
        authenresultinfo.auth_resultInfo = generateAuthResultJson("{\"result\":\"OK\",\"message\":\"\u8BA4\u8BC1\u6210\u529F\"}", "AP_AUTH", s4, null, s2, null, s5, "");
        authenresultinfo.auth_status = true;
_L6:
        Logger.d("iWiFiSDK|Authentication|AP_sync_LoginAuthen", (new StringBuilder("phone=")).append(s1).append("&token=").append(s2).append("&dev_type=").append(s3).append("&dev_id=").append(s4).append("&url=").append(s6).append(" | result: ").append(authenresultinfo.auth_resultInfo).toString());
        return authenresultinfo;
_L4:
        try
        {
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"\u8BA4\u8BC1\u5931\u8D25:")).append(jsonobject.getString("message")).append("\"}").toString(), "AP_AUTH", s4, null, s2, null, s5, "");
            authenresultinfo.auth_status = false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s.getMessage()).append("\"}").toString(), "AP_AUTH", s4, null, s2, null, s5, "");
            authenresultinfo.auth_status = false;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        authenresultinfo.auth_resultInfo = generateAuthResultJson("{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\"}", "AP_AUTH", s4, null, s2, null, s5, "");
        authenresultinfo.auth_status = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public LogoffResultInfo AP_sync_LogoffReq(String s, String s1, String s2)
    {
        LogoffResultInfo logoffresultinfo;
        String s4;
        logoffresultinfo = new LogoffResultInfo();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("phone", s1));
        arraylist.add(new DataObject("token", s2));
        arraylist.add(new DataObject("logout", "1"));
        s4 = syncConnect((new StringBuilder("http://")).append(s).append(":2060/").toString(), "smartwifi/auth", "", arraylist);
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
        Logger.d("iWiFiSDK|Logoff|AP_sync_LogoffReq", (new StringBuilder("ipGateway=")).append(s).append("&phoneNum=").append(s1).append("&token=").append(s2).append("&logout=").append("1").append(" | result: ").append(logoffresultinfo.logoff_resultInfo).toString());
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

    public AuthenResultInfo Third_sync_LoginAuthen(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9, String s10, String s11)
    {
        Object obj;
        AuthenResultInfo authenresultinfo;
        s11 = SDKCommonMotheds.getSign((new StringBuilder("auth_id=")).append(s).append("&auth_unqid=").append(s2).append("&auth_type=APPMOBILE").append("&ter_mac=").append(s3).append("&ter_ip=").append(s4).append("&terminal_type=android").append("&imei=").append(s5).append("&appauth_type=THIRD_AUTH").append("&token=").append(s6).append("&platform_code=").append(s7).append("&redirect_params=").append(s9).append("&appkey=").append(s10).append("&secret=").append(s11).toString());
        authenresultinfo = new AuthenResultInfo();
        obj = new ArrayList();
        ((List) (obj)).add(new DataObject("auth_id", s));
        ((List) (obj)).add(new DataObject("auth_unqid", s2));
        ((List) (obj)).add(new DataObject("auth_type", "APPMOBILE"));
        ((List) (obj)).add(new DataObject("ter_mac", s3));
        ((List) (obj)).add(new DataObject("ter_ip", s4));
        ((List) (obj)).add(new DataObject("terminal_type", "android"));
        ((List) (obj)).add(new DataObject("imei", s5));
        ((List) (obj)).add(new DataObject("appauth_type", "THIRD_AUTH"));
        ((List) (obj)).add(new DataObject("token", s6));
        ((List) (obj)).add(new DataObject("platform_code", s7));
        ((List) (obj)).add(new DataObject("redirect_params", s9));
        ((List) (obj)).add(new DataObject("appkey", s10));
        ((List) (obj)).add(new DataObject("sign", s11));
        obj = syncConnect(iWiFi20_WIFI_HOST, "appauth.html", "", ((List) (obj)));
        if (obj == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(((String) (obj)));
        if (jsonobject.getString("result").equals("OK")) goto _L4; else goto _L3
_L3:
        String s12;
        s10 = "Authentication Failed";
        try
        {
            if (((String) (obj)).contains("message"))
            {
                s10 = jsonobject.getString("message");
            }
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(s10).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, null, s8, s9);
            authenresultinfo.auth_status = false;
        }
        // Misplaced declaration of an exception variable
        catch (String s10)
        {
            s10.printStackTrace();
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s10.getMessage()).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, null, s8, s9);
            authenresultinfo.auth_status = false;
        }
_L12:
        Logger.d("iWiFiSDK|Authentication|Third_sync_LoginAuthen", (new StringBuilder("auth_id=")).append(s).append("&auth_unqid=").append(s2).append("&ter_mac=").append(s3).append("&ter_ip=").append(s4).append("&imei=").append(s5).append("&dev_id=").append(s1).append("&platform_code=").append(s7).append("&portal_url=").append(s9).append(" | result: ").append(authenresultinfo.auth_resultInfo).toString());
        return authenresultinfo;
_L4:
        s10 = null;
        if (((String) (obj)).contains("third_token"))
        {
            s10 = jsonobject.getString("third_token");
        }
        if (!((String) (obj)).contains("online_url"))
        {
            break MISSING_BLOCK_LABEL_1062;
        }
        s12 = jsonobject.getString("online_url");
        if (s12.equals(""))
        {
            break MISSING_BLOCK_LABEL_982;
        }
        s11 = s12;
        if (s11.indexOf("?") != -1) goto _L6; else goto _L5
_L5:
        obj = "";
_L9:
        if (!((String) (obj)).contains("get=1")) goto _L8; else goto _L7
_L7:
        s12 = Third_SecondAuthGetConnection(s11, null);
        obj = s11;
        s11 = s12;
_L10:
        if (GetCodeResultParser.GetJsonObject(s11).getString("result").equals("FAIL"))
        {
            authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"FAIL\",\"message\":\"First authen OK, but connect redirect url failed, online_url: ")).append(((String) (obj))).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, s10, s8, s9);
            authenresultinfo.auth_status = false;
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_948;
_L6:
        obj = s11.substring(s11.indexOf("?") + 1);
          goto _L9
_L8:
        s12 = s12.substring(0, s12.indexOf("?"));
        s11 = Third_SecondAuthPostConnection(s12, null, ((String) (obj)));
        obj = s12;
          goto _L10
        authenresultinfo.auth_resultInfo = generateAuthResultJson("{\"result\":\"OK\",\"message\":\"Redirct onLine_url also success: \"}", "THIRD_AUTH", s1, s7, s6, s10, s8, s9);
        authenresultinfo.auth_status = true;
        continue; /* Loop/switch isn't completed */
        s11 = "Authentication Success";
        if (((String) (obj)).contains("message"))
        {
            s11 = jsonobject.getString("message");
        }
        authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(s11).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, s10, s8, s9);
        authenresultinfo.auth_status = true;
        continue; /* Loop/switch isn't completed */
        s11 = "Authentication Success";
        if (((String) (obj)).contains("message"))
        {
            s11 = jsonobject.getString("message");
        }
        authenresultinfo.auth_resultInfo = generateAuthResultJson((new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(s11).append("\"}").toString(), "THIRD_AUTH", s1, s7, s6, s10, s8, s9);
        authenresultinfo.auth_status = true;
        continue; /* Loop/switch isn't completed */
_L2:
        authenresultinfo.auth_resultInfo = generateAuthResultJson("{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\"}", "THIRD_AUTH", s1, s7, s6, null, s8, s9);
        authenresultinfo.auth_status = false;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public LogoffResultInfo Third_sync_LogoffReq(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7)
    {
        LogoffResultInfo logoffresultinfo;
        logoffresultinfo = new LogoffResultInfo();
        s7 = SDKCommonMotheds.getSign((new StringBuilder("auth_id=")).append(s).append("&token=").append(s3).append("&auth_type=APPMOBILE").append("&appauth_type=THIRD_AUTH").append("&platform_code=").append(s1).append("&ter_ip=").append(s2).append("&terminal_type=android").append("&redirect_params=").append(s5).append("&third_token=").append(s4).append("&appkey=").append(s6).append("&secret=").append(s7).toString());
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
        arraylist.add(new DataObject("appkey", s6));
        arraylist.add(new DataObject("sign", s7));
        s7 = syncConnect(iWiFi20_WIFI_HOST, "useroffline.html", "", arraylist);
        if (s7 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s7);
        if (jsonobject.getString("result").equals("OK")) goto _L4; else goto _L3
_L3:
        String s8;
        s6 = "Logoff Failed";
        try
        {
            if (s7.contains("message"))
            {
                s6 = jsonobject.getString("message");
            }
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(s6).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
        }
        // Misplaced declaration of an exception variable
        catch (String s6)
        {
            s6.printStackTrace();
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s6.getMessage()).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
        }
_L12:
        Logger.d("iWiFiSDK|Logoff|AC_sync_LogoffReq", (new StringBuilder("ac_name=")).append(s).append("&token=").append(s3).append("&platform_code=").append(s1).append("&ter_ip=").append(s2).append("&third_token=").append(s4).append("&redirect_params=").append(s5).append(" | result: ").append(logoffresultinfo.logoff_resultInfo).toString());
        return logoffresultinfo;
_L4:
        if (!s7.contains("offline_url"))
        {
            break MISSING_BLOCK_LABEL_869;
        }
        s8 = jsonobject.getString("offline_url");
        if (s8.equals(""))
        {
            break MISSING_BLOCK_LABEL_806;
        }
        s6 = s8;
        if (s6.indexOf("?") != -1) goto _L6; else goto _L5
_L5:
        s7 = "";
_L9:
        if (!s7.contains("get=1")) goto _L8; else goto _L7
_L7:
        s8 = Third_SecondAuthGetConnection(s6, null);
        s7 = s6;
        s6 = s8;
_L10:
        if (GetCodeResultParser.GetJsonObject(s6).getString("result").equals("FAIL"))
        {
            logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"First authen OK, but reconnect failed, offline_url = ")).append(s7).append("\"}").toString();
            logoffresultinfo.logoff_status = false;
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_789;
_L6:
        s7 = s6.substring(s6.indexOf("?") + 1);
          goto _L9
_L8:
        s8 = s8.substring(0, s8.indexOf("?"));
        s6 = Third_SecondAuthPostConnection(s8, null, s7);
        s7 = s8;
          goto _L10
        logoffresultinfo.logoff_resultInfo = "{\"result\":\"OK\",\"message\":\"Redirect offline_url connect also success: \"}";
        logoffresultinfo.logoff_status = true;
        continue; /* Loop/switch isn't completed */
        s6 = "Logoff Success";
        if (s7.contains("message"))
        {
            s6 = jsonobject.getString("message");
        }
        logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(s6).append("\"}").toString();
        logoffresultinfo.logoff_status = true;
        continue; /* Loop/switch isn't completed */
        s6 = "Logoff Success";
        if (s7.contains("message"))
        {
            s6 = jsonobject.getString("message");
        }
        logoffresultinfo.logoff_resultInfo = (new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(s6).append("\"}").toString();
        logoffresultinfo.logoff_status = true;
        continue; /* Loop/switch isn't completed */
_L2:
        logoffresultinfo.logoff_resultInfo = "{\"result\":\"FAIL\",\"message\":\"\u8BF7\u6C42\u8D85\u65F6\"}";
        logoffresultinfo.logoff_status = false;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public String generateAuthResultJson(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7)
    {
        try
        {
            if (s1.equals("AP_AUTH"))
            {
                s = GetCodeResultParser.GetCodeResultList(s, "result", "message", null);
                return generateJson(s.getResult(), s.getMsg(), s1, s2, s3, "", s4, s5, "", s6, s7);
            }
            if (s1.equals("AAA_AUTH"))
            {
                s7 = GetCodeResultParser.GetCodeResultList(s, "result", "msg", null);
                if (!s7.getResult().equals("0"))
                {
                    return generateJson("FAIL", s7.getMsg(), s1, s2, s3, "", s4, s5, "", s6, "");
                } else
                {
                    s = GetCodeResultParser.GetCodeResultList(s, "result", "msg", "logooffurl");
                    return generateJson("OK", s.getMsg(), s1, s2, s3, s.getData(), s4, s5, "", s6, "");
                }
            }
            if (s1.equals("AC_AUTH"))
            {
                s = GetCodeResultParser.GetCodeResultList(s, "result", "message", "logoffUrl", "ac_name");
                return generateJson(s.getResult(), s.getMsg(), s1, s2, s3, s.getData(), s4, s5, s.getData1(), s6, "");
            }
            if (s1.equals("THIRD_AUTH"))
            {
                s = GetCodeResultParser.GetCodeResultList(s, "result", "message", null);
                return generateJson(s.getResult(), s.getMsg(), s1, s2, s3, "", s4, s5, "", s6, s7);
            }
            s = (new StringBuilder("UNKOWN AUTHEN_TYPE : ")).append(s1).toString();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = s.getMessage();
        }
        return generateJson("FAIL", (new StringBuilder("FINAL PARSE JSON FAILED: ")).append(s).toString(), s1, s2, s3, "", s4, s5, "", s6, "");
    }

    public String generateJson(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9, String s10)
    {
        String s11 = s;
        if (s == null)
        {
            s11 = "";
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
        s6 = s10;
        if (s10 == null)
        {
            s6 = "";
        }
        s10 = s7;
        if (s7 == null)
        {
            s10 = "";
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
        s8 = s9;
        if (s9 == null)
        {
            s8 = "";
        }
        return (new StringBuilder("{\"result\":\"")).append(s11).append("\",\"message\":\"").append(s).append("\",\"appauth_type\":\"").append(s1).append("\",\"dev_id\":\"").append(s7).append("\",\"platform_code\":\"").append(s3).append("\",\"logoffUrl\":\"").append(s2).append("\",\"token\":\"").append(s5).append("\",\"third_token\":\"").append(s10).append("\",\"ac_name\":\"").append(s4).append("\",\"accountid\":\"").append(s8).append("\",\"portal_url\":\"").append(s6).append("\"}").toString();
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
            String s7, String s8, String s9, String s10, String s11)
    {
        String s13;
        String as[];
        s11 = SDKCommonMotheds.getSign((new StringBuilder("auth_id=")).append(s).append("&auth_unqid=").append(s1).append("&auth_type=APPMOBILE").append("&ter_mac=").append(s2).append("&ter_ip=").append(s3).append("&terminal_type=android").append("&imei=").append(s4).append("&dev_id=").append(s5).append("&ac_name=").append(s6).append("&app_id=").append(s7).append("&platform_code=").append(s8).append("&portal_url=").append(s9).append("&appkey=").append(s10).append("&secret=").append(s11).toString());
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
        arraylist.add(new DataObject("portal_url", URLEncoder.encode(s9)));
        arraylist.add(new DataObject("appkey", s10));
        arraylist.add(new DataObject("sign", s11));
        s13 = syncConnect(HttpConf.iWiFi20_WIFI_HOST, "token.html", "", arraylist);
        as = new String[4];
        as[0] = "";
        as[1] = "";
        as[2] = "";
        as[3] = "";
        if (s13 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = GetCodeResultParser.GetJsonObject(s13);
        if (!jsonobject.getString("result").equals("OK")) goto _L4; else goto _L3
_L3:
        String s12;
        s7 = "";
        s10 = "";
        s11 = "";
        s12 = "";
        if (s13.contains("token"))
        {
            s7 = jsonobject.getString("token");
        }
        if (s13.contains("appauth_type"))
        {
            s10 = jsonobject.getString("appauth_type");
        }
        if (s13.contains("platform_code"))
        {
            s11 = jsonobject.getString("platform_code");
        }
        if (s13.contains("accountid"))
        {
            s12 = jsonobject.getString("accountid");
        }
        as[0] = s7;
        as[1] = s10;
        as[2] = s11;
        as[3] = s12;
_L2:
        Logger.e("iWiFiSDK|Authentication|sync_getTempToken", (new StringBuilder("auth_id=")).append(s).append("&auth_unqid=").append(s1).append("&ter_mac=").append(s2).append("&ter_ip=").append(s3).append("&imei=").append(s4).append("&dev_id=").append(s5).append("&ac_name=").append(s6).append("&platform_code=").append(s8).append("&portal_url=").append(s9).append(" | result: ").append(s13).toString());
        return as;
_L4:
        as[0] = "FAIL";
        if (!s13.contains("message"))
        {
            break; /* Loop/switch isn't completed */
        }
        s7 = jsonobject.getString("message");
_L6:
        as[1] = s7;
        try
        {
            Logger.d("iWiFiSDK|Authentication|sync_getTempToken", (new StringBuilder("GetToken Error: ")).append(s13).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s7)
        {
            as[0] = "FAIL";
            as[1] = (new StringBuilder("Error is ")).append(s7.getMessage()).append(", Original errInfo is : ").append(s13).toString();
            s7.printStackTrace();
            Logger.e("iWiFiSDK|Authentication|sync_getTempToken", (new StringBuilder("GetToken Error: ")).append(as[1]).toString());
        }
        if (true) goto _L2; else goto _L5
_L5:
        s7 = s13;
          goto _L6
        if (true) goto _L2; else goto _L7
_L7:
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
    }
}
