// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.util;

import android.net.Uri;
import android.util.Log;
import im.yixin.sdk.api.IYXAPI;
import im.yixin.sdk.api.YXAPIFactory;
import im.yixin.sdk.api.YXFileMessageData;
import im.yixin.sdk.api.YXImageMessageData;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.api.YXMusicMessageData;
import im.yixin.sdk.api.YXTextMessageData;
import im.yixin.sdk.api.YXVideoMessageData;
import im.yixin.sdk.api.YXWebPageMessageData;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

// Referenced classes of package im.yixin.sdk.util:
//            SDKLogger

public class SDKHttpUtils
{

    private static final String DEFAULT_AGENT = "yixin_sdk_httputils/0.00";
    private static final String ERROR_LOG_URL = "http://open.yixin.im/sdk/log?log=";
    private static final String TAG = "SDKHttpUtils";
    private static SDKHttpUtils instance;
    private DefaultHttpClient client;

    private SDKHttpUtils()
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 20000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 60000);
        HttpConnectionParams.setSocketBufferSize(basichttpparams, 8192);
        HttpProtocolParams.setUseExpectContinue(basichttpparams, true);
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        client = new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, schemeregistry), basichttpparams);
    }

    private HttpEntity getEntity(String s, Map map)
        throws Exception
    {
        s = new HttpGet(s);
        s.setHeader("User-Agent", "yixin_sdk_httputils/0.00");
        if (map != null)
        {
            String s1;
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); s.setHeader(s1, (String)map.get(s1)))
            {
                s1 = (String)iterator.next();
            }

        }
        s = client.execute(s);
        map = s.getStatusLine();
        if (map == null)
        {
            try
            {
                Log.e("SDKHttpUtils", "StatusLine is null");
                throw new Exception("SDKHttpUtils getEntity StatusLine is null");
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Log.e("SDKHttpUtils", "SDKHttpUtils getEntity data error", s);
            }
            throw s;
        }
        int i = map.getStatusCode();
        if (i >= 200 && i <= 300)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        throw new Exception((new StringBuilder()).append("SDKHttpUtils getEntity statusCode=").append(i).toString());
        s = s.getEntity();
        return s;
    }

    public static SDKHttpUtils getInstance()
    {
        im/yixin/sdk/util/SDKHttpUtils;
        JVM INSTR monitorenter ;
        SDKHttpUtils sdkhttputils;
        if (instance == null)
        {
            instance = new SDKHttpUtils();
        }
        sdkhttputils = instance;
        im/yixin/sdk/util/SDKHttpUtils;
        JVM INSTR monitorexit ;
        return sdkhttputils;
        Exception exception;
        exception;
        throw exception;
    }

    public String get(String s, Map map)
        throws Exception
    {
        try
        {
            s = EntityUtils.toString(getEntity(s, map));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Log.e("SDKHttpUtils", "SDKHttpUtils get data error", s);
            throw s;
        }
        return s;
    }

    public String get4ErrorLog(Class class1, Class class2, String s)
    {
        s = (new StringBuilder()).append("check error ").append(s).toString();
        SDKLogger.e(class1, s);
        class1 = new StringBuilder();
        class1.append("android").append(android.os.Build.VERSION.RELEASE).append(";");
        class1.append("sdk").append(10000L).append(";");
        IYXAPI iyxapi = YXAPIFactory.getInstance();
        if (iyxapi != null)
        {
            class1.append(iyxapi.getAppId()).append(";");
        }
        if (class2 != im/yixin/sdk/api/YXFileMessageData) goto _L2; else goto _L1
_L1:
        class1.append("file");
_L4:
        class1.append(";");
        class1.append(s);
        try
        {
            class2 = get((new StringBuilder()).append("http://open.yixin.im/sdk/log?log=").append(Uri.encode(class1.toString())).toString(), null);
        }
        // Misplaced declaration of an exception variable
        catch (Class class2)
        {
            Log.e("SDKHttpUtils", (new StringBuilder()).append("SDKHttpUtils getStream error: ").append(class1.toString()).toString(), class2);
            return null;
        }
        return class2;
_L2:
        if (class2 == im/yixin/sdk/api/YXTextMessageData)
        {
            class1.append("text");
        } else
        if (class2 == im/yixin/sdk/api/YXImageMessageData)
        {
            class1.append("image");
        } else
        if (class2 == im/yixin/sdk/api/YXMusicMessageData)
        {
            class1.append("music");
        } else
        if (class2 == im/yixin/sdk/api/YXVideoMessageData)
        {
            class1.append("video");
        } else
        if (class2 == im/yixin/sdk/api/YXWebPageMessageData)
        {
            class1.append("webpage");
        } else
        if (class2 == im/yixin/sdk/api/YXMessage)
        {
            class1.append("message");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String get4ErrorLog(Class class1, String s)
    {
        return get4ErrorLog(class1, class1, s);
    }
}
