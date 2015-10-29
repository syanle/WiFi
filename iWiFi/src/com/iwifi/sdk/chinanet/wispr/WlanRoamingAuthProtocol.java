// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet.wispr;

import android.os.Handler;
import android.os.Message;
import com.iwifi.sdk.tools.HttpConf;
import com.iwifi.sdk.tools.Logger;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HttpContext;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

// Referenced classes of package com.iwifi.sdk.chinanet.wispr:
//            XMLParseDefaultHandler, Redirect, AuthenticationReply, RequestUtils, 
//            LogoffReply, IWlanAuthenRequestCallback

public class WlanRoamingAuthProtocol
{
    public class ResultInfos
    {

        public String failInfo;
        public String logoffUrl;
        public Object reserve;
        final WlanRoamingAuthProtocol this$0;
        public String userName;

        public ResultInfos()
        {
            this$0 = WlanRoamingAuthProtocol.this;
            super();
        }
    }


    private static int $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod[];
    private static int $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState[];
    private static final String BTN_IDENTIFY = "Login";
    private static String DEFAULT_USER_AGENT = "CDMA+WLAN";
    private static final String FNAME = "0";
    private static final int HTTP_CONNET_TIMEOUT = 20000;
    public static final String HTTP_HEADER_CONTENT_TYPE = "Content-type";
    public static final String HTTP_HEADER_USE_AGENT = "User-Agent";
    private static final int MSG_AUTHENTICATION_FAIL = 1;
    private static final int MSG_AUTHENTICATION_SUCC = 0;
    private static final int MSG_LOGOFF_FAIL = 3;
    private static final int MSG_LOGOFF_SUCC = 2;
    private static final String ORIGINAL_SERVER = "http://www.baidu.com";
    public static final int REQUEST_ACTION_AUTHENTICATION = 0;
    public static final int REQUEST_ACTION_LOGOFF = 1;
    public static final int RESPONSE_RESULT_FAILED = 1;
    public static final int RESPONSE_RESULT_SUCCESS = 0;
    private static final int STEP_GET_AUTHENTICATE_ADR = 2;
    private static final int STEP_GET_BRAS_ADR = 1;
    private static final int STEP_GET_LOGOFF_REQ = 100;
    private static final int STEP_NONE = 0;
    private static final int STEP_POST_AUTHENTICATE_REQ = 3;
    private static final String URL = "http://www.baidu.com";
    private int auth_step_index;
    private IWlanAuthenRequestCallback callback;
    public String mLogoffUrl;
    private RedirectHandler mRedirectHandler;
    private String mRedirectUrl;
    Handler mhandler;

    static int[] $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod()
    {
        int ai[] = $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[RequestUtils.RequestMethod.values().length];
        try
        {
            ai[RequestUtils.RequestMethod.DELETE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai[RequestUtils.RequestMethod.GET.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[RequestUtils.RequestMethod.POST.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[RequestUtils.RequestMethod.PUT.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod = ai;
        return ai;
    }

    static int[] $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState()
    {
        int ai[] = $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[RequestUtils.ResponseResultState.values().length];
        try
        {
            ai[RequestUtils.ResponseResultState.RSP_GET_AUTH_FAILED.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            ai[RequestUtils.ResponseResultState.RSP_GET_AUTH_SUCCESS.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            ai[RequestUtils.ResponseResultState.RSP_GET_BRAS_FAILED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai[RequestUtils.ResponseResultState.RSP_GET_BRAS_SUCCESS.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai[RequestUtils.ResponseResultState.RSP_GET_LOGOFF_FAILED.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai[RequestUtils.ResponseResultState.RSP_GET_LOGOFF_SUCCESS.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai[RequestUtils.ResponseResultState.RSP_NONE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[RequestUtils.ResponseResultState.RSP_POST_AUTH_FAILED.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[RequestUtils.ResponseResultState.RSP_POST_AUTH_SUCCESS.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState = ai;
        return ai;
    }

    public WlanRoamingAuthProtocol()
    {
        mLogoffUrl = "";
        mRedirectUrl = null;
        mRedirectHandler = null;
        auth_step_index = 0;
        mhandler = new Handler() {

            final WlanRoamingAuthProtocol this$0;

            public void handleMessage(Message message)
            {
                super.handleMessage(message);
                ResultInfos resultinfos = (ResultInfos)message.obj;
                switch (message.what)
                {
                default:
                    return;

                case 0: // '\0'
                    callback.onAuthenticationSuccuess(resultinfos);
                    return;

                case 1: // '\001'
                    callback.onAuthenticationFailed(resultinfos);
                    return;

                case 2: // '\002'
                    callback.onLogoffSuccess(resultinfos);
                    return;

                case 3: // '\003'
                    callback.onLogoffFailed(resultinfos);
                    break;
                }
            }

            
            {
                this$0 = WlanRoamingAuthProtocol.this;
                super();
            }
        };
        mRedirectHandler = new RedirectHandler() {

            final WlanRoamingAuthProtocol this$0;

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
                int i;
                if (httpresponse == null)
                {
                    throw new IllegalArgumentException("HTTP response may not be null");
                }
                i = httpresponse.getStatusLine().getStatusCode();
                Logger.d("HttpUtils", (new StringBuilder("isRedirectRequested : ")).append(i).toString());
                i;
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
                this$0 = WlanRoamingAuthProtocol.this;
                super();
            }
        };
        DEFAULT_USER_AGENT = HttpConf.iWiFi_USER_AGENT;
    }

    private RequestUtils.ResponseResultInfos HandleParseHttpResponse(RequestUtils.ResponseResultInfos responseresultinfos, HttpResponse httpresponse)
        throws Exception
    {
        String s;
        Header aheader[];
        int i;
        int j;
        int k;
        if (httpresponse == null)
        {
            throw new Exception("HandleHttpResponse input http_response is null ");
        }
        j = httpresponse.getStatusLine().getStatusCode();
        responseresultinfos.http_request_status_code = j;
        if (j != 100 && j != 200)
        {
            break MISSING_BLOCK_LABEL_673;
        }
        s = "";
        aheader = httpresponse.getAllHeaders();
        k = aheader.length;
        i = 0;
_L7:
        if (i < k)
        {
label0:
            {
                Header header = aheader[i];
                if (!"Content-type".equalsIgnoreCase(header.getName()))
                {
                    break label0;
                }
                s = header.getValue();
            }
        }
_L10:
        if (auth_step_index != 1 || mRedirectUrl != null) goto _L2; else goto _L1
_L1:
        if (!s.startsWith("text/html")) goto _L4; else goto _L3
_L3:
        httpresponse = JSoupHTMLParse(httpresponse.getEntity().getContent());
        if (httpresponse == null) goto _L6; else goto _L5
_L5:
        responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_BRAS_SUCCESS;
        responseresultinfos.request_url = httpresponse;
_L9:
        return responseresultinfos;
        i++;
          goto _L7
_L6:
        responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_BRAS_FAILED;
        responseresultinfos.request_url = "Get Bras address failed because the reponse HTML file unrecognized";
        return responseresultinfos;
_L4:
        responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_BRAS_FAILED;
        responseresultinfos.request_url = (new StringBuilder("Get Bras address failed because the reponse(")).append(s).append(") is not HTML").toString();
        return responseresultinfos;
_L2:
        if (auth_step_index == 1 && mRedirectUrl != null)
        {
            mRedirectUrl = null;
            auth_step_index = 2;
        }
        Logger.d("HttpUtil", (new StringBuilder("Status_code: ")).append(j).append(", Content-type: ").append(s).append(", RedirectUrl: ").append(mRedirectUrl).toString());
        httpresponse = httpresponse.getEntity();
        try
        {
            InputStream inputstream = httpresponse.getContent();
            httpresponse = SAXParseXML(inputstream);
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (RequestUtils.ResponseResultInfos responseresultinfos)
        {
            throw new Exception((new StringBuilder("HandleHttpResponse xmlparse IllegalStateException exception : ")).append(responseresultinfos).toString());
        }
        // Misplaced declaration of an exception variable
        catch (RequestUtils.ResponseResultInfos responseresultinfos)
        {
            throw new Exception((new StringBuilder("HandleHttpResponse xmlparse IOException exception : ")).append(responseresultinfos).toString());
        }
        // Misplaced declaration of an exception variable
        catch (RequestUtils.ResponseResultInfos responseresultinfos)
        {
            throw new Exception((new StringBuilder("HandleHttpResponse xmlparse other exception : ")).append(responseresultinfos).toString());
        }
        if (httpresponse == null)
        {
            throw new Exception("HandlerHttpResponse xmlparese SAXParseXML failed ");
        }
        if (auth_step_index == 2 && ((XMLParseDefaultHandler) (httpresponse)).mRedirect != null)
        {
            if (((XMLParseDefaultHandler) (httpresponse)).mRedirect.response == 0)
            {
                responseresultinfos.request_url = ((XMLParseDefaultHandler) (httpresponse)).mRedirect.login_url;
                responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_AUTH_SUCCESS;
                responseresultinfos.result_body = ((XMLParseDefaultHandler) (httpresponse)).mRedirect;
                return responseresultinfos;
            } else
            {
                responseresultinfos.request_url = (new StringBuilder("Get Authenticate address failed, responseCode is ")).append(((XMLParseDefaultHandler) (httpresponse)).mRedirect.response).toString();
                responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_AUTH_FAILED;
                responseresultinfos.result_body = ((XMLParseDefaultHandler) (httpresponse)).mRedirect;
                return responseresultinfos;
            }
        }
        if (auth_step_index == 3 && ((XMLParseDefaultHandler) (httpresponse)).mAuthenticationReply != null)
        {
            String s1 = ((XMLParseDefaultHandler) (httpresponse)).mAuthenticationReply.logoff_url;
            responseresultinfos.request_url = s1;
            mLogoffUrl = s1;
            responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_POST_AUTH_SUCCESS;
            responseresultinfos.result_body = ((XMLParseDefaultHandler) (httpresponse)).mAuthenticationReply;
            return responseresultinfos;
        }
        if (auth_step_index == 100 && ((XMLParseDefaultHandler) (httpresponse)).mLogoffReply != null)
        {
            responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_LOGOFF_SUCCESS;
            responseresultinfos.result_body = ((XMLParseDefaultHandler) (httpresponse)).mLogoffReply;
            responseresultinfos.request_url = null;
            return responseresultinfos;
        }
        responseresultinfos.result_body = null;
        if (auth_step_index == 2)
        {
            responseresultinfos.request_url = "Get Authenticate address failed because fails to parse the response xml file";
            responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_AUTH_FAILED;
            return responseresultinfos;
        }
        if (auth_step_index == 3)
        {
            responseresultinfos.request_url = "Post authenticate request failed because fails to parse the response xml file";
            responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_POST_AUTH_FAILED;
            return responseresultinfos;
        }
        if (auth_step_index != 100) goto _L9; else goto _L8
_L8:
        responseresultinfos.request_url = "Logoff Request failed because fails to parse the response xml file";
        responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_LOGOFF_FAILED;
        return responseresultinfos;
        if (auth_step_index == 1)
        {
            responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_BRAS_FAILED;
        } else
        if (auth_step_index == 2)
        {
            responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_AUTH_FAILED;
        } else
        if (auth_step_index == 3)
        {
            responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_POST_AUTH_FAILED;
        } else
        if (auth_step_index == 100)
        {
            responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_GET_LOGOFF_FAILED;
        } else
        {
            responseresultinfos.process_result = RequestUtils.ResponseResultState.RSP_NONE;
        }
        responseresultinfos.request_url = (new StringBuilder("Http Request Failed: ")).append(j).toString();
        return responseresultinfos;
          goto _L10
    }

    public static XMLParseDefaultHandler SAXParseXML(InputStream inputstream)
    {
        XMLParseDefaultHandler xmlparsedefaulthandler;
        XMLReader xmlreader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        xmlparsedefaulthandler = new XMLParseDefaultHandler();
        xmlreader.setContentHandler(xmlparsedefaulthandler);
        xmlreader.parse(new InputSource(inputstream));
        inputstream.close();
        return xmlparsedefaulthandler;
        inputstream;
        inputstream.printStackTrace();
_L2:
        return null;
        inputstream;
        inputstream.printStackTrace();
        continue; /* Loop/switch isn't completed */
        inputstream;
        inputstream.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void addHeader(HttpUriRequest httpurirequest, Map map)
    {
        if (map == null || map.size() <= 0) goto _L2; else goto _L1
_L1:
        map = map.entrySet().iterator();
_L5:
        if (map.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
        httpurirequest.addHeader((String)entry.getKey(), (String)entry.getValue());
        if (true) goto _L5; else goto _L4
_L4:
    }

    private UrlEncodedFormEntity generateHttpEntity(String s, String s1, String s2, String s3, String s4, String s5)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("UserName", s);
        hashmap.put("Password", s1);
        hashmap.put("button", s2);
        hashmap.put("FNAME", s3);
        hashmap.put("OriginatingServer", s4);
        hashmap.put("Login_LAT_Service", s5);
        s = new ArrayList();
        s1 = hashmap.entrySet().iterator();
        do
        {
            if (!s1.hasNext())
            {
                try
                {
                    s = new UrlEncodedFormEntity(s, "UTF-8");
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    s.printStackTrace();
                    return null;
                }
                return s;
            }
            s2 = (java.util.Map.Entry)s1.next();
            s.add(new BasicNameValuePair((String)s2.getKey(), (String)s2.getValue()));
        } while (true);
    }

    private HttpResponse httpGetRequest(RequestUtils requestutils)
    {
        HttpGet httpget = new HttpGet(requestutils.url);
        addHeader(httpget, requestutils.headers);
        requestutils = new DefaultHttpClient();
        requestutils.setRedirectHandler(mRedirectHandler);
        try
        {
            requestutils = requestutils.execute(httpget);
        }
        // Misplaced declaration of an exception variable
        catch (RequestUtils requestutils)
        {
            requestutils.printStackTrace();
            return null;
        }
        return requestutils;
    }

    private HttpResponse httpPostRequest(RequestUtils requestutils)
    {
        DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
        HttpPost httppost = new HttpPost(requestutils.url);
        addHeader(httppost, requestutils.headers);
        if (requestutils.httpEntity == null)
        {
            throw new IllegalStateException("you forget to set post content to the httpost");
        }
        httppost.setEntity(requestutils.httpEntity);
        try
        {
            requestutils = defaulthttpclient.execute(httppost);
        }
        // Misplaced declaration of an exception variable
        catch (RequestUtils requestutils)
        {
            requestutils.printStackTrace();
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (RequestUtils requestutils)
        {
            requestutils.printStackTrace();
            return null;
        }
        return requestutils;
    }

    private void sendMessageWithResult(int i, ResultInfos resultinfos, RequestUtils.ResponseResultInfos responseresultinfos, Exception exception)
    {
        Message message;
        message = mhandler.obtainMessage();
        if (exception == null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        i;
        JVM INSTR tableswitch 0 1: default 36
    //                   0 62
    //                   1 71;
           goto _L1 _L2 _L3
_L1:
        resultinfos.failInfo = exception.toString();
_L4:
        message.obj = resultinfos;
        mhandler.sendMessage(message);
        return;
_L2:
        message.what = 1;
          goto _L1
_L3:
        message.what = 3;
          goto _L1
        if (responseresultinfos != null)
        {
            if (responseresultinfos.process_result == RequestUtils.ResponseResultState.RSP_POST_AUTH_SUCCESS)
            {
                if (responseresultinfos.result_body instanceof AuthenticationReply)
                {
                    exception = (AuthenticationReply)responseresultinfos.result_body;
                    if (50 == ((AuthenticationReply) (exception)).responseCode)
                    {
                        message.what = 0;
                        resultinfos.logoffUrl = responseresultinfos.request_url;
                        resultinfos.failInfo = null;
                    } else
                    {
                        message.what = 1;
                        resultinfos.logoffUrl = null;
                        resultinfos.failInfo = (new StringBuilder("Authenticate connection is ok, but response failed : ")).append(((AuthenticationReply) (exception)).responseCode).append(" message: ").append(((AuthenticationReply) (exception)).reply_message).toString();
                    }
                } else
                {
                    message.what = 1;
                    resultinfos.logoffUrl = null;
                    resultinfos.failInfo = "Authenticate connection is ok, but request body whenever gone ";
                }
            } else
            if (responseresultinfos.process_result == RequestUtils.ResponseResultState.RSP_GET_LOGOFF_SUCCESS)
            {
                if (responseresultinfos.result_body instanceof LogoffReply)
                {
                    responseresultinfos = (LogoffReply)responseresultinfos.result_body;
                    if (150 == ((LogoffReply) (responseresultinfos)).responseCode)
                    {
                        message.what = 2;
                        resultinfos.logoffUrl = null;
                        resultinfos.failInfo = null;
                    } else
                    {
                        message.what = 3;
                        resultinfos.logoffUrl = null;
                        resultinfos.failInfo = (new StringBuilder("Logoff connection is ok, but response tells it failed : ")).append(((LogoffReply) (responseresultinfos)).responseCode).toString();
                    }
                } else
                {
                    message.what = 3;
                    resultinfos.logoffUrl = null;
                    resultinfos.failInfo = "Logoff connection is ok, but request body whenever gone ";
                }
            } else
            {
                if (i == 0)
                {
                    message.what = 1;
                } else
                {
                    message.what = 3;
                }
                resultinfos.logoffUrl = null;
                resultinfos.failInfo = (new StringBuilder("Authenticate/Lofgoff connection failed: ")).append(responseresultinfos.process_result).append(", more: ").append(responseresultinfos.request_url).toString();
            }
        }
          goto _L4
    }

    public RequestUtils.ResponseResultInfos HandleHttpRequest(String s, HttpEntity httpentity, RequestUtils.RequestMethod requestmethod)
        throws Exception
    {
        RequestUtils requestutils;
        requestutils = new RequestUtils(s, requestmethod);
        HashMap hashmap = new HashMap();
        hashmap.put("User-Agent", DEFAULT_USER_AGENT);
        requestutils.headers = hashmap;
        if (httpentity != null)
        {
            requestutils.httpEntity = httpentity;
        }
        Logger.d("iWiFiSDK|AAA Authentication|HandleHttpRequest", (new StringBuilder("Method: ")).append(requestmethod).append(", Auth_Step: ").append(auth_step_index).append(", Url: ").append(s).toString());
        $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod()[requestmethod.ordinal()];
        JVM INSTR tableswitch 1 2: default 403
    //                   1 219
    //                   2 307;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalStateException((new StringBuilder("you doesn't define this requestmethod : ")).append(requestutils.requestMethod).toString());
_L2:
        Object obj;
        try
        {
            obj = httpGetRequest(requestutils);
        }
        // Misplaced declaration of an exception variable
        catch (HttpEntity httpentity)
        {
            throw new Exception((new StringBuilder("HandleHttpRequest http failed: ")).append(httpentity.getMessage()).append(", And Method: ").append(requestmethod).append(", Auth_Step: ").append(auth_step_index).append(", Url: ").append(s).toString());
        }
_L9:
        if (obj == null) goto _L5; else goto _L4
_L4:
        int i;
        obj = HandleParseHttpResponse(requestutils.getResultInfos(), ((HttpResponse) (obj)));
        i = $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState()[((RequestUtils.ResponseResultInfos) (obj)).process_result.ordinal()];
        i;
        JVM INSTR tableswitch 2 8: default 304
    //                   2 318
    //                   3 304
    //                   4 337
    //                   5 304
    //                   6 304
    //                   7 304
    //                   8 304;
           goto _L6 _L7 _L6 _L8 _L6 _L6 _L6 _L6
_L6:
        return ((RequestUtils.ResponseResultInfos) (obj));
_L3:
        obj = httpPostRequest(requestutils);
          goto _L9
_L7:
        auth_step_index = 2;
        return HandleHttpRequest(((RequestUtils.ResponseResultInfos) (obj)).request_url, httpentity, RequestUtils.RequestMethod.GET);
_L8:
        auth_step_index = 3;
        httpentity = HandleHttpRequest(((RequestUtils.ResponseResultInfos) (obj)).request_url, httpentity, RequestUtils.RequestMethod.POST);
        return httpentity;
        httpentity;
        httpentity.printStackTrace();
        throw new Exception(httpentity);
_L5:
        throw new IllegalStateException((new StringBuilder("HandleHttpRequest ")).append(requestmethod).append(" no response ").toString());
    }

    public String JSoupHTMLParse(InputStream inputstream)
        throws IOException
    {
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        String s = "";
        do
        {
            Object obj = bufferedreader.readLine();
            if (obj == null)
            {
                obj = Jsoup.parse(s);
                s = ((Document) (obj)).title();
                obj = ((Document) (obj)).getElementsByTag("a").first();
                String s1 = ((Element) (obj)).attr("href");
                ((Element) (obj)).text();
                if (s != null && s.equals("Redirect"))
                {
                    inputstream.close();
                    bufferedreader.close();
                    return s1;
                } else
                {
                    inputstream.close();
                    bufferedreader.close();
                    return null;
                }
            }
            s = (new StringBuilder(String.valueOf(s))).append(((String) (obj))).toString();
        } while (true);
    }

    public void doAunthenticaterRequest(String s, String s1, String s2, IWlanAuthenRequestCallback iwlanauthenrequestcallback)
    {
        doAunthenticaterRequest("http://www.baidu.com", s, s1, "Login", "0", "http://www.baidu.com", s2, iwlanauthenrequestcallback);
    }

    public void doAunthenticaterRequest(final String request_url, final String username, final String password, final String btn_identify, final String fname, final String org_server, final String login_lat_service, 
            IWlanAuthenRequestCallback iwlanauthenrequestcallback)
    {
        callback = iwlanauthenrequestcallback;
        (new Thread() {

            final WlanRoamingAuthProtocol this$0;
            private final String val$btn_identify;
            private final String val$fname;
            private final String val$login_lat_service;
            private final String val$org_server;
            private final String val$password;
            private final String val$request_url;
            private final String val$username;

            public void run()
            {
                super.run();
                ResultInfos resultinfos = new ResultInfos();
                resultinfos.userName = username;
                try
                {
                    auth_step_index = 1;
                    Object obj = generateHttpEntity(username, password, btn_identify, fname, org_server, login_lat_service);
                    obj = HandleHttpRequest(request_url, ((HttpEntity) (obj)), RequestUtils.RequestMethod.GET);
                    auth_step_index = 0;
                    sendMessageWithResult(0, resultinfos, ((RequestUtils.ResponseResultInfos) (obj)), null);
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                    auth_step_index = 0;
                    sendMessageWithResult(0, resultinfos, null, exception);
                    return;
                }
            }

            
            {
                this$0 = WlanRoamingAuthProtocol.this;
                username = s;
                password = s1;
                btn_identify = s2;
                fname = s3;
                org_server = s4;
                login_lat_service = s5;
                request_url = s6;
                super();
            }
        }).start();
    }

    public void doLogOffRequest(final String logoff_url, final String username, IWlanAuthenRequestCallback iwlanauthenrequestcallback)
    {
        callback = iwlanauthenrequestcallback;
        (new Thread() {

            final WlanRoamingAuthProtocol this$0;
            private final String val$logoff_url;
            private final String val$username;

            public void run()
            {
                super.run();
                ResultInfos resultinfos = new ResultInfos();
                resultinfos.userName = username;
                try
                {
                    auth_step_index = 100;
                    RequestUtils.ResponseResultInfos responseresultinfos = HandleHttpRequest(logoff_url, null, RequestUtils.RequestMethod.GET);
                    auth_step_index = 0;
                    sendMessageWithResult(1, resultinfos, responseresultinfos, null);
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                    auth_step_index = 0;
                    sendMessageWithResult(1, resultinfos, null, exception);
                    return;
                }
            }

            
            {
                this$0 = WlanRoamingAuthProtocol.this;
                username = s;
                logoff_url = s1;
                super();
            }
        }).start();
    }






}
