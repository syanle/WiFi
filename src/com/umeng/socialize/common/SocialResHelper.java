// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.common;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.Log;
import com.umeng.socom.util.g;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import java.util.Stack;

// Referenced classes of package com.umeng.socialize.common:
//            b

public class SocialResHelper
{
    public static interface BindDrawableListener
    {

        public abstract void a(FetchLocale fetchlocale);

        public abstract void a(LoadMode loadmode);

        public abstract void a(com.umeng.socom.net.o.a a1, File file, Drawable drawable);
    }

    public static final class FetchLocale extends Enum
    {

        public static final FetchLocale FETCH_FROM_LOCALE_CACHE;
        public static final FetchLocale FETCH_FROM_NETWORK;
        private static final FetchLocale a[];

        public static FetchLocale valueOf(String s)
        {
            return (FetchLocale)Enum.valueOf(com/umeng/socialize/common/SocialResHelper$FetchLocale, s);
        }

        public static FetchLocale[] values()
        {
            FetchLocale afetchlocale[] = a;
            int i = afetchlocale.length;
            FetchLocale afetchlocale1[] = new FetchLocale[i];
            System.arraycopy(afetchlocale, 0, afetchlocale1, 0, i);
            return afetchlocale1;
        }

        static 
        {
            FETCH_FROM_LOCALE_CACHE = new FetchLocale("FETCH_FROM_LOCALE_CACHE", 0);
            FETCH_FROM_NETWORK = new FetchLocale("FETCH_FROM_NETWORK", 1);
            a = (new FetchLocale[] {
                FETCH_FROM_LOCALE_CACHE, FETCH_FROM_NETWORK
            });
        }

        private FetchLocale(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class LoadMode extends Enum
    {

        public static final LoadMode LOAD_CACHE_ELSE_NETWORK;
        public static final LoadMode LOAD_CACHE_ONLY;
        public static final LoadMode LOAD_NETWORK_ELSE_CACHE;
        private static final LoadMode a[];

        public static LoadMode valueOf(String s)
        {
            return (LoadMode)Enum.valueOf(com/umeng/socialize/common/SocialResHelper$LoadMode, s);
        }

        public static LoadMode[] values()
        {
            LoadMode aloadmode[] = a;
            int i = aloadmode.length;
            LoadMode aloadmode1[] = new LoadMode[i];
            System.arraycopy(aloadmode, 0, aloadmode1, 0, i);
            return aloadmode1;
        }

        static 
        {
            LOAD_CACHE_ELSE_NETWORK = new LoadMode("LOAD_CACHE_ELSE_NETWORK", 0);
            LOAD_CACHE_ONLY = new LoadMode("LOAD_CACHE_ONLY", 1);
            LOAD_NETWORK_ELSE_CACHE = new LoadMode("LOAD_NETWORK_ELSE_CACHE", 2);
            a = (new LoadMode[] {
                LOAD_CACHE_ELSE_NETWORK, LOAD_CACHE_ONLY, LOAD_NETWORK_ELSE_CACHE
            });
        }

        private LoadMode(String s, int i)
        {
            super(s, i);
        }
    }

    public static class a
    {

        private static int j[];
        Context a;
        ImageView b;
        String c;
        BindDrawableListener d;
        int e;
        Animation f;
        LoadMode g;
        boolean h;
        boolean i;

        private void a(Context context, ImageView imageview, Drawable drawable, boolean flag, BindDrawableListener binddrawablelistener, Animation animation, boolean flag1, 
                int k)
        {
            if (drawable == null || imageview == null)
            {
                if (imageview != null && k > 0)
                {
                    imageview.setImageResource(k);
                }
                if (binddrawablelistener != null)
                {
                    binddrawablelistener.a(com.umeng.socom.net.o.a.b, null, drawable);
                }
                Log.e(SocialResHelper.a(), (new StringBuilder("bind drawable failed. drawable [")).append(drawable).append("]  imageView[+").append(imageview).append("+]").toString());
            } else
            {
                context = drawable;
                if (flag1)
                {
                    context = new BitmapDrawable(SocialResHelper.a(((BitmapDrawable)drawable).getBitmap()));
                }
                if (flag)
                {
                    imageview.setBackgroundDrawable(context);
                } else
                {
                    imageview.setImageDrawable(context);
                }
                if (animation != null)
                {
                    imageview.startAnimation(animation);
                }
                try
                {
                    imageview = SocialResHelper.b(a, c);
                }
                // Misplaced declaration of an exception variable
                catch (ImageView imageview)
                {
                    imageview.printStackTrace();
                    imageview = null;
                }
                if (binddrawablelistener != null)
                {
                    binddrawablelistener.a(com.umeng.socom.net.o.a.a, imageview, context);
                    return;
                }
            }
        }

        private void a(Drawable drawable)
        {
            if (drawable == null)
            {
                (new b(this)).execute(new Object[0]);
                return;
            } else
            {
                a(a, b, drawable, i, d, f, h, e);
                return;
            }
        }

        static void a(a a1, Context context, ImageView imageview, Drawable drawable, boolean flag, BindDrawableListener binddrawablelistener, Animation animation, boolean flag1, 
                int k)
        {
            a1.a(context, imageview, drawable, flag, binddrawablelistener, animation, flag1, k);
        }

        static int[] b()
        {
            int ai[] = j;
            if (ai != null)
            {
                return ai;
            }
            ai = new int[LoadMode.values().length];
            try
            {
                ai[LoadMode.LOAD_CACHE_ELSE_NETWORK.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai[LoadMode.LOAD_CACHE_ONLY.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai[LoadMode.LOAD_NETWORK_ELSE_CACHE.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            j = ai;
            return ai;
        }

        public a a(int k)
        {
            e = k;
            return this;
        }

        public a a(Animation animation)
        {
            f = animation;
            return this;
        }

        public a a(BindDrawableListener binddrawablelistener)
        {
            d = binddrawablelistener;
            return this;
        }

        public a a(LoadMode loadmode)
        {
            g = loadmode;
            return this;
        }

        public a a(boolean flag)
        {
            h = flag;
            return this;
        }

        public void a()
        {
            Object obj;
            try
            {
                obj = SocialResHelper.b(a, c);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.b(SocialResHelper.a(), "can't get from cache.", ((Exception) (obj)));
                if (d != null)
                {
                    d.a(com.umeng.socom.net.o.a.b, null, null);
                }
                obj = null;
            }
            switch (b()[g.ordinal()])
            {
            default:
                return;

            case 2: // '\002'
                if (d != null)
                {
                    d.a(LoadMode.LOAD_CACHE_ONLY);
                    d.a(FetchLocale.FETCH_FROM_LOCALE_CACHE);
                }
                if (obj != null && ((File) (obj)).exists())
                {
                    Drawable drawable = Drawable.createFromPath(((File) (obj)).getAbsolutePath());
                    if (drawable == null)
                    {
                        ((File) (obj)).delete();
                    }
                    a(a, b, drawable, i, d, f, h, e);
                    return;
                } else
                {
                    Log.b(SocialResHelper.a(), "cache is not exists");
                    return;
                }

            case 1: // '\001'
                if (d != null)
                {
                    d.a(LoadMode.LOAD_CACHE_ELSE_NETWORK);
                    d.a(FetchLocale.FETCH_FROM_LOCALE_CACHE);
                }
                if (obj != null && ((File) (obj)).exists())
                {
                    Drawable drawable1 = Drawable.createFromPath(((File) (obj)).getAbsolutePath());
                    if (drawable1 == null)
                    {
                        ((File) (obj)).delete();
                    }
                    a(a, b, drawable1, i, d, f, h, e);
                    return;
                } else
                {
                    a(((Drawable) (null)));
                    return;
                }

            case 3: // '\003'
                break;
            }
            if (d != null)
            {
                d.a(LoadMode.LOAD_NETWORK_ELSE_CACHE);
            }
            a(((Drawable) (null)));
        }

        public a b(boolean flag)
        {
            i = flag;
            return this;
        }

        public a(Context context, ImageView imageview, String s)
        {
            e = -1;
            g = LoadMode.LOAD_CACHE_ELSE_NETWORK;
            h = false;
            i = false;
            if (context == null || imageview == null || com.umeng.socom.util.g.c(s))
            {
                return;
            } else
            {
                a = context;
                b = imageview;
                c = s;
                return;
            }
        }
    }


    public static boolean a = false;
    private static final String b = com/umeng/socialize/common/SocialResHelper.getName();
    private static final long c = 0x6400000L;
    private static final long d = 0xa00000L;
    private static final String e = "/download/.um/";

    public SocialResHelper()
    {
    }

    private static long a(File file)
    {
        if (file != null && file.exists() && file.isDirectory()) goto _L2; else goto _L1
_L1:
        long l1 = 0L;
_L4:
        return l1;
_L2:
        Stack stack = new Stack();
        stack.clear();
        stack.push(file);
        long l = 0L;
        do
        {
            l1 = l;
            if (stack.isEmpty())
            {
                continue;
            }
            file = ((File)stack.pop()).listFiles();
            int i = 0;
            while (i < file.length) 
            {
                if (file[i].isDirectory())
                {
                    stack.push(file[i]);
                } else
                {
                    l = file[i].length() + l;
                }
                i++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    static Bitmap a(Bitmap bitmap)
    {
        return b(bitmap);
    }

    static String a()
    {
        return b;
    }

    public static String a(Context context, String s)
    {
        if (!g.c(s)) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        Object obj = (new StringBuilder(String.valueOf(a(s)))).append(".tmp").toString();
        if (!DeviceConfig.isSdCardWrittenable()) goto _L4; else goto _L3
_L3:
        context = Environment.getExternalStorageDirectory().getCanonicalPath();
        long l = 0x6400000L;
_L7:
        context = new File((new StringBuilder(String.valueOf(context))).append("/download/.um/").toString());
        if (!context.exists()) goto _L6; else goto _L5
_L5:
        if (a(context.getCanonicalFile()) > l)
        {
            b(context);
        }
_L9:
        obj = new File(context, ((String) (obj)));
        ((File) (obj)).createNewFile();
        a(s, ((File) (obj)));
        context = new File(((File) (obj)).getParent(), ((File) (obj)).getName().replace(".tmp", ""));
        ((File) (obj)).renameTo(context);
        Log.a(b, (new StringBuilder("download img[")).append(s).append("]  to ").append(context.getCanonicalPath()).toString());
        context = context.getCanonicalPath();
        return context;
_L4:
        context = context.getCacheDir().getCanonicalPath();
        l = 0xa00000L;
          goto _L7
_L6:
        if (context.mkdirs()) goto _L9; else goto _L8
_L8:
        Log.b(b, (new StringBuilder("Failed to create directory")).append(context.getAbsolutePath()).append(". Check permission. Make sure WRITE_EXTERNAL_STORAGE is added in your Manifest.xml").toString());
          goto _L9
        context;
        obj = null;
_L11:
        Log.a(b, (new StringBuilder(String.valueOf(context.getStackTrace().toString()))).append("\t url:\t").append(g.a).append(s).toString());
        if (obj != null && ((File) (obj)).exists())
        {
            ((File) (obj)).deleteOnExit();
            return null;
        }
        if (true) goto _L1; else goto _L10
_L10:
        context;
          goto _L11
    }

    private static String a(String s)
    {
        return g.a(s);
    }

    private static void a(String s, File file)
    {
        Object obj;
        Object obj1;
        Object obj2;
        obj1 = null;
        obj = null;
        obj2 = null;
        file = new FileOutputStream(file);
        obj = obj1;
        obj1 = file;
        s = (InputStream)(new URL(s)).openConnection().getContent();
        obj = new byte[4096];
_L3:
        int i = s.read(((byte []) (obj)));
        if (i != -1) goto _L2; else goto _L1
_L1:
        file.flush();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        s.close();
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        file.close();
_L5:
        return;
_L2:
        file.write(((byte []) (obj)), 0, i);
          goto _L3
        obj1;
        obj = s;
        s = ((String) (obj1));
_L7:
        obj1 = file;
        throw new RuntimeException(s);
        s;
        file = ((File) (obj1));
_L6:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        ((InputStream) (obj)).close();
        if (file != null)
        {
            try
            {
                file.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                Log.c(b, file.getMessage());
            }
        }
        throw s;
        obj;
        Log.c(b, ((IOException) (obj)).getMessage());
        if (file != null)
        {
            try
            {
                file.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                Log.c(b, file.getMessage());
            }
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_124;
        }
        s;
        if (file != null)
        {
            try
            {
                file.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                Log.c(b, file.getMessage());
            }
        }
        throw s;
        s;
        Log.c(b, s.getMessage());
        if (file == null) goto _L5; else goto _L4
_L4:
        try
        {
            file.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Log.c(b, s.getMessage());
        }
        return;
        s;
        if (file != null)
        {
            try
            {
                file.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                Log.c(b, file.getMessage());
            }
        }
        throw s;
        s;
        Log.c(b, s.getMessage());
        return;
        s;
        file = null;
          goto _L6
        Exception exception;
        exception;
        obj = s;
        s = exception;
          goto _L6
        s;
        file = null;
        obj = obj2;
          goto _L7
        s;
        obj = obj2;
          goto _L7
    }

    private static Bitmap b(Bitmap bitmap)
    {
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectf = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xff424242);
        if (a)
        {
            canvas.drawRoundRect(rectf, bitmap.getWidth() / 2, bitmap.getHeight() / 2, paint);
        } else
        {
            canvas.drawRoundRect(rectf, bitmap.getWidth() / 6, bitmap.getHeight() / 6, paint);
        }
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        bitmap.recycle();
        return bitmap1;
    }

    protected static File b(Context context, String s)
        throws IOException
    {
        s = a(s);
        if (DeviceConfig.isSdCardWrittenable())
        {
            context = Environment.getExternalStorageDirectory().getCanonicalPath();
        } else
        {
            context = context.getCacheDir().getCanonicalPath();
        }
        context = new File(new File((new StringBuilder(String.valueOf(context))).append("/download/.um/").toString()), s);
        if (context.exists())
        {
            return context;
        } else
        {
            return null;
        }
    }

    private static void b(File file)
    {
        if (file != null && file.exists() && file.canWrite() && file.isDirectory())
        {
            file = file.listFiles();
            int i = 0;
            while (i < file.length) 
            {
                if (file[i].isDirectory())
                {
                    b(file[i]);
                } else
                if ((new Date()).getTime() - file[i].lastModified() > 1800L)
                {
                    file[i].delete();
                }
                i++;
            }
        }
    }

    static 
    {
        a = false;
    }
}
