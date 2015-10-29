// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;

import android.os.AsyncTask;
import android.util.Log;
import com.iwifi.sdk.protocol.impl.SDKCommonMotheds;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

// Referenced classes of package com.iwifi.sdk.tools:
//            HttpConf, HttpManager, Logger, DataObject, 
//            XmlParser, XMLData

public abstract class HttpUtil extends HttpConf
{
    private class ConnectAsyncTask extends AsyncTask
    {

        final HttpUtil this$0;

        protected transient Boolean doInBackground(String as[])
        {
            excuteConnect(mStrUrl, mStrMethodName, mStrAction, mListParams);
            return null;
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected void onPostExecute(Boolean boolean1)
        {
            super.onPostExecute(boolean1);
            try
            {
                taskexecute(mStrResult, mBTimeOut);
                mStrResult = null;
                System.gc();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Boolean boolean1)
            {
                boolean1.printStackTrace();
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Boolean)obj);
        }

        private ConnectAsyncTask()
        {
            this$0 = HttpUtil.this;
            super();
        }

        ConnectAsyncTask(ConnectAsyncTask connectasynctask)
        {
            this();
        }
    }

    private class PortalConnectAsyncTask extends AsyncTask
    {

        final HttpUtil this$0;

        protected transient Boolean doInBackground(String as[])
        {
            excutePortalConnect(url, account, password, apZone);
            return null;
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected void onPostExecute(Boolean boolean1)
        {
            super.onPostExecute(boolean1);
            try
            {
                taskexecute(mStrResult, mBTimeOut);
                mStrResult = null;
                System.gc();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Boolean boolean1)
            {
                boolean1.printStackTrace();
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Boolean)obj);
        }

        private PortalConnectAsyncTask()
        {
            this$0 = HttpUtil.this;
            super();
        }

        PortalConnectAsyncTask(PortalConnectAsyncTask portalconnectasynctask)
        {
            this();
        }
    }

    public class PortalLogoutAsyncTask extends AsyncTask
    {

        final HttpUtil this$0;

        protected transient Boolean doInBackground(String as[])
        {
            excutePortalLogout();
            return null;
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected void onPostExecute(Boolean boolean1)
        {
            super.onPostExecute(boolean1);
            try
            {
                taskexecute(mStrResult, mBTimeOut);
                mStrResult = null;
                System.gc();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Boolean boolean1)
            {
                boolean1.printStackTrace();
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Boolean)obj);
        }

        public PortalLogoutAsyncTask()
        {
            this$0 = HttpUtil.this;
            super();
        }
    }

    private static final class iWiFiPlatformStatus extends Enum
    {

        private static final iWiFiPlatformStatus ENUM$VALUES[];
        public static final iWiFiPlatformStatus iWiFi_10;
        public static final iWiFiPlatformStatus iWiFi_20;
        public static final iWiFiPlatformStatus iWiFi_NETWORK_CONNECTED;
        public static final iWiFiPlatformStatus iWiFi_NETWORK_ERROR;
        public static final iWiFiPlatformStatus iWiFi_NONE;

        public static iWiFiPlatformStatus valueOf(String s)
        {
            return (iWiFiPlatformStatus)Enum.valueOf(com/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus, s);
        }

        public static iWiFiPlatformStatus[] values()
        {
            iWiFiPlatformStatus aiwifiplatformstatus[] = ENUM$VALUES;
            int i = aiwifiplatformstatus.length;
            iWiFiPlatformStatus aiwifiplatformstatus1[] = new iWiFiPlatformStatus[i];
            System.arraycopy(aiwifiplatformstatus, 0, aiwifiplatformstatus1, 0, i);
            return aiwifiplatformstatus1;
        }

        static 
        {
            iWiFi_NONE = new iWiFiPlatformStatus("iWiFi_NONE", 0);
            iWiFi_10 = new iWiFiPlatformStatus("iWiFi_10", 1);
            iWiFi_20 = new iWiFiPlatformStatus("iWiFi_20", 2);
            iWiFi_NETWORK_CONNECTED = new iWiFiPlatformStatus("iWiFi_NETWORK_CONNECTED", 3);
            iWiFi_NETWORK_ERROR = new iWiFiPlatformStatus("iWiFi_NETWORK_ERROR", 4);
            ENUM$VALUES = (new iWiFiPlatformStatus[] {
                iWiFi_NONE, iWiFi_10, iWiFi_20, iWiFi_NETWORK_CONNECTED, iWiFi_NETWORK_ERROR
            });
        }

        private iWiFiPlatformStatus(String s, int i)
        {
            super(s, i);
        }
    }


    private static final String CASUAL_URL = "http://www.baidu.com";
    private static final String CLIENTPARAM_KEY = "Client";
    private static final String CLIENTPARAM_VALUE = "1.0.0_Android";
    private static final String DEFAULT_LOGOFFURL = "https://wlan.ct10000.com/background/wispLogoff.action";
    private static final String FNAME_KEY = "FNAME";
    private static final String FNAME_VALUE = "0";
    private static final String GET_PASSWORD_MESSAGE = "Message";
    private static final String LOGIN_BUTTON_KEY = "button";
    private static final String LOGIN_BUTTON_VALUE = "Login";
    private static final String ORGSERVER_KEY = "OriginatingServer";
    private static final String PASSWORD = "Password";
    private static final String RESPONSECODE = "ResponseCode";
    private static final String SUFFIX_2 = ".chntel.com";
    private static final String SUFFIX_EX = "@wlanwz.zx.chntel.com";
    private static final String SUFFIX_PHONE = "@cw.";
    private static final String SUFFIX_WB = "@wlan.";
    private static final String TESTURL = "http://www.baidu.com";
    private static final int TIME_OUT = 3000;
    private static final String USER_AGENT = "CDMA+WLAN";
    private static final String USRNAME_KEY = "UserName";
    private static final String iWiFi_10_PORTAL_URL = "http://www.hichinawifi.com:80/login/";
    private static final String iWiFi_10_URL = "http://www.hichinawifi.com";
    private static final String iWiFi_20_PORTAL_URL = "http://portal.51iwifi.com:80/site/login/";
    private static final String iWiFi_20_URL = "http://www.51iwifi.com";
    private static iWiFiPlatformStatus iWiFi_status;
    public static CookieStore mCookieStore = null;
    private static Object mObject = new Object();
    private String account;
    private String apZone;
    private boolean mBTimeOut;
    private List mListParams;
    private String mRedirectUrl;
    private int mResponseCode;
    private String mStrAction;
    private String mStrMethodName;
    private String mStrResult;
    private String mStrUrl;
    private String password;
    private String url;

    public HttpUtil()
    {
        mStrResult = "";
        mBTimeOut = false;
        mRedirectUrl = null;
    }

    private String GetChinaNetRedirectUrl(Document document)
    {
        if (document == null)
        {
            return null;
        }
        String s = document.title();
        if (document.getElementsByTag("a") != null)
        {
            document = document.getElementsByTag("a").first();
            if (document != null)
            {
                document = document.attr("href");
                if (s != null && s.equals("Redirect"))
                {
                    document.replaceAll("&amp;", "&");
                    return document;
                }
            }
        }
        return null;
    }

    private String GetFujianRedirectUrl(Document document)
    {
        String s;
        int i;
        s = null;
        i = 1;
_L11:
        if (i != 0) goto _L2; else goto _L1
_L1:
        String s1 = s;
_L4:
        return s1;
_L2:
        s1 = s;
        if (document == null) goto _L4; else goto _L3
_L3:
        Object obj;
        obj = document.getElementsByTag("form");
        s1 = s;
        if (obj == null) goto _L4; else goto _L5
_L5:
        s1 = s;
        if (((Elements) (obj)).select("[name=CMCCWLANFORM]") == null) goto _L4; else goto _L6
_L6:
        Object obj1;
        obj1 = ((Elements) (obj)).select("[name=CMCCWLANFORM]").first();
        s1 = s;
        if (obj1 == null) goto _L4; else goto _L7
_L7:
        obj = ((Element) (obj1)).attr("action");
        obj1 = ((Element) (obj1)).select("input[name]");
        s1 = ((String) (obj));
        if (obj1 == null) goto _L4; else goto _L8
_L8:
        s1 = ((String) (obj));
        if (((Elements) (obj1)).size() == 0) goto _L4; else goto _L9
_L9:
        s = "";
        i = 0;
        do
        {
label0:
            {
                if (i < ((Elements) (obj1)).size())
                {
                    break label0;
                }
                s = (new StringBuilder(String.valueOf(obj))).append("?").append(s).toString();
                i = 0;
            }
            if (true)
            {
                continue;
            }
            Element element = ((Elements) (obj1)).get(i);
            String s2 = s;
            if (i != 0)
            {
                s2 = (new StringBuilder(String.valueOf(s))).append("&").toString();
            }
            s = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s2))).append(element.attr("name")).toString()))).append("=").toString()))).append(element.attr("value")).toString();
            i++;
        } while (true);
        if (true) goto _L11; else goto _L10
_L10:
    }

    private String GetOtherRedirectUrl(Document document, String s, String s1)
    {
        if (document == null)
        {
            return null;
        }
        if (document.title().contains("\u767E\u5EA6"))
        {
            return "Already onLine";
        }
        if (document.getElementsByTag(s) != null)
        {
            document = document.getElementsByTag(s).first();
            if (document != null)
            {
                document = document.attr(s1);
                if (!document.equals(""))
                {
                    document.replaceAll("&amp;", "&");
                    return document;
                }
            }
        }
        return null;
    }

    public static String HttpClientGet(String s, HttpParams httpparams, CookieStore cookiestore)
        throws ClientProtocolException, IOException
    {
        if (s != null)
        {
            HttpGet httpget = new HttpGet(s);
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
            s = s.execute(httpget);
            int i = s.getStatusLine().getStatusCode();
            if (i == 200 || i == 302)
            {
                return EntityUtils.toString(s.getEntity());
            }
        }
        return null;
    }

    public static String HttpClientPost(String s, List list, HttpParams httpparams)
        throws ClientProtocolException, IOException
    {
        HttpPost httppost = new HttpPost(s);
        httppost.setEntity(new UrlEncodedFormEntity(list, "UTF-8"));
        s = httpparams;
        if (httpparams == null)
        {
            s = new BasicHttpParams();
        }
        HttpConnectionParams.setConnectionTimeout(s, 3000);
        HttpConnectionParams.setSoTimeout(s, 10000);
        s = new HttpManager();
        list = s.execute(httppost);
        if (list.getStatusLine().getStatusCode() == 200)
        {
            list = EntityUtils.toString(list.getEntity());
            mCookieStore = s.getCookieStore();
            return list;
        } else
        {
            return null;
        }
    }

    private void excuteConnect(String s, String s1, String s2, List list)
    {
        String s3;
        String s4;
        s3 = "";
        s4 = s3;
        if (list == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L11:
        if (i < list.size()) goto _L4; else goto _L3
_L3:
        s4 = s3;
_L2:
        if (s4 == "")
        {
            if ("getPortalUrl".equals(s1))
            {
                s = (new StringBuilder(String.valueOf(s))).append(s2).toString();
            } else
            {
                s = (new StringBuilder(String.valueOf(s))).append(s1).append(s2).toString();
            }
        } else
        if ("getPortalUrl".equals(s1))
        {
            s = (new StringBuilder(String.valueOf(s))).append(s2).append("?").append(s4).toString();
        } else
        {
            s = (new StringBuilder(String.valueOf(s))).append(s1).append(s2).append("?").append(s4).toString();
        }
        Logger.i("iWiFiSDK|Common API|HttpUtils", (new StringBuilder("methodName:")).append(s1).append("&url=").append(s).toString());
        s = new HttpGet(s);
        s2 = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s2, 30000);
        HttpConnectionParams.setSoTimeout(s2, 30000);
        s2 = new DefaultHttpClient(s2);
        if ("getPortalUrl".equals(s1))
        {
            s.setHeader("User-Agent", iWiFi_USER_AGENT);
        }
        ((DefaultHttpClient)s2).setRedirectHandler(new RedirectHandler() {

            final HttpUtil this$0;

            public URI getLocationURI(HttpResponse httpresponse, HttpContext httpcontext)
                throws ProtocolException
            {
                if (httpresponse == null)
                {
                    throw new IllegalArgumentException("HTTP response may not be null");
                }
                httpcontext = httpresponse.getFirstHeader("location");
                if (httpcontext == null)
                {
                    throw new ProtocolException((new StringBuilder("Received redirect response ")).append(httpresponse.getStatusLine()).append(" but no location header").toString());
                }
                httpresponse = httpcontext.getValue();
                Log.v("HttpUtils", (new StringBuilder("Redirect requested to location '")).append(httpresponse).append("'").toString());
                Logger.d("HttpUtils", (new StringBuilder("Redirect requested to location '")).append(httpresponse).append("'").toString());
                try
                {
                    httpcontext = new URI(httpresponse);
                }
                // Misplaced declaration of an exception variable
                catch (HttpContext httpcontext)
                {
                    throw new ProtocolException((new StringBuilder("Invalid redirect URI: ")).append(httpresponse).toString(), httpcontext);
                }
                mRedirectUrl = httpcontext.toString();
                return httpcontext;
            }

            public boolean isRedirectRequested(HttpResponse httpresponse, HttpContext httpcontext)
            {
                int j;
                if (httpresponse == null)
                {
                    throw new IllegalArgumentException("HTTP response may not be null");
                }
                j = httpresponse.getStatusLine().getStatusCode();
                Logger.d("HttpUtils", (new StringBuilder("isRedirectRequested : ")).append(j).toString());
                j;
                JVM INSTR tableswitch 301 307: default 92
            //                           301 94
            //                           302 94
            //                           303 136
            //                           304 92
            //                           305 92
            //                           306 92
            //                           307 94;
                   goto _L1 _L2 _L2 _L3 _L1 _L1 _L1 _L2
_L1:
                return false;
_L2:
                if ((httpresponse = ((HttpRequest)httpcontext.getAttribute("http.request")).getRequestLine().getMethod()).equalsIgnoreCase("GET") || httpresponse.equalsIgnoreCase("HEAD"))
                {
                    return true;
                }
                  goto _L1
_L3:
                return true;
            }

            
            {
                this$0 = HttpUtil.this;
                super();
            }
        });
        s = s2.execute(s);
        i = s.getStatusLine().getStatusCode();
        if (!"smartwifi/auth".equals(s1) && !"getPortalUrl".equals(s1)) goto _L6; else goto _L5
_L12:
        if (!"getPortalUrl".equals(s1) || mRedirectUrl != null || !s.getFirstHeader("Content-type").getValue().startsWith("text/html")) goto _L8; else goto _L7
_L7:
        s = SDKCommonMotheds.JSoupHTMLParse(s.getEntity().getContent());
        Logger.i("iWiFiSDK|Common API|HttpUtils", (new StringBuilder("iWiFi20_METHOD_GETPORTAL HTTP Requst Parse HTML: ")).append(s.toString()).toString());
        s1 = GetChinaNetRedirectUrl(s);
        if (s1 == null) goto _L10; else goto _L9
_L9:
        mRedirectUrl = s1;
        Logger.i("iWiFiSDK", (new StringBuilder(" iWiFi20_METHOD_GETPORTAL  --- get ChinaNet RedirectUrl success:   ")).append(mRedirectUrl).toString());
_L8:
        mStrResult = generateJsonResult(mRedirectUrl, (new StringBuilder()).append(i).toString());
        mRedirectUrl = null;
        return;
_L4:
        s4 = s3;
        if (i != 0)
        {
            s4 = (new StringBuilder(String.valueOf(s3))).append("&").toString();
        }
        s3 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s4))).append(((DataObject)list.get(i)).getKey()).toString()))).append("=").toString()))).append(((DataObject)list.get(i)).getValue()).toString();
        i++;
          goto _L11
_L10:
        try
        {
            s1 = GetFujianRedirectUrl(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            mStrResult = generateJsonResult(null, s.getMessage());
            mBTimeOut = true;
            mRedirectUrl = null;
            Logger.e("iWiFiSDK|Common API|HttpUtils", (new StringBuilder("HTTP Request HttpHostConnectException: ")).append(s.getMessage()).toString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            mStrResult = generateJsonResult(null, s.getMessage());
            mBTimeOut = true;
            mRedirectUrl = null;
            Logger.e("iWiFiSDK|Common API|HttpUtils", (new StringBuilder("HTTP Request Excetion: ")).append(s.getMessage()).toString());
            return;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_703;
        }
        mRedirectUrl = s1;
        Logger.i("iWiFiSDK", (new StringBuilder(" iWiFi20_METHOD_GETPORTAL  --- get Fujian RedirectUrl success:   ")).append(mRedirectUrl).toString());
          goto _L8
        s1 = GetOtherRedirectUrl(s, "a", "href");
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_831;
        }
label0:
        {
            if (!s1.equals("Already onLine"))
            {
                break label0;
            }
            mRedirectUrl = null;
            Logger.i("iWiFiSDK|Common API|HttpUtils", "iWiFi20_METHOD_GETPORTAL: Already onLine");
        }
          goto _L8
        mRedirectUrl = s1;
        Logger.i("iWiFiSDK", (new StringBuilder(" iWiFi20_METHOD_GETPORTAL  --- get Other foramt RedirectUrl success:   ")).append(mRedirectUrl).toString());
          goto _L8
        mRedirectUrl = "";
        Logger.i("iWiFiSDK|Common API|HttpUtils", (new StringBuilder("iWiFi20_METHOD_GETPORTAL: Get PortalURL failed : ")).append(s.toString()).toString());
          goto _L8
_L13:
        Logger.d("iWiFiSDK | Common API | HttpUtils", (new StringBuilder("This Method's (")).append(s1).append(") http request failed : ").append(i).toString());
        mRedirectUrl = null;
          goto _L8
_L6:
        mStrResult = EntityUtils.toString(s.getEntity());
        return;
_L5:
        if (i != 200 && i != 100) goto _L13; else goto _L12
    }

    private void excutePortalConnect(String s, String s1, String s2, String s3)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("button", "Login"));
        arraylist.add(new BasicNameValuePair("Password", s2));
        arraylist.add(new BasicNameValuePair("Client", "1.0.0_Android"));
        arraylist.add(new BasicNameValuePair("UserName", (new StringBuilder(String.valueOf(s1))).append("@wlan.").append(s3).append(".chntel.com").toString()));
        arraylist.add(new BasicNameValuePair("FNAME", "0"));
        arraylist.add(new BasicNameValuePair("OriginatingServer", "http://www.baidu.com"));
        s1 = new BasicHttpParams();
        HttpProtocolParams.setUserAgent(s1, "CDMA+WLAN");
        try
        {
            mStrResult = HttpClientPost(s, arraylist, s1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            mStrResult = null;
            mBTimeOut = true;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            mStrResult = null;
        }
        mBTimeOut = true;
    }

    private String generateJsonResult(String s, String s1)
    {
        if (s == null || s.equals(""))
        {
            return (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"error : ")).append(s1).append("\"}").toString();
        } else
        {
            return (new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(s).append("\"}").toString();
        }
    }

    public void asyncConnect(String s, String s1, String s2, List list)
    {
        mStrUrl = s;
        mStrMethodName = s1;
        mStrAction = s2;
        mListParams = list;
        (new ConnectAsyncTask(null)).execute(new String[0]);
    }

    public void excutePortalLogout()
    {
        Object obj;
        ArrayList arraylist;
        try
        {
            obj = new BasicHttpParams();
            HttpProtocolParams.setUserAgent(((HttpParams) (obj)), "CDMA+WLAN");
            obj = HttpClientGet("https://wlan.ct10000.com/wispr_logout.jsp", ((HttpParams) (obj)), mCookieStore);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((IOException) (obj)).printStackTrace();
            return;
        }
        if (obj == null)
        {
            return;
        }
        arraylist = XmlParser.parseXmlByDom(new ByteArrayInputStream(((String) (obj)).getBytes()), "ResponseCode");
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        if (arraylist.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        mResponseCode = Integer.parseInt(((XMLData)arraylist.get(0)).characters);
        arraylist.clear();
_L1:
        System.gc();
        return;
        mResponseCode = Integer.parseInt(((String) (obj)).substring(((String) (obj)).lastIndexOf("<ResponseCode>") + 14, ((String) (obj)).lastIndexOf("</ResponseCode>")));
          goto _L1
    }

    public void portalLoginConnect(String s, String s1, String s2, String s3)
    {
        url = s;
        account = s1;
        password = s2;
        apZone = s3;
        (new PortalConnectAsyncTask(null)).execute(new String[0]);
    }

    public void portalLogout()
    {
        (new PortalLogoutAsyncTask()).execute(new String[0]);
    }

    public String syncConnect(String s, String s1, String s2, List list)
    {
        mStrUrl = s;
        mStrMethodName = s1;
        mStrAction = s2;
        mListParams = list;
        excuteConnect(s, s1, s2, list);
        return mStrResult;
    }

    public abstract void taskexecute(String s, boolean flag)
        throws Exception;

    static 
    {
        iWiFi_status = iWiFiPlatformStatus.iWiFi_NONE;
    }














}
