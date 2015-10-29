// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.list;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.RelativeLayout;
import java.lang.ref.SoftReference;
import java.net.URL;
import java.util.Map;

// Referenced classes of package com.cat.list:
//            ImageDownloader, Util, OnImageDownload

private class download extends AsyncTask
{

    private OnImageDownload download;
    private Activity mActivity;
    private RelativeLayout mImageView;
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
        s = Util.getInstance().getImageName(url);
        as = bitmap;
        if (ImageDownloader.access$0(ImageDownloader.this, path, mActivity, s, bitmap))
        {
            break MISSING_BLOCK_LABEL_82;
        }
        as = bitmap;
        ImageDownloader.access$1(ImageDownloader.this, path, mActivity, s);
        as = bitmap;
        ImageDownloader.access$2(ImageDownloader.this).put(url, new SoftReference(Bitmap.createScaledBitmap(bitmap, 100, 100, true)));
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
            download.onDownloadSucc(bitmap, url, mImageView);
            ImageDownloader.access$3(ImageDownloader.this, url);
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

    public (String s, RelativeLayout relativelayout, String s1, Activity activity, OnImageDownload onimagedownload)
    {
        this$0 = ImageDownloader.this;
        super();
        mImageView = relativelayout;
        url = s;
        path = s1;
        mActivity = activity;
        download = onimagedownload;
    }
}
