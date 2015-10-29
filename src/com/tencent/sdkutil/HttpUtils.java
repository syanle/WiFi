// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.tencent.common.OpenConfig;
import com.tencent.jsutil.JsBridge;
import com.tencent.jsutil.JsConfig;
import com.tencent.mta.TencentStat;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import com.tencent.open.cgireport.ReportManager;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IRequestListener;
import com.tencent.tauth.QQToken;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.InvalidClassException;
import java.io.InvalidObjectException;
import java.io.NotActiveException;
import java.io.NotSerializableException;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.io.WriteAbortedException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.sdkutil:
//            Util, ServerSetting, JsonUtil, AsynLoadImg, 
//            AsynScaleCompressImage, TemporaryStorage

public class HttpUtils
{

    private static final String BOUNDRY = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f";
    private static final String ENDLINE = "\r\n";
    private static final int REQUEST_RETRY_TIME = 3;
    private static final int SET_CONNECTION_TIMEOUT = 15000;
    private static final int SET_SOCKET_TIMEOUT = 30000;
    private static final String TAG = "HttpUtils";
    private static String appId = "222222";
    private static String resultStr = "success";
    private Context context;
    private JsBridge mBridge;
    private QQToken mQQToken;

    public HttpUtils(Context context1, QQToken qqtoken)
    {
        context = context1;
        mBridge = JsBridge.getInstance(context, JsConfig.mTencentFileProtocolPath);
        mQQToken = qqtoken;
        appId = mQQToken.getAppId();
    }

    public static int compareVersion(String s, String s1)
    {
        if (s != null || s1 != null) goto _L2; else goto _L1
_L1:
        return 0;
_L2:
        String as[];
        String as1[];
        int i;
        if (s != null && s1 == null)
        {
            return 1;
        }
        if (s == null && s1 != null)
        {
            return -1;
        }
        as = s.split("\\.");
        as1 = s1.split("\\.");
        i = 0;
_L3:
        int j;
        int k;
        if (i >= as.length || i >= as1.length)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        j = Integer.parseInt(as[i]);
        k = Integer.parseInt(as1[i]);
        if (j < k)
        {
            return -1;
        }
        break MISSING_BLOCK_LABEL_117;
        if (as.length > i)
        {
            return 1;
        }
        try
        {
            j = as1.length;
        }
        catch (NumberFormatException numberformatexception)
        {
            return s.compareTo(s1);
        }
        if (j > i)
        {
            return -1;
        }
          goto _L1
        if (j > k)
        {
            return 1;
        }
        i++;
          goto _L3
    }

    public static String encodePostBody(Bundle bundle, String s)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        int j = bundle.size();
        Iterator iterator = bundle.keySet().iterator();
        int i = -1;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            i++;
            Object obj = bundle.get(s1);
            if (obj instanceof String)
            {
                stringbuilder.append((new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(s1).append("\"").append("\r\n").append("\r\n").append((String)obj).toString());
                if (i < j - 1)
                {
                    stringbuilder.append((new StringBuilder()).append("\r\n--").append(s).append("\r\n").toString());
                }
            }
        } while (true);
        return stringbuilder.toString();
    }

    public static String encodeUrl(Bundle bundle)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = bundle.keySet().iterator();
        boolean flag = true;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = (String)iterator.next();
            Object obj1 = bundle.get(((String) (obj)));
            if ((obj1 instanceof String) || (obj1 instanceof String[]))
            {
                if (obj1 instanceof String[])
                {
                    int i;
                    if (flag)
                    {
                        flag = false;
                    } else
                    {
                        stringbuilder.append("&");
                    }
                    stringbuilder.append((new StringBuilder()).append(URLEncoder.encode(((String) (obj)))).append("=").toString());
                    obj = (String[])bundle.getStringArray(((String) (obj)));
                    i = 0;
                    while (i < obj.length) 
                    {
                        if (i == 0)
                        {
                            stringbuilder.append(URLEncoder.encode(obj[i]));
                        } else
                        {
                            stringbuilder.append(URLEncoder.encode((new StringBuilder()).append(",").append(obj[i]).toString()));
                        }
                        i++;
                    }
                } else
                {
                    if (flag)
                    {
                        flag = false;
                    } else
                    {
                        stringbuilder.append("&");
                    }
                    stringbuilder.append((new StringBuilder()).append(URLEncoder.encode(((String) (obj)))).append("=").append(URLEncoder.encode(bundle.getString(((String) (obj))))).toString());
                }
            }
        } while (true);
        return stringbuilder.toString();
    }

    private static int getErrorCodeFromException(IOException ioexception)
    {
        if (ioexception instanceof CharConversionException)
        {
            return -20;
        }
        if (ioexception instanceof MalformedInputException)
        {
            return -21;
        }
        if (ioexception instanceof UnmappableCharacterException)
        {
            return -22;
        }
        if (ioexception instanceof HttpResponseException)
        {
            return -23;
        }
        if (ioexception instanceof ClosedChannelException)
        {
            return -24;
        }
        if (ioexception instanceof ConnectionClosedException)
        {
            return -25;
        }
        if (ioexception instanceof EOFException)
        {
            return -26;
        }
        if (ioexception instanceof FileLockInterruptionException)
        {
            return -27;
        }
        if (ioexception instanceof FileNotFoundException)
        {
            return -28;
        }
        if (ioexception instanceof HttpRetryException)
        {
            return -29;
        }
        if (ioexception instanceof ConnectTimeoutException)
        {
            return -7;
        }
        if (ioexception instanceof SocketTimeoutException)
        {
            return -8;
        }
        if (ioexception instanceof InvalidPropertiesFormatException)
        {
            return -30;
        }
        if (ioexception instanceof MalformedChunkCodingException)
        {
            return -31;
        }
        if (ioexception instanceof MalformedURLException)
        {
            return -3;
        }
        if (ioexception instanceof NoHttpResponseException)
        {
            return -32;
        }
        if (ioexception instanceof InvalidClassException)
        {
            return -33;
        }
        if (ioexception instanceof InvalidObjectException)
        {
            return -34;
        }
        if (ioexception instanceof NotActiveException)
        {
            return -35;
        }
        if (ioexception instanceof NotSerializableException)
        {
            return -36;
        }
        if (ioexception instanceof OptionalDataException)
        {
            return -37;
        }
        if (ioexception instanceof StreamCorruptedException)
        {
            return -38;
        }
        if (ioexception instanceof WriteAbortedException)
        {
            return -39;
        }
        if (ioexception instanceof ProtocolException)
        {
            return -40;
        }
        if (ioexception instanceof SSLHandshakeException)
        {
            return -41;
        }
        if (ioexception instanceof SSLKeyException)
        {
            return -42;
        }
        if (ioexception instanceof SSLPeerUnverifiedException)
        {
            return -43;
        }
        if (ioexception instanceof SSLProtocolException)
        {
            return -44;
        }
        if (ioexception instanceof BindException)
        {
            return -45;
        }
        if (ioexception instanceof ConnectException)
        {
            return -46;
        }
        if (ioexception instanceof NoRouteToHostException)
        {
            return -47;
        }
        if (ioexception instanceof PortUnreachableException)
        {
            return -48;
        }
        if (ioexception instanceof SyncFailedException)
        {
            return -49;
        }
        if (ioexception instanceof UTFDataFormatException)
        {
            return -50;
        }
        if (ioexception instanceof UnknownHostException)
        {
            return -51;
        }
        if (ioexception instanceof UnknownServiceException)
        {
            return -52;
        }
        if (ioexception instanceof UnsupportedEncodingException)
        {
            return -53;
        }
        return !(ioexception instanceof ZipException) ? -2 : -54;
    }

    public static String getFromUrl(String s)
    {
        StringBuffer stringbuffer = new StringBuffer();
        s = (HttpURLConnection)(new URL(s)).openConnection();
        s.setConnectTimeout(5000);
        s.setRequestMethod("GET");
        s.connect();
        s = new BufferedReader(new InputStreamReader(s.getInputStream()));
_L1:
        String s1 = s.readLine();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        stringbuffer.append(s1);
          goto _L1
        s;
        s.printStackTrace();
_L3:
        return stringbuffer.toString();
        s;
        s.printStackTrace();
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static HttpClient getHttpClient(Context context1, String s, String s1)
    {
        s1 = new SchemeRegistry();
        s1.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        BasicHttpParams basichttpparams;
        int i;
        int j;
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            try
            {
                Object obj = KeyStore.getInstance(KeyStore.getDefaultType());
                ((KeyStore) (obj)).load(null, null);
                obj = new CustomSSLSocketFactory(((KeyStore) (obj)));
                ((SSLSocketFactory) (obj)).setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                s1.register(new Scheme("https", ((org.apache.http.conn.scheme.SocketFactory) (obj)), 443));
            }
            catch (Exception exception)
            {
                s1.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
            }
        } else
        {
            s1.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        }
        basichttpparams = new BasicHttpParams();
        j = OpenConfig.a(context1, s).b("Common_HttpConnectionTimeout");
        i = j;
        if (j == 0)
        {
            i = 15000;
        }
        HttpConnectionParams.setConnectionTimeout(basichttpparams, i);
        j = OpenConfig.a(context1, s).b("Common_SocketConnectionTimeout");
        i = j;
        if (j == 0)
        {
            i = 30000;
        }
        HttpConnectionParams.setSoTimeout(basichttpparams, i);
        HttpProtocolParams.setVersion(basichttpparams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basichttpparams, "UTF-8");
        HttpProtocolParams.setUserAgent(basichttpparams, (new StringBuilder()).append("AndroidSDK_").append(android.os.Build.VERSION.SDK).append("_").append(Build.DEVICE).append("_").append(android.os.Build.VERSION.RELEASE).toString());
        s = new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, s1), basichttpparams);
        context1 = getProxy(context1);
        if (context1 != null)
        {
            context1 = new HttpHost(((NetworkProxy) (context1)).host, ((NetworkProxy) (context1)).port);
            s.getParams().setParameter("http.route.default-proxy", context1);
        }
        return s;
    }

    public static NetworkProxy getProxy(Context context1)
    {
        if (context1 == null)
        {
            return null;
        }
        Object obj = (ConnectivityManager)context1.getSystemService("connectivity");
        if (obj == null)
        {
            return null;
        }
        obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
        if (obj == null)
        {
            return null;
        }
        if (((NetworkInfo) (obj)).getType() == 0)
        {
            String s = getProxyHost(context1);
            int i = getProxyPort(context1);
            if (!TextUtils.isEmpty(s) && i >= 0)
            {
                return new NetworkProxy(s, i, null);
            }
        }
        return null;
    }

    private static String getProxyHost(Context context1)
    {
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            if (context1 != null)
            {
                String s = Proxy.getHost(context1);
                context1 = s;
                if (TextUtils.isEmpty(s))
                {
                    context1 = Proxy.getDefaultHost();
                }
                return context1;
            } else
            {
                return Proxy.getDefaultHost();
            }
        } else
        {
            return System.getProperty("http.proxyHost");
        }
    }

    private static int getProxyPort(Context context1)
    {
        int i = -1;
        if (android.os.Build.VERSION.SDK_INT >= 11) goto _L2; else goto _L1
_L1:
        if (context1 == null) goto _L4; else goto _L3
_L3:
        int k = Proxy.getPort(context1);
        i = k;
        if (k < 0)
        {
            i = Proxy.getDefaultPort();
        }
_L6:
        return i;
_L4:
        return Proxy.getDefaultPort();
_L2:
        context1 = System.getProperty("http.proxyPort");
        if (!TextUtils.isEmpty(context1))
        {
            int j;
            try
            {
                j = Integer.parseInt(context1);
            }
            // Misplaced declaration of an exception variable
            catch (Context context1)
            {
                return -1;
            }
            return j;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static boolean isQQBrowserAvailable(Context context1)
    {
        boolean flag1 = false;
        String s;
        Signature asignature[];
        boolean flag;
        boolean flag2;
        try
        {
            context1 = context1.getPackageManager().getPackageInfo("com.tencent.mtt", 64);
            s = ((PackageInfo) (context1)).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (Context context1)
        {
            return false;
        }
        flag = flag1;
        if (compareVersion(s, "4.3") < 0)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        flag = flag1;
        if (s.startsWith("4.4"))
        {
            break MISSING_BLOCK_LABEL_102;
        }
        asignature = ((PackageInfo) (context1)).signatures;
        flag = flag1;
        if (asignature == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        context1 = MessageDigest.getInstance("MD5");
        context1.update(asignature[0].toByteArray());
        asignature = Util.toHexString(context1.digest());
        context1.reset();
        flag2 = asignature.equals("d8391a394d4a179e6fe7bdb8a301258b");
        flag = flag1;
        if (flag2)
        {
            flag = true;
        }
        return flag;
        context1;
        context1.printStackTrace();
        return false;
    }

    public static boolean isWifiDataEnable(Context context1)
    {
        return ((ConnectivityManager)context1.getSystemService("connectivity")).getNetworkInfo(1).isConnectedOrConnecting();
    }

    private static void loadUrlWithBrowser(Context context1, String s, String s1, String s2)
    {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(s, s1));
        intent.setAction("android.intent.action.VIEW");
        intent.addFlags(0x40000000);
        intent.addFlags(0x10000000);
        intent.setData(Uri.parse(s2));
        context1.startActivity(intent);
    }

    public static boolean openBrowser(Context context1, String s)
    {
        boolean flag = isQQBrowserAvailable(context1);
        if (!flag) goto _L2; else goto _L1
_L1:
        loadUrlWithBrowser(context1, "com.tencent.mtt", "com.tencent.mtt.MainActivity", s);
          goto _L3
_L2:
        loadUrlWithBrowser(context1, "com.android.browser", "com.android.browser.BrowserActivity", s);
          goto _L3
        Exception exception;
        exception;
_L4:
        if (flag)
        {
            try
            {
                loadUrlWithBrowser(context1, "com.android.browser", "com.android.browser.BrowserActivity", s);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                try
                {
                    loadUrlWithBrowser(context1, "com.google.android.browser", "com.android.browser.BrowserActivity", s);
                }
                // Misplaced declaration of an exception variable
                catch (Exception exception)
                {
                    try
                    {
                        loadUrlWithBrowser(context1, "com.android.chrome", "com.google.android.apps.chrome.Main", s);
                    }
                    // Misplaced declaration of an exception variable
                    catch (Context context1)
                    {
                        return false;
                    }
                }
            }
        } else
        {
            try
            {
                loadUrlWithBrowser(context1, "com.google.android.browser", "com.android.browser.BrowserActivity", s);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                try
                {
                    loadUrlWithBrowser(context1, "com.android.chrome", "com.google.android.apps.chrome.Main", s);
                }
                // Misplaced declaration of an exception variable
                catch (Context context1)
                {
                    return false;
                }
            }
        }
        break; /* Loop/switch isn't completed */
        exception;
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public static Statistic openUrl(Context context1, String s, String s1, Bundle bundle)
    {
        if (context1 != null)
        {
            Object obj = (ConnectivityManager)context1.getSystemService("connectivity");
            if (obj != null)
            {
                obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
                if (obj == null || !((NetworkInfo) (obj)).isAvailable())
                {
                    resultStr = "network_unavailabe";
                    throw new NetworkUnavailableException("network unavailable");
                }
            }
        }
        HttpClient httpclient;
        int i;
        if (bundle != null)
        {
            bundle = new Bundle(bundle);
        } else
        {
            bundle = new Bundle();
        }
        bundle.getString("appid_for_getting_config");
        bundle.remove("appid_for_getting_config");
        httpclient = getHttpClient(context1, appId, s);
        if (s1.equals("GET"))
        {
            s1 = encodeUrl(bundle);
            i = s1.length();
            if (s.indexOf("?") == -1)
            {
                context1 = (new StringBuilder()).append(s).append("?").toString();
            } else
            {
                context1 = (new StringBuilder()).append(s).append("&").toString();
            }
            context1 = new HttpGet((new StringBuilder()).append(context1).append(s1).toString());
            context1.addHeader("Accept-Encoding", "gzip");
            i = 0 + i;
        } else
        if (s1.equals("POST"))
        {
            context1 = new HttpPost(s);
            context1.addHeader("Accept-Encoding", "gzip");
            s = new Bundle();
            Iterator iterator = bundle.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s3 = (String)iterator.next();
                Object obj1 = bundle.get(s3);
                if (obj1 instanceof byte[])
                {
                    s.putByteArray(s3, (byte[])(byte[])obj1);
                }
            } while (true);
            if (!bundle.containsKey("method"))
            {
                bundle.putString("method", s1);
            }
            context1.setHeader("Content-Type", "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
            context1.setHeader("Connection", "Keep-Alive");
            s1 = new ByteArrayOutputStream();
            s1.write("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
            s1.write(encodePostBody(bundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
            if (!s.isEmpty())
            {
                int k = s.size();
                s1.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
                bundle = s.keySet().iterator();
                i = -1;
                do
                {
                    if (!bundle.hasNext())
                    {
                        break;
                    }
                    String s2 = (String)bundle.next();
                    int j = i + 1;
                    s1.write((new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(s2).append("\"; filename=\"").append(s2).append("\"").append("\r\n").toString().getBytes());
                    s1.write("Content-Type: content/unknown\r\n\r\n".getBytes());
                    byte abyte0[] = s.getByteArray(s2);
                    if (abyte0 != null)
                    {
                        s1.write(abyte0);
                    }
                    i = j;
                    if (j < k - 1)
                    {
                        s1.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
                        i = j;
                    }
                } while (true);
            }
            s1.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n".getBytes());
            s = s1.toByteArray();
            i = s.length + 0;
            s1.close();
            context1.setEntity(new ByteArrayEntity(s));
        } else
        {
            context1 = null;
            i = 0;
        }
        context1 = httpclient.execute(context1);
        if (context1.getStatusLine().getStatusCode() == 200)
        {
            context1 = readHttpResponse(context1);
            resultStr = "success";
            return new Statistic(context1, i);
        } else
        {
            return new Statistic("http_status", 0);
        }
    }

    public static String openUrlForWapOnlineState(Context context1, String s, String s1)
    {
        new URL(s1);
        if (context1 != null)
        {
            Object obj = (ConnectivityManager)context1.getSystemService("connectivity");
            if (obj != null)
            {
                obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
                if (obj == null || !((NetworkInfo) (obj)).isAvailable())
                {
                    throw new NetworkUnavailableException("network unavailable");
                }
            }
        }
        context1 = getHttpClient(context1, s, null).execute(new HttpGet(s1));
        int i = context1.getStatusLine().getStatusCode();
        if (i == 200)
        {
            context1 = EntityUtils.toString(context1.getEntity());
            Log.d("Tencent", context1);
            s = new StringBuffer("{online:");
            if (context1 != null)
            {
                i = Integer.parseInt(context1.toString().split("=")[1].substring(0, 1));
            } else
            {
                i = 0;
            }
            s.append(i);
            s.append("}");
            return s.toString();
        } else
        {
            throw new HttpStatusException((new StringBuilder()).append("http status code error:").append(i).toString());
        }
    }

    private static String readHttpResponse(HttpResponse httpresponse)
    {
        byte abyte0[] = httpresponse.getEntity().getContent();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        httpresponse = httpresponse.getFirstHeader("Content-Encoding");
        if (httpresponse != null && httpresponse.getValue().toLowerCase().indexOf("gzip") > -1)
        {
            httpresponse = new GZIPInputStream(abyte0);
        } else
        {
            httpresponse = abyte0;
        }
        abyte0 = new byte[512];
        do
        {
            int i = httpresponse.read(abyte0);
            if (i != -1)
            {
                bytearrayoutputstream.write(abyte0, 0, i);
            } else
            {
                return new String(bytearrayoutputstream.toByteArray());
            }
        } while (true);
    }

    private static void reportStat(Context context1, QQToken qqtoken, String s)
    {
        if (s.indexOf("add_share") > -1 || s.indexOf("upload_pic") > -1 || s.indexOf("add_topic") > -1 || s.indexOf("set_user_face") > -1 || s.indexOf("add_t") > -1 || s.indexOf("add_pic_t") > -1 || s.indexOf("add_pic_url") > -1 || s.indexOf("add_video") > -1)
        {
            TencentStat.a(context1, qqtoken, "requireApi", new String[] {
                s
            });
        }
    }

    public static void requestAsync(final QQToken token, final Context ctx, final String graphPath, final Bundle params, final String httpMethod, final IRequestListener listener)
    {
        WnsClientLog.getInstance().v("openSDK_LOG", "OpenApi requestAsync");
        (new _cls4()).start();
    }

    private static JSONObject requestNative(QQToken qqtoken, Context context1, String s, Bundle bundle, String s1)
    {
        String s2;
        String s3;
        JSONObject jsonobject;
        Object obj;
        Statistic statistic;
        int i;
        int j;
        int k;
        long l;
        long l1;
        long l2;
        if (!s.toLowerCase().startsWith("http"))
        {
            s3 = (new StringBuilder()).append(ServerSetting.getInstance().getEnvUrl(context1, "https://openmobile.qq.com/")).append(s).toString();
            s2 = (new StringBuilder()).append(ServerSetting.getInstance().getEnvUrl(context1, "https://openmobile.qq.com/")).append(s).toString();
        } else
        {
            s2 = s;
            s3 = s;
        }
        reportStat(context1, qqtoken, s);
        s = null;
        l = SystemClock.elapsedRealtime();
        i = OpenConfig.a(context1, qqtoken.getAppId()).b("Common_HttpRetryCount");
        Log.d("OpenConfig_test", (new StringBuilder()).append("config 1:Common_HttpRetryCount            config_value:").append(i).append("   appid:").append(qqtoken.getAppId()).append("     url:").append(s2).toString());
        j = i;
        if (i == 0)
        {
            j = 3;
        }
        Log.d("OpenConfig_test", (new StringBuilder()).append("config 1:Common_HttpRetryCount            result_value:").append(j).append("   appid:").append(qqtoken.getAppId()).append("     url:").append(s2).toString());
        i = 0;
        k = i + 1;
        statistic = openUrl(context1, s3, s1, bundle);
        jsonobject = JsonUtil.parseJson(statistic.response);
        s = jsonobject;
        try
        {
            i = s.getInt("ret");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            i = -4;
        }
        try
        {
            l1 = statistic.reqSize;
            l2 = statistic.rspSize;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            ReportManager.getInstance().report(context1, s2, l, 0L, 0L, -4, qqtoken.getAppId());
            throw s;
        }
        ReportManager.getInstance().report(context1, s2, l, l1, l2, i, qqtoken.getAppId());
        return s;
        obj;
_L7:
        ((ConnectTimeoutException) (obj)).printStackTrace();
        i = -7;
        if (k >= j) goto _L2; else goto _L1
_L1:
        l = SystemClock.elapsedRealtime();
_L4:
        l2 = 0L;
        if (k < j)
        {
            break MISSING_BLOCK_LABEL_571;
        }
        l1 = 0L;
        break MISSING_BLOCK_LABEL_272;
_L2:
        ReportManager.getInstance().report(context1, s2, l, 0L, 0L, -7, qqtoken.getAppId());
        throw obj;
        obj;
_L5:
        ((SocketTimeoutException) (obj)).printStackTrace();
        i = -8;
        if (k < j)
        {
            l = SystemClock.elapsedRealtime();
        } else
        {
            ReportManager.getInstance().report(context1, s2, l, 0L, 0L, -8, qqtoken.getAppId());
            throw obj;
        }
        if (true) goto _L4; else goto _L3
_L3:
        s;
        s.printStackTrace();
        bundle = s.getMessage();
        try
        {
            i = Integer.parseInt(bundle.replace("http status code error:", ""));
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            bundle.printStackTrace();
            i = -9;
        }
        ReportManager.getInstance().report(context1, s2, l, 0L, 0L, i, qqtoken.getAppId());
        throw s;
        qqtoken;
        qqtoken.printStackTrace();
        throw qqtoken;
        s;
        s.printStackTrace();
        ReportManager.getInstance().report(context1, s2, l, 0L, 0L, -3, qqtoken.getAppId());
        throw s;
        s;
        s.printStackTrace();
        i = getErrorCodeFromException(s);
        ReportManager.getInstance().report(context1, s2, l, 0L, 0L, i, qqtoken.getAppId());
        throw s;
        obj;
          goto _L5
        obj;
        if (true) goto _L7; else goto _L6
_L6:
        for (i = k; false;)
        {
        }

        break MISSING_BLOCK_LABEL_219;
    }

    public static JSONObject upload(Context context1, String s, Bundle bundle)
    {
        if (context1 != null)
        {
            Object obj = (ConnectivityManager)context1.getSystemService("connectivity");
            if (obj != null)
            {
                obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
                if (obj == null || !((NetworkInfo) (obj)).isAvailable())
                {
                    throw new NetworkUnavailableException("network unavailable");
                }
            }
        }
        bundle = new Bundle(bundle);
        Object obj1 = bundle.getString("appid_for_getting_config");
        bundle.remove("appid_for_getting_config");
        context1 = getHttpClient(context1, ((String) (obj1)), s);
        s = new HttpPost(s);
        obj1 = new Bundle();
        Object obj2 = bundle.keySet().iterator();
        do
        {
            if (!((Iterator) (obj2)).hasNext())
            {
                break;
            }
            String s1 = (String)((Iterator) (obj2)).next();
            Object obj3 = bundle.get(s1);
            if (obj3 instanceof byte[])
            {
                ((Bundle) (obj1)).putByteArray(s1, (byte[])(byte[])obj3);
            }
        } while (true);
        s.setHeader("Content-Type", "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
        s.setHeader("Connection", "Keep-Alive");
        obj2 = new ByteArrayOutputStream();
        ((ByteArrayOutputStream) (obj2)).write("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
        ((ByteArrayOutputStream) (obj2)).write(encodePostBody(bundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
        if (!((Bundle) (obj1)).isEmpty())
        {
            int i1 = ((Bundle) (obj1)).size();
            ((ByteArrayOutputStream) (obj2)).write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
            bundle = ((Bundle) (obj1)).keySet().iterator();
            int i = -1;
            do
            {
                if (!bundle.hasNext())
                {
                    break;
                }
                String s2 = (String)bundle.next();
                int k = i + 1;
                ((ByteArrayOutputStream) (obj2)).write((new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(s2).append("\"; filename=\"").append("value.file").append("\"").append("\r\n").toString().getBytes());
                ((ByteArrayOutputStream) (obj2)).write("Content-Type: application/octet-stream\r\n\r\n".getBytes());
                ((ByteArrayOutputStream) (obj2)).write(((Bundle) (obj1)).getByteArray(s2));
                i = k;
                if (k < i1 - 1)
                {
                    ((ByteArrayOutputStream) (obj2)).write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
                    i = k;
                }
            } while (true);
        }
        ((ByteArrayOutputStream) (obj2)).write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n".getBytes());
        bundle = ((ByteArrayOutputStream) (obj2)).toByteArray();
        int j = bundle.length;
        ((ByteArrayOutputStream) (obj2)).close();
        s.setEntity(new ByteArrayEntity(bundle));
        context1 = context1.execute(s);
        int l = context1.getStatusLine().getStatusCode();
        if (l == 200)
        {
            return JsonUtil.parseJson((new Statistic(readHttpResponse(context1), j + 0)).response);
        } else
        {
            throw new HttpStatusException((new StringBuilder()).append("http status code error:").append(l).toString());
        }
    }

    public void AsynLoadImage(final String MessageJson, final String JScallback)
    {
        MessageJson = new JSONObject(MessageJson);
        String s = MessageJson.get("object_imageUrl").toString();
        (new AsynLoadImg()).save(s, new _cls1());
    }

    public void AsynscaleCompressImage(final String MessageJson, final String JScallback)
    {
        Object obj;
label0:
        {
            MessageJson = new JSONObject(MessageJson);
            Log.e("AsynscaleCompressImage", (new StringBuilder()).append("MessageJson:").append(MessageJson.toString()).toString());
            obj = MessageJson.get("object_imageUrl").toString();
            Log.e("AsynscaleCompressImage", (new StringBuilder()).append("imageUrl:").append(((String) (obj))).toString());
            Object obj1 = MessageJson.get("IsImageUrlArrayList");
            if (obj1 instanceof Boolean)
            {
                if (!((Boolean)obj1).booleanValue())
                {
                    break label0;
                }
                Log.e("AsynscaleCompressImage", "\u591A\u56FE\u538B\u7F29");
                obj1 = new ArrayList();
                obj = ((String) (obj)).split(";");
                int j = obj.length;
                for (int i = 0; i < j; i++)
                {
                    ((ArrayList) (obj1)).add(obj[i]);
                }

                AsynScaleCompressImage.batchScaleCompressImage(context, ((ArrayList) (obj1)), new _cls2());
            }
            return;
        }
        Log.e("AsynscaleCompressImage", "\u5355\u56FE\u538B\u7F29");
        AsynScaleCompressImage.scaleCompressImage(context, ((String) (obj)), new _cls3());
    }

    public String Base64encode(String s)
    {
        return Base64.encodeToString(s.getBytes(), 2);
    }

    public Bundle decodeUrl(String s)
    {
        Bundle bundle = new Bundle();
        if (s != null)
        {
            s = s.split("&");
            int j = s.length;
            for (int i = 0; i < j; i++)
            {
                String s1 = s[i];
                if (s1 == null)
                {
                    continue;
                }
                String as[] = s1.split("=");
                if (as.length == 2)
                {
                    bundle.putString(URLDecoder.decode(as[0]), URLDecoder.decode(as[1]));
                }
            }

        }
        return bundle;
    }

    public JSONObject decodeUrlToJson(JSONObject jsonobject, String s)
    {
        JSONObject jsonobject1 = jsonobject;
        if (jsonobject == null)
        {
            jsonobject1 = new JSONObject();
        }
        if (s != null)
        {
            jsonobject = s.split("&");
            int j = jsonobject.length;
            int i = 0;
            while (i < j) 
            {
                s = jsonobject[i].split("=");
                if (s.length == 2)
                {
                    try
                    {
                        jsonobject1.put(URLDecoder.decode(s[0]), URLDecoder.decode(s[1]));
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        s.printStackTrace();
                    }
                }
                i++;
            }
        }
        return jsonobject1;
    }

    public String encodeBundleUrlToString(Bundle bundle)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = bundle.keySet().iterator();
        boolean flag = true;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = (String)iterator.next();
            Object obj1 = bundle.get(((String) (obj)));
            if ((obj1 instanceof String) || (obj1 instanceof String[]))
            {
                if (obj1 instanceof String[])
                {
                    int i;
                    if (flag)
                    {
                        flag = false;
                    } else
                    {
                        stringbuilder.append("&");
                    }
                    stringbuilder.append((new StringBuilder()).append(URLEncoder.encode(((String) (obj)))).append("=").toString());
                    obj = (String[])bundle.getStringArray(((String) (obj)));
                    i = 0;
                    while (i < obj.length) 
                    {
                        if (i == 0)
                        {
                            stringbuilder.append(URLEncoder.encode(obj[i]));
                        } else
                        {
                            stringbuilder.append(URLEncoder.encode((new StringBuilder()).append(",").append(obj[i]).toString()));
                        }
                        i++;
                    }
                } else
                {
                    if (flag)
                    {
                        flag = false;
                    } else
                    {
                        stringbuilder.append("&");
                    }
                    stringbuilder.append((new StringBuilder()).append(URLEncoder.encode(((String) (obj)))).append("=").append(URLEncoder.encode(bundle.getString(((String) (obj))))).toString());
                }
            }
        } while (true);
        return stringbuilder.toString();
    }

    public String encodeUrl(String s)
    {
        if (s == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        s = new JSONObject(s);
        Iterator iterator = s.keys();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = iterator.next().toString();
            stringbuilder.append("&");
            stringbuilder.append((new StringBuilder()).append(URLEncoder.encode(s1)).append("=").toString());
            if (s.has(s1))
            {
                stringbuilder.append(URLEncoder.encode(s.get(s1).toString()));
            }
        } while (true);
        return stringbuilder.toString();
    }

    public String getUrl(String s, String s1)
    {
        s = new StringBuilder(s);
        Iterator iterator;
        String s2;
        boolean flag;
        try
        {
            s1 = new JSONObject(s1);
            iterator = s1.keys();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "jsonError";
        }
        flag = true;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s2 = (String)iterator.next();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        s.append((new StringBuilder()).append(URLEncoder.encode(s2)).append("=").append(URLEncoder.encode(s1.getString(s2))).toString());
        flag = false;
        continue; /* Loop/switch isn't completed */
        s.append((new StringBuilder()).append("&").append(URLEncoder.encode(s2)).append("=").append(URLEncoder.encode(s1.getString(s2))).toString());
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_26;
_L1:
        return s.toString();
    }

    public boolean openBrowser(String s)
    {
        boolean flag = isQQBrowserAvailable(context);
        if (!flag) goto _L2; else goto _L1
_L1:
        loadUrlWithBrowser(context, "com.tencent.mtt", "com.tencent.mtt.MainActivity", s);
          goto _L3
_L2:
        loadUrlWithBrowser(context, "com.android.browser", "com.android.browser.BrowserActivity", s);
          goto _L3
        Exception exception;
        exception;
_L4:
        if (flag)
        {
            try
            {
                loadUrlWithBrowser(context, "com.android.browser", "com.android.browser.BrowserActivity", s);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                try
                {
                    loadUrlWithBrowser(context, "com.google.android.browser", "com.android.browser.BrowserActivity", s);
                }
                // Misplaced declaration of an exception variable
                catch (Exception exception)
                {
                    try
                    {
                        loadUrlWithBrowser(context, "com.android.chrome", "com.google.android.apps.chrome.Main", s);
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        return false;
                    }
                }
            }
        } else
        {
            try
            {
                loadUrlWithBrowser(context, "com.google.android.browser", "com.android.browser.BrowserActivity", s);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                try
                {
                    loadUrlWithBrowser(context, "com.android.chrome", "com.google.android.apps.chrome.Main", s);
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    return false;
                }
            }
        }
        break; /* Loop/switch isn't completed */
        exception;
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public void request(String s, String s1, String s2, String s3, String s4)
    {
        long l;
        Log.d("httpUtils", (new StringBuilder()).append("request : method =").append(s).append("url= ").append(s1).append("key =").append(s2).toString());
        l = SystemClock.elapsedRealtime();
        s2 = (Bundle)TemporaryStorage.get(s2);
        if (s2.getString("action") != "get_wpastate") goto _L2; else goto _L1
_L1:
        s = s2.getString("oauth_consumer_key");
        s = new Statistic(openUrlForWapOnlineState(context, s, s1), 0);
_L4:
        s1 = TemporaryStorage.getId();
        if (s != null)
        {
            TemporaryStorage.set(s1, ((Statistic) (s)).response);
        }
        mBridge.executeMethod(s3, new String[] {
            s1, s4, resultStr
        });
        return;
_L2:
        try
        {
            s = openUrl(context, s1, s, s2);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            ReportManager.getInstance().report(context, s1, l, 0L, 0L, -8, mQQToken.getAppId());
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onSocketTimeoutException", s);
            resultStr = "socket_timeout";
            s = null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s2 = s.getMessage();
            int i;
            try
            {
                i = Integer.parseInt(s2.replace("http status code error:", ""));
            }
            // Misplaced declaration of an exception variable
            catch (String s2)
            {
                s2.printStackTrace();
                i = -9;
                resultStr = "http_status";
            }
            ReportManager.getInstance().report(context, s1, l, 0L, 0L, i, mQQToken.getAppId());
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onHttpStatusException", s);
            resultStr = "http_status";
            s = null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onNetworkUnavailableException", s);
            resultStr = "network_unavailabe";
            s = null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync MalformedURLException", s);
            ReportManager.getInstance().report(context, s1, l, 0L, 0L, -3, mQQToken.getAppId());
            resultStr = "malformed_url";
            s = null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            int j = getErrorCodeFromException(s);
            ReportManager.getInstance().report(context, s1, l, 0L, 0L, j, mQQToken.getAppId());
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync IOException", s);
            resultStr = "io";
            s = null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onUnknowException", s);
            resultStr = "unknow";
            s = null;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }




    private class CustomSSLSocketFactory extends SSLSocketFactory
    {
        private class MyX509TrustManager
            implements X509TrustManager
        {

            X509TrustManager sunJSSEX509TrustManager;

            public void checkClientTrusted(X509Certificate ax509certificate[], String s)
            {
                try
                {
                    sunJSSEX509TrustManager.checkClientTrusted(ax509certificate, s);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (X509Certificate ax509certificate[])
                {
                    return;
                }
            }

            public void checkServerTrusted(X509Certificate ax509certificate[], String s)
            {
                try
                {
                    sunJSSEX509TrustManager.checkServerTrusted(ax509certificate, s);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (X509Certificate ax509certificate[])
                {
                    return;
                }
            }

            public X509Certificate[] getAcceptedIssuers()
            {
                return sunJSSEX509TrustManager.getAcceptedIssuers();
            }

            MyX509TrustManager()
            {
                Object obj;
                int i;
                try
                {
                    obj = KeyStore.getInstance("JKS");
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    obj = null;
                }
                if (obj != null)
                {
                    ((KeyStore) (obj)).load(new FileInputStream("trustedCerts"), "passphrase".toCharArray());
                    TrustManagerFactory trustmanagerfactory = TrustManagerFactory.getInstance("SunX509", "SunJSSE");
                    trustmanagerfactory.init(((KeyStore) (obj)));
                    obj = trustmanagerfactory.getTrustManagers();
                } else
                {
                    obj = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                    ((TrustManagerFactory) (obj)).init((KeyStore)null);
                    obj = ((TrustManagerFactory) (obj)).getTrustManagers();
                }
                for (i = 0; i < obj.length; i++)
                {
                    if (obj[i] instanceof X509TrustManager)
                    {
                        sunJSSEX509TrustManager = (X509TrustManager)obj[i];
                        return;
                    }
                }

                throw new Exception("Couldn't initialize");
            }
        }


        private SSLContext sslContext;

        public Socket createSocket()
        {
            return sslContext.getSocketFactory().createSocket();
        }

        public Socket createSocket(Socket socket, String s, int i, boolean flag)
        {
            return sslContext.getSocketFactory().createSocket(socket, s, i, flag);
        }

        public CustomSSLSocketFactory(KeyStore keystore)
        {
            super(keystore);
            sslContext = SSLContext.getInstance("TLS");
            try
            {
                keystore = new MyX509TrustManager();
            }
            // Misplaced declaration of an exception variable
            catch (KeyStore keystore)
            {
                keystore = null;
            }
            sslContext.init(null, new TrustManager[] {
                keystore
            }, null);
        }
    }


    private class NetworkProxy
    {

        public final String host;
        public final int port;

        private NetworkProxy(String s, int i)
        {
            host = s;
            port = i;
        }

        NetworkProxy(String s, int i, _cls1 _pcls1)
        {
            this(s, i);
        }
    }


    private class Statistic
    {

        public long reqSize;
        public String response;
        public long rspSize;

        public Statistic(String s, int i)
        {
            response = s;
            reqSize = i;
            if (response != null)
            {
                rspSize = response.length();
            }
        }
    }


    private class _cls4 extends Thread
    {

        final Context val$ctx;
        final String val$graphPath;
        final String val$httpMethod;
        final IRequestListener val$listener;
        final Object val$object;
        final Bundle val$params;
        final QQToken val$token;

        public void run()
        {
            JSONObject jsonobject = HttpUtils.requestNative(token, ctx, graphPath, params, httpMethod);
            if (listener != null)
            {
                listener.onComplete(jsonobject, object);
                WnsClientLog.getInstance().d("openSDK_LOG", "OpenApi onComplete");
            }
_L2:
            return;
            Object obj;
            obj;
            if (listener == null) goto _L2; else goto _L1
_L1:
            listener.onMalformedURLException(((MalformedURLException) (obj)), object);
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync MalformedURLException", ((Throwable) (obj)));
            return;
            obj;
            if (listener == null) goto _L2; else goto _L3
_L3:
            listener.onConnectTimeoutException(((ConnectTimeoutException) (obj)), object);
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onConnectTimeoutException", ((Throwable) (obj)));
            return;
            obj;
            if (listener == null) goto _L2; else goto _L4
_L4:
            listener.onSocketTimeoutException(((SocketTimeoutException) (obj)), object);
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onSocketTimeoutException", ((Throwable) (obj)));
            return;
            obj;
            if (listener == null) goto _L2; else goto _L5
_L5:
            listener.onNetworkUnavailableException(((NetworkUnavailableException) (obj)), object);
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onNetworkUnavailableException", ((Throwable) (obj)));
            return;
            obj;
            if (listener == null) goto _L2; else goto _L6
_L6:
            listener.onHttpStatusException(((HttpStatusException) (obj)), object);
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onHttpStatusException", ((Throwable) (obj)));
            return;
            obj;
            if (listener == null) goto _L2; else goto _L7
_L7:
            listener.onIOException(((IOException) (obj)), object);
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync IOException", ((Throwable) (obj)));
            return;
            obj;
            if (listener == null) goto _L2; else goto _L8
_L8:
            listener.onJSONException(((JSONException) (obj)), object);
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync JSONException", ((Throwable) (obj)));
            return;
            obj;
            if (listener != null)
            {
                listener.onUnknowException(((Exception) (obj)), object);
                WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onUnknowException", ((Throwable) (obj)));
                return;
            }
              goto _L2
        }

        _cls4()
        {
            token = qqtoken;
            ctx = context1;
            graphPath = s;
            params = bundle;
            httpMethod = s1;
            listener = irequestlistener;
            object = obj;
            super();
        }
    }


    private class _cls1
        implements AsynLoadImg.AsynLoadImgBack
    {

        final HttpUtils this$0;
        final String val$JScallback;
        final JSONObject val$MessageJson;

        public void batchSaved(int i, ArrayList arraylist)
        {
        }

        public void saved(int i, String s)
        {
            JSONObject jsonobject;
            jsonobject = MessageJson;
            if (i != 0)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            jsonobject.put("ImageLocalPath", s);
            jsonobject.put("download_ret", "download_success");
_L1:
            jsonobject.put("checkedflag", "checked");
            JsBridge.getInstance(context, "file:///android_asset/tencent/js/tencent.html").executeMethod(JScallback, new String[] {
                jsonobject.toString()
            });
            return;
            try
            {
                jsonobject.put("download_ret", "download-fail");
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                WnsClientLog.getInstance().d("HttpUtils", s.toString());
                return;
            }
              goto _L1
        }

        _cls1()
        {
            this$0 = HttpUtils.this;
            MessageJson = jsonobject;
            JScallback = s;
            super();
        }
    }


    private class _cls2
        implements AsynLoadImg.AsynLoadImgBack
    {

        final HttpUtils this$0;
        final String val$JScallback;
        final JSONObject val$MessageJson;

        public void batchSaved(int i, ArrayList arraylist)
        {
            JSONObject jsonobject = MessageJson;
            if (i != 0) goto _L2; else goto _L1
_L1:
            String s;
            s = "";
            i = 0;
_L10:
            if (i >= arraylist.size()) goto _L4; else goto _L3
_L3:
            if (i != arraylist.size() - 1) goto _L6; else goto _L5
_L5:
            s = (new StringBuilder()).append(s).append((String)arraylist.get(i)).toString();
              goto _L7
_L6:
            try
            {
                s = (new StringBuilder()).append(s).append((String)arraylist.get(i)).append(";").toString();
            }
            // Misplaced declaration of an exception variable
            catch (ArrayList arraylist)
            {
                WnsClientLog.getInstance().d("HttpUtils", arraylist.toString());
                return;
            }
              goto _L7
_L4:
            jsonobject.put("ImageLocalPath", s);
            jsonobject.put("compress_ret", "compress_success");
_L8:
            jsonobject.put("checkedflag", "checked");
            JsBridge.getInstance(context, "file:///android_asset/tencent/js/tencent.html").executeMethod(JScallback, new String[] {
                jsonobject.toString()
            });
            return;
_L2:
            jsonobject.put("compress_ret", "compress_fail");
            if (true) goto _L8; else goto _L7
_L7:
            i++;
            if (true) goto _L10; else goto _L9
_L9:
        }

        public void saved(int i, String s)
        {
        }

        _cls2()
        {
            this$0 = HttpUtils.this;
            MessageJson = jsonobject;
            JScallback = s;
            super();
        }
    }


    private class _cls3
        implements AsynLoadImg.AsynLoadImgBack
    {

        final HttpUtils this$0;
        final String val$JScallback;
        final JSONObject val$MessageJson;

        public void batchSaved(int i, ArrayList arraylist)
        {
        }

        public void saved(int i, String s)
        {
            JSONObject jsonobject;
            jsonobject = MessageJson;
            if (i != 0)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            jsonobject.put("ImageLocalPath", s);
            jsonobject.put("compress_ret", "compress_success");
_L1:
            jsonobject.put("checkedflag", "checked");
            JsBridge.getInstance(context, "file:///android_asset/tencent/js/tencent.html").executeMethod(JScallback, new String[] {
                jsonobject.toString()
            });
            return;
            try
            {
                jsonobject.put("compress_ret", "compress_fail");
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                WnsClientLog.getInstance().d("HttpUtils", s.toString());
                return;
            }
              goto _L1
        }

        _cls3()
        {
            this$0 = HttpUtils.this;
            MessageJson = jsonobject;
            JScallback = s;
            super();
        }
    }

}
