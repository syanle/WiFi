// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import java.util.List;

// Referenced classes of package com.baidu.location:
//            ax

class at
    implements ax
{

    public static String kt = null;
    private int kA;
    private boolean kB;
    private int kC;
    private int kD;
    private String kE;
    private String kF;
    private boolean kG;
    public int ko;
    private int kp;
    private List kq;
    private final boolean kr = false;
    private double ks;
    private String ku;
    private boolean kv;
    private double kw;
    private char kx;
    private String ky;
    private boolean kz;

    public at(List list, String s, String s1, String s2)
    {
        kz = false;
        ky = "";
        kG = false;
        ku = "";
        kA = 0;
        kC = 0;
        kE = "";
        kx = 'N';
        kF = "";
        kB = false;
        kp = 1;
        kw = 0.0D;
        ks = 0.0D;
        kq = null;
        kv = false;
        kD = 0;
        ko = 0;
        kq = list;
        ky = s;
        kE = s1;
        kF = s2;
        cS();
    }

    private void cS()
    {
        int i = 0;
        if (t(kF))
        {
            String s = kF.substring(0, kF.length() - 3);
            int j;
            int k;
            for (j = 0; i < s.length(); j = k)
            {
                k = j;
                if (s.charAt(i) == ',')
                {
                    k = j + 1;
                }
                i++;
            }

            String as[] = s.split(",", j + 1);
            if (as.length < 6)
            {
                return;
            }
            if (!as[2].equals("") && !as[as.length - 3].equals("") && !as[as.length - 2].equals("") && !as[as.length - 1].equals(""))
            {
                kp = Integer.valueOf(as[2]).intValue();
                kw = Double.valueOf(as[as.length - 3]).doubleValue();
                ks = Double.valueOf(as[as.length - 2]).doubleValue();
                kB = true;
            }
        }
        kz = kB;
    }

    private boolean t(String s)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (s != null)
        {
            flag = flag1;
            if (s.length() > 8)
            {
                int i = 1;
                int j = 0;
                for (; i < s.length() - 3; i++)
                {
                    j ^= s.charAt(i);
                }

                flag = flag1;
                if (Integer.toHexString(j).equalsIgnoreCase(s.substring(s.length() - 2, s.length())))
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public double cT()
    {
        return ks;
    }

    public String cU()
    {
        return ku;
    }

    public boolean cV()
    {
        return kz;
    }

    public double cW()
    {
        return kw;
    }

    public int cX()
    {
        return kA;
    }

}
