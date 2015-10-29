// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.list;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.lang.ref.SoftReference;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.cat.list:
//            Util, OnImageDownload

public class ImageDownloader
{
    private class MyAsyncTask extends AsyncTask
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
            if (setBitmapToFile(path, mActivity, s, bitmap))
            {
                break MISSING_BLOCK_LABEL_82;
            }
            as = bitmap;
            removeBitmapFromFile(path, mActivity, s);
            as = bitmap;
            imageCaches.put(url, new SoftReference(Bitmap.createScaledBitmap(bitmap, 100, 100, true)));
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
                removeTaskFormMap(url);
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

        public MyAsyncTask(String s, RelativeLayout relativelayout, String s1, Activity activity, OnImageDownload onimagedownload)
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

    private class MyAsyncTask2 extends AsyncTask
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
            if (setBitmapToFile2(path, mActivity, s, bitmap))
            {
                break MISSING_BLOCK_LABEL_82;
            }
            as = bitmap;
            removeBitmapFromFile2(path, mActivity, s);
            as = bitmap;
            imageCaches2.put(url, new SoftReference(Bitmap.createScaledBitmap(bitmap, 100, 100, true)));
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
                removeTaskFormMap2(url);
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

        public MyAsyncTask2(String s, ImageView imageview, String s1, Context context, OnImageDownload onimagedownload)
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


    private static final String TAG = "ImageDownloader";
    private Map imageCaches;
    private Map imageCaches2;
    private HashMap map;
    private HashMap map2;

    public ImageDownloader()
    {
        map = new HashMap();
        map2 = new HashMap();
        imageCaches = new HashMap();
        imageCaches2 = new HashMap();
    }

    private Bitmap getBitmapFromFile(Activity activity, String s, String s1)
    {
        Bitmap bitmap;
        Object obj;
        obj = null;
        bitmap = obj;
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!Util.getInstance().hasSDCard()) goto _L4; else goto _L3
_L3:
        activity = new StringBuilder(String.valueOf(Util.getInstance().getExtPath()));
        if (s1 == null) goto _L6; else goto _L5
_L5:
        if (!s1.startsWith("/")) goto _L6; else goto _L7
_L7:
        activity = activity.append(s1).toString();
_L9:
        activity = new File(activity, s);
        bitmap = obj;
        if (activity.exists())
        {
            bitmap = BitmapFactory.decodeStream(new FileInputStream(activity));
        }
_L2:
        return bitmap;
_L6:
        try
        {
            s1 = (new StringBuilder("/")).append(s1).toString();
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity) { }
          goto _L8
_L4:
        activity = new StringBuilder(String.valueOf(Util.getInstance().getPackagePath(activity)));
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        if (!s1.startsWith("/"))
        {
            break MISSING_BLOCK_LABEL_159;
        }
_L10:
        activity = activity.append(s1).toString();
          goto _L9
        s1 = (new StringBuilder("/")).append(s1).toString();
          goto _L10
_L8:
        activity.printStackTrace();
        return null;
          goto _L9
        activity;
        if (true) goto _L8; else goto _L11
_L11:
        if (true) goto _L7; else goto _L12
_L12:
    }

    private Bitmap getBitmapFromFile2(Context context, String s, String s1)
    {
        Bitmap bitmap;
        Object obj;
        obj = null;
        bitmap = obj;
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!Util.getInstance().hasSDCard()) goto _L4; else goto _L3
_L3:
        context = new StringBuilder(String.valueOf(Util.getInstance().getExtPath()));
        if (s1 == null) goto _L6; else goto _L5
_L5:
        if (!s1.startsWith("/")) goto _L6; else goto _L7
_L7:
        context = context.append(s1).toString();
_L9:
        context = new File(context, s);
        bitmap = obj;
        if (context.exists())
        {
            bitmap = BitmapFactory.decodeStream(new FileInputStream(context));
        }
_L2:
        return bitmap;
_L6:
        try
        {
            s1 = (new StringBuilder("/")).append(s1).toString();
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
          goto _L8
_L4:
        context = new StringBuilder(String.valueOf(Util.getInstance().getPackagePath2(context)));
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        if (!s1.startsWith("/"))
        {
            break MISSING_BLOCK_LABEL_159;
        }
_L10:
        context = context.append(s1).toString();
          goto _L9
        s1 = (new StringBuilder("/")).append(s1).toString();
          goto _L10
_L8:
        context.printStackTrace();
        return null;
          goto _L9
        context;
        if (true) goto _L8; else goto _L11
_L11:
        if (true) goto _L7; else goto _L12
_L12:
    }

    private boolean isTasksContains(String s)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (map != null)
        {
            flag = flag1;
            if (map.get(s) != null)
            {
                flag = true;
            }
        }
        return flag;
    }

    private boolean isTasksContains2(String s)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (map2 != null)
        {
            flag = flag1;
            if (map2.get(s) != null)
            {
                flag = true;
            }
        }
        return flag;
    }

    private boolean needCreateNewTask(View view)
    {
        boolean flag1 = true;
        boolean flag = flag1;
        if (view != null)
        {
            flag = flag1;
            if (isTasksContains((String)view.getTag()))
            {
                flag = false;
            }
        }
        return flag;
    }

    private boolean needCreateNewTask2(View view)
    {
        boolean flag1 = true;
        boolean flag = flag1;
        if (view != null)
        {
            flag = flag1;
            if (isTasksContains2((String)view.getTag()))
            {
                flag = false;
            }
        }
        return flag;
    }

    private void removeBitmapFromFile(String s, Activity activity, String s1)
    {
        if (!Util.getInstance().hasSDCard()) goto _L2; else goto _L1
_L1:
        activity = new StringBuilder(String.valueOf(Util.getInstance().getExtPath()));
        if (s == null) goto _L4; else goto _L3
_L3:
        if (!s.startsWith("/")) goto _L4; else goto _L5
_L5:
        s = activity.append(s).toString();
_L9:
        s = new File(s, s1);
        if (s == null) goto _L7; else goto _L6
_L6:
        try
        {
            s.delete();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
          goto _L8
_L4:
        try
        {
            s = (new StringBuilder("/")).append(s).toString();
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
          goto _L8
_L2:
        activity = new StringBuilder(String.valueOf(Util.getInstance().getPackagePath(activity)));
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        if (!s.startsWith("/"))
        {
            break MISSING_BLOCK_LABEL_131;
        }
_L10:
        s = activity.append(s).toString();
          goto _L9
        s = (new StringBuilder("/")).append(s).toString();
          goto _L10
_L8:
        s.printStackTrace();
        return;
          goto _L9
_L7:
        return;
        if (true) goto _L5; else goto _L11
_L11:
    }

    private void removeBitmapFromFile2(String s, Context context, String s1)
    {
        if (!Util.getInstance().hasSDCard()) goto _L2; else goto _L1
_L1:
        context = new StringBuilder(String.valueOf(Util.getInstance().getExtPath()));
        if (s == null) goto _L4; else goto _L3
_L3:
        if (!s.startsWith("/")) goto _L4; else goto _L5
_L5:
        s = context.append(s).toString();
_L9:
        s = new File(s, s1);
        if (s == null) goto _L7; else goto _L6
_L6:
        try
        {
            s.delete();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
          goto _L8
_L4:
        try
        {
            s = (new StringBuilder("/")).append(s).toString();
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
          goto _L8
_L2:
        context = new StringBuilder(String.valueOf(Util.getInstance().getPackagePath2(context)));
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        if (!s.startsWith("/"))
        {
            break MISSING_BLOCK_LABEL_131;
        }
_L10:
        s = context.append(s).toString();
          goto _L9
        s = (new StringBuilder("/")).append(s).toString();
          goto _L10
_L8:
        s.printStackTrace();
        return;
          goto _L9
_L7:
        return;
        if (true) goto _L5; else goto _L11
_L11:
    }

    private void removeTaskFormMap(String s)
    {
        if (s != null && map != null && map.get(s) != null)
        {
            map.remove(s);
            System.out.println((new StringBuilder("\u5F53\u524Dmap\u7684\u5927\u5C0F==")).append(map.size()).toString());
        }
    }

    private void removeTaskFormMap2(String s)
    {
        if (s != null && map2 != null && map2.get(s) != null)
        {
            map2.remove(s);
            System.out.println((new StringBuilder("\u5F53\u524Dmap\u7684\u5927\u5C0F==")).append(map.size()).toString());
        }
    }

    private boolean setBitmapToFile(String s, Activity activity, String s1, Bitmap bitmap)
    {
        if (!Util.getInstance().hasSDCard()) goto _L2; else goto _L1
_L1:
        Object obj = new StringBuilder(String.valueOf(Util.getInstance().getExtPath()));
        if (s == null) goto _L4; else goto _L3
_L3:
        if (!s.startsWith("/")) goto _L4; else goto _L5
_L5:
        s = ((StringBuilder) (obj)).append(s).toString();
_L9:
        obj = new File(s, s1);
        if (!((File) (obj)).exists())
        {
            (new File((new StringBuilder(String.valueOf(s))).append("/").toString())).mkdirs();
        }
        ((File) (obj)).createNewFile();
        if (!Util.getInstance().hasSDCard()) goto _L7; else goto _L6
_L6:
        s = new FileOutputStream(((File) (obj)));
_L11:
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_267;
        }
        if (!s1.contains(".png") && !s1.contains(".PNG"))
        {
            break MISSING_BLOCK_LABEL_267;
        }
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 90, s);
_L12:
        s.flush();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        s.close();
        return true;
_L4:
        try
        {
            s = (new StringBuilder("/")).append(s).toString();
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
          goto _L8
_L2:
        obj = new StringBuilder(String.valueOf(Util.getInstance().getPackagePath(activity)));
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_237;
        }
        if (!s.startsWith("/"))
        {
            break MISSING_BLOCK_LABEL_237;
        }
_L10:
        s = ((StringBuilder) (obj)).append(s).toString();
          goto _L9
        s = (new StringBuilder("/")).append(s).toString();
          goto _L10
_L7:
        s = activity.openFileOutput(s1, 0);
          goto _L11
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, s);
          goto _L12
        s;
_L14:
        s.printStackTrace();
        return false;
_L8:
        if (true) goto _L14; else goto _L13
_L13:
        if (true) goto _L5; else goto _L15
_L15:
    }

    private boolean setBitmapToFile2(String s, Context context, String s1, Bitmap bitmap)
    {
        if (!Util.getInstance().hasSDCard()) goto _L2; else goto _L1
_L1:
        Object obj = new StringBuilder(String.valueOf(Util.getInstance().getExtPath()));
        if (s == null) goto _L4; else goto _L3
_L3:
        if (!s.startsWith("/")) goto _L4; else goto _L5
_L5:
        s = ((StringBuilder) (obj)).append(s).toString();
_L9:
        obj = new File(s, s1);
        if (!((File) (obj)).exists())
        {
            (new File((new StringBuilder(String.valueOf(s))).append("/").toString())).mkdirs();
        }
        ((File) (obj)).createNewFile();
        if (!Util.getInstance().hasSDCard()) goto _L7; else goto _L6
_L6:
        s = new FileOutputStream(((File) (obj)));
_L11:
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_267;
        }
        if (!s1.contains(".png") && !s1.contains(".PNG"))
        {
            break MISSING_BLOCK_LABEL_267;
        }
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 90, s);
_L12:
        s.flush();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        s.close();
        return true;
_L4:
        try
        {
            s = (new StringBuilder("/")).append(s).toString();
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
          goto _L8
_L2:
        obj = new StringBuilder(String.valueOf(Util.getInstance().getPackagePath2(context)));
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_237;
        }
        if (!s.startsWith("/"))
        {
            break MISSING_BLOCK_LABEL_237;
        }
_L10:
        s = ((StringBuilder) (obj)).append(s).toString();
          goto _L9
        s = (new StringBuilder("/")).append(s).toString();
          goto _L10
_L7:
        s = context.openFileOutput(s1, 0);
          goto _L11
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, s);
          goto _L12
        s;
_L14:
        s.printStackTrace();
        return false;
_L8:
        if (true) goto _L14; else goto _L13
_L13:
        if (true) goto _L5; else goto _L15
_L15:
    }

    public void imageDownload(String s, RelativeLayout relativelayout, String s1, Activity activity, OnImageDownload onimagedownload)
    {
        SoftReference softreference = (SoftReference)imageCaches.get(s);
        Bitmap bitmap = null;
        if (softreference != null)
        {
            bitmap = (Bitmap)softreference.get();
        }
        String s2 = "";
        if (s != null)
        {
            s2 = Util.getInstance().getImageName(s);
        }
        if (softreference != null && relativelayout != null && bitmap != null && s.equals(relativelayout.getTag()))
        {
            System.out.println((new StringBuilder("\u4ECE\u8F6F\u5F15\u7528\u4E2D\u62FF\u6570\u636E--imageName==")).append(s2).toString());
            s = new BitmapDrawable(null, bitmap);
            relativelayout.setBackgroundDrawable(null);
            relativelayout.setBackgroundDrawable(s);
        } else
        if (relativelayout != null && s.equals(relativelayout.getTag()))
        {
            Bitmap bitmap1 = getBitmapFromFile(activity, s2, s1);
            if (bitmap1 != null)
            {
                s1 = new BitmapDrawable(null, bitmap1);
                relativelayout.setBackgroundDrawable(null);
                relativelayout.setBackgroundDrawable(s1);
                imageCaches.put(s, new SoftReference(bitmap1));
                return;
            }
            if (s != null && needCreateNewTask(relativelayout))
            {
                s1 = new MyAsyncTask(s, relativelayout, s1, activity, onimagedownload);
                if (relativelayout != null)
                {
                    Log.i("ImageDownloader", (new StringBuilder("\u6267\u884CMyAsyncTask --> ")).append(Util.flag).toString());
                    Util.flag++;
                    s1.execute(new String[0]);
                    map.put(s, s1);
                    return;
                }
            }
        }
    }

    public void imageDownload2(String s, ImageView imageview, String s1, Context context, OnImageDownload onimagedownload)
    {
        SoftReference softreference = (SoftReference)imageCaches2.get(s);
        Bitmap bitmap = null;
        if (softreference != null)
        {
            bitmap = (Bitmap)softreference.get();
        }
        String s2 = "";
        if (s != null)
        {
            s2 = Util.getInstance().getImageName2(s);
        }
        if (softreference != null && imageview != null && bitmap != null && s.equals(imageview.getTag()))
        {
            System.out.println((new StringBuilder("\u4ECE\u8F6F\u5F15\u7528\u4E2D\u62FF\u6570\u636E--imageName==")).append(s2).toString());
            s = new BitmapDrawable(null, bitmap);
            imageview.setBackgroundDrawable(null);
            imageview.setBackgroundDrawable(s);
        } else
        if (imageview != null && s.equals(imageview.getTag()))
        {
            Bitmap bitmap1 = getBitmapFromFile2(context, s2, s1);
            if (bitmap1 != null)
            {
                s1 = new BitmapDrawable(null, bitmap1);
                imageview.setBackgroundDrawable(null);
                imageview.setBackgroundDrawable(s1);
                imageCaches2.put(s, new SoftReference(bitmap1));
                return;
            }
            if (s != null && needCreateNewTask2(imageview))
            {
                s1 = new MyAsyncTask2(s, imageview, s1, context, onimagedownload);
                if (imageview != null)
                {
                    Log.i("ImageDownloader", (new StringBuilder("\u6267\u884CMyAsyncTask --> ")).append(Util.flag).toString());
                    Util.flag++;
                    s1.execute(new String[0]);
                    map2.put(s, s1);
                    return;
                }
            }
        }
    }








}
