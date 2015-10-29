// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.download;

import com.ta.util.TALogger;
import com.ta.util.http.FileHttpResponseHandler;
import java.util.List;

// Referenced classes of package com.ta.util.download:
//            DownloadManager, DownLoadCallback, DownLoadConfigUtil

class r extends FileHttpResponseHandler
{

    final DownloadManager this$0;

    public void onFailure(Throwable throwable)
    {
        TALogger.d(DownloadManager.this, "Throwable");
        if (throwable != null && DownloadManager.access$1(DownloadManager.this) != null)
        {
            DownloadManager.access$1(DownloadManager.this).sendFailureMessage(getUrl(), throwable.getMessage());
        }
    }

    public void onFinish()
    {
        completehandler(this);
    }

    public void onProgress(long l, long l1, long l2)
    {
        super.onProgress(l, l1, l2);
        if (DownloadManager.access$1(DownloadManager.this) != null)
        {
            DownloadManager.access$1(DownloadManager.this).sendLoadMessage(getUrl(), l, l1, l2);
        }
    }

    public void onStart()
    {
        DownLoadConfigUtil.storeURL(DownloadManager.access$0(DownloadManager.this).indexOf(this), getUrl());
    }

    public void onSuccess(String s)
    {
        if (DownloadManager.access$1(DownloadManager.this) != null)
        {
            DownloadManager.access$1(DownloadManager.this).sendSuccessMessage(getUrl());
        }
    }

    (String s, String s1, String s2)
    {
        this$0 = DownloadManager.this;
        super(s, s1, s2);
    }
}
