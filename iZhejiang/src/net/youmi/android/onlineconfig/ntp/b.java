// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig.ntp;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class b
{

    public byte a;
    public byte b;
    public byte c;
    public short d;
    public byte e;
    public byte f;
    public double g;
    public double h;
    public byte i[] = {
        0, 0, 0, 0
    };
    public double j;
    public double k;
    public double l;
    public double m;

    public b()
    {
        a = 0;
        b = 3;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0.0D;
        h = 0.0D;
        j = 0.0D;
        k = 0.0D;
        l = 0.0D;
        m = 0.0D;
        c = 3;
        m = (double)System.currentTimeMillis() / 1000D + 2208988800D;
    }

    public b(byte abyte0[])
    {
        a = 0;
        b = 3;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0.0D;
        h = 0.0D;
        j = 0.0D;
        k = 0.0D;
        l = 0.0D;
        m = 0.0D;
        a = (byte)(abyte0[0] >> 6 & 3);
        b = (byte)(abyte0[0] >> 3 & 7);
        c = (byte)(abyte0[0] & 7);
        d = a(abyte0[1]);
        e = abyte0[2];
        f = abyte0[3];
        g = (double)abyte0[4] * 256D + (double)a(abyte0[5]) + (double)a(abyte0[6]) / 256D + (double)a(abyte0[7]) / 65536D;
        h = (double)a(abyte0[8]) * 256D + (double)a(abyte0[9]) + (double)a(abyte0[10]) / 256D + (double)a(abyte0[11]) / 65536D;
        i[0] = abyte0[12];
        i[1] = abyte0[13];
        i[2] = abyte0[14];
        i[3] = abyte0[15];
        j = a(abyte0, 16);
        k = a(abyte0, 24);
        l = a(abyte0, 32);
        m = a(abyte0, 40);
    }

    public static double a(byte abyte0[], int i1)
    {
        double d1 = 0.0D;
        for (int j1 = 0; j1 < 8; j1++)
        {
            d1 += (double)a(abyte0[i1 + j1]) * Math.pow(2D, (3 - j1) * 8);
        }

        return d1;
    }

    public static String a(double d1)
    {
        if (d1 == 0.0D)
        {
            return "0";
        } else
        {
            long l1 = (long)((d1 - 2208988800D) * 1000D);
            String s = (new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss")).format(new Date(l1));
            double d2 = (long)d1;
            String s1 = (new DecimalFormat(".000000")).format(d1 - d2);
            return (new StringBuilder()).append(s).append(s1).toString();
        }
    }

    public static String a(byte abyte0[], short word0, byte byte0)
    {
        if (word0 == 0 || word0 == 1)
        {
            return new String(abyte0);
        }
        if (byte0 == 3)
        {
            return (new StringBuilder()).append(a(abyte0[0])).append(".").append(a(abyte0[1])).append(".").append(a(abyte0[2])).append(".").append(a(abyte0[3])).toString();
        }
        if (byte0 == 4)
        {
            return (new StringBuilder()).append("").append((double)a(abyte0[0]) / 256D + (double)a(abyte0[1]) / 65536D + (double)a(abyte0[2]) / 16777216D + (double)a(abyte0[3]) / 4294967296D).toString();
        } else
        {
            return "";
        }
    }

    public static short a(byte byte0)
    {
        if ((byte0 & 0x80) == 128)
        {
            return (short)((byte0 & 0x7f) + 128);
        } else
        {
            return (short)byte0;
        }
    }

    public static void a(byte abyte0[], int i1, double d1)
    {
        for (int j1 = 0; j1 < 8; j1++)
        {
            double d2 = Math.pow(2D, (3 - j1) * 8);
            abyte0[i1 + j1] = (byte)(int)(d1 / d2);
            d1 -= d2 * (double)a(abyte0[i1 + j1]);
        }

        abyte0[7] = (byte)(int)(Math.random() * 255D);
    }

    public byte[] a()
    {
        byte abyte0[] = new byte[48];
        abyte0[0] = (byte)(a << 6 | b << 3 | c);
        abyte0[1] = (byte)d;
        abyte0[2] = e;
        abyte0[3] = f;
        int i1 = (int)(g * 65536D);
        abyte0[4] = (byte)(i1 >> 24 & 0xff);
        abyte0[5] = (byte)(i1 >> 16 & 0xff);
        abyte0[6] = (byte)(i1 >> 8 & 0xff);
        abyte0[7] = (byte)(i1 & 0xff);
        long l1 = (long)(h * 65536D);
        abyte0[8] = (byte)(int)(l1 >> 24 & 255L);
        abyte0[9] = (byte)(int)(l1 >> 16 & 255L);
        abyte0[10] = (byte)(int)(l1 >> 8 & 255L);
        abyte0[11] = (byte)(int)(l1 & 255L);
        abyte0[12] = i[0];
        abyte0[13] = i[1];
        abyte0[14] = i[2];
        abyte0[15] = i[3];
        a(abyte0, 16, j);
        a(abyte0, 24, k);
        a(abyte0, 32, l);
        a(abyte0, 40, m);
        return abyte0;
    }

    public String toString()
    {
        String s = (new DecimalFormat("0.#E0")).format(Math.pow(2D, f));
        return (new StringBuilder()).append("Leap indicator: ").append(a).append("\nVersion: ").append(b).append("\nMode: ").append(c).append("\nStratum: ").append(d).append("\nPoll: ").append(e).append("\nPrecision: ").append(f).append(" (").append(s).append(" seconds)").append("\nRoot delay: ").append((new DecimalFormat("0.00")).format(g * 1000D)).append(" ms ").append("\nRoot dispersion: ").append((new DecimalFormat("0.00")).format(h * 1000D)).append(" ms ").append("\nReference identifier: ").append(a(i, d, b)).append(" ").append("\n\u53C2\u8003\u65F6\u95F4\u6233:").append(a(j)).append("\n\u672C\u5730\u65F6\u95F4\u6233:").append(a(k)).append("\n\u63A5\u6536\u65F6\u95F4\u6233:").append(a(l)).append("\n\u4F20\u8F93\u65F6\u95F4\u6233:").append(a(m)).toString();
    }
}
