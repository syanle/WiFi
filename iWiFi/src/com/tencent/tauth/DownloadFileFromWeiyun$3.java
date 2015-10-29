// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

// Referenced classes of package com.tencent.tauth:
//            DownloadFileFromWeiyun

class this._cls0 extends Thread
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
        obj = (new StringBuilder()).append("http://").append(DownloadFileFromWeiyun.access$500(DownloadFileFromWeiyun.this)).append(":").append(DownloadFileFromWeiyun.access$400(DownloadFileFromWeiyun.this)).append("/ftn_handler/").append(DownloadFileFromWeiyun.access$100(DownloadFileFromWeiyun.this)).append("/").toString();
        obj2 = obj;
        if (DownloadFileFromWeiyun.access$700(DownloadFileFromWeiyun.this) != null)
        {
            obj2 = obj;
            if (DownloadFileFromWeiyun.access$700(DownloadFileFromWeiyun.this).length() > 0)
            {
                obj2 = (new StringBuilder()).append(((String) (obj))).append("?size=").append(DownloadFileFromWeiyun.access$700(DownloadFileFromWeiyun.this)).toString();
            }
        }
        defaulthttpclient = new DefaultHttpClient(((org.apache.http.params.HttpParams) (obj1)));
        obj3 = null;
        obj1 = null;
        obj = new File(DownloadFileFromWeiyun.access$900(DownloadFileFromWeiyun.this), DownloadFileFromWeiyun.access$1000(DownloadFileFromWeiyun.this));
        int k;
        try
        {
            fileoutputstream = new FileOutputStream(((File) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((FileNotFoundException) (obj)).printStackTrace();
            obj1 = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
            obj1.what = 3;
            obj1.obj = (new StringBuilder()).append(((FileNotFoundException) (obj)).getMessage()).append("").toString();
            DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(((Message) (obj1)));
            return;
        }
        abyte0 = new byte[0x40000];
        if (!DownloadFileFromWeiyun.access$1500(DownloadFileFromWeiyun.this)) goto _L2; else goto _L1
_L1:
        if (DownloadFileFromWeiyun.access$1600(DownloadFileFromWeiyun.this) > 0x40000L)
        {
            l = 0x40000L;
        } else
        {
            l = DownloadFileFromWeiyun.access$1600(DownloadFileFromWeiyun.this);
        }
        i = 0;
        l1 = 0L;
        obj1 = null;
        l2 = l + 0L;
        l = l1;
_L14:
        obj = obj1;
        if (l2 > DownloadFileFromWeiyun.access$1600(DownloadFileFromWeiyun.this)) goto _L4; else goto _L3
_L3:
        obj3 = new HttpGet(((String) (obj2)));
        ((HttpUriRequest) (obj3)).addHeader("Accept-Encoding", "gzip");
        ((HttpUriRequest) (obj3)).addHeader("Host", DownloadFileFromWeiyun.access$500(DownloadFileFromWeiyun.this));
        ((HttpUriRequest) (obj3)).addHeader("Connection", "Keep-Alive");
        ((HttpUriRequest) (obj3)).addHeader("Cookie", (new StringBuilder()).append(DownloadFileFromWeiyun.access$200(DownloadFileFromWeiyun.this)).append("=").append(DownloadFileFromWeiyun.access$300(DownloadFileFromWeiyun.this)).append("").toString());
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
        if (i <= DownloadFileFromWeiyun.access$1700(DownloadFileFromWeiyun.this)) goto _L7; else goto _L9
_L9:
        ((Exception) (obj3)).printStackTrace();
        Log.e("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doDownloadPic error:").append(((Exception) (obj3)).getMessage()).append("").toString());
        obj1 = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
        obj1.what = 3;
        obj1.obj = (new StringBuilder()).append(((Exception) (obj3)).getMessage()).append("").toString();
        DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(((Message) (obj1)));
_L4:
        fileoutputstream.close();
        ((InputStream) (obj)).close();
        obj = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
        obj.what = 1;
        obj.obj = "\u4E0B\u8F7D\u6587\u4EF6\u6210\u529F";
        DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(((Message) (obj)));
        return;
_L7:
        obj = obj1;
        if (DownloadFileFromWeiyun.access$1600(DownloadFileFromWeiyun.this) - l2 <= 0L)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (DownloadFileFromWeiyun.access$1600(DownloadFileFromWeiyun.this) - l1 > 0x40000L)
        {
            l = 0x40000L;
        } else
        {
            l = DownloadFileFromWeiyun.access$1600(DownloadFileFromWeiyun.this) - l1;
        }
        l2 = l + l1;
        obj = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
        obj.what = 2;
        obj.obj = (new StringBuilder()).append((100L * l2) / DownloadFileFromWeiyun.access$1600(DownloadFileFromWeiyun.this)).append("").toString();
        DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(((Message) (obj)));
        i = j;
        l = l1;
        continue; /* Loop/switch isn't completed */
_L2:
        obj2 = new HttpGet(((String) (obj2)));
        ((HttpUriRequest) (obj2)).addHeader("Accept-Encoding", "gzip");
        ((HttpUriRequest) (obj2)).addHeader("Host", DownloadFileFromWeiyun.access$500(DownloadFileFromWeiyun.this));
        ((HttpUriRequest) (obj2)).addHeader("Connection", "Keep-Alive");
        ((HttpUriRequest) (obj2)).addHeader("Cookie", (new StringBuilder()).append(DownloadFileFromWeiyun.access$200(DownloadFileFromWeiyun.this)).append("=").append(DownloadFileFromWeiyun.access$300(DownloadFileFromWeiyun.this)).append("").toString());
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
        if (1 > DownloadFileFromWeiyun.access$1700(DownloadFileFromWeiyun.this))
        {
            exception.printStackTrace();
            Log.e("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun doDownloadPic error:").append(exception.getMessage()).append("").toString());
            Message message1 = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
            message1.what = 3;
            message1.obj = (new StringBuilder()).append(exception.getMessage()).append("").toString();
            DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(message1);
        }
        if (true) goto _L4; else goto _L12
_L12:
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        Message message = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
        message.what = 3;
        message.obj = (new StringBuilder()).append(ioexception.getMessage()).append("").toString();
        DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(message);
        return;
        if (true) goto _L14; else goto _L13
_L13:
    }

    st()
    {
        this$0 = DownloadFileFromWeiyun.this;
        super();
    }
}
