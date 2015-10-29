// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.cat.data.ImagesUrls;
import com.ta.TAApplication;
import com.ta.util.bitmap.TABitmapCacheWork;
import com.ta.util.bitmap.TABitmapCallBackHanlder;
import com.ta.util.bitmap.TADownloadBitmapHandler;
import com.ta.util.extend.draw.DensityUtils;

public class ImageAdapter extends BaseAdapter
{

    private TABitmapCacheWork imageFetcher;
    private final Context mContext;
    private int mNumColumns;

    public ImageAdapter(Context context, TAApplication taapplication)
    {
        mNumColumns = 0;
        TADownloadBitmapHandler tadownloadbitmaphandler = new TADownloadBitmapHandler(context, DensityUtils.dipTopx(context, 128F), DensityUtils.dipTopx(context, 128F));
        TABitmapCallBackHanlder tabitmapcallbackhanlder = new TABitmapCallBackHanlder();
        tabitmapcallbackhanlder.setLoadingImage(context, 0x7f02003c);
        imageFetcher = new TABitmapCacheWork(context);
        imageFetcher.setProcessDataHandler(tadownloadbitmaphandler);
        imageFetcher.setCallBackHandler(tabitmapcallbackhanlder);
        imageFetcher.setFileCache(taapplication.getFileCache());
        mContext = context;
    }

    public int getCount()
    {
        return ImagesUrls.imageThumbUrls.length + mNumColumns;
    }

    public Object getItem(int i)
    {
        if (i < mNumColumns)
        {
            return null;
        } else
        {
            return ImagesUrls.imageThumbUrls[i - mNumColumns];
        }
    }

    public long getItemId(int i)
    {
        if (i < mNumColumns)
        {
            i = 0;
        } else
        {
            i -= mNumColumns;
        }
        return (long)i;
    }

    public int getNumColumns()
    {
        return mNumColumns;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = new ImageView(mContext);
            view.setLayoutParams(new android.widget.AbsListView.LayoutParams(100, 100));
            view.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        } else
        {
            view = (ImageView)view;
        }
        imageFetcher.loadFormCache(ImagesUrls.imageThumbUrls[i - mNumColumns], view);
        return view;
    }

    public void setNumColumns(int i)
    {
        mNumColumns = i;
    }
}
