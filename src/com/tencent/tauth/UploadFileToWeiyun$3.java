// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

// Referenced classes of package com.tencent.tauth:
//            UploadFileToWeiyun

class this._cls0 extends Thread
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
        UploadFileToWeiyun.access$1302(UploadFileToWeiyun.this, 0);
        byte abyte0[] = new byte[0x20000];
        FileInputStream fileinputstream;
        try
        {
            fileinputstream = new FileInputStream(UploadFileToWeiyun.access$700(UploadFileToWeiyun.this));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((FileNotFoundException) (obj)).printStackTrace();
            obj = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
            obj.what = -1;
            obj.obj = "doUploadPic failed, FileInputStream open file error!";
            UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(((Message) (obj)));
            return;
        }
        do
        {
label0:
            {
                if (UploadFileToWeiyun.access$1300(UploadFileToWeiyun.this) < UploadFileToWeiyun.access$1000(UploadFileToWeiyun.this))
                {
                    try
                    {
                        int i = fileinputstream.read(abyte0);
                        UploadFileToWeiyun.access$1402(UploadFileToWeiyun.this, UploadFileToWeiyun.access$1500(UploadFileToWeiyun.this, abyte0, i, UploadFileToWeiyun.access$1300(UploadFileToWeiyun.this)));
                        UploadFileToWeiyun.access$1312(UploadFileToWeiyun.this, i);
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        ((IOException) (obj)).printStackTrace();
                        obj = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
                        obj.what = -1;
                        obj.obj = "doUploadPic failed, FileInputStream read buffer error!";
                        UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(((Message) (obj)));
                        return;
                    }
                    if (UploadFileToWeiyun.access$1400(UploadFileToWeiyun.this) != null)
                    {
                        break label0;
                    }
                }
                return;
            }
            HttpPost httppost = new HttpPost((new StringBuilder()).append("http://").append(UploadFileToWeiyun.access$500(UploadFileToWeiyun.this)).append("/ftn_handler/?bmd5=").append(UploadFileToWeiyun.access$900(UploadFileToWeiyun.this)).toString());
            httppost.addHeader("Accept-Encoding", "*/*");
            httppost.setHeader("Connection", "Keep-Alive");
            httppost.setHeader("Pragma", "no-cache");
            httppost.setHeader("Content-Type", "application/x-www-form-urlencoded");
            httppost.setEntity(new ByteArrayEntity(UploadFileToWeiyun.access$1400(UploadFileToWeiyun.this)));
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
                if (UploadFileToWeiyun.access$1300(UploadFileToWeiyun.this) < UploadFileToWeiyun.access$1000(UploadFileToWeiyun.this))
                {
                    j = (int)(((long)UploadFileToWeiyun.access$1300(UploadFileToWeiyun.this) * 100L) / (long)UploadFileToWeiyun.access$1000(UploadFileToWeiyun.this));
                    Message message1 = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
                    message1.what = 2;
                    message1.obj = (new StringBuilder()).append(j).append("").toString();
                    UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(message1);
                    Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doUploadPic progress:").append(j).append("").toString());
                } else
                {
                    Message message2 = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
                    message2.what = 3;
                    message2.obj = "";
                    UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(message2);
                    Log.i("weiyun_test", "uploadFileToWeiyun doUploadPic success");
                }
            } else
            {
                Log.e("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doUploadPic failed, httpStatusCode=").append(j).append("").toString());
                Message message = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
                message.what = -2;
                message.obj = (new StringBuilder()).append("doUploadPic failed, httpStatusCode=").append(j).append("").toString();
                UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(message);
                return;
            }
        } while (true);
    }

    ()
    {
        this$0 = UploadFileToWeiyun.this;
        super();
    }
}
