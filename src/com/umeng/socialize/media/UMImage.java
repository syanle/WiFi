// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Environment;
import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import com.umeng.socialize.common.a;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.Log;
import com.umeng.socom.util.BitmapUtils;
import com.umeng.socom.util.g;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.media:
//            BaseMediaObject

public class UMImage extends BaseMediaObject
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    public static int MAX_HEIGHT = 0;
    public static int MAX_WIDTH = 0;
    private static final String h = com/umeng/socialize/media/UMImage.getName();
    private static final String i = "/umeng_cache/";
    private File j;
    private String k;
    private boolean l;
    private int m;
    private SoftReference n;
    private float o;

    public UMImage(Context context, int i1)
    {
        super("");
        k = "";
        l = false;
        m = 10;
        n = null;
        o = 2048F;
        a(context);
        context = context.getResources().openRawResourceFd(i1);
        try
        {
            a(context.createInputStream());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    public UMImage(Context context, Bitmap bitmap)
    {
        super("");
        k = "";
        l = false;
        m = 10;
        n = null;
        o = 2048F;
        a(context);
        a(bitmap);
    }

    public UMImage(Context context, File file)
    {
        super("");
        k = "";
        l = false;
        m = 10;
        n = null;
        o = 2048F;
        a(context);
        a(file);
    }

    public UMImage(Context context, String s)
    {
        super(s);
        k = "";
        l = false;
        m = 10;
        n = null;
        o = 2048F;
        a(context);
        if (!TextUtils.isEmpty(s) && !SocializeNetUtils.startWithHttp(s))
        {
            setMediaUrl(null);
            a(new File(s));
            return;
        } else
        {
            a(s);
            return;
        }
    }

    public UMImage(Context context, byte abyte0[])
    {
        super("");
        k = "";
        l = false;
        m = 10;
        n = null;
        o = 2048F;
        a(context);
        a(abyte0);
    }

    protected UMImage(Parcel parcel)
    {
        super(parcel);
        k = "";
        l = false;
        m = 10;
        n = null;
        o = 2048F;
        j = new File(parcel.readString());
        k = parcel.readString();
    }

    static File a(UMImage umimage, String s)
        throws IOException
    {
        return umimage.a(s);
    }

    private File a(String s)
        throws IOException
    {
        BitmapUtils.cleanCache();
        s = new File(getCache(), s);
        if (s.exists())
        {
            s.delete();
        }
        s.createNewFile();
        return s;
    }

    static File a(byte abyte0[], File file)
    {
        return b(abyte0, file);
    }

    static String a()
    {
        return h;
    }

    private void a(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            return;
        } else
        {
            (new Thread(new _cls4(bitmap))).start();
            return;
        }
    }

    static void a(UMImage umimage)
    {
        umimage.b();
    }

    static void a(UMImage umimage, File file)
    {
        umimage.j = file;
    }

    private void a(InputStream inputstream)
    {
        if (inputstream == null)
        {
            return;
        } else
        {
            (new _cls2(inputstream)).start();
            return;
        }
    }

    private void a(byte abyte0[])
    {
        (new Thread(new _cls3(abyte0))).start();
    }

    private byte[] a(File file)
    {
        if (file == null || !file.exists())
        {
            file = null;
        } else
        {
            byte abyte0[] = b(file);
            if (abyte0 != null && abyte0.length > 0)
            {
                String s = com.umeng.socialize.common.a.a(abyte0);
                file = abyte0;
                if (!a.m[1].equals(s))
                {
                    return b(abyte0);
                }
            } else
            {
                return null;
            }
        }
        return file;
    }

    static float b(UMImage umimage)
    {
        return umimage.o;
    }

    private static File b(byte abyte0[], File file)
    {
        Object obj = null;
        BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file));
        obj = bufferedoutputstream;
        bufferedoutputstream.write(abyte0);
        Exception exception;
        if (bufferedoutputstream != null)
        {
            try
            {
                bufferedoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                return file;
            }
        }
        return file;
        exception;
        abyte0 = null;
_L4:
        obj = abyte0;
        exception.printStackTrace();
        if (abyte0 != null)
        {
            try
            {
                abyte0.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                return file;
            }
            return file;
        } else
        {
            break MISSING_BLOCK_LABEL_33;
        }
        abyte0;
        file = ((File) (obj));
_L2:
        if (file != null)
        {
            try
            {
                file.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file) { }
        }
        throw abyte0;
        abyte0;
        file = ((File) (obj));
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        abyte0 = bufferedoutputstream;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void b()
    {
        l = true;
    }

    private static byte[] b(File file)
    {
        Object obj1 = null;
        Object obj = new FileInputStream(file);
        file = new ByteArrayOutputStream();
        byte abyte0[];
        File file1;
        file1 = file;
        abyte0 = ((byte []) (obj));
        byte abyte1[] = new byte[4096];
_L3:
        file1 = file;
        abyte0 = ((byte []) (obj));
        int i1 = ((InputStream) (obj)).read(abyte1);
        if (i1 != -1) goto _L2; else goto _L1
_L1:
        file1 = file;
        abyte0 = ((byte []) (obj));
        abyte1 = file.toByteArray();
        Exception exception;
        abyte0 = abyte1;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return abyte0;
            }
        }
        obj = abyte0;
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        file.close();
        obj = abyte0;
_L5:
        return ((byte []) (obj));
_L2:
        file1 = file;
        abyte0 = ((byte []) (obj));
        file.write(abyte1, 0, i1);
          goto _L3
        exception;
_L8:
        file1 = file;
        abyte0 = ((byte []) (obj));
        Log.e(h, "", exception);
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return null;
            }
        }
        obj = obj1;
        if (file == null) goto _L5; else goto _L4
_L4:
        file.close();
        return null;
        file;
        file1 = null;
        obj = null;
_L7:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        ((InputStream) (obj)).close();
        if (file1 != null)
        {
            try
            {
                file1.close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        throw file;
        file;
        file1 = null;
        continue; /* Loop/switch isn't completed */
        file;
        obj = abyte0;
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        file = null;
        obj = null;
          goto _L8
        exception;
        file = null;
          goto _L8
    }

    private static byte[] b(byte abyte0[])
    {
        byte abyte2[] = null;
        Object obj;
        obj = c(abyte0);
        obj = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, ((android.graphics.BitmapFactory.Options) (obj)));
        abyte0 = new ByteArrayOutputStream();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        ((Bitmap) (obj)).compress(android.graphics.Bitmap.CompressFormat.PNG, 100, abyte0);
        ((Bitmap) (obj)).recycle();
        System.gc();
        byte abyte1[] = abyte0.toByteArray();
        abyte2 = abyte1;
        if (abyte0 != null)
        {
            try
            {
                abyte0.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                return abyte1;
            }
            abyte2 = abyte1;
        }
        return abyte2;
        abyte0;
        abyte0 = null;
_L4:
        if (abyte0 != null)
        {
            try
            {
                abyte0.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                return null;
            }
            return null;
        } else
        {
            break MISSING_BLOCK_LABEL_63;
        }
        abyte1;
        abyte0 = null;
_L2:
        if (abyte0 != null)
        {
            try
            {
                abyte0.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[]) { }
        }
        throw abyte1;
        abyte1;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static byte[] bitmap2Bytes(Bitmap bitmap)
    {
        Object obj1 = null;
        if (bitmap != null) goto _L2; else goto _L1
_L1:
        Object obj = obj1;
_L4:
        return ((byte []) (obj));
_L2:
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        obj = bytearrayoutputstream;
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
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
        Log.b(h, exception.toString());
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

    private static android.graphics.BitmapFactory.Options c(byte abyte0[])
    {
        android.graphics.BitmapFactory.Options options;
        int i1;
        int j1;
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
        i1 = (int)Math.ceil(options.outWidth / MAX_WIDTH);
        j1 = (int)Math.ceil(options.outHeight / MAX_HEIGHT);
        if (j1 <= 1 || i1 <= 1) goto _L2; else goto _L1
_L1:
        if (j1 > i1)
        {
            options.inSampleSize = j1;
        } else
        {
            options.inSampleSize = i1;
        }
_L4:
        options.inJustDecodeBounds = false;
        Log.c(h, (new StringBuilder("### \u56FE\u7247\u7F29\u653E\u6BD4\u4F8B : ")).append(options.inSampleSize).toString());
        return options;
_L2:
        if (j1 > 2)
        {
            options.inSampleSize = j1;
        } else
        if (i1 > 2)
        {
            options.inSampleSize = i1;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private byte[] c()
    {
        boolean flag = false;
        if (n == null || n.get() == null || ((byte[])n.get()).length <= 0) goto _L2; else goto _L1
_L1:
        Object obj;
        Log.c(h, "### \u4ECE\u7F13\u5B58\u4E2D\u83B7\u53D6\u56FE\u7247\u6570\u636E ");
        obj = (byte[])n.get();
_L6:
        return ((byte []) (obj));
_L2:
        byte abyte0[] = new byte[0];
        if (!isUrlMedia()) goto _L4; else goto _L3
_L3:
        String s = toUrl();
        obj = abyte0;
        if (TextUtils.isEmpty(s)) goto _L6; else goto _L5
_L5:
        if (s.endsWith(".png") || s.endsWith("jpeg") || s.endsWith("jpg"))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = abyte0;
        if (!s.endsWith("gif")) goto _L6; else goto _L7
_L7:
        obj = BitmapUtils.loadImage(s, 150, 150);
        if (obj == null) goto _L9; else goto _L8
_L8:
        obj = bitmap2Bytes(((Bitmap) (obj)));
        abyte0 = ((byte []) (obj));
_L12:
        obj = abyte0;
        if (abyte0 == null) goto _L6; else goto _L10
_L10:
        obj = abyte0;
        if (abyte0.length <= 0) goto _L6; else goto _L11
_L11:
        n = new SoftReference(abyte0);
        Log.c(h, "### \u9996\u6B21\u751F\u6210\u56FE\u7247\u4E8C\u8FDB\u5236\u6570\u636E");
        return abyte0;
_L9:
        byte abyte1[] = SocializeNetUtils.getNetData(s);
        abyte0 = abyte1;
        BitmapUtils.saveBitmap(s, BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length));
          goto _L12
        Exception exception;
        exception;
_L13:
        Log.e(h, "get image data from network failed.", exception);
          goto _L12
_L4:
        int i1;
label0:
        {
            exception = abyte0;
            i1 = ((flag) ? 1 : 0);
            if (!l)
            {
                break label0;
            }
            exception = abyte0;
            i1 = ((flag) ? 1 : 0);
            if (j == null)
            {
                break label0;
            }
            abyte0 = a(j);
        }
          goto _L12
        while (i1 < 30) 
        {
            if (l && j != null)
            {
                exception = a(j);
            } else
            {
                try
                {
                    Thread.sleep(100L);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
            }
            i1++;
        }
        abyte0 = exception;
          goto _L12
        exception;
          goto _L13
    }

    static byte[] c(UMImage umimage)
    {
        return umimage.c();
    }

    protected void a(Context context)
    {
        try
        {
            k = context.getCacheDir().getCanonicalPath();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    protected void a(Object obj)
    {
        l = false;
        if (obj instanceof Bitmap)
        {
            a((Bitmap)obj);
        } else
        {
            if (obj instanceof byte[])
            {
                a((byte[])obj);
                return;
            }
            if (obj instanceof File)
            {
                obj = (File)obj;
                if (obj == null || !((File) (obj)).exists())
                {
                    Log.b(h, "the image file is no exist..");
                }
                j = ((File) (obj));
                b();
                return;
            }
            if (obj instanceof BitmapDrawable)
            {
                try
                {
                    a(((BitmapDrawable)obj).getBitmap());
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    Log.b(h, (new StringBuilder("Sorry cannot setImage..[")).append(((Exception) (obj)).toString()).append("]").toString());
                }
                return;
            }
            if (obj instanceof InputStream)
            {
                a((InputStream)obj);
                return;
            }
            if (obj instanceof String)
            {
                l = true;
                return;
            }
        }
    }

    public File getCache()
        throws IOException
    {
        Object obj;
        if (DeviceConfig.isSdCardWrittenable())
        {
            obj = Environment.getExternalStorageDirectory().getCanonicalPath();
        } else
        if (!TextUtils.isEmpty(k))
        {
            obj = k;
        } else
        {
            throw new IOException("dirpath is unknow");
        }
        obj = new File((new StringBuilder(String.valueOf(obj))).append("/umeng_cache/").toString());
        if (obj != null && !((File) (obj)).exists())
        {
            ((File) (obj)).mkdirs();
        }
        return ((File) (obj));
    }

    public String getFileName()
    {
        return g.a(String.valueOf(System.currentTimeMillis()));
    }

    public String getImageCachePath()
    {
        if (j != null && (j instanceof File))
        {
            return j.getAbsolutePath();
        } else
        {
            return null;
        }
    }

    public float getImageSizeLimit()
    {
        return o;
    }

    public int getMaxWaitTimes()
    {
        return m;
    }

    public UMediaObject.MediaType getMediaType()
    {
        return UMediaObject.MediaType.IMAGE;
    }

    public boolean isMultiMedia()
    {
        return true;
    }

    public boolean isSerialized()
    {
        return l;
    }

    public void setImageSizeLimit(float f)
    {
        o = f;
    }

    public void setMaxWaitTimes(int i1)
    {
        m = i1;
    }

    public void toByte(UMediaObject.FetchMediaDataListener fetchmediadatalistener)
    {
        if (fetchmediadatalistener == null)
        {
            return;
        }
        fetchmediadatalistener.onStart();
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            (new _cls5(fetchmediadatalistener)).execute(new Void[0]);
            return;
        } else
        {
            fetchmediadatalistener.onComplete(c());
            return;
        }
    }

    public byte[] toByte()
    {
        return c();
    }

    public String toString()
    {
        return (new StringBuilder("UMImage [fileObj=")).append(j).append(", sandCache=").append(k).append(", isSerialized=").append(l).append("media_url=").append(a).append(", qzone_title=").append(b).append(", qzone_thumb=").append(c).append("]").toString();
    }

    public final Map toUrlExtraParams()
    {
        HashMap hashmap = new HashMap();
        if (isUrlMedia())
        {
            hashmap.put(com.umeng.socialize.net.utils.a.y, a);
            hashmap.put(com.umeng.socialize.net.utils.a.z, getMediaType());
        }
        return hashmap;
    }

    public void waitImageToSerialize()
    {
        int i1 = 0;
_L2:
        if (i1 >= m)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        if (isSerialized())
        {
            return;
        }
        Thread.sleep(200L);
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        super.writeToParcel(parcel, i1);
        if (j != null)
        {
            parcel.writeString(j.getAbsolutePath());
        } else
        {
            parcel.writeString("");
        }
        parcel.writeString(k);
    }

    static 
    {
        MAX_WIDTH = 768;
        MAX_HEIGHT = 1024;
    }

    private class _cls4
        implements Runnable
    {

        final UMImage a;
        private final Bitmap b;

        public void run()
        {
            FileOutputStream fileoutputstream;
            File file;
            long l1;
            l1 = System.currentTimeMillis();
            file = com.umeng.socialize.media.UMImage.a(a, g.a(b.toString()));
            fileoutputstream = new FileOutputStream(file);
            Object obj = fileoutputstream;
            int j1 = (b.getRowBytes() * b.getHeight()) / 1024;
            obj = fileoutputstream;
            Log.c(com.umeng.socialize.media.UMImage.a(), (new StringBuilder("### bitmap size = ")).append(j1).append(" KB").toString());
            int i1;
            i1 = 100;
            obj = fileoutputstream;
            if ((float)j1 <= UMImage.b(a))
            {
                break MISSING_BLOCK_LABEL_129;
            }
            obj = fileoutputstream;
            float f = UMImage.b(a) / (float)j1;
            i1 = (int)((float)100 * f);
            obj = fileoutputstream;
            Log.c(com.umeng.socialize.media.UMImage.a(), (new StringBuilder("### \u538B\u7F29\u8D28\u91CF : ")).append(i1).toString());
            obj = fileoutputstream;
            if (b.isRecycled())
            {
                break MISSING_BLOCK_LABEL_182;
            }
            obj = fileoutputstream;
            b.compress(android.graphics.Bitmap.CompressFormat.JPEG, i1, fileoutputstream);
            obj = fileoutputstream;
            com.umeng.socialize.media.UMImage.a(a, file);
            obj = fileoutputstream;
            Log.c(com.umeng.socialize.media.UMImage.a(), (new StringBuilder("##save bitmap ")).append(file.getAbsolutePath()).toString());
            obj = fileoutputstream;
            long l2 = System.currentTimeMillis();
            obj = fileoutputstream;
            Log.c(com.umeng.socialize.media.UMImage.a(), (new StringBuilder("#### \u56FE\u7247\u5E8F\u5217\u5316\u8017\u65F6 : ")).append(l2 - l1).append(" ms.").toString());
            com.umeng.socialize.media.UMImage.a(a);
            if (fileoutputstream == null)
            {
                break MISSING_BLOCK_LABEL_276;
            }
            fileoutputstream.close();
_L2:
            return;
            Exception exception1;
            exception1;
            fileoutputstream = null;
_L5:
            obj = fileoutputstream;
            Log.b(com.umeng.socialize.media.UMImage.a(), (new StringBuilder("Sorry cannot setImage..[")).append(exception1.toString()).append("]").toString());
            com.umeng.socialize.media.UMImage.a(a);
            if (fileoutputstream == null) goto _L2; else goto _L1
_L1:
            try
            {
                fileoutputstream.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                return;
            }
            Exception exception;
            exception;
            obj = null;
_L4:
            com.umeng.socialize.media.UMImage.a(a);
            if (obj != null)
            {
                try
                {
                    ((OutputStream) (obj)).close();
                }
                catch (IOException ioexception) { }
            }
            throw exception;
            IOException ioexception1;
            ioexception1;
            return;
            exception;
            if (true) goto _L4; else goto _L3
_L3:
            exception1;
              goto _L5
        }

        _cls4(Bitmap bitmap)
        {
            a = UMImage.this;
            b = bitmap;
            super();
        }
    }


    private class _cls2 extends Thread
    {

        final UMImage a;
        private final InputStream b;

        public void run()
        {
            Object obj1;
            File file;
            file = com.umeng.socialize.media.UMImage.a(a, g.a(b.toString()));
            obj1 = new FileOutputStream(file);
            Object obj = obj1;
            byte abyte0[] = new byte[4096];
_L3:
            obj = obj1;
            if (b.read(abyte0) != -1) goto _L2; else goto _L1
_L1:
            obj = obj1;
            ((FileOutputStream) (obj1)).flush();
            if (file == null)
            {
                break MISSING_BLOCK_LABEL_71;
            }
            obj = obj1;
            com.umeng.socialize.media.UMImage.a(a, file);
            IOException ioexception2;
            com.umeng.socialize.media.UMImage.a(a);
            IOException ioexception;
            try
            {
                if (b != null)
                {
                    b.close();
                }
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
                return;
            }
            if (obj1 == null)
            {
                break MISSING_BLOCK_LABEL_100;
            }
            ((FileOutputStream) (obj1)).close();
_L5:
            return;
_L2:
            obj = obj1;
            ((FileOutputStream) (obj1)).write(abyte0);
              goto _L3
            ioexception2;
_L8:
            obj = obj1;
            ioexception2.printStackTrace();
            com.umeng.socialize.media.UMImage.a(a);
            if (b != null)
            {
                b.close();
            }
            if (obj1 == null) goto _L5; else goto _L4
_L4:
            try
            {
                ((FileOutputStream) (obj1)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
            obj1;
            obj = null;
_L7:
            com.umeng.socialize.media.UMImage.a(a);
            if (b != null)
            {
                b.close();
            }
            if (obj != null)
            {
                try
                {
                    ((FileOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
            }
            throw obj1;
            obj1;
            if (true) goto _L7; else goto _L6
_L6:
            ioexception2;
            obj1 = null;
              goto _L8
        }

        _cls2(InputStream inputstream)
        {
            a = UMImage.this;
            b = inputstream;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        final UMImage a;
        private final byte b[];

        public void run()
        {
            File file = com.umeng.socialize.media.UMImage.a(a, a.getFileName());
            file = com.umeng.socialize.media.UMImage.a(b, file);
            com.umeng.socialize.media.UMImage.a(a, file);
            com.umeng.socialize.media.UMImage.a(a);
            return;
            Object obj;
            obj;
            Log.b(com.umeng.socialize.media.UMImage.a(), (new StringBuilder("Sorry cannot setImage..[")).append(((IOException) (obj)).toString()).append("]").toString());
            com.umeng.socialize.media.UMImage.a(a);
            return;
            obj;
            com.umeng.socialize.media.UMImage.a(a);
            throw obj;
        }

        _cls3(byte abyte0[])
        {
            a = UMImage.this;
            b = abyte0;
            super();
        }
    }


    private class _cls5 extends AsyncTask
    {

        final UMImage a;
        private final UMediaObject.FetchMediaDataListener b;

        protected void a(byte abyte0[])
        {
            if (b != null)
            {
                b.onComplete(abyte0);
            }
        }

        protected transient byte[] a(Void avoid[])
        {
            return UMImage.c(a);
        }

        protected transient Object doInBackground(Object aobj[])
        {
            return a((Void[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((byte[])obj);
        }

        _cls5(UMediaObject.FetchMediaDataListener fetchmediadatalistener)
        {
            a = UMImage.this;
            b = fetchmediadatalistener;
            super();
        }
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public UMImage createFromParcel(Parcel parcel)
        {
            return new UMImage(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public UMImage[] newArray(int i1)
        {
            return new UMImage[i1];
        }

        public volatile Object[] newArray(int i1)
        {
            return newArray(i1);
        }

        _cls1()
        {
        }
    }

}
