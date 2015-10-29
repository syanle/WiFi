// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import java.io.File;

// Referenced classes of package com.tencent.tauth:
//            IDownloadFileFromWeiyunStatus, Tencent

public class DownloadFileFromWeiyun
{

    private static final int DOWNLOAD_GETPERMISSION_SUCCESS = 0;
    private static final String DOWNLOAD_MUSIC_URL = "https://openmobile.qq.com/weiyun/download_music";
    private static final String DOWNLOAD_PIC_URL = "https://openmobile.qq.com/weiyun/download_photo";
    private static final int DOWNLOAD_STATUS_ERROR = 3;
    private static final int DOWNLOAD_STATUS_PROGRESS = 2;
    private static final int DOWNLOAD_STATUS_SUCCESS = 1;
    private static final String DOWNLOAD_THUMB_URL = "https://openmobile.qq.com/weiyun/get_photo_thumb";
    private static final String DOWNLOAD_VIDEO_URL = "https://openmobile.qq.com/weiyun/download_video";
    private static final String oauth_consumer_key = "222222";
    private int MAX_ERROR_TIMES;
    private int current_actiontype;
    private String dir;
    private String dl_cookie_name;
    private String dl_cookie_value;
    private String dl_encrypt_url;
    private String dl_svr_host;
    private int dl_svr_port;
    private String dl_thumb_size;
    private boolean isOriginal;
    private String mFileid;
    private String mFilename;
    private long mFilesize;
    private Handler mHandler;
    private IDownloadFileFromWeiyunStatus mListener;
    private String mRequestUrl;
    private Tencent mTencent;
    private String mThumb;

    public DownloadFileFromWeiyun(Tencent tencent, String s, int i, int j, String s1, String s2, IDownloadFileFromWeiyunStatus idownloadfilefromweiyunstatus)
    {
        MAX_ERROR_TIMES = 10;
        mHandler = new _cls1(Looper.getMainLooper());
        mFileid = (new StringBuilder()).append(s).append("").toString();
        mListener = idownloadfilefromweiyunstatus;
        mFilesize = j;
        mFilename = s2;
        isOriginal = true;
        mTencent = tencent;
        dir = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(s1).toString();
        tencent = new File(dir);
        if (!tencent.exists())
        {
            tencent.mkdirs();
        }
        current_actiontype = i;
        switch (current_actiontype)
        {
        case 1003: 
        default:
            return;

        case 1001: 
            mRequestUrl = "https://openmobile.qq.com/weiyun/download_photo";
            return;

        case 1002: 
            mRequestUrl = "https://openmobile.qq.com/weiyun/download_music";
            return;

        case 1004: 
            mRequestUrl = "https://openmobile.qq.com/weiyun/download_video";
            break;
        }
    }

    public DownloadFileFromWeiyun(Tencent tencent, String s, String s1, String s2, String s3, IDownloadFileFromWeiyunStatus idownloadfilefromweiyunstatus)
    {
        MAX_ERROR_TIMES = 10;
        mHandler = new _cls1(Looper.getMainLooper());
        mFileid = (new StringBuilder()).append(s).append("").toString();
        mThumb = s1;
        mListener = idownloadfilefromweiyunstatus;
        mFilename = (new StringBuilder()).append("thumb__").append(s3).toString();
        mTencent = tencent;
        isOriginal = false;
        dir = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(s2).toString();
        tencent = new File(dir);
        if (!tencent.exists())
        {
            tencent.mkdirs();
        }
        current_actiontype = 1001;
        mRequestUrl = "https://openmobile.qq.com/weiyun/get_photo_thumb";
    }

    private void doDownload()
    {
        (new _cls3()).start();
    }

    private void getDownloadPermission()
    {
        (new _cls2()).start();
    }

    public void start()
    {
        if ((new File(dir, mFilename)).exists())
        {
            mListener.onDownloadSuccess((new StringBuilder()).append(dir).append("/").append(mFilename).toString());
            return;
        } else
        {
            mListener.onPrepareStart();
            getDownloadPermission();
            return;
        }
    }





/*
    static String access$102(DownloadFileFromWeiyun downloadfilefromweiyun, String s)
    {
        downloadfilefromweiyun.dl_encrypt_url = s;
        return s;
    }

*/










/*
    static String access$202(DownloadFileFromWeiyun downloadfilefromweiyun, String s)
    {
        downloadfilefromweiyun.dl_cookie_name = s;
        return s;
    }

*/



/*
    static String access$302(DownloadFileFromWeiyun downloadfilefromweiyun, String s)
    {
        downloadfilefromweiyun.dl_cookie_value = s;
        return s;
    }

*/



/*
    static int access$402(DownloadFileFromWeiyun downloadfilefromweiyun, int i)
    {
        downloadfilefromweiyun.dl_svr_port = i;
        return i;
    }

*/



/*
    static String access$502(DownloadFileFromWeiyun downloadfilefromweiyun, String s)
    {
        downloadfilefromweiyun.dl_svr_host = s;
        return s;
    }

*/




/*
    static String access$702(DownloadFileFromWeiyun downloadfilefromweiyun, String s)
    {
        downloadfilefromweiyun.dl_thumb_size = s;
        return s;
    }

*/



    private class _cls1 extends Handler
    {

        final DownloadFileFromWeiyun this$0;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 0 3: default 36
        //                       0 37
        //                       1 235
        //                       2 283
        //                       3 308;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            return;
_L2:
            message = (JSONObject)message.obj;
            int i = message.getInt("ret");
            if (i == 0) goto _L7; else goto _L6
_L6:
            try
            {
                mListener.onError((new StringBuilder()).append("server error, ret = ").append(i).append("").toString());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Message message)
            {
                message.printStackTrace();
            }
_L8:
            mListener.onDownloadStart();
            doDownload();
            return;
_L7:
            message = message.getJSONObject("data");
            dl_encrypt_url = message.getString("dl_encrypt_url");
            dl_cookie_name = message.getString("dl_cookie_name");
            dl_cookie_value = message.getString("dl_cookie_value");
            dl_svr_port = message.getInt("dl_svr_port");
            dl_svr_host = message.getString("dl_svr_host");
            if (mThumb != null && mThumb.length() > 0)
            {
                dl_thumb_size = message.getString("dl_thumb_size");
            }
              goto _L8
_L3:
            mListener.onDownloadSuccess((new StringBuilder()).append(dir).append('/').append(mFilename).toString());
            return;
_L4:
            int j = Integer.parseInt((String)message.obj);
            mListener.onDownloadProgress(j);
            return;
_L5:
            mListener.onError((String)message.obj);
            return;
        }

        _cls1(Looper looper)
        {
            this$0 = DownloadFileFromWeiyun.this;
            super(looper);
        }
    }


    private class _cls3 extends Thread
    {

        final DownloadFileFromWeiyun this$0;

        public void run()
        {
            Object obj;
            Object obj1;
            Object obj2;
            Object obj3;
            FileOutputStream fileoutputstream;
            byte abyte0[];
            DefaultHttpClient defaulthttpclient;
            int i;
            int j;
            long l;
            long l1;
            long l2;
            obj1 = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(((org.apache.http.params.HttpParams) (obj1)), 15000);
            HttpConnectionParams.setSoTimeout(((org.apache.http.params.HttpParams) (obj1)), 20000);
            HttpProtocolParams.setVersion(((org.apache.http.params.HttpParams) (obj1)), HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(((org.apache.http.params.HttpParams) (obj1)), "UTF-8");
            HttpProtocolParams.setUserAgent(((org.apache.http.params.HttpParams) (obj1)), "TX_QQF_ANDROID");
            obj = (new StringBuilder()).append("http://").append(dl_svr_host).append(":").append(dl_svr_port).append("/ftn_handler/").append(dl_encrypt_url).append("/").toString();
            obj2 = obj;
            if (dl_thumb_size != null)
            {
                obj2 = obj;
                if (dl_thumb_size.length() > 0)
                {
                    obj2 = (new StringBuilder()).append(((String) (obj))).append("?size=").append(dl_thumb_size).toString();
                }
            }
            defaulthttpclient = new DefaultHttpClient(((org.apache.http.params.HttpParams) (obj1)));
            obj3 = null;
            obj1 = null;
            obj = new File(dir, mFilename);
            int k;
            try
            {
                fileoutputstream = new FileOutputStream(((File) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((FileNotFoundException) (obj)).printStackTrace();
                obj1 = mHandler.obtainMessage();
                obj1.what = 3;
                obj1.obj = (new StringBuilder()).append(((FileNotFoundException) (obj)).getMessage()).append("").toString();
                mHandler.sendMessage(((Message) (obj1)));
                return;
            }
            abyte0 = new byte[0x40000];
            if (!isOriginal) goto _L2; else goto _L1
_L1:
            if (mFilesize > 0x40000L)
            {
                l = 0x40000L;
            } else
            {
                l = mFilesize;
            }
            i = 0;
            l1 = 0L;
            obj1 = null;
            l2 = l + 0L;
            l = l1;
_L14:
            obj = obj1;
            if (l2 > mFilesize) goto _L4; else goto _L3
_L3:
            obj3 = new HttpGet(((String) (obj2)));
            ((HttpUriRequest) (obj3)).addHeader("Accept-Encoding", "gzip");
            ((HttpUriRequest) (obj3)).addHeader("Host", dl_svr_host);
            ((HttpUriRequest) (obj3)).addHeader("Connection", "Keep-Alive");
            ((HttpUriRequest) (obj3)).addHeader("Cookie", (new StringBuilder()).append(dl_cookie_name).append("=").append(dl_cookie_value).append("").toString());
            ((HttpUriRequest) (obj3)).addHeader("Pragma", "no-cache");
            ((HttpUriRequest) (obj3)).addHeader("RANGE", (new StringBuilder()).append("bytes=").append(l).append("-").append(l2).append("").toString());
            l1 = l;
            obj = obj1;
            obj3 = defaulthttpclient.execute(((HttpUriRequest) (obj3)));
            l1 = l;
            obj = obj1;
            Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doDownloadPic response:").append(obj3.toString()).toString());
            l1 = l;
            obj = obj1;
            j = ((HttpResponse) (obj3)).getStatusLine().getStatusCode();
            if (j == 200) goto _L6; else goto _L5
_L5:
            obj = obj1;
            if (j != 206) goto _L4; else goto _L6
_L6:
            l1 = l;
            obj = obj1;
            obj3 = ((HttpResponse) (obj3)).getEntity().getContent();
_L8:
            l1 = l;
            obj = obj3;
            k = ((InputStream) (obj3)).read(abyte0);
            j = i;
            l1 = l;
            obj1 = obj3;
            if (k <= 0)
            {
                break; /* Loop/switch isn't completed */
            }
            l1 = l;
            obj = obj3;
            fileoutputstream.write(abyte0, 0, k);
            l += k;
            if (true) goto _L8; else goto _L7
            obj3;
            i++;
            j = i;
            obj1 = obj;
            if (i <= MAX_ERROR_TIMES) goto _L7; else goto _L9
_L9:
            ((Exception) (obj3)).printStackTrace();
            Log.e("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doDownloadPic error:").append(((Exception) (obj3)).getMessage()).append("").toString());
            obj1 = mHandler.obtainMessage();
            obj1.what = 3;
            obj1.obj = (new StringBuilder()).append(((Exception) (obj3)).getMessage()).append("").toString();
            mHandler.sendMessage(((Message) (obj1)));
_L4:
            fileoutputstream.close();
            ((InputStream) (obj)).close();
            obj = mHandler.obtainMessage();
            obj.what = 1;
            obj.obj = "\u4E0B\u8F7D\u6587\u4EF6\u6210\u529F";
            mHandler.sendMessage(((Message) (obj)));
            return;
_L7:
            obj = obj1;
            if (mFilesize - l2 <= 0L)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (mFilesize - l1 > 0x40000L)
            {
                l = 0x40000L;
            } else
            {
                l = mFilesize - l1;
            }
            l2 = l + l1;
            obj = mHandler.obtainMessage();
            obj.what = 2;
            obj.obj = (new StringBuilder()).append((100L * l2) / mFilesize).append("").toString();
            mHandler.sendMessage(((Message) (obj)));
            i = j;
            l = l1;
            continue; /* Loop/switch isn't completed */
_L2:
            obj2 = new HttpGet(((String) (obj2)));
            ((HttpUriRequest) (obj2)).addHeader("Accept-Encoding", "gzip");
            ((HttpUriRequest) (obj2)).addHeader("Host", dl_svr_host);
            ((HttpUriRequest) (obj2)).addHeader("Connection", "Keep-Alive");
            ((HttpUriRequest) (obj2)).addHeader("Cookie", (new StringBuilder()).append(dl_cookie_name).append("=").append(dl_cookie_value).append("").toString());
            ((HttpUriRequest) (obj2)).addHeader("Pragma", "no-cache");
            obj = obj1;
            obj2 = defaulthttpclient.execute(((HttpUriRequest) (obj2)));
            obj = obj1;
            Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doDownloadPic response:").append(obj2.toString()).toString());
            obj = obj1;
            i = ((HttpResponse) (obj2)).getStatusLine().getStatusCode();
            if (i != 200)
            {
                obj = obj3;
                if (i != 206)
                {
                    continue; /* Loop/switch isn't completed */
                }
            }
            obj = obj1;
            obj1 = ((HttpResponse) (obj2)).getEntity().getContent();
_L11:
            obj = obj1;
            i = ((InputStream) (obj1)).read(abyte0);
            obj = obj1;
            if (i <= 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            obj = obj1;
            fileoutputstream.write(abyte0, 0, i);
            if (true) goto _L11; else goto _L10
_L10:
            Exception exception;
            exception;
            if (1 > MAX_ERROR_TIMES)
            {
                exception.printStackTrace();
                Log.e("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doDownloadPic error:").append(exception.getMessage()).append("").toString());
                Message message1 = mHandler.obtainMessage();
                message1.what = 3;
                message1.obj = (new StringBuilder()).append(exception.getMessage()).append("").toString();
                mHandler.sendMessage(message1);
            }
            if (true) goto _L4; else goto _L12
_L12:
            IOException ioexception;
            ioexception;
            ioexception.printStackTrace();
            Message message = mHandler.obtainMessage();
            message.what = 3;
            message.obj = (new StringBuilder()).append(ioexception.getMessage()).append("").toString();
            mHandler.sendMessage(message);
            return;
            if (true) goto _L14; else goto _L13
_L13:
        }

        _cls3()
        {
            this$0 = DownloadFileFromWeiyun.this;
            super();
        }
    }


    private class _cls2 extends Thread
    {

        final DownloadFileFromWeiyun this$0;

        public void run()
        {
            Object obj = new Bundle();
            ((Bundle) (obj)).putString("oauth_consumer_key", "222222");
            ((Bundle) (obj)).putString("file_id", mFileid);
            ((Bundle) (obj)).putString("access_token", (new StringBuilder()).append(mTencent.getAccessToken()).append("").toString());
            ((Bundle) (obj)).putString("openid", (new StringBuilder()).append(mTencent.getOpenId()).append("").toString());
            ((Bundle) (obj)).putString("format", "json");
            if (mThumb != null && mThumb.length() > 0)
            {
                ((Bundle) (obj)).putString("thumb", (new StringBuilder()).append(mThumb).append("").toString());
            }
            try
            {
                obj = mTencent.request(mRequestUrl, ((Bundle) (obj)), "GET");
                Message message = mHandler.obtainMessage();
                message.what = 0;
                message.obj = obj;
                mHandler.sendMessage(message);
                return;
            }
            catch (MalformedURLException malformedurlexception)
            {
                malformedurlexception.printStackTrace();
                malformedurlexception = mHandler.obtainMessage();
                malformedurlexception.what = 3;
                malformedurlexception.obj = "getUploadPermission MalformedURLException";
                mHandler.sendMessage(malformedurlexception);
                return;
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                ioexception = mHandler.obtainMessage();
                ioexception.what = 3;
                ioexception.obj = "getUploadPermission IOException";
                mHandler.sendMessage(ioexception);
                return;
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
                jsonexception = mHandler.obtainMessage();
                jsonexception.what = 3;
                jsonexception.obj = "getUploadPermission JSONException";
                mHandler.sendMessage(jsonexception);
                return;
            }
            catch (NetworkUnavailableException networkunavailableexception)
            {
                networkunavailableexception.printStackTrace();
                networkunavailableexception = mHandler.obtainMessage();
                networkunavailableexception.what = 3;
                networkunavailableexception.obj = "getUploadPermission NetworkUnavailableException";
                mHandler.sendMessage(networkunavailableexception);
                return;
            }
            catch (HttpStatusException httpstatusexception)
            {
                httpstatusexception.printStackTrace();
            }
            httpstatusexception = mHandler.obtainMessage();
            httpstatusexception.what = 3;
            httpstatusexception.obj = "getUploadPermission HttpStatusException";
            mHandler.sendMessage(httpstatusexception);
        }

        _cls2()
        {
            this$0 = DownloadFileFromWeiyun.this;
            super();
        }
    }

}
