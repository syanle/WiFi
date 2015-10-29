// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.view.View;
import android.widget.Button;
import com.ta.util.download.DownloadManager;

// Referenced classes of package com.cat.adapter:
//            DownloadListAdapter, ViewHolder

private class mViewHolder
    implements android.view.er
{

    private ViewHolder mViewHolder;
    final DownloadListAdapter this$0;
    private String url;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131361853: 
            DownloadListAdapter.access$0(DownloadListAdapter.this).continueHandler(url);
            mViewHolder.continueButton.setVisibility(8);
            mViewHolder.pauseButton.setVisibility(0);
            return;

        case 2131361852: 
            DownloadListAdapter.access$0(DownloadListAdapter.this).pauseHandler(url);
            mViewHolder.continueButton.setVisibility(0);
            mViewHolder.pauseButton.setVisibility(8);
            return;

        case 2131361854: 
            DownloadListAdapter.access$0(DownloadListAdapter.this).deleteHandler(url);
            break;
        }
        removeItem(url);
    }

    public (String s, ViewHolder viewholder)
    {
        this$0 = DownloadListAdapter.this;
        super();
        url = s;
        mViewHolder = viewholder;
    }
}
