// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.tencent.sdkutil:
//            Util

public class AsynLoadImg
{

    private static String ALBUM_PATH;
    private static final String TAG = "AsynLoadImg";
    private String imgUrl;
    private String localImageLocalPath;
    private Handler messageHandler;
    private AsynLoadImgBack saveCallBack;
    private Runnable saveFileRunnable;
    private long startTime;

    public AsynLoadImg()
    {
        localImageLocalPath = "";
        saveFileRunnable = new _cls2();
        messageHandler = new _cls1();
    }

    public static Bitmap getbitmap(String s)
    {
        Log.v("AsynLoadImg", (new StringBuilder()).append("getbitmap:").append(s).toString());
        Bitmap bitmap;
        try
        {
            Object obj = (HttpURLConnection)(new URL(s)).openConnection();
            ((HttpURLConnection) (obj)).setDoInput(true);
            ((HttpURLConnection) (obj)).connect();
            obj = ((HttpURLConnection) (obj)).getInputStream();
            bitmap = BitmapFactory.decodeStream(((InputStream) (obj)));
            ((InputStream) (obj)).close();
            Log.v("AsynLoadImg", (new StringBuilder()).append("image download finished.").append(s).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            Log.v("AsynLoadImg", "getbitmap bmp fail---");
            return null;
        }
        return bitmap;
    }

    public String getLocalImageLocalPath()
    {
        return localImageLocalPath;
    }

    public void save(String s, AsynLoadImgBack asynloadimgback)
    {
        Log.v("AsynLoadImg", "--save---");
        if (s == null || s.equals(""))
        {
            asynloadimgback.saved(1, null);
            return;
        }
        if (!Util.checkSd())
        {
            asynloadimgback.saved(2, null);
            return;
        } else
        {
            ALBUM_PATH = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/tmp/").toString();
            startTime = System.currentTimeMillis();
            imgUrl = s;
            saveCallBack = asynloadimgback;
            (new Thread(saveFileRunnable)).start();
            return;
        }
    }

    public boolean saveFile(Bitmap bitmap, String s)
    {
        String s1 = ALBUM_PATH;
        try
        {
            File file = new File(s1);
            if (!file.exists())
            {
                file.mkdir();
            }
            s1 = (new StringBuilder()).append(s1).append(s).toString();
            Log.v("AsynLoadImg", (new StringBuilder()).append("saveFile:").append(s).toString());
            s = new BufferedOutputStream(new FileOutputStream(new File(s1)));
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 80, s);
            s.flush();
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            Log.v("AsynLoadImg", "saveFile bmp fail---");
            return false;
        }
        return true;
    }

    public void setLocalImageLocalPath(String s)
    {
        localImageLocalPath = s;
        Log.e("AsynLoadImg", (new StringBuilder()).append("localImageLocalPath:").append(localImageLocalPath).toString());
    }






    private class _cls2
        implements Runnable
    {

        final AsynLoadImg this$0;

        public void run()
        {
            Log.v("AsynLoadImg", "saveFileRunnable:");
            String s = Util.encrypt(imgUrl);
            s = (new StringBuilder()).append("share_qq_").append(s).append(".jpg").toString();
            String s1 = (new StringBuilder()).append(AsynLoadImg.ALBUM_PATH).append(s).toString();
            File file = new File(s1);
            Message message = messageHandler.obtainMessage();
            if (file.exists())
            {
                message.arg1 = 0;
                message.obj = s1;
                Log.v("AsynLoadImg", (new StringBuilder()).append("file exists: time:").append(System.currentTimeMillis() - startTime).toString());
            } else
            {
                Bitmap bitmap = AsynLoadImg.getbitmap(imgUrl);
                boolean flag;
                if (bitmap != null)
                {
                    flag = saveFile(bitmap, s);
                } else
                {
                    Log.v("AsynLoadImg", "saveFileRunnable:get bmp fail---");
                    flag = false;
                }
                if (flag)
                {
                    message.arg1 = 0;
                    message.obj = s1;
                } else
                {
                    message.arg1 = 1;
                }
                Log.v("AsynLoadImg", (new StringBuilder()).append("file not exists: download time:").append(System.currentTimeMillis() - startTime).toString());
            }
            messageHandler.sendMessage(message);
        }

        _cls2()
        {
            this$0 = AsynLoadImg.this;
            super();
        }
    }


    private class _cls1 extends Handler
    {

        final AsynLoadImg this$0;

        public void handleMessage(Message message)
        {
            Log.v("AsynLoadImg", (new StringBuilder()).append("handleMessage:").append(message.arg1).toString());
            if (message.arg1 == 0)
            {
                String s = (String)message.obj;
                setLocalImageLocalPath(s);
                saveCallBack.saved(message.arg1, s);
                return;
            } else
            {
                saveCallBack.saved(message.arg1, null);
                return;
            }
        }

        _cls1()
        {
            this$0 = AsynLoadImg.this;
            super();
        }
    }


    private class AsynLoadImgBack
    {

        public abstract void batchSaved(int i, ArrayList arraylist);

        public abstract void saved(int i, String s);
    }

}
