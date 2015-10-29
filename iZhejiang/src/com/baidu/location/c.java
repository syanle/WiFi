// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.location.Location;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.util.Calendar;
import java.util.Locale;

// Referenced classes of package com.baidu.location:
//            ax, n, f, x, 
//            az, aw, BDLocation

class c
    implements ax, n
{

    public static int W = 0;
    public static int X = 0;
    public static String Y = "http://loc.map.baidu.com/sdk_ep.php";
    public static float Z = 0F;
    public static float a0 = 0F;
    private static String a1 = "http://loc.map.baidu.com/user_err.php";
    public static float a2 = 0F;
    public static boolean a3 = false;
    public static int a4 = 0;
    public static int a5 = 0;
    public static int a6 = 0;
    public static boolean a7 = false;
    public static int a8 = 0;
    public static double a9 = 0D;
    private static boolean aA = false;
    public static byte aB[] = null;
    private static boolean aC = false;
    public static long aD = 0L;
    private static String aE = "http://loc.map.baidu.com/tcu.php";
    public static int aF = 0;
    public static final boolean aG = true;
    public static double aH = 0.0D;
    public static int aI = 3;
    public static int aJ = 2;
    public static long aK = 0x668a0L;
    private static String aL = "[baidu_location_service]";
    public static int aM = 3;
    private static String aN = "http://loc.map.baidu.com/sdk.php";
    public static int aO = 30000;
    private static Process aP = null;
    public static long aQ = 0xdbba0L;
    public static float aR = 2.2F;
    public static long aS = 15L;
    public static float aT = 3.8F;
    public static float aU = 0.5F;
    public static int aV = 0;
    public static int aW = 30000;
    public static int aX = 16;
    private static String aY = "http://loc.map.baidu.com/oqur.php";
    public static boolean aZ = true;
    public static int aa = 20;
    public static float ab = 0.9F;
    public static double ac = 0.0D;
    public static long ad = 0x2bf20L;
    public static float ae = 1.1F;
    public static float af = 6F;
    public static float ag = 2.3F;
    public static boolean ah = false;
    public static int ai = 0;
    public static int aj = 0x668a0;
    public static int ak = 0;
    public static int al = 0;
    public static boolean am = false;
    public static double an = 0.0D;
    public static long ao = 0x2bf20L;
    public static float ap = 50F;
    public static int aq = 60;
    public static boolean ar = false;
    public static int as = 300;
    public static int at = 10000;
    public static int au = 6;
    public static int av = 20;
    public static String aw = "no";
    public static int ax = 70;
    public static int ay = 1000;
    public static boolean az = true;
    public static float ba = 0.1F;
    public static float bb = 10F;
    public static String bc = "gcj02";
    public static float bd = 0.0F;
    public static float be = 2.0F;

    c()
    {
    }

    public static String _mthbyte()
    {
        if (Environment.getExternalStorageState().equals("mounted"))
        {
            String s;
            try
            {
                s = Environment.getExternalStorageDirectory().getPath();
                File file = new File((new StringBuilder()).append(s).append("/baidu/tempdata").toString());
                if (!file.exists())
                {
                    file.mkdirs();
                }
            }
            catch (Exception exception)
            {
                return null;
            }
            return s;
        } else
        {
            return null;
        }
    }

    public static void _mthcase()
    {
    }

    public static void _mthchar()
    {
        try
        {
            if (aP != null)
            {
                aP.destroy();
                aP = null;
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    static int _mthdo(String s, String s1, String s2)
    {
        int i;
        if (s != null && !s.equals(""))
        {
            if ((i = s.indexOf(s1)) != -1)
            {
                i += s1.length();
                int k = s.indexOf(s2, i);
                if (k != -1)
                {
                    s = s.substring(i, k);
                    if (s != null && !s.equals(""))
                    {
                        int j;
                        try
                        {
                            j = Integer.parseInt(s);
                        }
                        // Misplaced declaration of an exception variable
                        catch (String s)
                        {
                            return 0x80000000;
                        }
                        return j;
                    }
                }
            }
        }
        return 0x80000000;
    }

    public static String _mthdo()
    {
        return aY;
    }

    public static void _mthdo(String s)
    {
        if (s != null)
        {
            aN = s;
        }
    }

    public static void _mthdo(String s, String s1)
    {
    }

    public static String _mthelse()
    {
        String s = _mthbyte();
        if (s == null)
        {
            return null;
        } else
        {
            return (new StringBuilder()).append(s).append("/baidu/tempdata").toString();
        }
    }

    static double _mthfor(String s, String s1, String s2)
    {
        int i;
        if (s != null && !s.equals(""))
        {
            if ((i = s.indexOf(s1)) != -1)
            {
                i += s1.length();
                int j = s.indexOf(s2, i);
                if (j != -1)
                {
                    s = s.substring(i, j);
                    if (s != null && !s.equals(""))
                    {
                        double d;
                        try
                        {
                            d = Double.parseDouble(s);
                        }
                        // Misplaced declaration of an exception variable
                        catch (String s)
                        {
                            return 4.9406564584124654E-324D;
                        }
                        return d;
                    }
                }
            }
        }
        return 4.9406564584124654E-324D;
    }

    public static String _mthfor()
    {
        return aN;
    }

    public static String _mthgoto()
    {
        Object obj;
        try
        {
            obj = new File((new StringBuilder()).append(f.getServiceContext().getFilesDir()).append(File.separator).append("lldt").toString());
            if (!((File) (obj)).exists())
            {
                ((File) (obj)).mkdirs();
            }
            obj = ((File) (obj)).getAbsolutePath();
        }
        catch (Exception exception)
        {
            return null;
        }
        return ((String) (obj));
    }

    static float _mthif(String s, String s1, String s2)
    {
        int i;
        if (s != null && !s.equals(""))
        {
            if ((i = s.indexOf(s1)) != -1)
            {
                i += s1.length();
                int j = s.indexOf(s2, i);
                if (j != -1)
                {
                    s = s.substring(i, j);
                    if (s != null && !s.equals(""))
                    {
                        float f1;
                        try
                        {
                            f1 = Float.parseFloat(s);
                        }
                        // Misplaced declaration of an exception variable
                        catch (String s)
                        {
                            return 1.401298E-45F;
                        }
                        return f1;
                    }
                }
            }
        }
        return 1.401298E-45F;
    }

    static String _mthif()
    {
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(5);
        int j = calendar.get(1);
        int k = calendar.get(2);
        int l = calendar.get(11);
        int i1 = calendar.get(12);
        int j1 = calendar.get(13);
        return String.format(Locale.CHINA, "%d_%d_%d_%d_%d_%d", new Object[] {
            Integer.valueOf(j), Integer.valueOf(k + 1), Integer.valueOf(i), Integer.valueOf(l), Integer.valueOf(i1), Integer.valueOf(j1)
        });
    }

    public static String _mthif(t.a a, ar.b b, Location location, String s)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (a != null)
        {
            String s1 = a.toString();
            if (s1 != null)
            {
                stringbuffer.append(s1);
            }
        }
        if (b != null)
        {
            try
            {
                b = b.a(5);
            }
            // Misplaced declaration of an exception variable
            catch (ar.b b)
            {
                b = null;
            }
            if (b != null)
            {
                stringbuffer.append(b);
            }
        }
        if (location != null)
        {
            if (al != 0)
            {
                b = x._mthnew(location);
            } else
            {
                b = x._mthbyte(location);
            }
            if (b != null)
            {
                stringbuffer.append(b);
            }
        }
        b = com.baidu.location.az.cn()._mthchar(false);
        if (b != null)
        {
            stringbuffer.append(b);
        }
        if (s != null)
        {
            stringbuffer.append(s);
        }
        if (a != null)
        {
            a = a._mthint();
            if (a != null && a.length() + stringbuffer.length() < 750)
            {
                stringbuffer.append(a);
            }
        }
        return stringbuffer.toString();
    }

    public static String _mthif(t.a a, ar.b b, Location location, String s, int i)
    {
        float f1;
        int j;
        int k;
        StringBuffer stringbuffer = new StringBuffer();
        if (a != null)
        {
            String s1 = a.toString();
            if (s1 != null)
            {
                stringbuffer.append(s1);
            }
        }
        String s2;
        if (b != null)
        {
            boolean flag;
            if (i == 0)
            {
                s2 = b._mthchar();
            } else
            {
                s2 = b._mthbyte();
            }
            if (s2 != null)
            {
                stringbuffer.append(s2);
            }
        }
        if (location != null)
        {
            if (al != 0 && i != 0)
            {
                s2 = x._mthnew(location);
            } else
            {
                s2 = x._mthbyte(location);
            }
            if (s2 != null)
            {
                stringbuffer.append(s2);
            }
        }
        flag = false;
        if (i == 0)
        {
            flag = true;
        }
        s2 = com.baidu.location.az.cn()._mthchar(flag);
        if (s2 != null)
        {
            stringbuffer.append(s2);
        }
        if (s != null)
        {
            stringbuffer.append(s);
        }
        s = com.baidu.location.aw._mthdo().a();
        if (!TextUtils.isEmpty(s))
        {
            stringbuffer.append("&bc=").append(s);
        }
        if (a != null)
        {
            a = a._mthint();
            if (a != null && a.length() + stringbuffer.length() < 750)
            {
                stringbuffer.append(a);
            }
        }
        a = stringbuffer.toString();
        if (location == null || b == null)
        {
            break MISSING_BLOCK_LABEL_364;
        }
        f1 = location.getSpeed();
        i = al;
        j = b._mthdo();
        k = b._mthtry();
        flag = b._mthcase();
        if (f1 >= af || i != 1 && i != 0)
        {
            break MISSING_BLOCK_LABEL_303;
        }
        if (j < aq || flag)
        {
            try
            {
                aM = 1;
            }
            // Misplaced declaration of an exception variable
            catch (ar.b b)
            {
                aM = 3;
                return a;
            }
            return a;
        }
        if (f1 >= Z || i != 1 && i != 0 && i != 3)
        {
            break MISSING_BLOCK_LABEL_358;
        }
        if (j >= aF && k <= au)
        {
            break MISSING_BLOCK_LABEL_358;
        }
        aM = 2;
        return a;
        aM = 3;
        return a;
        aM = 3;
        return a;
    }

    static String _mthif(String s, String s1, String s2, double d)
    {
        int i;
        if (s != null && !s.equals(""))
        {
            if ((i = s.indexOf(s1)) != -1)
            {
                i += s1.length();
                int j = s.indexOf(s2, i);
                if (j != -1)
                {
                    s1 = s.substring(0, i);
                    s = s.substring(j);
                    s2 = String.format(Locale.CHINA, "%.7f", new Object[] {
                        Double.valueOf(d)
                    });
                    return (new StringBuilder()).append(s1).append(s2).append(s).toString();
                }
            }
        }
        return null;
    }

    public static void _mthif(String s)
    {
        if (aC)
        {
            Log.d(aL, s);
        }
    }

    public static void _mthif(String s, String s1)
    {
        if (aA)
        {
            Log.d(s, s1);
        }
    }

    public static boolean _mthif(BDLocation bdlocation)
    {
        int i = bdlocation.getLocType();
        return i > 100 && i < 200;
    }

    public static String _mthint()
    {
        return aE;
    }

    static String _mthnew()
    {
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(5);
        int j = calendar.get(1);
        int k = calendar.get(2);
        int l = calendar.get(11);
        int i1 = calendar.get(12);
        int j1 = calendar.get(13);
        return String.format(Locale.CHINA, "%d-%d-%d %d:%d:%d", new Object[] {
            Integer.valueOf(j), Integer.valueOf(k + 1), Integer.valueOf(i), Integer.valueOf(l), Integer.valueOf(i1), Integer.valueOf(j1)
        });
    }

    public static String _mthtry()
    {
        return a1;
    }

    static 
    {
        a3 = false;
        aA = false;
        aC = false;
        a7 = true;
        a9 = 0.0D;
        W = 10;
        X = 7;
        a4 = 120;
        a0 = 200F;
        a8 = 30;
        a6 = 100;
        aD = 0x493e0L;
        a5 = 100;
        a2 = 10F;
        Z = 10F;
        aF = 70;
    }
}
