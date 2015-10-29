// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

// Referenced classes of package com.tencent.tauth:
//            IUploadFileToWeiyunStatus, DataConvert, Tencent

public class UploadFileToWeiyun
{

    private String bmd5;
    private int body_len;
    private int cmd;
    private byte data[];
    private int data_len;
    private String file_id;
    private byte file_key[];
    private int file_key_len;
    private int file_size;
    private String filepath;
    private String host;
    private String mAppid;
    private Handler mHandler;
    private IUploadFileToWeiyunStatus mListener;
    private String mOpenid;
    private Tencent mTencent;
    private String mToken;
    private int magic_num;
    private int offset;
    private int port;
    private byte postbody[];
    private String requestUrl;
    private int reserved;
    String str_file_key;
    private String sum;
    private byte ukey[];
    private int ukey_len;

    public UploadFileToWeiyun(Tencent tencent, String s, String s1, IUploadFileToWeiyunStatus iuploadfiletoweiyunstatus)
    {
        magic_num = 0xabcd9876;
        cmd = 1000;
        reserved = 0;
        ukey_len = 304;
        file_key_len = 20;
        mHandler = new _cls1(Looper.getMainLooper());
        mTencent = tencent;
        filepath = s;
        mListener = iuploadfiletoweiyunstatus;
        requestUrl = s1;
    }

    private void doUpload()
    {
        mListener.onUploadStart();
        (new _cls3()).start();
    }

    private void getUploadPermission()
    {
        (new _cls2()).start();
    }

    private byte[] packPostBody(byte abyte0[], int i, int j)
    {
        byte abyte1[];
        int k;
        int l;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(abyte0, 0, i);
            bmd5 = DataConvert.toHexString(messagedigest.digest());
            messagedigest.reset();
            Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun prepareFileInfo  md5:").append(bmd5).toString());
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            Log.e("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun prepareFileInfo  error:").append(abyte0.getLocalizedMessage()).toString());
            abyte0.printStackTrace();
            mListener.onError("prepareFileInfo error: get bmd5 failed");
            return null;
        }
        k = i + 340;
        abyte1 = new byte[k + 4 + 4 + 4 + 4];
        l = DataConvert.putInt2Bytes(0xabcd9876, abyte1, 0) + 0;
        l += DataConvert.putInt2Bytes(1000, abyte1, l);
        l += DataConvert.putInt2Bytes(0, abyte1, l);
        k = DataConvert.putInt2Bytes(k, abyte1, l) + l;
        k += DataConvert.putShort2Bytes(304, abyte1, k);
        k += DataConvert.putBytes2Bytes(ukey, abyte1, k);
        k += DataConvert.putShort2Bytes(20, abyte1, k);
        k += DataConvert.putString2Bytes(str_file_key, abyte1, k);
        k += DataConvert.putInt2Bytes(file_size, abyte1, k);
        j = k + DataConvert.putInt2Bytes(j, abyte1, k);
        j += DataConvert.putInt2Bytes(i, abyte1, j);
        DataConvert.putBytes2Bytes(abyte0, i, abyte1, j);
        return abyte1;
    }

    private void prepareFileInfo()
    {
        mListener.onPrepareStart();
        file_size = (int)(new File(filepath)).length();
        try
        {
            Object obj = MessageDigest.getInstance("SHA-1");
            FileInputStream fileinputstream = new FileInputStream(filepath);
            obj = new DigestInputStream(fileinputstream, ((MessageDigest) (obj)));
            for (byte abyte0[] = new byte[0x80000]; ((DigestInputStream) (obj)).read(abyte0) > 0;) { }
            MessageDigest messagedigest = ((DigestInputStream) (obj)).getMessageDigest();
            file_key = messagedigest.digest();
            str_file_key = DataConvert.toHexString(file_key);
            messagedigest.reset();
            fileinputstream.close();
            ((DigestInputStream) (obj)).close();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            mListener.onError("sha digest error!");
            return;
        }
        try
        {
            Object obj1 = MessageDigest.getInstance("MD5");
            FileInputStream fileinputstream1 = new FileInputStream(filepath);
            obj1 = new DigestInputStream(fileinputstream1, ((MessageDigest) (obj1)));
            for (byte abyte1[] = new byte[0x80000]; ((DigestInputStream) (obj1)).read(abyte1) > 0;) { }
            MessageDigest messagedigest1 = ((DigestInputStream) (obj1)).getMessageDigest();
            bmd5 = DataConvert.toHexString(messagedigest1.digest());
            messagedigest1.reset();
            fileinputstream1.close();
            ((DigestInputStream) (obj1)).close();
            return;
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        mListener.onError("sha digest error!");
    }

    public void start()
    {
        prepareFileInfo();
        getUploadPermission();
    }




/*
    static String access$102(UploadFileToWeiyun uploadfiletoweiyun, String s)
    {
        uploadfiletoweiyun.file_id = s;
        return s;
    }

*/





/*
    static int access$1302(UploadFileToWeiyun uploadfiletoweiyun, int i)
    {
        uploadfiletoweiyun.offset = i;
        return i;
    }

*/


/*
    static int access$1312(UploadFileToWeiyun uploadfiletoweiyun, int i)
    {
        i = uploadfiletoweiyun.offset + i;
        uploadfiletoweiyun.offset = i;
        return i;
    }

*/



/*
    static byte[] access$1402(UploadFileToWeiyun uploadfiletoweiyun, byte abyte0[])
    {
        uploadfiletoweiyun.postbody = abyte0;
        return abyte0;
    }

*/




/*
    static String access$202(UploadFileToWeiyun uploadfiletoweiyun, String s)
    {
        uploadfiletoweiyun.sum = s;
        return s;
    }

*/


/*
    static byte[] access$302(UploadFileToWeiyun uploadfiletoweiyun, byte abyte0[])
    {
        uploadfiletoweiyun.ukey = abyte0;
        return abyte0;
    }

*/


/*
    static int access$402(UploadFileToWeiyun uploadfiletoweiyun, int i)
    {
        uploadfiletoweiyun.port = i;
        return i;
    }

*/



/*
    static String access$502(UploadFileToWeiyun uploadfiletoweiyun, String s)
    {
        uploadfiletoweiyun.host = s;
        return s;
    }

*/





    private class _cls1 extends Handler
    {

        final UploadFileToWeiyun this$0;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch -2 3: default 44
        //                       -2 402
        //                       -1 235
        //                       0 45
        //                       1 44
        //                       2 292
        //                       3 352;
               goto _L1 _L2 _L3 _L4 _L1 _L5 _L6
_L1:
            return;
_L4:
            message = (JSONObject)message.obj;
            int i = message.getInt("ret");
            if (i != 0)
            {
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
                mListener.onError((new StringBuilder()).append("server return json error :").append(message.getMessage()).append("").toString());
                return;
            }
            message = message.getJSONObject("data");
            file_id = message.getString("file_id");
            sum = message.getString("csum");
            ukey = DataConvert.string2bytes(sum);
            port = message.getInt("port");
            host = message.getString("host");
            doUpload();
            return;
_L3:
            long l = Thread.currentThread().getId();
            Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun onError thread id = ").append(l).append("").toString());
            mListener.onError(message.obj.toString());
            return;
_L5:
            long l1 = Thread.currentThread().getId();
            Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun onUploadProgress thread id = ").append(l1).append("").toString());
            mListener.onUploadProgress(Integer.parseInt((String)message.obj));
            return;
_L6:
            long l2 = Thread.currentThread().getId();
            Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun onUploadSuccess thread id = ").append(l2).append("").toString());
            mListener.onUploadSuccess();
            return;
_L2:
            long l3 = Thread.currentThread().getId();
            Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun onError thread id = ").append(l3).append("").toString());
            mListener.onError((String)message.obj);
            return;
        }

        _cls1(Looper looper)
        {
            this$0 = UploadFileToWeiyun.this;
            super(looper);
        }
    }


    private class _cls3 extends Thread
    {

        final UploadFileToWeiyun this$0;

        public void run()
        {
            Object obj = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(((org.apache.http.params.HttpParams) (obj)), 15000);
            HttpConnectionParams.setSoTimeout(((org.apache.http.params.HttpParams) (obj)), 20000);
            HttpProtocolParams.setVersion(((org.apache.http.params.HttpParams) (obj)), HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(((org.apache.http.params.HttpParams) (obj)), "UTF-8");
            HttpProtocolParams.setUserAgent(((org.apache.http.params.HttpParams) (obj)), "TX_QQF_ANDROID");
            obj = new DefaultHttpClient(((org.apache.http.params.HttpParams) (obj)));
            offset = 0;
            byte abyte0[] = new byte[0x20000];
            FileInputStream fileinputstream;
            try
            {
                fileinputstream = new FileInputStream(filepath);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((FileNotFoundException) (obj)).printStackTrace();
                obj = mHandler.obtainMessage();
                obj.what = -1;
                obj.obj = "doUploadPic failed, FileInputStream open file error!";
                mHandler.sendMessage(((Message) (obj)));
                return;
            }
            do
            {
label0:
                {
                    if (offset < file_size)
                    {
                        try
                        {
                            int i = fileinputstream.read(abyte0);
                            postbody = packPostBody(abyte0, i, offset);
                            <no variable> = this.access$1500 + <no variable>;
                        }
                        // Misplaced declaration of an exception variable
                        catch (Object obj)
                        {
                            ((IOException) (obj)).printStackTrace();
                            obj = mHandler.obtainMessage();
                            obj.what = -1;
                            obj.obj = "doUploadPic failed, FileInputStream read buffer error!";
                            mHandler.sendMessage(((Message) (obj)));
                            return;
                        }
                        if (postbody != null)
                        {
                            break label0;
                        }
                    }
                    return;
                }
                HttpPost httppost = new HttpPost((new StringBuilder()).append("http://").append(host).append("/ftn_handler/?bmd5=").append(bmd5).toString());
                httppost.addHeader("Accept-Encoding", "*/*");
                httppost.setHeader("Connection", "Keep-Alive");
                httppost.setHeader("Pragma", "no-cache");
                httppost.setHeader("Content-Type", "application/x-www-form-urlencoded");
                httppost.setEntity(new ByteArrayEntity(postbody));
                int j;
                try
                {
                    j = ((HttpClient) (obj)).execute(httppost).getStatusLine().getStatusCode();
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                    Log.e("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doUploadPic error:").append(exception.getMessage()).append("").toString());
                    j = 0;
                }
                if (j == 200)
                {
                    if (offset < file_size)
                    {
                        j = (int)(((long)offset * 100L) / (long)file_size);
                        Message message1 = mHandler.obtainMessage();
                        message1.what = 2;
                        message1.obj = (new StringBuilder()).append(j).append("").toString();
                        mHandler.sendMessage(message1);
                        Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doUploadPic progress:").append(j).append("").toString());
                    } else
                    {
                        Message message2 = mHandler.obtainMessage();
                        message2.what = 3;
                        message2.obj = "";
                        mHandler.sendMessage(message2);
                        Log.i("weiyun_test", "uploadFileToWeiyun doUploadPic success");
                    }
                } else
                {
                    Log.e("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doUploadPic failed, httpStatusCode=").append(j).append("").toString());
                    Message message = mHandler.obtainMessage();
                    message.what = -2;
                    message.obj = (new StringBuilder()).append("doUploadPic failed, httpStatusCode=").append(j).append("").toString();
                    mHandler.sendMessage(message);
                    return;
                }
            } while (true);
        }

        _cls3()
        {
            this$0 = UploadFileToWeiyun.this;
            super();
        }
    }


    private class _cls2 extends Thread
    {

        final UploadFileToWeiyun this$0;

        public void run()
        {
            Object obj = Uri.parse(filepath);
            obj = (new StringBuilder()).append(SystemClock.elapsedRealtime()).append("__").append(((Uri) (obj)).getLastPathSegment()).toString();
            Object obj1 = new Bundle();
            ((Bundle) (obj1)).putString("access_token", (new StringBuilder()).append(mTencent.getAccessToken()).append("").toString());
            ((Bundle) (obj1)).putString("oauth_consumer_key", "222222");
            ((Bundle) (obj1)).putString("openid", (new StringBuilder()).append(mTencent.getOpenId()).append("").toString());
            ((Bundle) (obj1)).putString("format", "json");
            ((Bundle) (obj1)).putString("sha", str_file_key);
            ((Bundle) (obj1)).putString("md5", bmd5);
            ((Bundle) (obj1)).putString("size", (new StringBuilder()).append(file_size).append("").toString());
            ((Bundle) (obj1)).putString("name", ((String) (obj)));
            ((Bundle) (obj1)).putString("upload_type", "control");
            Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun getUploadPermission parames = ").append(((Bundle) (obj1)).toString()).toString());
            try
            {
                obj = mTencent.request(requestUrl, ((Bundle) (obj1)), "GET");
                obj1 = mHandler.obtainMessage();
                obj1.what = 0;
                obj1.obj = obj;
                mHandler.sendMessage(((Message) (obj1)));
                return;
            }
            catch (MalformedURLException malformedurlexception)
            {
                malformedurlexception.printStackTrace();
                malformedurlexception = mHandler.obtainMessage();
                malformedurlexception.what = -1;
                malformedurlexception.obj = "getUploadPermission MalformedURLException";
                mHandler.sendMessage(malformedurlexception);
                return;
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                ioexception = mHandler.obtainMessage();
                ioexception.what = -1;
                ioexception.obj = "getUploadPermission IOException";
                mHandler.sendMessage(ioexception);
                return;
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
                jsonexception = mHandler.obtainMessage();
                jsonexception.what = -1;
                jsonexception.obj = "getUploadPermission JSONException";
                mHandler.sendMessage(jsonexception);
                return;
            }
            catch (NetworkUnavailableException networkunavailableexception)
            {
                networkunavailableexception.printStackTrace();
                networkunavailableexception = mHandler.obtainMessage();
                networkunavailableexception.what = -1;
                networkunavailableexception.obj = "getUploadPermission NetworkUnavailableException";
                mHandler.sendMessage(networkunavailableexception);
                return;
            }
            catch (HttpStatusException httpstatusexception)
            {
                httpstatusexception.printStackTrace();
            }
            httpstatusexception = mHandler.obtainMessage();
            httpstatusexception.what = -1;
            httpstatusexception.obj = "getUploadPermission HttpStatusException";
            mHandler.sendMessage(httpstatusexception);
        }

        _cls2()
        {
            this$0 = UploadFileToWeiyun.this;
            super();
        }
    }

}
