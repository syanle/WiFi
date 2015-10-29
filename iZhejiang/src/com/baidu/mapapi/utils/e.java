// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.os.storage.StorageManager;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

// Referenced classes of package com.baidu.mapapi.utils:
//            d

public final class e
{

    private static volatile e a = null;
    private boolean b;
    private boolean c;
    private final List d = new ArrayList();
    private d e;
    private String f;

    private e()
    {
        b = false;
        c = true;
        e = null;
    }

    public static e a()
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        com/baidu/mapapi/utils/e;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new e();
        }
        com/baidu/mapapi/utils/e;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        com/baidu/mapapi/utils/e;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean a(String s)
    {
        boolean flag;
        s = new File((new StringBuilder()).append(s).append("/test.0").toString());
        if (s.exists())
        {
            s.delete();
        }
        flag = s.createNewFile();
        if (s.exists())
        {
            s.delete();
        }
        return flag;
        s;
        flag = false;
_L2:
        s.printStackTrace();
        return flag;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void c(Context context)
    {
        StorageManager storagemanager;
        Method method1;
        Method method2;
        Object obj1;
        Object aobj[];
        storagemanager = (StorageManager)context.getSystemService("storage");
        Method method = storagemanager.getClass().getMethod("getVolumeList", new Class[0]);
        method1 = storagemanager.getClass().getMethod("getVolumeState", new Class[] {
            java/lang/String
        });
        obj1 = Class.forName("android.os.storage.StorageVolume");
        method2 = ((Class) (obj1)).getMethod("isRemovable", new Class[0]);
        obj1 = ((Class) (obj1)).getMethod("getPath", new Class[0]);
        aobj = (Object[])(Object[])method.invoke(storagemanager, new Object[0]);
        if (aobj == null) goto _L2; else goto _L1
_L1:
        int j = aobj.length;
        int i = 0;
_L13:
        if (i >= j) goto _L4; else goto _L3
_L3:
        Object obj = aobj[i];
        String s1 = (String)((Method) (obj1)).invoke(obj, new Object[0]);
        if (s1 == null) goto _L6; else goto _L5
_L5:
        if (s1.length() <= 0 || !"mounted".equals(method1.invoke(storagemanager, new Object[] {
            s1
        }))) goto _L6; else goto _L7
_L7:
        List list;
        boolean flag;
        if (!((Boolean)method2.invoke(obj, new Object[0])).booleanValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (android.os.Build.VERSION.SDK_INT >= 19 && !flag) goto _L9; else goto _L8
_L8:
        list = d;
        if (flag)
        {
            obj = "\u5185\u7F6E\u5B58\u50A8\u5361";
        } else
        {
            obj = "\u5916\u7F6E\u5B58\u50A8\u5361";
        }
        list.add(new d(s1, ((String) (obj)), context));
          goto _L6
_L9:
        if (android.os.Build.VERSION.SDK_INT >= 19 && (new File((new StringBuilder()).append(s1).append(File.separator).append("BaiduMapSDK").toString())).exists() && s1.equals(context.getSharedPreferences("map_pref", 0).getString("PREFFERED_SD_CARD", "")))
        {
            f = (new StringBuilder()).append(s1).append(File.separator).append("BaiduMapSDK").toString();
        }
          goto _L6
        context;
        context.printStackTrace();
_L2:
        return;
_L4:
        if (android.os.Build.VERSION.SDK_INT < 19)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = context.getExternalFilesDirs(null);
        i = 1;
_L11:
        if (i >= obj.length)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = obj[i].getAbsolutePath();
        d.add(new d(s, "\u5916\u7F6E\u5B58\u50A8\u5361", context));
        i++;
        if (true) goto _L11; else goto _L10
_L10:
        if (true) goto _L2; else goto _L6
_L6:
        i++;
        if (true) goto _L13; else goto _L12
_L12:
    }

    private void d(Context context)
    {
        Object obj2;
        ArrayList arraylist;
        ArrayList arraylist1;
        obj2 = null;
        arraylist1 = new ArrayList();
        arraylist = new ArrayList();
        Object obj = new File("/proc/mounts");
        if (!((File) (obj)).exists()) goto _L2; else goto _L1
_L1:
        Object obj1 = new Scanner(((File) (obj)));
_L6:
        obj = obj1;
        if (!((Scanner) (obj1)).hasNext()) goto _L4; else goto _L3
_L3:
        obj = obj1;
        String s = ((Scanner) (obj1)).nextLine();
        obj = obj1;
        if (!s.startsWith("/dev/block/vold/")) goto _L6; else goto _L5
_L5:
        obj = obj1;
        String as[] = s.replace('\t', ' ').split(" ");
        if (as == null) goto _L6; else goto _L7
_L7:
        obj = obj1;
        if (as.length <= 0) goto _L6; else goto _L8
_L8:
        obj = obj1;
        arraylist1.add(as[1]);
          goto _L6
        context;
_L17:
        context.printStackTrace();
        if (obj != null)
        {
            ((Scanner) (obj)).close();
        }
_L19:
        return;
_L4:
        obj = obj1;
        ((Scanner) (obj1)).close();
_L2:
        obj = new File("/system/etc/vold.fstab");
        if (!((File) (obj)).exists()) goto _L10; else goto _L9
_L9:
        obj1 = new Scanner(((File) (obj)));
_L14:
        obj = obj1;
        if (!((Scanner) (obj1)).hasNext()) goto _L12; else goto _L11
_L11:
        obj = obj1;
        as = ((Scanner) (obj1)).nextLine();
        obj = obj1;
        if (!as.startsWith("dev_mount")) goto _L14; else goto _L13
_L13:
        obj = obj1;
        as = as.replace('\t', ' ').split(" ");
        if (as == null) goto _L14; else goto _L15
_L15:
        obj = obj1;
        if (as.length <= 0) goto _L14; else goto _L16
_L16:
        String s1;
        s1 = as[2];
        obj = obj1;
        as = s1;
        if (!s1.contains(":"))
        {
            break MISSING_BLOCK_LABEL_269;
        }
        obj = obj1;
        as = s1.substring(0, s1.indexOf(":"));
        obj = obj1;
        arraylist.add(as);
          goto _L14
        context;
        obj = obj1;
_L20:
        if (obj != null)
        {
            ((Scanner) (obj)).close();
        }
        throw context;
_L12:
        obj = obj1;
        ((Scanner) (obj1)).close();
_L10:
        try
        {
            obj = Environment.getExternalStorageDirectory().getAbsolutePath();
            d.add(new d(((String) (obj)), "Auto", context));
            Iterator iterator = arraylist1.iterator();
            do
            {
                String s2;
                do
                {
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        s2 = (String)iterator.next();
                    } while (!arraylist.contains(s2) || s2.equals(obj));
                    obj1 = new File(s2);
                } while (!((File) (obj1)).exists() || !((File) (obj1)).isDirectory() || !((File) (obj1)).canWrite());
                d.add(new d(s2, "Auto", context));
            } while (true);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            obj = null;
        }
        finally
        {
            obj = obj2;
        }
          goto _L17
        if (true) goto _L19; else goto _L18
_L18:
        throw new NullPointerException();
        context;
        obj = obj1;
          goto _L20
        context;
          goto _L20
    }

    public void a(Context context)
    {
        int i = 0;
        if (!b) goto _L2; else goto _L1
_L1:
        return;
_L2:
        b = true;
        if (android.os.Build.VERSION.SDK_INT < 14) goto _L4; else goto _L3
_L3:
        c(context);
_L10:
        if (d.size() <= 0) goto _L6; else goto _L5
_L5:
        Object obj = null;
        Iterator iterator = d.iterator();
_L9:
        if (!iterator.hasNext()) goto _L8; else goto _L7
_L7:
        d d1;
        boolean flag;
        d1 = (d)iterator.next();
        flag = (new File(d1.b())).exists();
        if (flag)
        {
            obj = d1;
            i++;
        }
          goto _L9
_L4:
        try
        {
            d(context);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
          goto _L10
_L8:
        if (i != 0) goto _L12; else goto _L11
_L11:
        e = b(context);
        if (e == null && a(context, (d)d.get(0)))
        {
            e = (d)d.get(0);
        }
_L14:
        if (e == null)
        {
            e = (d)d.get(0);
        }
_L6:
        if (e == null || !a(e.a()))
        {
            break MISSING_BLOCK_LABEL_355;
        }
        context = new File(e.b());
        if (!context.exists())
        {
            context.mkdirs();
        }
        context = new File(e.c());
        if (!context.exists())
        {
            context.mkdirs();
        }
        context = new File(context, ".nomedia");
        if (!context.exists())
        {
            context.createNewFile();
            return;
        }
          goto _L1
_L12:
        if (i != 1)
        {
            break MISSING_BLOCK_LABEL_343;
        }
        if (!a(context, ((d) (obj)))) goto _L14; else goto _L13
_L13:
        e = ((d) (obj));
          goto _L14
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L6
        e = b(context);
          goto _L14
        try
        {
            c = false;
            e = new d(context);
            d.clear();
            d.add(e);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
    }

    public boolean a(Context context, d d1)
    {
        d1 = d1.a();
        if (!a(((String) (d1))))
        {
            return false;
        } else
        {
            context = context.getSharedPreferences("map_pref", 0).edit();
            context.putString("PREFFERED_SD_CARD", d1);
            return context.commit();
        }
    }

    public d b()
    {
        return e;
    }

    public d b(Context context)
    {
label0:
        {
            context = context.getSharedPreferences("map_pref", 0).getString("PREFFERED_SD_CARD", "");
            if (context == null || context.length() <= 0)
            {
                break label0;
            }
            Iterator iterator = d.iterator();
            d d1;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                d1 = (d)iterator.next();
            } while (!d1.a().equals(context));
            return d1;
        }
        return null;
    }

}
