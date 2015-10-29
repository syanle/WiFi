// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

// Referenced classes of package com.tencent.sdkutil:
//            Util

public class AsynScaleCompressImage
{

    private static final int UPLOAD_IMAGE_MAX_LENGTH = 140;
    private static final int UPLOAD_IMAGE_MSG_ERROR = 102;
    private static final int UPLOAD_IMAGE_MSG_OK = 101;
    private static final int UPLOAD_QZONE_IMAGE_MAX_LENGTH = 840;

    public AsynScaleCompressImage()
    {
    }

    public static final void batchScaleCompressImage(Context context, final ArrayList imgPaths, AsynLoadImg.AsynLoadImgBack asynloadimgback)
    {
        if (imgPaths == null)
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
            (new Thread(new _cls4())).start();
            return;
        }
    }

    protected static final String compressBitmap(Bitmap bitmap, String s, String s1)
    {
        File file = new File(s);
        if (!file.exists())
        {
            file.mkdirs();
        }
        s = s + s1;
        s1 = new File(s);
        if (s1.exists())
        {
            s1.delete();
        }
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        s1 = new FileOutputStream(s1);
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 80, s1);
        s1.flush();
        s1.close();
        bitmap.recycle();
        return s;
        bitmap;
        bitmap.printStackTrace();
_L2:
        return null;
        bitmap;
        bitmap.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static Bitmap scaleBitmap(Bitmap bitmap, int i)
    {
        Matrix matrix = new Matrix();
        int j = bitmap.getWidth();
        int k = bitmap.getHeight();
        float f;
        if (j <= k)
        {
            j = k;
        }
        f = (float)i / (float)j;
        matrix.postScale(f, f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static final void scaleCompressImage(Context context, final String imgPath, AsynLoadImg.AsynLoadImgBack asynloadimgback)
    {
        if (TextUtils.isEmpty(imgPath))
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
            (new Thread(new _cls2())).start();
            return;
        }
    }


    private class _cls4
        implements Runnable
    {

        final Handler val$handler;
        final ArrayList val$imgPaths;

        public void run()
        {
            for (int i = 0; i < imgPaths.size(); i++)
            {
                String s1 = (String)imgPaths.get(i);
                if (Util.isValidUrl(s1) || !Util.fileExists(s1))
                {
                    continue;
                }
                Object obj = BitmapFactory.decodeFile(s1);
                if (obj == null)
                {
                    continue;
                }
                String s = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/tmp/").toString();
                s1 = Util.encrypt(s1);
                s1 = (new StringBuilder()).append("share2qzone_temp").append(s1).append(".jpg").toString();
                obj = AsynScaleCompressImage.compressBitmap(AsynScaleCompressImage.scaleBitmap(((Bitmap) (obj)), 840), s, s1);
                if (obj != null)
                {
                    imgPaths.set(i, obj);
                }
            }

            Message message = handler.obtainMessage(101);
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("images", imgPaths);
            message.setData(bundle);
            handler.sendMessage(message);
        }

        _cls4()
        {
            imgPaths = arraylist;
            handler = handler1;
            super();
        }
    }


    private class _cls3 extends Handler
    {

        final AsynLoadImg.AsynLoadImgBack val$asynLoadImgBack;

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                super.handleMessage(message);
                return;

            case 101: // 'e'
                message = message.getData().getStringArrayList("images");
                break;
            }
            asynLoadImgBack.batchSaved(0, message);
        }

        _cls3(AsynLoadImg.AsynLoadImgBack asynloadimgback)
        {
            asynLoadImgBack = asynloadimgback;
            super(final_looper);
        }
    }


    private class _cls2
        implements Runnable
    {

        final Handler val$handler;
        final String val$imgPath;

        public void run()
        {
            Object obj = BitmapFactory.decodeFile(imgPath);
            if (obj != null)
            {
                String s = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/tmp/").toString();
                String s1 = Util.encrypt(imgPath);
                s1 = (new StringBuilder()).append("share2qq_temp").append(s1).append(".jpg").toString();
                obj = AsynScaleCompressImage.compressBitmap(AsynScaleCompressImage.scaleBitmap(((Bitmap) (obj)), 140), s, s1);
                if (obj != null)
                {
                    Message message = handler.obtainMessage(101);
                    message.obj = obj;
                    handler.sendMessage(message);
                    return;
                }
            }
            obj = handler.obtainMessage(102);
            obj.arg1 = 3;
            handler.sendMessage(((Message) (obj)));
        }

        _cls2()
        {
            imgPath = s;
            handler = handler1;
            super();
        }
    }


    private class _cls1 extends Handler
    {

        final AsynLoadImg.AsynLoadImgBack val$asynLoadImgBack;

        public void handleMessage(Message message)
        {
            int i;
            switch (message.what)
            {
            default:
                super.handleMessage(message);
                return;

            case 101: // 'e'
                message = (String)message.obj;
                asynLoadImgBack.saved(0, message);
                return;

            case 102: // 'f'
                i = message.arg1;
                break;
            }
            asynLoadImgBack.saved(i, null);
        }

        _cls1(AsynLoadImg.AsynLoadImgBack asynloadimgback)
        {
            asynLoadImgBack = asynloadimgback;
            super(final_looper);
        }
    }

}
