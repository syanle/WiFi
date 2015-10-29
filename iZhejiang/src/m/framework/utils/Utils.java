// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.util.Locale;

// Referenced classes of package m.framework.utils:
//            DeviceHelper

public class Utils
{

    private static float density;

    public Utils()
    {
    }

    public static int dipToPx(Context context, int i)
    {
        if (density <= 0.0F)
        {
            density = context.getResources().getDisplayMetrics().density;
        }
        return (int)((float)i * density + 0.5F);
    }

    public static Bitmap getBitmap(File file, int i)
        throws Throwable
    {
        file = new FileInputStream(file);
        Bitmap bitmap = getBitmap(((InputStream) (file)), i);
        file.close();
        return bitmap;
    }

    public static Bitmap getBitmap(InputStream inputstream)
    {
        return getBitmap(inputstream, 1);
    }

    private static Bitmap getBitmap(InputStream inputstream, int i)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = i;
        return BitmapFactory.decodeStream(inputstream, null, options);
    }

    public static Bitmap getBitmap(String s)
        throws Throwable
    {
        return getBitmap(s, 1);
    }

    public static Bitmap getBitmap(String s, int i)
        throws Throwable
    {
        return getBitmap(new File(s), i);
    }

    public static String getCachePath(Context context, String s)
    {
        Object obj = (new StringBuilder(String.valueOf(context.getFilesDir().getAbsolutePath()))).append("/mFramework/cache/").toString();
        DeviceHelper devicehelper = new DeviceHelper(context);
        context = ((Context) (obj));
        if (devicehelper.getSdcardState())
        {
            context = (new StringBuilder(String.valueOf(devicehelper.getSdcardPath()))).append("/mFramework/").append(devicehelper.getPackageName()).append("/cache/").toString();
        }
        obj = context;
        if (!TextUtils.isEmpty(s))
        {
            obj = (new StringBuilder(String.valueOf(context))).append(s).append("/").toString();
        }
        context = new File(((String) (obj)));
        if (!context.exists())
        {
            context.mkdir();
        }
        return ((String) (obj));
    }

    public static String getFileMime(String s)
    {
        String s2 = URLConnection.getFileNameMap().getContentTypeFor(s);
        if (s2 == null) goto _L2; else goto _L1
_L1:
        String s1 = s2;
        if (s2.length() > 0) goto _L3; else goto _L2
_L2:
        s1 = s.toLowerCase(Locale.getDefault());
        if (!s1.endsWith("jpg") && !s1.endsWith("jepg")) goto _L5; else goto _L4
_L4:
        s1 = "image/jpeg";
_L3:
        return s1;
_L5:
        if (s1.endsWith("png"))
        {
            return "image/png";
        }
        if (s1.endsWith("gif"))
        {
            return "image/gif";
        }
        s1 = s2;
        FileInputStream fileinputstream = new FileInputStream(s);
        s1 = s2;
        s = URLConnection.guessContentTypeFromStream(fileinputstream);
        s1 = s;
        try
        {
            fileinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = s1;
        }
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = s;
        if (s.length() > 0) goto _L3; else goto _L6
_L6:
        return "application/octet-stream";
    }

    public static int getScreenHeight(Context context)
    {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int getScreenWidth(Context context)
    {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static boolean isNullOrEmpty(String s)
    {
        return s == null || s.trim().length() <= 0 || "null".equals(s.trim().toLowerCase(Locale.getDefault()));
    }
}
