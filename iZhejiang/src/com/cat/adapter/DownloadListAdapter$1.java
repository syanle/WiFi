// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.widget.ListView;
import android.widget.Toast;
import com.ta.util.TALogger;
import com.ta.util.download.DownLoadCallback;

// Referenced classes of package com.cat.adapter:
//            DownloadListAdapter, ViewHolder

class <init> extends DownLoadCallback
{

    final DownloadListAdapter this$0;

    public void onLoading(String s, long l, long l1, long l2)
    {
        super.onLoading(s, l, l1, l2);
        long l3 = (100L * l1) / l;
        (new ViewHolder(DownloadListAdapter.access$2(DownloadListAdapter.this).findViewWithTag(s))).setData(s, (new StringBuilder(String.valueOf(l2))).append("kbs").append("|").append(l).append("|").append(l1).toString(), (new StringBuilder(String.valueOf(l3))).toString());
        TALogger.d(DownloadListAdapter.this, (new StringBuilder("speed")).append(l2).append("kbps").append("downloadPercent").append(l3).toString());
    }

    public void onSuccess(String s)
    {
        Toast.makeText(DownloadListAdapter.access$1(DownloadListAdapter.this), "\u4E0B\u8F7D\u5B8C\u6210", 1).show();
        removeItem(s);
    }

    ()
    {
        this$0 = DownloadListAdapter.this;
        super();
    }
}
