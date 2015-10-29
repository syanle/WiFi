// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.mob.tools.network.KVPair;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLDecoder;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

// Referenced classes of package com.mob.tools.utils:
//            Ln, Data, DeviceHelper

public class R
{

    private static String cacheRoot;
    private static float density;

    public R()
    {
    }

    public static void clearCache(Context context)
        throws Throwable
    {
        deleteFileAndFolder(new File(getCachePath(context, null)));
    }

    public static String contentUriToPath(Context context, Uri uri)
    {
        if (uri == null)
        {
            return null;
        }
        if ((new File(uri.getPath())).exists())
        {
            return uri.getPath();
        }
        if (android.os.Build.VERSION.SDK_INT < 19) goto _L2; else goto _L1
_L1:
        Object obj;
        Method method;
        obj = Class.forName("android.provider.DocumentsContract");
        method = ((Class) (obj)).getMethod("isDocumentUri", new Class[] {
            android/content/Context, android/net/Uri
        });
        method.setAccessible(true);
        if (!Boolean.TRUE.equals(method.invoke(null, new Object[] {
            context, uri
        }))) goto _L2; else goto _L3
_L3:
        obj = ((Class) (obj)).getMethod("getDocumentId", new Class[] {
            android/net/Uri
        });
        ((Method) (obj)).setAccessible(true);
        obj = String.valueOf(((Method) (obj)).invoke(null, new Object[] {
            uri
        })).split(":")[1];
        obj = context.getContentResolver().query(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[] {
            "_data"
        }, "_id=?", new String[] {
            obj
        }, null);
_L12:
        if (obj != null) goto _L5; else goto _L4
_L4:
        uri = context.getContentResolver().query(uri, null, null, null, null);
_L10:
        if (uri == null)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        if (!uri.moveToFirst()) goto _L7; else goto _L6
_L6:
        context = uri.getString(uri.getColumnIndex("_data"));
_L9:
        uri.close();
_L8:
        return context;
        context;
        Ln.w(context);
        context = null;
          goto _L8
_L7:
        context = null;
          goto _L9
        context = null;
          goto _L8
_L5:
        uri = ((Uri) (obj));
        if (true) goto _L10; else goto _L2
_L2:
        obj = null;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public static void copyFile(FileInputStream fileinputstream, FileOutputStream fileoutputstream)
        throws Throwable
    {
        byte abyte0[] = new byte[0x10000];
        for (int i = fileinputstream.read(abyte0); i > 0; i = fileinputstream.read(abyte0))
        {
            fileoutputstream.write(abyte0, 0, i);
        }

        fileinputstream.close();
        fileoutputstream.close();
    }

    public static boolean copyFile(String s, String s1)
    {
        while (TextUtils.isEmpty(s) || TextUtils.isEmpty(s1) || !(new File(s)).exists()) 
        {
            return false;
        }
        try
        {
            copyFile(new FileInputStream(s), new FileOutputStream(s1));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    public static int[] covertTimeInYears(long l)
    {
        l = System.currentTimeMillis() - l;
        if (l <= 0L)
        {
            return (new int[] {
                0, 0
            });
        }
        l /= 1000L;
        if (l < 60L)
        {
            return (new int[] {
                (int)l, 0
            });
        }
        l /= 60L;
        if (l < 60L)
        {
            return (new int[] {
                (int)l, 1
            });
        }
        l /= 60L;
        if (l < 24L)
        {
            return (new int[] {
                (int)l, 2
            });
        }
        l /= 24L;
        if (l < 30L)
        {
            return (new int[] {
                (int)l, 3
            });
        }
        l /= 30L;
        if (l < 12L)
        {
            return (new int[] {
                (int)l, 4
            });
        } else
        {
            return (new int[] {
                (int)(l / 12L), 5
            });
        }
    }

    public static long dateStrToLong(String s)
    {
        return (new SimpleDateFormat("yyyy-MM-dd")).parse(s, new ParsePosition(0)).getTime();
    }

    public static long dateToLong(String s)
    {
        long l;
        try
        {
            s = new Date(s);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(s);
            l = calendar.getTimeInMillis();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
            return 0L;
        }
        return l;
    }

    public static Bundle decodeUrl(String s)
    {
        Bundle bundle = new Bundle();
        if (s != null)
        {
            s = s.split("&");
            int j = s.length;
            int i = 0;
            while (i < j) 
            {
                String as[] = s[i].split("=");
                if (as.length < 2 || as[1] == null)
                {
                    bundle.putString(URLDecoder.decode(as[0]), "");
                } else
                {
                    bundle.putString(URLDecoder.decode(as[0]), URLDecoder.decode(as[1]));
                }
                i++;
            }
        }
        return bundle;
    }

    public static void deleteFileAndFolder(File file)
        throws Throwable
    {
        if (file == null || !file.exists())
        {
            return;
        }
        if (file.isFile())
        {
            file.delete();
            return;
        }
        String as[] = file.list();
        if (as == null || as.length <= 0)
        {
            file.delete();
            return;
        }
        int j = as.length;
        int i = 0;
        while (i < j) 
        {
            File file1 = new File(file, as[i]);
            if (file1.isDirectory())
            {
                deleteFileAndFolder(file1);
            } else
            {
                file1.delete();
            }
            i++;
        }
        file.delete();
    }

    private static int digit(int i, int j)
    {
        int k;
        if (j < 2 || j > 36)
        {
            k = -1;
        } else
        {
            if (48 <= i && i <= 57)
            {
                i -= 48;
            } else
            if (97 <= i && i <= 122)
            {
                i = (i - 97) + 10;
            } else
            if (65 <= i && i <= 90)
            {
                i = (i - 65) + 10;
            } else
            {
                i = -1;
            }
            k = i;
            if (i >= j)
            {
                return -1;
            }
        }
        return k;
    }

    public static int dipToPx(Context context, int i)
    {
        if (density <= 0.0F)
        {
            density = context.getResources().getDisplayMetrics().density;
        }
        return (int)((float)i * density + 0.5F);
    }

    public static String encodeUrl(Bundle bundle)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = bundle.keySet().iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            String s = (String)iterator.next();
            Object obj1 = bundle.get(s);
            Object obj = obj1;
            if (obj1 == null)
            {
                obj = "";
            }
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((new StringBuilder()).append(Data.urlEncode(s)).append("=").append(Data.urlEncode(String.valueOf(obj))).toString());
        }
        return stringbuilder.toString();
    }

    public static String encodeUrl(ArrayList arraylist)
    {
        if (arraylist == null)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = arraylist.iterator();
        int i = 0;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            arraylist = (KVPair)iterator.next();
            if (i > 0)
            {
                stringbuilder.append('&');
            }
            String s1 = ((KVPair) (arraylist)).name;
            String s = (String)((KVPair) (arraylist)).value;
            if (s1 != null)
            {
                arraylist = s;
                if (s == null)
                {
                    arraylist = "";
                }
                stringbuilder.append((new StringBuilder()).append(Data.urlEncode(s1)).append("=").append(Data.urlEncode(arraylist)).toString());
                i++;
            }
        } while (true);
        return stringbuilder.toString();
    }

    public static int getBitmapRes(Context context, String s)
    {
        return getResId(context, "drawable", s);
    }

    public static String getCachePath(Context context, String s)
    {
        String s1 = cacheRoot;
        Object obj = s1;
        if (TextUtils.isEmpty(s1))
        {
            obj = "ShareSDK";
        }
        s1 = (new StringBuilder()).append(context.getFilesDir().getAbsolutePath()).append("/").append(((String) (obj))).append("/cache/").toString();
        context = DeviceHelper.getInstance(context);
        if (context.getSdcardState())
        {
            context = (new StringBuilder()).append(context.getSdcardPath()).append("/").append(((String) (obj))).append("/").append(context.getPackageName()).append("/cache/").toString();
        } else
        {
            context = s1;
        }
        obj = context;
        if (!TextUtils.isEmpty(s))
        {
            obj = (new StringBuilder()).append(context).append(s).append("/").toString();
        }
        context = new File(((String) (obj)));
        if (!context.exists())
        {
            context.mkdirs();
        }
        return ((String) (obj));
    }

    public static int getColorRes(Context context, String s)
    {
        return getResId(context, "color", s);
    }

    public static int getIdRes(Context context, String s)
    {
        return getResId(context, "id", s);
    }

    public static String getImageCachePath(Context context)
    {
        return getCachePath(context, "images");
    }

    public static int getLayoutRes(Context context, String s)
    {
        return getResId(context, "layout", s);
    }

    public static int getPluralsRes(Context context, String s)
    {
        return getResId(context, "plurals", s);
    }

    public static int getRawRes(Context context, String s)
    {
        return getResId(context, "raw", s);
    }

    public static int getResId(Context context, String s, String s1)
    {
        if (context != null && !TextUtils.isEmpty(s) && !TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        int i = 0;
_L6:
        return i;
_L2:
        String s2;
        s2 = context.getPackageName();
        if (TextUtils.isEmpty(s2))
        {
            return 0;
        }
        Class class1 = Class.forName((new StringBuilder()).append(s2).append(".R$").append(s).toString());
        if (class1 != null) goto _L4; else goto _L3
_L3:
        i = 0;
_L7:
        int j;
        j = i;
        if (i <= 0)
        {
            i = context.getResources().getIdentifier(s1, s, s2);
            j = i;
            if (i <= 0)
            {
                j = context.getResources().getIdentifier(s1.toLowerCase(), s, s2);
            }
        }
        i = j;
        if (j > 0) goto _L6; else goto _L5
_L5:
        System.err.println((new StringBuilder()).append("failed to parse ").append(s).append(" resource \"").append(s1).append("\"").toString());
        return j;
_L4:
        Field field1 = class1.getField(s1);
        Field field;
        field = field1;
        if (field1 != null)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        field1 = class1.getField(s1.toLowerCase());
        field = field1;
        if (field1 != null)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        i = 0;
          goto _L7
        try
        {
            field.setAccessible(true);
            i = ((Integer)field.get(null)).intValue();
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
            i = 0;
        }
          goto _L7
    }

    public static int getScreenHeight(Context context)
    {
        return getScreenSize(context)[1];
    }

    public static int[] getScreenSize(Context context)
    {
        try
        {
            context = (WindowManager)context.getSystemService("window");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Ln.e(context);
            context = null;
        }
        if (context == null)
        {
            return (new int[] {
                0, 0
            });
        }
        context = context.getDefaultDisplay();
        if (android.os.Build.VERSION.SDK_INT < 13)
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            context.getMetrics(displaymetrics);
            return (new int[] {
                displaymetrics.widthPixels, displaymetrics.heightPixels
            });
        }
        int i;
        int j;
        try
        {
            Point point = new Point();
            Method method = context.getClass().getMethod("getRealSize", new Class[] {
                android/graphics/Point
            });
            method.setAccessible(true);
            method.invoke(context, new Object[] {
                point
            });
            i = point.x;
            j = point.y;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Ln.w(context);
            return (new int[] {
                0, 0
            });
        }
        return (new int[] {
            i, j
        });
    }

    public static int getScreenWidth(Context context)
    {
        return getScreenSize(context)[0];
    }

    public static int getStringArrayRes(Context context, String s)
    {
        return getResId(context, "array", s);
    }

    public static int getStringRes(Context context, String s)
    {
        return getResId(context, "string", s);
    }

    public static int getStyleRes(Context context, String s)
    {
        return getResId(context, "style", s);
    }

    public static int getTextLengthInWord(String s)
    {
        int i = 0;
        int j;
        if (s == null)
        {
            s = new char[0];
        } else
        {
            s = s.toCharArray();
        }
        j = 0;
        while (i < s.length) 
        {
            int k;
            if (s[i] < '\u0100')
            {
                k = 1;
            } else
            {
                k = 2;
            }
            j += k;
            i++;
        }
        return j;
    }

    private static Throwable invalidInt(String s)
        throws Throwable
    {
        throw new Throwable((new StringBuilder()).append("Invalid int: \"").append(s).append("\"").toString());
    }

    private static Throwable invalidLong(String s)
        throws Throwable
    {
        throw new Throwable((new StringBuilder()).append("Invalid long: \"").append(s).append("\"").toString());
    }

    public static Date longToDate(long l)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l);
        return calendar.getTime();
    }

    public static String longToTime(long l, int i)
    {
        String s = "yyyy-MM-dd kk:mm:ss";
        i;
        JVM INSTR lookupswitch 5: default 56
    //                   1: 99
    //                   2: 92
    //                   5: 86
    //                   10: 79
    //                   12: 72;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return (new SimpleDateFormat(s)).format(Long.valueOf(l));
_L6:
        s = "yyyy-MM-dd kk:mm";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "yyyy-MM-dd kk";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "yyyy-MM-dd";
        continue; /* Loop/switch isn't completed */
_L3:
        s = "yyyy-MM";
        continue; /* Loop/switch isn't completed */
_L2:
        s = "yyyy";
        if (true) goto _L1; else goto _L7
_L7:
    }

    public static int parseInt(String s)
        throws Throwable
    {
        return parseInt(s, 10);
    }

    public static int parseInt(String s, int i)
        throws Throwable
    {
        int j = 1;
        if (i < 2 || i > 36)
        {
            throw new Throwable((new StringBuilder()).append("Invalid radix: ").append(i).toString());
        }
        if (s == null)
        {
            throw invalidInt(s);
        }
        int k = s.length();
        if (k == 0)
        {
            throw invalidInt(s);
        }
        boolean flag;
        if (s.charAt(0) == '-')
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            if (1 == k)
            {
                throw invalidInt(s);
            }
        } else
        {
            j = 0;
        }
        return parseInt(s, j, i, flag);
    }

    private static int parseInt(String s, int i, int j, boolean flag)
        throws Throwable
    {
        int i1 = 0x80000000 / j;
        boolean flag1 = false;
        int j1 = s.length();
        int k = i;
        i = ((flag1) ? 1 : 0);
        for (; k < j1; k++)
        {
            int l = digit(s.charAt(k), j);
            if (l == -1)
            {
                throw invalidInt(s);
            }
            if (i1 > i)
            {
                throw invalidInt(s);
            }
            l = i * j - l;
            if (l > i)
            {
                throw invalidInt(s);
            }
            i = l;
        }

        j = i;
        if (!flag)
        {
            i = -i;
            j = i;
            if (i < 0)
            {
                throw invalidInt(s);
            }
        }
        return j;
    }

    public static long parseLong(String s)
        throws Throwable
    {
        return parseLong(s, 10);
    }

    public static long parseLong(String s, int i)
        throws Throwable
    {
        int j = 1;
        if (i < 2 || i > 36)
        {
            throw new Throwable((new StringBuilder()).append("Invalid radix: ").append(i).toString());
        }
        if (s == null)
        {
            throw invalidLong(s);
        }
        int k = s.length();
        if (k == 0)
        {
            throw invalidLong(s);
        }
        boolean flag;
        if (s.charAt(0) == '-')
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            if (1 == k)
            {
                throw invalidLong(s);
            }
        } else
        {
            j = 0;
        }
        return parseLong(s, j, i, flag);
    }

    private static long parseLong(String s, int i, int j, boolean flag)
        throws Throwable
    {
        long l3 = 0x8000000000000000L / (long)j;
        long l = 0L;
        for (long l4 = s.length(); (long)i < l4; i++)
        {
            int k = digit(s.charAt(i), j);
            if (k == -1)
            {
                throw invalidLong(s);
            }
            if (l3 > l)
            {
                throw invalidLong(s);
            }
            long l1 = (long)j * l - (long)k;
            if (l1 > l)
            {
                throw invalidLong(s);
            }
            l = l1;
        }

        long l2 = l;
        if (!flag)
        {
            l = -l;
            l2 = l;
            if (l < 0L)
            {
                throw invalidLong(s);
            }
        }
        return l2;
    }

    public static Uri pathToContentUri(Context context, String s)
    {
        Uri uri = null;
        Cursor cursor = context.getContentResolver().query(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[] {
            "_id"
        }, "_data=? ", new String[] {
            s
        }, null);
        if (cursor != null && cursor.moveToFirst())
        {
            int i = cursor.getInt(cursor.getColumnIndex("_id"));
            uri = Uri.withAppendedPath(Uri.parse("content://media/external/images/media"), (new StringBuilder()).append("").append(i).toString());
        } else
        if ((new File(s)).exists())
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("_data", s);
            s = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            return context.getContentResolver().insert(s, contentvalues);
        }
        return uri;
    }

    public static int pxToDip(Context context, int i)
    {
        if (density <= 0.0F)
        {
            density = context.getResources().getDisplayMetrics().density;
        }
        return (int)((float)i / density + 0.5F);
    }

    public static Object readObjectFromFile(String s)
    {
        Object obj;
        Object obj1;
        obj1 = null;
        obj = obj1;
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        boolean flag;
        s = new File(s);
        flag = s.exists();
        if (!flag)
        {
            s = null;
        }
_L4:
        obj = obj1;
        if (s != null)
        {
            try
            {
                s = new ObjectInputStream(new GZIPInputStream(new FileInputStream(s)));
                obj = s.readObject();
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return null;
            }
        }
_L2:
        return obj;
        s;
        s.printStackTrace();
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static boolean saveObjectToFile(String s, Object obj)
    {
        if (TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_108;
        }
        try
        {
            s = new File(s);
            if (s.exists())
            {
                s.delete();
            }
            if (!s.getParentFile().exists())
            {
                s.getParentFile().mkdirs();
            }
            s.createNewFile();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = null;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        s = new ObjectOutputStream(new GZIPOutputStream(new FileOutputStream(s)));
        s.writeObject(obj);
        s.flush();
        s.close();
        return true;
        s;
        s.printStackTrace();
        return false;
    }

    public static void setCacheRoot(String s)
    {
        cacheRoot = s;
    }

    public static long strToDate(String s)
    {
        return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).parse(s, new ParsePosition(0)).getTime();
    }

    public static String toWordText(String s, int i)
    {
        s = s.toCharArray();
        StringBuilder stringbuilder = new StringBuilder();
        int l = s.length;
        int j = i * 2;
        for (i = 0; i < l; i++)
        {
            char c = s[i];
            int k;
            if (c < '\u0100')
            {
                k = 1;
            } else
            {
                k = 2;
            }
            j -= k;
            if (j < 0)
            {
                return stringbuilder.toString();
            }
            stringbuilder.append(c);
        }

        return stringbuilder.toString();
    }

    public static Bundle urlToBundle(String s)
    {
        int i = s.indexOf("://");
        Bundle bundle;
        if (i >= 0)
        {
            s = (new StringBuilder()).append("http://").append(s.substring(i + 1)).toString();
        } else
        {
            s = (new StringBuilder()).append("http://").append(s).toString();
        }
        try
        {
            s = new URL(s);
            bundle = decodeUrl(s.getQuery());
            bundle.putAll(decodeUrl(s.getRef()));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
            return new Bundle();
        }
        return bundle;
    }
}
