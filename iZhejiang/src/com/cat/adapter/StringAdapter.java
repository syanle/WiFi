// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.cat.data.StringUrls;
import com.cat.util.stringcache.TAProcessStringHandler;
import com.cat.util.stringcache.TAStringCallBackHandler;
import com.ta.TAApplication;
import com.ta.util.cache.TAFileCacheWork;

public class StringAdapter extends BaseAdapter
{

    private Context mContext;
    private TAFileCacheWork taFileCacheWork;

    public StringAdapter(Context context, TAApplication taapplication)
    {
        taFileCacheWork = new TAFileCacheWork();
        taFileCacheWork.setCallBackHandler(new TAStringCallBackHandler());
        taFileCacheWork.setProcessDataHandler(new TAProcessStringHandler());
        taFileCacheWork.setFileCache(taapplication.getFileCache());
        mContext = context;
    }

    public int getCount()
    {
        return StringUrls.stringUrls.length;
    }

    public Object getItem(int i)
    {
        return StringUrls.stringUrls[i];
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        view = ((LayoutInflater)mContext.getSystemService("layout_inflater")).inflate(0x7f030035, null);
        viewgroup = (TextView)view.findViewById(0x7f0a00ea);
        taFileCacheWork.loadFormCache(getItem(i), viewgroup);
        return view;
    }
}
