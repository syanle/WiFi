// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

// Referenced classes of package com.ta.util.http:
//            RetryHandler, RequestParams, DataObject, AsyncHttpRequest, 
//            AsyncHttpResponseHandler

public class AsyncHttpClient
{
    private static class InflatingEntity extends HttpEntityWrapper
    {

        public InputStream getContent()
            throws IOException
        {
            return new GZIPInputStream(wrappedEntity.getContent());
        }

        public long getContentLength()
        {
            return -1L;
        }

        public InflatingEntity(HttpEntity httpentity)
        {
            super(httpentity);
        }
    }


    private static final int DEFAULT_CORE_POOL_SIZE = 5;
    private static final int DEFAULT_KEEP_ALIVETIME = 0;
    private static final int DEFAULT_MAXIMUM_POOL_SIZE = 10;
    private static final int DEFAULT_MAX_CONNECTIONS = 10;
    private static final int DEFAULT_MAX_RETRIES = 5;
    private static final int DEFAULT_SOCKET_BUFFER_SIZE = 8192;
    private static final int DEFAULT_SOCKET_TIMEOUT = 10000;
    private static final String ENCODING_GZIP = "gzip";
    private static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
    private static final String VERSION = "1.1";
    private static int maxConnections = 10;
    private static int socketTimeout = 10000;
    private final Map clientHeaderMap = new HashMap();
    private final DefaultHttpClient httpClient;
    private final HttpContext httpContext = new SyncBasicHttpContext(new BasicHttpContext());
    String mLocalVersionName;
    private final Map requestMap = new WeakHashMap();
    private ThreadPoolExecutor threadPool;
    long time;
    protected WifiManager wifiMgr;

    public AsyncHttpClient()
    {
        wifiMgr = null;
        BasicHttpParams basichttpparams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basichttpparams, socketTimeout);
        ConnManagerParams.setMaxConnectionsPerRoute(basichttpparams, new ConnPerRouteBean(maxConnections));
        ConnManagerParams.setMaxTotalConnections(basichttpparams, 10);
        HttpConnectionParams.setSoTimeout(basichttpparams, socketTimeout);
        HttpConnectionParams.setConnectionTimeout(basichttpparams, socketTimeout);
        HttpConnectionParams.setTcpNoDelay(basichttpparams, true);
        HttpConnectionParams.setSocketBufferSize(basichttpparams, 8192);
        HttpProtocolParams.setVersion(basichttpparams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setUserAgent(basichttpparams, String.format("thinkandroid/%s (http://www.thinkandroid.cn)", new Object[] {
            "1.1"
        }));
        Object obj = new SchemeRegistry();
        ((SchemeRegistry) (obj)).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        ((SchemeRegistry) (obj)).register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        obj = new ThreadSafeClientConnManager(basichttpparams, ((SchemeRegistry) (obj)));
        httpClient = new DefaultHttpClient(((ClientConnectionManager) (obj)), basichttpparams);
        httpClient.addRequestInterceptor(new HttpRequestInterceptor() {

            final AsyncHttpClient this$0;

            public void process(HttpRequest httprequest, HttpContext httpcontext)
            {
                if (!httprequest.containsHeader("Accept-Encoding"))
                {
                    httprequest.addHeader("Accept-Encoding", "gzip");
                }
                httpcontext = clientHeaderMap.keySet().iterator();
                do
                {
                    if (!httpcontext.hasNext())
                    {
                        return;
                    }
                    String s = (String)httpcontext.next();
                    httprequest.addHeader(s, (String)clientHeaderMap.get(s));
                } while (true);
            }

            
            {
                this$0 = AsyncHttpClient.this;
                super();
            }
        });
        httpClient.addResponseInterceptor(new HttpResponseInterceptor() {

            final AsyncHttpClient this$0;

            public void process(HttpResponse httpresponse, HttpContext httpcontext)
            {
                httpcontext = httpresponse.getEntity();
                if (httpcontext != null) goto _L2; else goto _L1
_L1:
                return;
_L2:
                if ((httpcontext = httpcontext.getContentEncoding()) != null)
                {
                    httpcontext = httpcontext.getElements();
                    int j = httpcontext.length;
                    int i = 0;
                    while (i < j) 
                    {
                        if (httpcontext[i].getName().equalsIgnoreCase("gzip"))
                        {
                            httpresponse.setEntity(new InflatingEntity(httpresponse.getEntity()));
                            return;
                        }
                        i++;
                    }
                }
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                this$0 = AsyncHttpClient.this;
                super();
            }
        });
        httpClient.setHttpRequestRetryHandler(new RetryHandler(5));
        threadPool = new ThreadPoolExecutor(5, 10, 0L, TimeUnit.SECONDS, new ArrayBlockingQueue(3), new java.util.concurrent.ThreadPoolExecutor.CallerRunsPolicy());
    }

    public static String FormatStackTrace(Throwable throwable)
    {
        if (throwable == null)
        {
            return "";
        }
        String s = throwable.getStackTrace().toString();
        Object obj = s;
        Object obj1 = s;
        StringWriter stringwriter;
        PrintWriter printwriter;
        try
        {
            stringwriter = new StringWriter();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return ((String) (obj));
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            return ((String) (obj1));
        }
        obj = s;
        obj1 = s;
        printwriter = new PrintWriter(stringwriter);
        obj = s;
        obj1 = s;
        throwable.printStackTrace(printwriter);
        obj = s;
        obj1 = s;
        printwriter.flush();
        obj = s;
        obj1 = s;
        stringwriter.flush();
        obj = s;
        obj1 = s;
        throwable = stringwriter.toString();
        obj = throwable;
        obj1 = throwable;
        printwriter.close();
        obj = throwable;
        obj1 = throwable;
        stringwriter.close();
        return throwable;
    }

    private HttpEntityEnclosingRequestBase addEntityToRequestBase(HttpEntityEnclosingRequestBase httpentityenclosingrequestbase, HttpEntity httpentity)
    {
        if (httpentity != null)
        {
            httpentityenclosingrequestbase.setEntity(httpentity);
        }
        return httpentityenclosingrequestbase;
    }

    public static String getUrlWithQueryString(String s, RequestParams requestparams)
    {
label0:
        {
            String s1 = s;
            if (requestparams != null)
            {
                requestparams = requestparams.getParamString();
                if (s.indexOf("?") != -1)
                {
                    break label0;
                }
                s1 = (new StringBuilder(String.valueOf(s))).append("?").append(requestparams).toString();
            }
            return s1;
        }
        return (new StringBuilder(String.valueOf(s))).append("&").append(requestparams).toString();
    }

    public static String getUrlWithQueryStringL(String s, List list)
    {
        String s1 = s;
        if (list == null) goto _L2; else goto _L1
_L1:
        String s2;
        s1 = "";
        s2 = s1;
        if (list == null) goto _L4; else goto _L3
_L3:
        int i = 0;
_L8:
        if (i < list.size()) goto _L6; else goto _L5
_L5:
        s2 = s1;
_L4:
        if (s.indexOf("?") != -1)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = (new StringBuilder(String.valueOf(s))).append("?").append(s2).toString();
_L2:
        return s1;
_L6:
        s2 = s1;
        if (i != 0)
        {
            s2 = (new StringBuilder(String.valueOf(s1))).append("&").toString();
        }
        s1 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s2))).append(((DataObject)list.get(i)).getKey()).toString()))).append("=").toString()))).append(((DataObject)list.get(i)).getValue()).toString();
        i++;
        if (true) goto _L8; else goto _L7
_L7:
        return (new StringBuilder(String.valueOf(s))).append("&").append(s2).toString();
    }

    private HttpEntity paramsToEntity(RequestParams requestparams)
    {
        HttpEntity httpentity = null;
        if (requestparams != null)
        {
            httpentity = requestparams.getEntity();
        }
        return httpentity;
    }

    private HttpEntity paramsToEntityL(List list)
    {
        Object obj = null;
        if (list == null) goto _L2; else goto _L1
_L1:
        int i;
        obj = new ArrayList();
        i = 0;
_L6:
        if (i < list.size()) goto _L4; else goto _L3
_L3:
        try
        {
            obj = new UrlEncodedFormEntity(((List) (obj)), "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            list.printStackTrace();
            return null;
        }
_L2:
        return ((HttpEntity) (obj));
_L4:
        ((ArrayList) (obj)).add(new BasicNameValuePair(((DataObject)list.get(i)).getKey(), ((DataObject)list.get(i)).getValue()));
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void addHeader(String s, String s1)
    {
        clientHeaderMap.put(s, s1);
    }

    public void cancelRequests(Context context, boolean flag)
    {
        Object obj = (List)requestMap.get(context);
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = ((List) (obj)).iterator();
_L5:
        if (((Iterator) (obj)).hasNext()) goto _L3; else goto _L2
_L2:
        requestMap.remove(context);
        return;
_L3:
        Future future = (Future)((WeakReference)((Iterator) (obj)).next()).get();
        if (future != null)
        {
            future.cancel(flag);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void delete(Context context, String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        s = new HttpDelete(s);
        sendRequest(httpClient, httpContext, s, null, asynchttpresponsehandler, context);
    }

    public void delete(Context context, String s, Header aheader[], AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        s = new HttpDelete(s);
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        sendRequest(httpClient, httpContext, s, null, asynchttpresponsehandler, context);
    }

    public void delete(String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        delete(null, s, asynchttpresponsehandler);
    }

    public void download(Context context, String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        download(context, s, null, asynchttpresponsehandler);
    }

    public void download(Context context, String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        sendRequest(httpClient, httpContext, new HttpGet(getUrlWithQueryString(s, requestparams)), null, asynchttpresponsehandler, context);
    }

    public void download(String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        download(null, s, null, asynchttpresponsehandler);
    }

    public void download(String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        download(null, s, requestparams, asynchttpresponsehandler);
    }

    public void get(Context context, String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        get(context, s, null, asynchttpresponsehandler);
    }

    public void get(Context context, String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        sendRequest(httpClient, httpContext, new HttpGet(getUrlWithQueryString(s, requestparams)), null, asynchttpresponsehandler, context);
    }

    public void get(Context context, String s, Header aheader[], RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        s = new HttpGet(getUrlWithQueryString(s, requestparams));
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        sendRequest(httpClient, httpContext, s, null, asynchttpresponsehandler, context);
    }

    public void get(String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        get(null, s, null, asynchttpresponsehandler);
    }

    public void get(String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        get(null, s, requestparams, asynchttpresponsehandler);
    }

    public HttpClient getHttpClient()
    {
        return httpClient;
    }

    public HttpContext getHttpContext()
    {
        return httpContext;
    }

    public void getL(Context context, String s, List list, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        sendRequest(httpClient, httpContext, new HttpGet(getUrlWithQueryStringL(s, list)), null, asynchttpresponsehandler, context);
    }

    public void getL(String s, List list, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        getL(null, s, list, asynchttpresponsehandler);
    }

    public String getLocalMacAddress(Context context)
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)context.getApplicationContext().getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public void post(Context context, String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        post(context, s, paramsToEntity(requestparams), null, asynchttpresponsehandler);
    }

    public void post(Context context, String s, HttpEntity httpentity, String s1, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        sendRequest(httpClient, httpContext, addEntityToRequestBase(new HttpPost(s), httpentity), s1, asynchttpresponsehandler, context);
    }

    public void post(Context context, String s, Header aheader[], RequestParams requestparams, String s1, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        s = new HttpPost(s);
        if (requestparams != null)
        {
            s.setEntity(paramsToEntity(requestparams));
        }
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        sendRequest(httpClient, httpContext, s, s1, asynchttpresponsehandler, context);
    }

    public void post(Context context, String s, Header aheader[], HttpEntity httpentity, String s1, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        s = addEntityToRequestBase(new HttpPost(s), httpentity);
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        sendRequest(httpClient, httpContext, s, s1, asynchttpresponsehandler, context);
    }

    public void post(String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        post(null, s, null, asynchttpresponsehandler);
    }

    public void post(String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        post(null, s, requestparams, asynchttpresponsehandler);
    }

    public void postL(Context context, String s, List list, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        post(context, s, paramsToEntityL(list), null, asynchttpresponsehandler);
    }

    public void postL(String s, List list, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        postL(null, s, list, asynchttpresponsehandler);
    }

    public void postTest(Context context, String s, List list, String s1, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        post(context, s, paramsToEntityL(list), s1, asynchttpresponsehandler);
    }

    public void postTest(String s, List list, String s1, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        postTest(null, s, list, s1, asynchttpresponsehandler);
    }

    public void put(Context context, String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        put(context, s, paramsToEntity(requestparams), null, asynchttpresponsehandler);
    }

    public void put(Context context, String s, HttpEntity httpentity, String s1, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        sendRequest(httpClient, httpContext, addEntityToRequestBase(new HttpPut(s), httpentity), s1, asynchttpresponsehandler, context);
    }

    public void put(Context context, String s, Header aheader[], HttpEntity httpentity, String s1, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        s = addEntityToRequestBase(new HttpPut(s), httpentity);
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        sendRequest(httpClient, httpContext, s, s1, asynchttpresponsehandler, context);
    }

    public void put(String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        put(null, s, null, asynchttpresponsehandler);
    }

    public void put(String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        put(null, s, requestparams, asynchttpresponsehandler);
    }

    protected void sendRequest(DefaultHttpClient defaulthttpclient, HttpContext httpcontext, HttpUriRequest httpurirequest, String s, AsyncHttpResponseHandler asynchttpresponsehandler, Context context)
    {
        if (s != null)
        {
            httpurirequest.addHeader("Content-Type", s);
        }
        httpurirequest = threadPool.submit(new AsyncHttpRequest(defaulthttpclient, httpcontext, httpurirequest, asynchttpresponsehandler));
        if (context != null)
        {
            httpcontext = (List)requestMap.get(context);
            defaulthttpclient = httpcontext;
            if (httpcontext == null)
            {
                defaulthttpclient = new LinkedList();
                requestMap.put(context, defaulthttpclient);
            }
            defaulthttpclient.add(new WeakReference(httpurirequest));
        }
    }

    public void setBasicAuth(String s, String s1)
    {
        setBasicAuth(s, s1, AuthScope.ANY);
    }

    public void setBasicAuth(String s, String s1, AuthScope authscope)
    {
        s = new UsernamePasswordCredentials(s, s1);
        httpClient.getCredentialsProvider().setCredentials(authscope, s);
    }

    public void setCookieStore(CookieStore cookiestore)
    {
        httpContext.setAttribute("http.cookie-store", cookiestore);
    }

    public void setSSLSocketFactory(SSLSocketFactory sslsocketfactory)
    {
        httpClient.getConnectionManager().getSchemeRegistry().register(new Scheme("https", sslsocketfactory, 443));
    }

    public void setThreadPool(ThreadPoolExecutor threadpoolexecutor)
    {
        threadPool = threadpoolexecutor;
    }

    public void setTimeout(int i)
    {
        org.apache.http.params.HttpParams httpparams = httpClient.getParams();
        ConnManagerParams.setTimeout(httpparams, i);
        HttpConnectionParams.setSoTimeout(httpparams, i);
        HttpConnectionParams.setConnectionTimeout(httpparams, i);
    }

    public void setUserAgent(String s)
    {
        HttpProtocolParams.setUserAgent(httpClient.getParams(), s);
    }


}
