// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.helper;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.jsoup.Connection;
import org.jsoup.HttpStatusException;
import org.jsoup.UnsupportedMimeTypeException;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.jsoup.parser.TokenQueue;

// Referenced classes of package org.jsoup.helper:
//            Validate, DataUtil

public class HttpConnection
    implements Connection
{
    private static abstract class Base
        implements org.jsoup.Connection.Base
    {

        Map cookies;
        Map headers;
        org.jsoup.Connection.Method method;
        URL url;

        private String getHeaderCaseInsensitive(String s)
        {
            Validate.notNull(s, "Header name must not be null");
            String s2 = (String)headers.get(s);
            String s1 = s2;
            if (s2 == null)
            {
                s1 = (String)headers.get(s.toLowerCase());
            }
            s2 = s1;
            if (s1 == null)
            {
                s = scanHeaders(s);
                s2 = s1;
                if (s != null)
                {
                    s2 = (String)s.getValue();
                }
            }
            return s2;
        }

        private java.util.Map.Entry scanHeaders(String s)
        {
            s = s.toLowerCase();
            for (Iterator iterator = headers.entrySet().iterator(); iterator.hasNext();)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (((String)entry.getKey()).toLowerCase().equals(s))
                {
                    return entry;
                }
            }

            return null;
        }

        public String cookie(String s)
        {
            Validate.notNull(s, "Cookie name must not be null");
            return (String)cookies.get(s);
        }

        public org.jsoup.Connection.Base cookie(String s, String s1)
        {
            Validate.notEmpty(s, "Cookie name must not be empty");
            Validate.notNull(s1, "Cookie value must not be null");
            cookies.put(s, s1);
            return this;
        }

        public Map cookies()
        {
            return cookies;
        }

        public boolean hasCookie(String s)
        {
            Validate.notEmpty("Cookie name must not be empty");
            return cookies.containsKey(s);
        }

        public boolean hasHeader(String s)
        {
            Validate.notEmpty(s, "Header name must not be empty");
            return getHeaderCaseInsensitive(s) != null;
        }

        public String header(String s)
        {
            Validate.notNull(s, "Header name must not be null");
            return getHeaderCaseInsensitive(s);
        }

        public org.jsoup.Connection.Base header(String s, String s1)
        {
            Validate.notEmpty(s, "Header name must not be empty");
            Validate.notNull(s1, "Header value must not be null");
            removeHeader(s);
            headers.put(s, s1);
            return this;
        }

        public Map headers()
        {
            return headers;
        }

        public org.jsoup.Connection.Base method(org.jsoup.Connection.Method method1)
        {
            Validate.notNull(method1, "Method must not be null");
            method = method1;
            return this;
        }

        public org.jsoup.Connection.Method method()
        {
            return method;
        }

        public org.jsoup.Connection.Base removeCookie(String s)
        {
            Validate.notEmpty("Cookie name must not be empty");
            cookies.remove(s);
            return this;
        }

        public org.jsoup.Connection.Base removeHeader(String s)
        {
            Validate.notEmpty(s, "Header name must not be empty");
            s = scanHeaders(s);
            if (s != null)
            {
                headers.remove(s.getKey());
            }
            return this;
        }

        public URL url()
        {
            return url;
        }

        public org.jsoup.Connection.Base url(URL url1)
        {
            Validate.notNull(url1, "URL must not be null");
            url = url1;
            return this;
        }

        private Base()
        {
            headers = new LinkedHashMap();
            cookies = new LinkedHashMap();
        }

    }

    public static class KeyVal
        implements org.jsoup.Connection.KeyVal
    {

        private String key;
        private String value;

        public static KeyVal create(String s, String s1)
        {
            Validate.notEmpty(s, "Data key must not be empty");
            Validate.notNull(s1, "Data value must not be null");
            return new KeyVal(s, s1);
        }

        public String key()
        {
            return key;
        }

        public volatile org.jsoup.Connection.KeyVal key(String s)
        {
            return key(s);
        }

        public KeyVal key(String s)
        {
            Validate.notEmpty(s, "Data key must not be empty");
            key = s;
            return this;
        }

        public String toString()
        {
            return (new StringBuilder()).append(key).append("=").append(value).toString();
        }

        public String value()
        {
            return value;
        }

        public volatile org.jsoup.Connection.KeyVal value(String s)
        {
            return value(s);
        }

        public KeyVal value(String s)
        {
            Validate.notNull(s, "Data value must not be null");
            value = s;
            return this;
        }

        private KeyVal(String s, String s1)
        {
            key = s;
            value = s1;
        }
    }

    public static class Request extends Base
        implements org.jsoup.Connection.Request
    {

        private Collection data;
        private boolean followRedirects;
        private boolean ignoreContentType;
        private boolean ignoreHttpErrors;
        private int maxBodySizeBytes;
        private Parser parser;
        private int timeoutMilliseconds;

        public volatile String cookie(String s)
        {
            return super.cookie(s);
        }

        public volatile Map cookies()
        {
            return super.cookies();
        }

        public Collection data()
        {
            return data;
        }

        public volatile org.jsoup.Connection.Request data(org.jsoup.Connection.KeyVal keyval)
        {
            return data(keyval);
        }

        public Request data(org.jsoup.Connection.KeyVal keyval)
        {
            Validate.notNull(keyval, "Key val must not be null");
            data.add(keyval);
            return this;
        }

        public org.jsoup.Connection.Request followRedirects(boolean flag)
        {
            followRedirects = flag;
            return this;
        }

        public boolean followRedirects()
        {
            return followRedirects;
        }

        public volatile boolean hasCookie(String s)
        {
            return super.hasCookie(s);
        }

        public volatile boolean hasHeader(String s)
        {
            return super.hasHeader(s);
        }

        public volatile String header(String s)
        {
            return super.header(s);
        }

        public volatile Map headers()
        {
            return super.headers();
        }

        public org.jsoup.Connection.Request ignoreContentType(boolean flag)
        {
            ignoreContentType = flag;
            return this;
        }

        public boolean ignoreContentType()
        {
            return ignoreContentType;
        }

        public org.jsoup.Connection.Request ignoreHttpErrors(boolean flag)
        {
            ignoreHttpErrors = flag;
            return this;
        }

        public boolean ignoreHttpErrors()
        {
            return ignoreHttpErrors;
        }

        public int maxBodySize()
        {
            return maxBodySizeBytes;
        }

        public org.jsoup.Connection.Request maxBodySize(int i)
        {
            boolean flag;
            if (i >= 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Validate.isTrue(flag, "maxSize must be 0 (unlimited) or larger");
            maxBodySizeBytes = i;
            return this;
        }

        public volatile org.jsoup.Connection.Method method()
        {
            return super.method();
        }

        public volatile org.jsoup.Connection.Request parser(Parser parser1)
        {
            return parser(parser1);
        }

        public Request parser(Parser parser1)
        {
            parser = parser1;
            return this;
        }

        public Parser parser()
        {
            return parser;
        }

        public int timeout()
        {
            return timeoutMilliseconds;
        }

        public volatile org.jsoup.Connection.Request timeout(int i)
        {
            return timeout(i);
        }

        public Request timeout(int i)
        {
            boolean flag;
            if (i >= 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Validate.isTrue(flag, "Timeout milliseconds must be 0 (infinite) or greater");
            timeoutMilliseconds = i;
            return this;
        }

        public volatile URL url()
        {
            return super.url();
        }

        private Request()
        {
            ignoreHttpErrors = false;
            ignoreContentType = false;
            timeoutMilliseconds = 3000;
            maxBodySizeBytes = 0x100000;
            followRedirects = true;
            data = new ArrayList();
            method = org.jsoup.Connection.Method.GET;
            headers.put("Accept-Encoding", "gzip");
            parser = Parser.htmlParser();
        }

    }

    public static class Response extends Base
        implements org.jsoup.Connection.Response
    {

        private static final int MAX_REDIRECTS = 20;
        private static final Pattern xmlContentTypeRxp = Pattern.compile("application/\\w+\\+xml.*");
        private ByteBuffer byteData;
        private String charset;
        private String contentType;
        private boolean executed;
        private int numRedirects;
        private org.jsoup.Connection.Request req;
        private int statusCode;
        private String statusMessage;

        private static HttpURLConnection createConnection(org.jsoup.Connection.Request request1)
            throws IOException
        {
            HttpURLConnection httpurlconnection = (HttpURLConnection)request1.url().openConnection();
            httpurlconnection.setRequestMethod(request1.method().name());
            httpurlconnection.setInstanceFollowRedirects(false);
            httpurlconnection.setConnectTimeout(request1.timeout());
            httpurlconnection.setReadTimeout(request1.timeout());
            if (request1.method() == org.jsoup.Connection.Method.POST)
            {
                httpurlconnection.setDoOutput(true);
            }
            if (request1.cookies().size() > 0)
            {
                httpurlconnection.addRequestProperty("Cookie", getRequestCookieString(request1));
            }
            java.util.Map.Entry entry;
            for (request1 = request1.headers().entrySet().iterator(); request1.hasNext(); httpurlconnection.addRequestProperty((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)request1.next();
            }

            return httpurlconnection;
        }

        static Response execute(org.jsoup.Connection.Request request1)
            throws IOException
        {
            return execute(request1, null);
        }

        static Response execute(org.jsoup.Connection.Request request1, Response response1)
            throws IOException
        {
            HttpURLConnection httpurlconnection;
            Validate.notNull(request1, "Request must not be null");
            String s = request1.url().getProtocol();
            if (!s.equals("http") && !s.equals("https"))
            {
                throw new MalformedURLException("Only http & https protocols supported");
            }
            if (request1.method() == org.jsoup.Connection.Method.GET && request1.data().size() > 0)
            {
                serialiseRequestUrl(request1);
            }
            httpurlconnection = createConnection(request1);
            int i;
            httpurlconnection.connect();
            if (request1.method() == org.jsoup.Connection.Method.POST)
            {
                writePost(request1.data(), httpurlconnection.getOutputStream());
            }
            i = httpurlconnection.getResponseCode();
            boolean flag;
            boolean flag1;
            flag1 = false;
            flag = flag1;
            if (i == 200) goto _L2; else goto _L1
_L1:
            if (i != 302 && i != 301 && i != 303 && i != 307) goto _L4; else goto _L3
_L2:
            Response response3;
            response3 = new Response(response1);
            response3.setupFromConnection(httpurlconnection, response1);
            if (!flag) goto _L6; else goto _L5
_L5:
            if (!request1.followRedirects()) goto _L6; else goto _L7
_L7:
            Object obj;
            request1.method(org.jsoup.Connection.Method.GET);
            request1.data().clear();
            obj = response3.header("Location");
            response1 = ((Response) (obj));
            if (obj == null)
            {
                break MISSING_BLOCK_LABEL_266;
            }
            response1 = ((Response) (obj));
            if (!((String) (obj)).startsWith("http:/"))
            {
                break MISSING_BLOCK_LABEL_266;
            }
            response1 = ((Response) (obj));
            if (((String) (obj)).charAt(6) != '/')
            {
                response1 = ((String) (obj)).substring(6);
            }
            request1.url(new URL(request1.url(), HttpConnection.encodeUrl(response1)));
            for (response1 = response3.cookies.entrySet().iterator(); response1.hasNext(); request1.cookie((String)((java.util.Map.Entry) (obj)).getKey(), (String)((java.util.Map.Entry) (obj)).getValue()))
            {
                obj = (java.util.Map.Entry)response1.next();
            }

              goto _L8
            request1;
            httpurlconnection.disconnect();
            throw request1;
_L4:
            flag = flag1;
            if (!request1.ignoreHttpErrors())
            {
                throw new HttpStatusException("HTTP error fetching URL", i, request1.url().toString());
            }
            continue; /* Loop/switch isn't completed */
_L8:
            request1 = execute(request1, response3);
            httpurlconnection.disconnect();
            return request1;
_L6:
            response3.req = request1;
            response1 = response3.contentType();
            if (response1 == null)
            {
                break MISSING_BLOCK_LABEL_489;
            }
            if (!request1.ignoreContentType() && !response1.startsWith("text/") && !response1.startsWith("application/xml") && !xmlContentTypeRxp.matcher(response1).matches())
            {
                throw new UnsupportedMimeTypeException("Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml", response1, request1.url().toString());
            }
            BufferedInputStream bufferedinputstream;
            Response response2;
            obj = null;
            response1 = null;
            bufferedinputstream = ((BufferedInputStream) (obj));
            response2 = response1;
            if (httpurlconnection.getErrorStream() == null) goto _L10; else goto _L9
_L9:
            bufferedinputstream = ((BufferedInputStream) (obj));
            response2 = response1;
            response1 = httpurlconnection.getErrorStream();
_L14:
            bufferedinputstream = ((BufferedInputStream) (obj));
            response2 = response1;
            if (!response3.hasHeader("Content-Encoding")) goto _L12; else goto _L11
_L11:
            bufferedinputstream = ((BufferedInputStream) (obj));
            response2 = response1;
            if (!response3.header("Content-Encoding").equalsIgnoreCase("gzip")) goto _L12; else goto _L13
_L13:
            bufferedinputstream = ((BufferedInputStream) (obj));
            response2 = response1;
            obj = new BufferedInputStream(new GZIPInputStream(response1));
_L15:
            bufferedinputstream = ((BufferedInputStream) (obj));
            response2 = response1;
            response3.byteData = DataUtil.readToByteBuffer(((InputStream) (obj)), request1.maxBodySize());
            bufferedinputstream = ((BufferedInputStream) (obj));
            response2 = response1;
            response3.charset = DataUtil.getCharsetFromContentType(response3.contentType);
            if (obj == null)
            {
                break MISSING_BLOCK_LABEL_622;
            }
            ((InputStream) (obj)).close();
            if (response1 == null)
            {
                break MISSING_BLOCK_LABEL_630;
            }
            response1.close();
            httpurlconnection.disconnect();
            response3.executed = true;
            return response3;
_L10:
            bufferedinputstream = ((BufferedInputStream) (obj));
            response2 = response1;
            response1 = httpurlconnection.getInputStream();
              goto _L14
_L12:
            bufferedinputstream = ((BufferedInputStream) (obj));
            response2 = response1;
            obj = new BufferedInputStream(response1);
              goto _L15
            request1;
            if (bufferedinputstream == null)
            {
                break MISSING_BLOCK_LABEL_684;
            }
            bufferedinputstream.close();
            if (response2 == null)
            {
                break MISSING_BLOCK_LABEL_694;
            }
            response2.close();
            throw request1;
_L3:
            flag = true;
            if (true) goto _L2; else goto _L16
_L16:
        }

        private static String getRequestCookieString(org.jsoup.Connection.Request request1)
        {
            StringBuilder stringbuilder = new StringBuilder();
            boolean flag = true;
            request1 = request1.cookies().entrySet().iterator();
            while (request1.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)request1.next();
                if (!flag)
                {
                    stringbuilder.append("; ");
                } else
                {
                    flag = false;
                }
                stringbuilder.append((String)entry.getKey()).append('=').append((String)entry.getValue());
            }
            return stringbuilder.toString();
        }

        private static void serialiseRequestUrl(org.jsoup.Connection.Request request1)
            throws IOException
        {
            Object obj = request1.url();
            StringBuilder stringbuilder = new StringBuilder();
            boolean flag = true;
            stringbuilder.append(((URL) (obj)).getProtocol()).append("://").append(((URL) (obj)).getAuthority()).append(((URL) (obj)).getPath()).append("?");
            if (((URL) (obj)).getQuery() != null)
            {
                stringbuilder.append(((URL) (obj)).getQuery());
                flag = false;
            }
            obj = request1.data().iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                org.jsoup.Connection.KeyVal keyval = (org.jsoup.Connection.KeyVal)((Iterator) (obj)).next();
                if (!flag)
                {
                    stringbuilder.append('&');
                } else
                {
                    flag = false;
                }
                stringbuilder.append(URLEncoder.encode(keyval.key(), "UTF-8")).append('=').append(URLEncoder.encode(keyval.value(), "UTF-8"));
            }
            request1.url(new URL(stringbuilder.toString()));
            request1.data().clear();
        }

        private void setupFromConnection(HttpURLConnection httpurlconnection, org.jsoup.Connection.Response response1)
            throws IOException
        {
            method = org.jsoup.Connection.Method.valueOf(httpurlconnection.getRequestMethod());
            url = httpurlconnection.getURL();
            statusCode = httpurlconnection.getResponseCode();
            statusMessage = httpurlconnection.getResponseMessage();
            contentType = httpurlconnection.getContentType();
            processResponseHeaders(httpurlconnection.getHeaderFields());
            if (response1 != null)
            {
                httpurlconnection = response1.cookies().entrySet().iterator();
                do
                {
                    if (!httpurlconnection.hasNext())
                    {
                        break;
                    }
                    response1 = (java.util.Map.Entry)httpurlconnection.next();
                    if (!hasCookie((String)response1.getKey()))
                    {
                        cookie((String)response1.getKey(), (String)response1.getValue());
                    }
                } while (true);
            }
        }

        private static void writePost(Collection collection, OutputStream outputstream)
            throws IOException
        {
            outputstream = new OutputStreamWriter(outputstream, "UTF-8");
            boolean flag = true;
            collection = collection.iterator();
            while (collection.hasNext()) 
            {
                org.jsoup.Connection.KeyVal keyval = (org.jsoup.Connection.KeyVal)collection.next();
                if (!flag)
                {
                    outputstream.append('&');
                } else
                {
                    flag = false;
                }
                outputstream.write(URLEncoder.encode(keyval.key(), "UTF-8"));
                outputstream.write(61);
                outputstream.write(URLEncoder.encode(keyval.value(), "UTF-8"));
            }
            outputstream.close();
        }

        public String body()
        {
            Validate.isTrue(executed, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            String s;
            if (charset == null)
            {
                s = Charset.forName("UTF-8").decode(byteData).toString();
            } else
            {
                s = Charset.forName(charset).decode(byteData).toString();
            }
            byteData.rewind();
            return s;
        }

        public byte[] bodyAsBytes()
        {
            Validate.isTrue(executed, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            return byteData.array();
        }

        public String charset()
        {
            return charset;
        }

        public String contentType()
        {
            return contentType;
        }

        public volatile String cookie(String s)
        {
            return super.cookie(s);
        }

        public volatile Map cookies()
        {
            return super.cookies();
        }

        public volatile boolean hasCookie(String s)
        {
            return super.hasCookie(s);
        }

        public volatile boolean hasHeader(String s)
        {
            return super.hasHeader(s);
        }

        public volatile String header(String s)
        {
            return super.header(s);
        }

        public volatile Map headers()
        {
            return super.headers();
        }

        public volatile org.jsoup.Connection.Method method()
        {
            return super.method();
        }

        public Document parse()
            throws IOException
        {
            Validate.isTrue(executed, "Request must be executed (with .execute(), .get(), or .post() before parsing response");
            Document document = DataUtil.parseByteData(byteData, charset, url.toExternalForm(), req.parser());
            byteData.rewind();
            charset = document.outputSettings().charset().name();
            return document;
        }

        void processResponseHeaders(Map map)
        {
            Iterator iterator = map.entrySet().iterator();
label0:
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Object obj = (java.util.Map.Entry)iterator.next();
                map = (String)((java.util.Map.Entry) (obj)).getKey();
                if (map == null)
                {
                    continue;
                }
                obj = (List)((java.util.Map.Entry) (obj)).getValue();
                if (map.equalsIgnoreCase("Set-Cookie"))
                {
                    Iterator iterator1 = ((List) (obj)).iterator();
                    do
                    {
                        String s;
                        do
                        {
                            do
                            {
                                if (!iterator1.hasNext())
                                {
                                    continue label0;
                                }
                                map = (String)iterator1.next();
                            } while (map == null);
                            map = new TokenQueue(map);
                            s = map.chompTo("=").trim();
                            obj = map.consumeTo(";").trim();
                            map = ((Map) (obj));
                            if (obj == null)
                            {
                                map = "";
                            }
                        } while (s == null || s.length() <= 0);
                        cookie(s, map);
                    } while (true);
                }
                if (!((List) (obj)).isEmpty())
                {
                    header(map, (String)((List) (obj)).get(0));
                }
            } while (true);
        }

        public int statusCode()
        {
            return statusCode;
        }

        public String statusMessage()
        {
            return statusMessage;
        }

        public volatile URL url()
        {
            return super.url();
        }


        Response()
        {
            executed = false;
            numRedirects = 0;
        }

        private Response(Response response1)
            throws IOException
        {
            executed = false;
            numRedirects = 0;
            if (response1 != null)
            {
                numRedirects = response1.numRedirects + 1;
                if (numRedirects >= 20)
                {
                    throw new IOException(String.format("Too many redirects occurred trying to load URL %s", new Object[] {
                        response1.url()
                    }));
                }
            }
        }
    }


    private static final int HTTP_TEMP_REDIR = 307;
    private org.jsoup.Connection.Request req;
    private org.jsoup.Connection.Response res;

    private HttpConnection()
    {
        req = new Request();
        res = new Response();
    }

    public static Connection connect(String s)
    {
        HttpConnection httpconnection = new HttpConnection();
        httpconnection.url(s);
        return httpconnection;
    }

    public static Connection connect(URL url1)
    {
        HttpConnection httpconnection = new HttpConnection();
        httpconnection.url(url1);
        return httpconnection;
    }

    private static String encodeUrl(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.replaceAll(" ", "%20");
        }
    }

    public Connection cookie(String s, String s1)
    {
        req.cookie(s, s1);
        return this;
    }

    public Connection cookies(Map map)
    {
        Validate.notNull(map, "Cookie map must not be null");
        java.util.Map.Entry entry;
        for (map = map.entrySet().iterator(); map.hasNext(); req.cookie((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)map.next();
        }

        return this;
    }

    public Connection data(String s, String s1)
    {
        req.data(KeyVal.create(s, s1));
        return this;
    }

    public Connection data(Collection collection)
    {
        Validate.notNull(collection, "Data collection must not be null");
        org.jsoup.Connection.KeyVal keyval;
        for (collection = collection.iterator(); collection.hasNext(); req.data(keyval))
        {
            keyval = (org.jsoup.Connection.KeyVal)collection.next();
        }

        return this;
    }

    public Connection data(Map map)
    {
        Validate.notNull(map, "Data map must not be null");
        java.util.Map.Entry entry;
        for (map = map.entrySet().iterator(); map.hasNext(); req.data(KeyVal.create((String)entry.getKey(), (String)entry.getValue())))
        {
            entry = (java.util.Map.Entry)map.next();
        }

        return this;
    }

    public transient Connection data(String as[])
    {
        Validate.notNull(as, "Data key value pairs must not be null");
        boolean flag;
        if (as.length % 2 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Validate.isTrue(flag, "Must supply an even number of key value pairs");
        for (int i = 0; i < as.length; i += 2)
        {
            String s = as[i];
            String s1 = as[i + 1];
            Validate.notEmpty(s, "Data key must not be empty");
            Validate.notNull(s1, "Data value must not be null");
            req.data(KeyVal.create(s, s1));
        }

        return this;
    }

    public org.jsoup.Connection.Response execute()
        throws IOException
    {
        res = Response.execute(req);
        return res;
    }

    public Connection followRedirects(boolean flag)
    {
        req.followRedirects(flag);
        return this;
    }

    public Document get()
        throws IOException
    {
        req.method(org.jsoup.Connection.Method.GET);
        execute();
        return res.parse();
    }

    public Connection header(String s, String s1)
    {
        req.header(s, s1);
        return this;
    }

    public Connection ignoreContentType(boolean flag)
    {
        req.ignoreContentType(flag);
        return this;
    }

    public Connection ignoreHttpErrors(boolean flag)
    {
        req.ignoreHttpErrors(flag);
        return this;
    }

    public Connection maxBodySize(int i)
    {
        req.maxBodySize(i);
        return this;
    }

    public Connection method(org.jsoup.Connection.Method method1)
    {
        req.method(method1);
        return this;
    }

    public Connection parser(Parser parser1)
    {
        req.parser(parser1);
        return this;
    }

    public Document post()
        throws IOException
    {
        req.method(org.jsoup.Connection.Method.POST);
        execute();
        return res.parse();
    }

    public Connection referrer(String s)
    {
        Validate.notNull(s, "Referrer must not be null");
        req.header("Referer", s);
        return this;
    }

    public org.jsoup.Connection.Request request()
    {
        return req;
    }

    public Connection request(org.jsoup.Connection.Request request1)
    {
        req = request1;
        return this;
    }

    public org.jsoup.Connection.Response response()
    {
        return res;
    }

    public Connection response(org.jsoup.Connection.Response response1)
    {
        res = response1;
        return this;
    }

    public Connection timeout(int i)
    {
        req.timeout(i);
        return this;
    }

    public Connection url(String s)
    {
        Validate.notEmpty(s, "Must supply a valid URL");
        try
        {
            req.url(new URL(encodeUrl(s)));
        }
        catch (MalformedURLException malformedurlexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Malformed URL: ").append(s).toString(), malformedurlexception);
        }
        return this;
    }

    public Connection url(URL url1)
    {
        req.url(url1);
        return this;
    }

    public Connection userAgent(String s)
    {
        Validate.notNull(s, "User agent must not be null");
        req.header("User-Agent", s);
        return this;
    }

}
