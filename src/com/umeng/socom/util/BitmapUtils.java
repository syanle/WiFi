// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socom.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.media.UMImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Arrays;
import java.util.Comparator;

// Referenced classes of package com.umeng.socom.util:
//            g

public class BitmapUtils
{
    private static class a
        implements Comparator
    {

        public int a(File file, File file1)
        {
            if (file.lastModified() > file1.lastModified())
            {
                return 1;
            }
            return file.lastModified() != file1.lastModified() ? -1 : 0;
        }

        public int compare(Object obj, Object obj1)
        {
            return a((File)obj, (File)obj1);
        }

        private a()
        {
        }

        a(a a1)
        {
            this();
        }
    }


    public static final int COMPRESS_FLAG = 0x300000;
    public static final String FOLDER = "umeng_cache";
    public static String PATH = "/mnt/sdcard/";
    private static final String a = com/umeng/socom/util/BitmapUtils.getName();
    private static final int b = 0x100000;
    private static final int c = 40;
    private static final int d = 10;

    public BitmapUtils()
    {
    }

    private static int a()
    {
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return (int)(((double)statfs.getAvailableBlocks() * (double)statfs.getBlockSize()) / 1048576D);
    }

    private static android.graphics.BitmapFactory.Options a(String s, int i, int j)
    {
        android.graphics.BitmapFactory.Options options;
        s = a(s);
        if (s == null)
        {
            return null;
        }
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(s, null, options);
        j = (int)Math.ceil(options.outHeight / j);
        i = (int)Math.ceil(options.outWidth / i);
        if (j <= 1 || i <= 1) goto _L2; else goto _L1
_L1:
        if (j <= i) goto _L4; else goto _L3
_L3:
        options.inSampleSize = j;
_L2:
        options.inJustDecodeBounds = false;
_L5:
        a(((InputStream) (s)));
        return options;
_L4:
        options.inSampleSize = i;
          goto _L2
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L5
    }

    private static InputStream a(String s)
    {
        Object obj = new FileInputStream(new File(getFileName(s)));
_L2:
        Object obj1;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        obj1 = obj;
        if (((InputStream) (obj)).available() > 0)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        obj1 = (new URL(s)).openStream();
        saveBitmap(getFileName(s), BitmapFactory.decodeStream(((InputStream) (obj1))));
        s = new FileInputStream(new File(getFileName(s)));
        obj1 = s;
        return ((InputStream) (obj1));
        obj;
        ((Exception) (obj)).printStackTrace();
        obj = null;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        obj = null;
_L4:
        Log.e("BitmapUtil", (new StringBuilder("\u8BFB\u53D6\u56FE\u7247\u6D41\u51FA\u9519")).append(s.toString()).toString());
        return ((InputStream) (obj));
        s;
        continue; /* Loop/switch isn't completed */
        s;
        obj = obj1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void a(InputStream inputstream)
    {
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        inputstream.close();
        return;
        inputstream;
        Log.d(a, inputstream.toString());
        return;
    }

    private static void b(String s)
        throws Exception
    {
        boolean flag;
        flag = false;
        s = (new File(s)).listFiles();
        if (s.length != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = 0;
        int j = 0;
        do
        {
label0:
            {
                if (i < s.length)
                {
                    break label0;
                }
                if (j > 0xa00000 || 40 > a())
                {
                    j = (int)(0.40000000000000002D * (double)s.length + 1.0D);
                    Arrays.sort(s, new a(null));
                    i = ((flag) ? 1 : 0);
                    while (i < j) 
                    {
                        s[i].delete();
                        i++;
                    }
                }
            }
            if (true)
            {
                continue;
            }
            j = (int)((long)j + s[i].length());
            i++;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static byte[] bitmap2Bytes(Bitmap bitmap)
    {
        Object obj1 = null;
        if (bitmap != null && !bitmap.isRecycled()) goto _L2; else goto _L1
_L1:
        Object obj;
        Log.d(a, "bitmap2Bytes  ==> bitmap == null or bitmap.isRecycled()");
        obj = obj1;
_L4:
        return ((byte []) (obj));
_L2:
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        obj = bytearrayoutputstream;
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, bytearrayoutputstream);
        obj = bytearrayoutputstream;
        bitmap = bytearrayoutputstream.toByteArray();
        obj = bitmap;
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                return bitmap;
            }
            return bitmap;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        bitmap = null;
_L8:
        obj = bitmap;
        Log.e(a, exception.toString());
        obj = obj1;
        if (bitmap == null) goto _L4; else goto _L5
_L5:
        try
        {
            bitmap.close();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            return null;
        }
        return null;
        bitmap;
        obj = null;
_L7:
        if (obj != null)
        {
            try
            {
                ((ByteArrayOutputStream) (obj)).close();
            }
            catch (IOException ioexception) { }
        }
        throw bitmap;
        bitmap;
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        bitmap = bytearrayoutputstream;
          goto _L8
    }

    public static void cleanCache()
    {
        init();
    }

    public static Bitmap getBitmapFromFile(String s)
    {
        s = a(s);
        if (s == null)
        {
            return null;
        } else
        {
            Bitmap bitmap = BitmapFactory.decodeStream(s, null, null);
            a(s);
            return bitmap;
        }
    }

    public static Bitmap getBitmapFromFile(String s, int i, int j)
    {
        InputStream inputstream = a(s);
        if (inputstream == null)
        {
            return null;
        } else
        {
            s = BitmapFactory.decodeStream(inputstream, null, a(s, i, j));
            a(inputstream);
            return s;
        }
    }

    public static android.graphics.BitmapFactory.Options getBitmapOptions(byte abyte0[])
    {
        android.graphics.BitmapFactory.Options options;
        int i;
        int j;
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
        i = (int)Math.ceil(options.outWidth / UMImage.MAX_WIDTH);
        j = (int)Math.ceil(options.outHeight / UMImage.MAX_HEIGHT);
        if (j <= 1 || i <= 1) goto _L2; else goto _L1
_L1:
        if (j > i)
        {
            options.inSampleSize = j;
        } else
        {
            options.inSampleSize = i;
        }
_L4:
        options.inJustDecodeBounds = false;
        return options;
_L2:
        if (j > 2)
        {
            options.inSampleSize = j;
        } else
        if (i > 2)
        {
            options.inSampleSize = i;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String getFileName(String s)
    {
        String s1;
label0:
        {
            if (!s.startsWith("http://"))
            {
                s1 = s;
                if (!s.startsWith("https://"))
                {
                    break label0;
                }
            }
            s1 = (new StringBuilder(String.valueOf(PATH))).append(g.a(s)).toString();
        }
        return s1;
    }

    public static void init()
    {
        File file;
        if (Environment.getExternalStorageState().equals("mounted"))
        {
            PATH = (new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getPath()))).append(File.separator).append("umeng_cache").append(File.separator).toString();
        } else
        {
            PATH = (new StringBuilder(String.valueOf(Environment.getDataDirectory().getPath()))).append(File.separator).append("umeng_cache").append(File.separator).toString();
        }
        file = new File(PATH);
        if (!file.exists())
        {
            file.mkdir();
        }
        try
        {
            b(PATH);
        }
        catch (Exception exception)
        {
            Log.d("BitmapUtils", (new StringBuilder("\u6E05\u9664\u7F13\u5B58\u629B\u51FA\u5F02\u5E38 \uFF1A ")).append(exception.toString()).toString());
        }
        System.gc();
    }

    public static boolean isCacheFileExist(String s)
    {
        return (new File(getFileName(s))).exists();
    }

    public static boolean isNeedScale(String s, int i)
    {
        s = new File(getFileName(s));
        return s.exists() && s.length() >= (long)i;
    }

    public static boolean isScaleBitmap(String s, int i)
    {
        s = new File(getFileName(s));
        return s.exists() && s.length() >= (long)i;
    }

    public static Bitmap loadImage(String s, int i, int j)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        }
        InputStream inputstream1 = a(s);
        InputStream inputstream = inputstream1;
        s = BitmapFactory.decodeStream(inputstream1, null, a(s, i, j));
        a(inputstream1);
        return s;
        s;
        inputstream1 = null;
_L4:
        inputstream = inputstream1;
        s.printStackTrace();
        a(inputstream1);
        return null;
        s;
        inputstream = null;
_L2:
        a(inputstream);
        throw s;
        s;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void saveBitmap(String s, Bitmap bitmap)
    {
        s = new BufferedOutputStream(new FileOutputStream(getFileName(s)));
        byte byte0 = 100;
        if (bitmap.getRowBytes() * bitmap.getHeight() > 0x300000)
        {
            byte0 = 80;
        }
        try
        {
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, byte0, s);
            s.flush();
            s.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        return;
    }

    static 
    {
        init();
    }
}
