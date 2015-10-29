// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.weibo.sdk.android.api.util.BackGroudSeletor;
import java.util.List;

public class ConversationAdapter extends BaseAdapter
{

    private Context ct;
    private List cvlist;

    public ConversationAdapter(Context context, List list)
    {
        ct = context;
        cvlist = list;
    }

    public int getCount()
    {
        return cvlist.size();
    }

    public List getCvlist()
    {
        return cvlist;
    }

    public Object getItem(int i)
    {
        return cvlist.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = new LinearLayout(ct);
            new android.widget.LinearLayout.LayoutParams(-1, -2);
            view.setBackgroundDrawable(BackGroudSeletor.getdrawble("topic_", ct));
            view.setGravity(16);
            view.setPadding(10, 0, 10, 0);
            viewgroup = new TextView(ct);
            viewgroup.setTextColor(Color.parseColor("#108ece"));
            viewgroup.setText(getItem(i).toString());
            viewgroup.setGravity(16);
            viewgroup.setTextSize(18F);
            view.addView(viewgroup);
            view.setTag(viewgroup);
            return view;
        } else
        {
            ((TextView)view.getTag()).setText(getItem(i).toString());
            return view;
        }
    }

    public void setCvlist(List list)
    {
        cvlist = list;
    }
}
