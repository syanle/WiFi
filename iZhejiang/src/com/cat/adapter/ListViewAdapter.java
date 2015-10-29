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
import com.cat.data.Person;
import java.util.List;

public class ListViewAdapter extends BaseAdapter
{
    private class ViewHolder
    {

        private TextView indexTv;
        private TextView itemTv;
        private TextView itemTv_code;
        final ListViewAdapter this$0;







        private ViewHolder()
        {
            this$0 = ListViewAdapter.this;
            super();
        }

        ViewHolder(ViewHolder viewholder)
        {
            this();
        }
    }


    private Context context;
    private List list;
    private ViewHolder viewHolder;

    public ListViewAdapter(Context context1, List list1)
    {
        context = context1;
        list = list1;
    }

    public int getCount()
    {
        return list.size();
    }

    public Object getItem(int i)
    {
        return list.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        viewgroup = ((Person)list.get(i)).getCountrycn();
        viewHolder = new ViewHolder(null);
        if (viewgroup.length() == 1)
        {
            view = LayoutInflater.from(context).inflate(0x7f030012, null);
            viewHolder.indexTv = (TextView)view.findViewById(0x7f0a0062);
        } else
        {
            view = LayoutInflater.from(context).inflate(0x7f030014, null);
            viewHolder.itemTv = (TextView)view.findViewById(0x7f0a0064);
            viewHolder.itemTv_code = (TextView)view.findViewById(0x7f0a0065);
        }
        if (viewgroup.length() == 1)
        {
            viewHolder.indexTv.setText(((Person)list.get(i)).getCountrycn());
            return view;
        } else
        {
            viewHolder.itemTv.setText(((Person)list.get(i)).getCountrycn());
            viewHolder.itemTv_code.setText(((Person)list.get(i)).getCode());
            return view;
        }
    }

    public boolean isEnabled(int i)
    {
        if (((Person)list.get(i)).getCountrycn().length() == 1)
        {
            return false;
        } else
        {
            return super.isEnabled(i);
        }
    }
}
