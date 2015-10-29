// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;


// Referenced classes of package com.baidu.location:
//            ax, n

class Jni
    implements ax, n
{

    private static int e7 = 14;
    private static int e8 = 13;
    private static int e9 = 1024;
    private static int fa = 11;
    private static int fb = 12;
    private static boolean fc = false;
    private static int fd = 1;
    private static int fe = 2;
    private static int ff = 0;

    Jni()
    {
    }

    private static native String a(byte abyte0[], int i1);

    private static native String b(double d, double d1, int i1, int j1);

    private static native String c(byte abyte0[], int i1);

    private static native void f(byte abyte0[], byte abyte1[]);

    private static native String g(byte abyte0[]);

    public static String i(String s)
    {
        if (fc)
        {
            return "err!";
        } else
        {
            return (new StringBuilder()).append(l(s)).append("|tp=3").toString();
        }
    }

    public static double[] _mthif(double d, double d1, String s)
    {
        double ad[] = new double[2];
        double[] _tmp = ad;
        ad[0] = 0.0D;
        ad[1] = 0.0D;
        if (fc)
        {
            return ad;
        }
        int i1 = -1;
        if (s.equals("bd09"))
        {
            i1 = ff;
        } else
        if (s.equals("bd09ll"))
        {
            i1 = fd;
        } else
        if (s.equals("gcj02"))
        {
            i1 = fe;
        } else
        if (s.equals("gps2gcj"))
        {
            i1 = fa;
        } else
        if (s.equals("bd092gcj"))
        {
            i1 = fb;
        } else
        if (s.equals("bd09ll2gcj"))
        {
            i1 = e8;
        }
        try
        {
            s = b(d, d1, i1, 0x20568).split(":");
            ad[0] = Double.parseDouble(s[0]);
            ad[1] = Double.parseDouble(s[1]);
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        return ad;
    }

    public static void _mthint(String s, String s1)
    {
        try
        {
            f(s.getBytes(), s1.getBytes());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    public static String j(String s)
    {
        if (fc)
        {
            return "err!";
        } else
        {
            return c(s.getBytes(), 0x20568);
        }
    }

    public static String k(String s)
    {
        try
        {
            s = g(s.getBytes());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        while (s == null || s.length() < 2 || "no".equals(s)) 
        {
            return null;
        }
        return s;
    }

    public static String l(String s)
    {
        int i1 = 740;
        int j1 = 0;
        if (fc)
        {
            return "err!";
        }
        s = s.getBytes();
        byte abyte0[] = new byte[e9];
        int k1 = s.length;
        int l1;
        if (k1 <= 740)
        {
            i1 = k1;
        }
        for (k1 = 0; j1 < i1; k1 = l1)
        {
            l1 = k1;
            if (s[j1] != 0)
            {
                abyte0[k1] = s[j1];
                l1 = k1 + 1;
            }
            j1++;
        }

        return a(abyte0, 0x20568);
    }

    static 
    {
        try
        {
            System.loadLibrary("locSDK4d");
            return;
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror)
        {
            unsatisfiedlinkerror.printStackTrace();
        }
        fc = true;
        throw new IllegalStateException("no found the liblocSDK4d.so file, please correct settings");
    }
}
