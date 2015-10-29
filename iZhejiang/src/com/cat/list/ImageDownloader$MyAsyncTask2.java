// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.list;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import java.lang.ref.SoftReference;
import java.net.URL;
import java.util.Map;

// Referenced classes of package com.cat.list:
//            ImageDownloader, Util, OnImageDownload

private class download extends AsyncTask
{

    private OnImageDownload download;
    private Context mActivity;
    private ImageView mImageView;
    private String path;
    final ImageDownloader this$0;
    private String url;

    protected transient Bitmap doInBackground(String as[])
    {
        as = null;
        Bitmap bitmap = null;
        if (url == null)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        String s;
        try
        {
            bitmap = BitmapFactory.decodeStream((new URL(url)).openStream());
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return as;
        }
        as = bitmap;
        s = Util.getInstance().getImageName2(url);
        as = bitmap;
        if (ImageDownloader.access$4(ImageDownloader.this, path, mActivity, s, bitmap))
        {
            break MISSING_BLOCK_LABEL_82;
        }
        as = bitmap;
        ImageDownloader.access$5(ImageDownloader.this, path, mActivity, s);
        as = bitmap;
        ImageDownloader.access$6(ImageDownloader.this).put(url, new SoftReference(Bitmap.createScaledBitmap(bitmap, 100, 100, true)));
        return bitmap;
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(Bitmap bitmap)
    {
        if (download != null)
        {
            download.onDownloadSucc2(bitmap, url, mImageView);
            ImageDownloader.access$7(ImageDownloader.this, url);
        }
        super.onPostExecute(bitmap);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
    }

    public (String s, ImageView imageview, String s1, Context context, OnImageDownload onimagedownload)
    {
        this$0 = ImageDownloader.this;
        super();
        mImageView = imageview;
        url = s;
        path = s1;
        mActivity = context;
        download = onimagedownload;
    }
}
