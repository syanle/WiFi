// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.PopupWindow;
import com.tencent.weibo.sdk.android.api.util.ImageLoaderAsync;
import com.tencent.weibo.sdk.android.model.ImageInfo;
import java.util.ArrayList;

public class GalleryAdapter extends BaseAdapter
{

    private ArrayList imageList;
    private ImageLoaderAsync imageLoader;
    private Context myContext;
    private PopupWindow popView;

    public GalleryAdapter(Context context, PopupWindow popupwindow, ArrayList arraylist)
    {
        myContext = context;
        imageList = arraylist;
        imageLoader = new ImageLoaderAsync();
        popView = popupwindow;
    }

    public int getCount()
    {
        return imageList.size();
    }

    public Object getItem(int i)
    {
        return imageList.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, final View imageView, ViewGroup viewgroup)
    {
        imageView = new ImageView(myContext);
        viewgroup = ((ImageInfo)imageList.get(i)).getImagePath();
        imageLoader.loadImage(viewgroup, new com.tencent.weibo.sdk.android.api.util.ImageLoaderAsync.callBackImage() {

            final GalleryAdapter this$0;
            private final ImageView val$imageView;

            public void callback(Drawable drawable, String s)
            {
                if (drawable != null)
                {
                    imageView.setImageDrawable(drawable);
                }
            }

            
            {
                this$0 = GalleryAdapter.this;
                imageView = imageview;
                super();
            }
        });
        imageView.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        imageView.setLayoutParams(new android.widget.Gallery.LayoutParams(-1, -1));
        if (popView != null && popView.isShowing())
        {
            popView.dismiss();
        }
        return imageView;
    }
}
