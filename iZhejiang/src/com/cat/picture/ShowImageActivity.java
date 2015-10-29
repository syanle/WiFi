// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.picture;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.data.UpLoadData;
import com.cat.tools.APPConf;
import com.cat.tools.AWLocalInterfaces;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

// Referenced classes of package com.cat.picture:
//            ClipImageLayout

public class ShowImageActivity extends ThinkAndroidBaseActivity
{
    public class MyThread extends Thread
    {

        final ShowImageActivity this$0;

        public void run()
        {
            try
            {
                Looper.prepare();
                Commit();
            }
            catch (Exception exception) { }
            Looper.loop();
        }

        public MyThread()
        {
            this$0 = ShowImageActivity.this;
            super();
        }
    }


    Bitmap aftercut_bitmap;
    Bitmap bitmap;
    boolean btn_click;
    String content;
    private ClipImageLayout mClipImageLayout;
    private byte mContent[];
    private Handler mainHandler;

    public ShowImageActivity()
    {
        btn_click = true;
        mainHandler = null;
    }

    private void Commit()
    {
        String s;
        Object obj;
        obj = getSharedPreferences("LoginSucess", 0);
        s = ((SharedPreferences) (obj)).getString("username", "");
        String s1 = ((SharedPreferences) (obj)).getString("memberid", "");
        obj = new AWLocalInterfaces();
        s = ((AWLocalInterfaces) (obj)).upload(s, s1, (new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString(), getLocalMacAddress(), getString(0x7f060001), getString(0x7f060002), getApplicationContext());
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_194;
        }
        obj = ((AWLocalInterfaces) (obj)).parseContent(s);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            mainHandler.sendEmptyMessage(2);
            return;
        }
        try
        {
            List list = (List)obj;
            obj = getSharedPreferences("MyFragment", 0).edit();
            ((android.content.SharedPreferences.Editor) (obj)).putString("face", ((UpLoadData)list.get(0)).getFaceimg());
            ((android.content.SharedPreferences.Editor) (obj)).commit();
            mainHandler.sendEmptyMessage(3);
            return;
        }
        catch (Exception exception)
        {
            mainHandler.sendEmptyMessage(2);
        }
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final ShowImageActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 5: default 40
            //                           1 42
            //                           2 95
            //                           3 129
            //                           4 172
            //                           5 198;
                   goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
                return true;
_L2:
                if (checkNetWork())
                {
                    (new MyThread()).start();
                } else
                {
                    showMsgToast(getString(0x7f060032));
                    hideLoading();
                }
                continue; /* Loop/switch isn't completed */
_L3:
                hideLoading();
                message = new Intent();
                setResult(3, message);
                finish();
                continue; /* Loop/switch isn't completed */
_L4:
                hideLoading();
                message = new Intent();
                message.putExtra("tag", "yes");
                setResult(3, message);
                finish();
                continue; /* Loop/switch isn't completed */
_L5:
                hideLoading();
                showMsgToast(getString(0x7f060031));
                if (true) goto _L1; else goto _L6
_L6:
                hideLoading();
                message = ComData.getInstance().getpError();
                if (message != null && message.size() > 0)
                {
                    int i = 0;
                    while (i < message.size()) 
                    {
                        String s = ((PublicError)message.get(i)).getMessage();
                        showMsgToast(s);
                        i++;
                    }
                }
                if (true) goto _L1; else goto _L7
_L7:
            }

            
            {
                this$0 = ShowImageActivity.this;
                super();
            }
        });
    }

    public static int readPictureDegree(String s)
    {
        int i;
        try
        {
            i = (new ExifInterface(s)).getAttributeInt("Orientation", 1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return 0;
        }
        switch (i)
        {
        case 4: // '\004'
        case 5: // '\005'
        case 7: // '\007'
        default:
            return 0;

        case 6: // '\006'
            return 90;

        case 3: // '\003'
            return 180;

        case 8: // '\b'
            return 270;
        }
    }

    public void distoryBitmap()
    {
        if (bitmap != null && !bitmap.isRecycled())
        {
            bitmap.recycle();
        } else
        if (aftercut_bitmap != null && !aftercut_bitmap.isRecycled())
        {
            aftercut_bitmap.recycle();
            return;
        }
    }

    public String getRealPathFromURI(Uri uri)
    {
        Object obj = null;
        Cursor cursor = getContentResolver().query(uri, new String[] {
            "_data"
        }, null, null, null);
        uri = obj;
        if (cursor.moveToFirst())
        {
            uri = cursor.getString(cursor.getColumnIndexOrThrow("_data"));
        }
        cursor.close();
        return uri;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000b);
        mClipImageLayout = (ClipImageLayout)findViewById(0x7f0a0038);
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        initialHandler();
        distoryBitmap();
        bundle = getIntent().getData();
        Cursor cursor = getContentResolver().query(bundle, null, null, null, null);
        if (cursor != null)
        {
            cursor.moveToFirst();
            bundle = cursor.getString(cursor.getColumnIndex("_data"));
            String s = cursor.getString(cursor.getColumnIndex("orientation"));
            cursor.close();
            if (bundle != null)
            {
                android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
                options.inSampleSize = 3;
                bitmap = BitmapFactory.decodeFile(bundle, options);
                boolean flag = false;
                int i = ((flag) ? 1 : 0);
                if (s != null)
                {
                    i = ((flag) ? 1 : 0);
                    if (!"".equals(s))
                    {
                        i = Integer.parseInt(s);
                    }
                }
                if (i != 0)
                {
                    bundle = new Matrix();
                    int k = bitmap.getWidth();
                    int i1 = bitmap.getHeight();
                    bundle.setRotate(i);
                    bitmap = Bitmap.createBitmap(bitmap, 0, 0, k, i1, bundle, true);
                }
                bundle = new BitmapDrawable(null, bitmap);
                mClipImageLayout.setDrawable(bundle);
            }
        } else
        {
            bundle = new android.graphics.BitmapFactory.Options();
            bundle.inSampleSize = 3;
            int j = readPictureDegree((new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_FILE_NAME).toString())).getAbsolutePath());
            bitmap = BitmapFactory.decodeFile((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_FILE_NAME).toString(), bundle);
            if (bitmap == null)
            {
                finish();
            } else
            {
                bundle = new Matrix();
                int l = bitmap.getWidth();
                int j1 = bitmap.getHeight();
                bundle.setRotate(j);
                bitmap = Bitmap.createBitmap(bitmap, 0, 0, l, j1, bundle, true);
                bundle = new BitmapDrawable(null, bitmap);
                mClipImageLayout.setDrawable(bundle);
            }
        }
        ((LinearLayout)findViewById(0x7f0a0036)).setOnClickListener(new android.view.View.OnClickListener() {

            final ShowImageActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = ShowImageActivity.this;
                super();
            }
        });
        ((LinearLayout)findViewById(0x7f0a0037)).setOnClickListener(new android.view.View.OnClickListener() {

            final ShowImageActivity this$0;

            public void onClick(View view)
            {
                if (btn_click)
                {
                    showLoading();
                    aftercut_bitmap = mClipImageLayout.clip();
                    if (aftercut_bitmap != null)
                    {
                        try
                        {
                            saveBitmap(aftercut_bitmap);
                        }
                        // Misplaced declaration of an exception variable
                        catch (View view)
                        {
                            view.printStackTrace();
                        }
                        mainHandler.sendEmptyMessage(2);
                        btn_click = false;
                    }
                }
            }

            
            {
                this$0 = ShowImageActivity.this;
                super();
            }
        });
    }

    public void saveBitmap(Bitmap bitmap1)
        throws IOException
    {
        if (!CreatFileSdcard())
        {
            break MISSING_BLOCK_LABEL_79;
        }
        Object obj = new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString());
        if (!((File) (obj)).exists())
        {
            try
            {
                ((File) (obj)).createNewFile();
            }
            catch (Exception exception) { }
        }
        obj = new FileOutputStream(((File) (obj)));
        if (bitmap1.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, ((java.io.OutputStream) (obj))))
        {
            ((FileOutputStream) (obj)).flush();
            ((FileOutputStream) (obj)).close();
        }
        break MISSING_BLOCK_LABEL_79;
        bitmap1;
_L3:
        bitmap1.printStackTrace();
          goto _L1
        bitmap1;
_L2:
        bitmap1.printStackTrace();
_L1:
        try
        {
            bitmap1 = new android.graphics.BitmapFactory.Options();
            bitmap1.inSampleSize = 3;
            bitmap1 = BitmapFactory.decodeFile((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString(), bitmap1);
            obj = new FileOutputStream(new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString()));
            bitmap1.compress(android.graphics.Bitmap.CompressFormat.JPEG, 40, ((java.io.OutputStream) (obj)));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap1)
        {
            bitmap1.printStackTrace();
        }
        return;
        bitmap1;
          goto _L2
        bitmap1;
          goto _L3
    }






}
