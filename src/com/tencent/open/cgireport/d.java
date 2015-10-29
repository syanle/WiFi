// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open.cgireport;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.tencent.common.OpenConfig;
import com.tencent.sdkutil.HttpUtils;
import com.tencent.sdkutil.Util;
import java.net.SocketTimeoutException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;

// Referenced classes of package com.tencent.open.cgireport:
//            ReportManager, e

class d extends Thread
{

    final String a;
    final Context b;
    final Bundle c;
    final ReportManager d;

    d(ReportManager reportmanager, String s, Context context, Bundle bundle)
    {
        d = reportmanager;
        a = s;
        b = context;
        c = bundle;
        super();
    }

    public void run()
    {
        int i;
        int k;
        int l;
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportManager doUploadItems Thread start, url = ").append(a).toString());
        ReportManager.access$002(d, OpenConfig.a(b, null).b("Common_HttpRetryCount"));
        Object obj = d;
        HttpPost httppost;
        if (ReportManager.access$000(d) == 0)
        {
            i = 3;
        } else
        {
            i = ReportManager.access$000(d);
        }
        ReportManager.access$002(((ReportManager) (obj)), i);
        i = 0;
        k = 0;
_L5:
        l = k + 1;
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportManager doUploadItems Thread request count = ").append(l).toString());
        obj = HttpUtils.getHttpClient(b, null, a);
        httppost = new HttpPost(a);
        httppost.addHeader("Accept-Encoding", "gzip");
        httppost.setHeader("Content-Type", "application/x-www-form-urlencoded");
        httppost.setEntity(new ByteArrayEntity(Util.encodeUrl(c).getBytes()));
        if (((HttpClient) (obj)).execute(httppost).getStatusLine().getStatusCode() == 200) goto _L2; else goto _L1
_L1:
        Log.e("cgi_report_debug", "ReportManager doUploadItems : HttpStatuscode != 200");
_L3:
        Object obj1;
        ReportManager.access$102(d, false);
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportManager doUploadItems Thread end, url = ").append(a).toString());
        int j;
        if (i == true)
        {
            Log.i("cgi_report_debug", "ReportManager doUploadItems Thread request success");
            return;
        } else
        {
            Log.e("cgi_report_debug", "ReportManager doUploadItems Thread request failed");
            ReportManager.access$300(d).a(ReportManager.access$200(d));
            return;
        }
_L2:
        Log.i("cgi_report_debug", "ReportManager doUploadItems Thread success");
        i = 1;
          goto _L3
        obj1;
_L9:
        ((ConnectTimeoutException) (obj1)).printStackTrace();
        Log.e("cgi_report_debug", "ReportManager doUploadItems : ConnectTimeoutException");
        j = i;
_L6:
        i = j;
        k = l;
        if (l < ReportManager.access$000(d)) goto _L5; else goto _L4
_L4:
        i = j;
          goto _L3
        obj1;
_L8:
        ((SocketTimeoutException) (obj1)).printStackTrace();
        j = i;
          goto _L6
        obj1;
_L7:
        ((Exception) (obj1)).printStackTrace();
        Log.e("cgi_report_debug", "ReportManager doUploadItems : Exception");
          goto _L3
        obj1;
        i = 1;
          goto _L7
        obj1;
        i = 1;
          goto _L8
        obj1;
        i = 1;
          goto _L9
    }
}
