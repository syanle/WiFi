// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.data;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;
import java.util.List;

public abstract class MyBaseAdapter extends BaseAdapter
{

    protected Context ctx;
    protected List dataList;
    protected Object item;
    protected LayoutInflater mInflater;

    public MyBaseAdapter(List list, Context context)
    {
        dataList = list;
        ctx = context;
        mInflater = LayoutInflater.from(ctx);
    }

    public int getCount()
    {
        return dataList.size();
    }

    public Object getItem(int i)
    {
        item = dataList.get(i);
        return item;
    }

    public long getItemId(int i)
    {
        return (long)i;
    }
}
