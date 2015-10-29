// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.horizontalscrollview;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.cat.data.TopData;
import com.pubinfo.izhejiang.AroundMoreActivity;
import java.util.List;

public class HorizontalScrollViewAdapter
{
    private class ViewHolder
    {

        ImageView mImg;
        TextView mText;
        final HorizontalScrollViewAdapter this$0;

        private ViewHolder()
        {
            this$0 = HorizontalScrollViewAdapter.this;
            super();
        }

        ViewHolder(ViewHolder viewholder)
        {
            this();
        }
    }


    private Context mContext;
    private List mDatas;
    private LayoutInflater mInflater;

    public HorizontalScrollViewAdapter(Context context, List list)
    {
        mContext = context;
        mInflater = LayoutInflater.from(context);
        mDatas = list;
    }

    public int getCount()
    {
        return mDatas.size();
    }

    public Object getItem(int i)
    {
        return mDatas.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            ViewHolder viewholder = new ViewHolder(null);
            view = mInflater.inflate(0x7f030000, viewgroup, false);
            viewholder.mImg = (ImageView)view.findViewById(0x7f0a0013);
            viewholder.mText = (TextView)view.findViewById(0x7f0a0014);
            viewgroup = (WindowManager)mContext.getSystemService("window");
            DisplayMetrics displaymetrics = new DisplayMetrics();
            viewgroup.getDefaultDisplay().getMetrics(displaymetrics);
            viewgroup = new android.widget.RelativeLayout.LayoutParams(displaymetrics.widthPixels / 4, -2);
            viewgroup.setMargins(10, 0, 10, 0);
            view.setLayoutParams(viewgroup);
            view.setTag(viewholder);
            viewgroup = viewholder;
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        try
        {
            ((ViewHolder) (viewgroup)).mImg.setImageDrawable(AroundMoreActivity.getBusinessImage(((TopData)mDatas.get(i)).getName(), mContext));
            ((ViewHolder) (viewgroup)).mText.setText(((TopData)mDatas.get(i)).getName());
        }
        // Misplaced declaration of an exception variable
        catch (ViewGroup viewgroup)
        {
            return view;
        }
        return view;
    }
}
