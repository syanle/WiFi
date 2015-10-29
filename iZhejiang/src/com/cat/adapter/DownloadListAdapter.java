// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;
import com.ta.util.TALogger;
import com.ta.util.download.DownLoadCallback;
import com.ta.util.download.DownloadManager;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.cat.adapter:
//            ViewHolder

public class DownloadListAdapter extends BaseAdapter
{
    private class DownloadBtnListener
        implements android.view.View.OnClickListener
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
                downloadManager.continueHandler(url);
                mViewHolder.continueButton.setVisibility(8);
                mViewHolder.pauseButton.setVisibility(0);
                return;

            case 2131361852: 
                downloadManager.pauseHandler(url);
                mViewHolder.continueButton.setVisibility(0);
                mViewHolder.pauseButton.setVisibility(8);
                return;

            case 2131361854: 
                downloadManager.deleteHandler(url);
                break;
            }
            removeItem(url);
        }

        public DownloadBtnListener(String s, ViewHolder viewholder)
        {
            this$0 = DownloadListAdapter.this;
            super();
            url = s;
            mViewHolder = viewholder;
        }
    }


    private ArrayList dataList;
    private ListView downloadList;
    private DownloadManager downloadManager;
    private Context mContext;

    public DownloadListAdapter(Context context, ListView listview)
    {
        mContext = context;
        downloadList = listview;
        dataList = new ArrayList();
        downloadManager = DownloadManager.getDownloadManager();
        downloadManager.setDownLoadCallback(new DownLoadCallback() {

            final DownloadListAdapter this$0;

            public void onLoading(String s, long l, long l1, long l2)
            {
                super.onLoading(s, l, l1, l2);
                long l3 = (100L * l1) / l;
                (new ViewHolder(downloadList.findViewWithTag(s))).setData(s, (new StringBuilder(String.valueOf(l2))).append("kbs").append("|").append(l).append("|").append(l1).toString(), (new StringBuilder(String.valueOf(l3))).toString());
                TALogger.d(DownloadListAdapter.this, (new StringBuilder("speed")).append(l2).append("kbps").append("downloadPercent").append(l3).toString());
            }

            public void onSuccess(String s)
            {
                Toast.makeText(mContext, "\u4E0B\u8F7D\u5B8C\u6210", 1).show();
                removeItem(s);
            }

            
            {
                this$0 = DownloadListAdapter.this;
                super();
            }
        });
    }

    public void addItem(String s)
    {
        addItem(s, false);
    }

    public void addItem(String s, boolean flag)
    {
        HashMap hashmap = new HashMap();
        hashmap.put(Integer.valueOf(0), s);
        dataList.add(hashmap);
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return dataList.size();
    }

    public Object getItem(int i)
    {
        return dataList.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        viewgroup = view;
        if (view == null)
        {
            viewgroup = LayoutInflater.from(mContext).inflate(0x7f03000c, null);
        }
        view = (HashMap)dataList.get(i);
        String s = (String)view.get(Integer.valueOf(0));
        viewgroup.setTag(s);
        ViewHolder viewholder = new ViewHolder(viewgroup);
        viewholder.setData(view);
        viewholder.continueButton.setOnClickListener(new DownloadBtnListener(s, viewholder));
        viewholder.pauseButton.setOnClickListener(new DownloadBtnListener(s, viewholder));
        viewholder.deleteButton.setOnClickListener(new DownloadBtnListener(s, viewholder));
        return viewgroup;
    }

    public void removeItem(String s)
    {
        int i = 0;
        do
        {
            if (i >= dataList.size())
            {
                return;
            }
            if (((String)((HashMap)dataList.get(i)).get(Integer.valueOf(0))).equals(s))
            {
                dataList.remove(i);
                notifyDataSetChanged();
            }
            i++;
        } while (true);
    }



}
