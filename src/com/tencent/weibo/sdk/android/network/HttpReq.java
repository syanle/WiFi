// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.network;

import android.os.AsyncTask;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.apache.commons.httpclient.HostConfiguration;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.tencent.weibo.sdk.android.network:
//            ReqParam, HttpCallback, HttpService

public abstract class HttpReq extends AsyncTask
{
    public static class UTF8PostMethod extends PostMethod
    {

        public String getRequestCharSet()
        {
            return "UTF-8";
        }

        public UTF8PostMethod(String s)
        {
            super(s);
        }
    }


    private final String GET = "GET";
    private final String POST = "POST";
    protected HttpCallback mCallBack;
    protected String mHost;
    protected String mMethod;
    protected ReqParam mParam;
    protected int mPort;
    private int mServiceTag;
    protected String mUrl;

    public HttpReq()
    {
        mHost = null;
        mPort = 8088;
        mUrl = null;
        mMethod = null;
        mParam = new ReqParam();
        mCallBack = null;
        mServiceTag = -1;
    }

    public static String decode(String s)
    {
        if (s == null)
        {
            return "";
        }
        try
        {
            s = URLDecoder.decode(s, "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new RuntimeException(s.getMessage(), s);
        }
        return s;
    }

    private InputStream picMethod()
    {
        Object obj;
        Object obj1;
        DefaultHttpClient defaulthttpclient;
        HttpPost httppost;
        ByteArrayOutputStream bytearrayoutputstream;
        defaulthttpclient = new DefaultHttpClient();
        obj1 = null;
        httppost = new HttpPost(mUrl);
        bytearrayoutputstream = new ByteArrayOutputStream();
        obj = mParam.toString();
        httppost.setHeader("Content-Type", (new StringBuilder(String.valueOf("multipart/form-data"))).append("; boundary=").append("---------------------------7da2137580612").toString());
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (((String) (obj)).equals("")) goto _L2; else goto _L3
_L3:
        byte abyte0[];
        int j;
        abyte0 = ((String) (obj)).split("&");
        j = abyte0.length;
        int i = 0;
_L13:
        if (i < j) goto _L5; else goto _L4
_L4:
        obj = new StringBuilder();
        ((StringBuilder) (obj)).append("-----------------------------7da2137580612\r\n");
        ((StringBuilder) (obj)).append("Content-Disposition:form-data; name=\"pic\"; filename=\"123456.jpg\"\r\n");
        ((StringBuilder) (obj)).append("Content-Type:image/jpeg\r\n\r\n");
        bytearrayoutputstream.write(((StringBuilder) (obj)).toString().getBytes("utf-8"));
        obj = ((String)mParam.getmParams().get("pic")).toCharArray();
        abyte0 = new byte[obj.length];
        i = 0;
_L15:
        if (i < obj.length)
        {
            break MISSING_BLOCK_LABEL_445;
        }
        bytearrayoutputstream.write(abyte0);
        bytearrayoutputstream.write("---------------------------7da2137580612\r\n".getBytes("utf-8"));
_L2:
        bytearrayoutputstream.write("-----------------------------7da2137580612--\r\n".getBytes("utf-8"));
        httppost.setEntity(new ByteArrayEntity(bytearrayoutputstream.toByteArray()));
        bytearrayoutputstream.close();
        obj = defaulthttpclient.execute(httppost);
        if (((HttpResponse) (obj)).getStatusLine().getStatusCode() == 200) goto _L7; else goto _L6
_L6:
        readHttpResponse(((HttpResponse) (obj)));
        return null;
_L5:
        obj = abyte0[i];
        if (obj == null) goto _L9; else goto _L8
_L8:
        if (((String) (obj)).equals("") || ((String) (obj)).indexOf("=") <= -1) goto _L9; else goto _L10
_L10:
        String as[] = ((String) (obj)).split("=");
        if (as.length != 2) goto _L12; else goto _L11
_L11:
        obj = decode(as[1]);
_L14:
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("-----------------------------7da2137580612\r\n");
        stringbuilder.append((new StringBuilder("Content-Disposition:form-data; name=\"")).append(as[0]).append("\"").append("\r\n").toString());
        stringbuilder.append("\r\n");
        stringbuilder.append(((String) (obj)));
        stringbuilder.append("\r\n");
        bytearrayoutputstream.write(stringbuilder.toString().getBytes("utf-8"));
          goto _L9
_L7:
        try
        {
            obj = readHttpResponse(((HttpResponse) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = obj1;
        }
        return ((InputStream) (obj));
_L9:
        i++;
          goto _L13
_L12:
        obj = "";
          goto _L14
        abyte0[i] = (byte)obj[i];
        i++;
          goto _L15
    }

    private static InputStream readHttpResponse(HttpResponse httpresponse)
    {
        InputStream inputstream;
        InputStream inputstream1;
        Object obj;
        obj = httpresponse.getEntity();
        inputstream1 = null;
        inputstream = null;
        obj = ((HttpEntity) (obj)).getContent();
        inputstream = ((InputStream) (obj));
        inputstream1 = ((InputStream) (obj));
        Header header = httpresponse.getFirstHeader("Content-Encoding");
        httpresponse = ((HttpResponse) (obj));
        if (header == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        httpresponse = ((HttpResponse) (obj));
        inputstream = ((InputStream) (obj));
        inputstream1 = ((InputStream) (obj));
        if (header.getValue().toLowerCase().indexOf("gzip") <= -1)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        inputstream = ((InputStream) (obj));
        inputstream1 = ((InputStream) (obj));
        httpresponse = new GZIPInputStream(((InputStream) (obj)));
        return httpresponse;
        httpresponse;
_L2:
        return inputstream;
        httpresponse;
        inputstream = inputstream1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void addParam(String s, Object obj)
    {
        mParam.addParam(s, obj);
    }

    public void addParam(String s, String s1)
    {
        mParam.addParam(s, s1);
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient Object doInBackground(Void avoid[])
    {
        try
        {
            avoid = ((Void []) (runReq()));
        }
        // Misplaced declaration of an exception variable
        catch (Void avoid[])
        {
            avoid.printStackTrace();
            return null;
        }
        return avoid;
    }

    protected HttpCallback getCallBack()
    {
        return mCallBack;
    }

    public int getServiceTag()
    {
        return mServiceTag;
    }

    protected void onCancelled()
    {
        if (mCallBack != null)
        {
            mCallBack.onResult(null);
        }
        HttpService.getInstance().onReqFinish(this);
    }

    protected void onPostExecute(Object obj)
    {
        if (mCallBack != null)
        {
            mCallBack.onResult(obj);
        }
        HttpService.getInstance().onReqFinish(this);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
    }

    protected abstract Object processResponse(InputStream inputstream)
        throws Exception;

    public Object runReq()
        throws Exception
    {
        HttpClient httpclient = new HttpClient();
        Object obj;
        int i;
        if (mMethod.equals("GET"))
        {
            mUrl = (new StringBuilder(String.valueOf(mUrl))).append("?").append(mParam.toString().substring(0, mParam.toString().length() - 1)).toString();
            obj = new GetMethod(mUrl);
        } else
        if (mMethod.equals("POST"))
        {
            if (mParam.getmParams().get("pic") != null)
            {
                return processResponse(picMethod());
            }
            obj = new UTF8PostMethod(mUrl);
        } else
        {
            throw new Exception("unrecognized http method");
        }
        httpclient.getHostConfiguration().setHost(mHost, mPort, "https");
        ((HttpMethod) (obj)).setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        setReq(((HttpMethod) (obj)));
        i = httpclient.executeMethod(((HttpMethod) (obj)));
        Log.d("result", (new StringBuilder(String.valueOf(i))).toString());
        if (i != 200)
        {
            return null;
        } else
        {
            return processResponse(((HttpMethod) (obj)).getResponseBodyAsStream());
        }
    }

    public void setParam(ReqParam reqparam)
    {
        mParam = reqparam;
    }

    protected abstract void setReq(HttpMethod httpmethod)
        throws Exception;

    public void setServiceTag(int i)
    {
        mServiceTag = i;
    }
}
