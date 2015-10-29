// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.net;

import android.os.AsyncTask;
import com.pubinfo.wifi_core.core.data.DataObject;
import com.pubinfo.wifi_core.core.data.HttpConf;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
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
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.pubinfo.wifi_core.core.net:
//            HttpManager, XmlParser, XMLData

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
    private static final String USER_AGENT = "CDMA+WLAN";
    private static final String USRNAME_KEY = "UserName";
    public static CookieStore mCookieStore = null;
    private String account;
    private String apZone;
    private boolean mBTimeOut;
    private List mListParams;
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
_L6:
        if (i < list.size()) goto _L4; else goto _L3
_L3:
        s4 = s3;
_L2:
        if (s4 == "")
        {
            s = (new StringBuilder(String.valueOf(s))).append(s1).append(s2).toString();
        } else
        {
            s = (new StringBuilder(String.valueOf(s))).append(s1).append(s2).append("?").append(s4).toString();
        }
        s = new HttpGet(s);
        s1 = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s1, 30000);
        HttpConnectionParams.setSoTimeout(s1, 30000);
        s1 = new DefaultHttpClient(s1);
        try
        {
            mStrResult = EntityUtils.toString(s1.execute(s).getEntity());
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
        break MISSING_BLOCK_LABEL_303;
_L4:
        s4 = s3;
        if (i != 0)
        {
            s4 = (new StringBuilder(String.valueOf(s3))).append("&").toString();
        }
        s3 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s4))).append(((DataObject)list.get(i)).getKey()).toString()))).append("=").toString()))).append(((DataObject)list.get(i)).getValue()).toString();
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        mBTimeOut = true;
        return;
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

    public abstract void taskexecute(String s, boolean flag)
        throws Exception;














}
