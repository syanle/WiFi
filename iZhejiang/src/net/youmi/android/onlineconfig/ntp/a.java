// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig.ntp;

import android.text.format.Time;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;
import net.youmi.android.a.b.b.e;

// Referenced classes of package net.youmi.android.onlineconfig.ntp:
//            b

public class a
{

    private static final String a[] = {
        "133.100.11.8", "130.149.17.21", "time.asia.apple.com", "ntp.nasa.gov", "ntp-sop.inria.frserver", "203.117.180.36", "133.100.9.2", "210.72.145.44", "210.72.145.44", "131.107.1.10", 
        "64.236.96.53", "66.92.68.246", "18.145.0.30", "137.92.140.80", "128.118.46.3", "129.7.1.66", "131.107.1.10"
    };
    private int b;
    private int c;
    private int d;
    private String e;

    public a(int i, int j, int k)
    {
        if (i <= 2000)
        {
            throw new IllegalArgumentException("out of range! Year should be [2000, \u221E)");
        }
        if (j < 1 || j > 12)
        {
            throw new IllegalArgumentException("out of range! Month should be [1, 12]");
        }
        if (k < 1 || k > 31)
        {
            throw new IllegalArgumentException("out of range! Day should be [1, 31]");
        } else
        {
            b = i;
            c = j;
            d = k;
            b();
            return;
        }
    }

    public static String a(double d1)
    {
        if (d1 == 0.0D)
        {
            return "0";
        } else
        {
            long l = (long)((d1 - 2208988800D) * 1000D);
            return (new SimpleDateFormat("yyyy-MM-dd")).format(new Date(l));
        }
    }

    private void b()
    {
        Time time = new Time("GMT+8");
        time.set(d, c - 1, b);
        e = time.format("%Y-%m-%d");
    }

    public boolean a()
    {
        boolean flag = true;
        Object obj = new DatagramSocket();
        ((DatagramSocket) (obj)).setSoTimeout(3000);
        int i = 0;
_L15:
        int j = a.length;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        j = 0;
_L13:
        if (j >= 2) goto _L2; else goto _L1
_L1:
        Object obj1;
        byte abyte0[] = (new b()).a();
        DatagramPacket datagrampacket = new DatagramPacket(abyte0, abyte0.length, InetAddress.getByName(a[i]), 123);
        System.currentTimeMillis();
        ((DatagramSocket) (obj)).send(datagrampacket);
        obj1 = new DatagramPacket(abyte0, abyte0.length);
        ((DatagramSocket) (obj)).receive(((DatagramPacket) (obj1)));
        obj1 = new b(((DatagramPacket) (obj1)).getData());
        if (((b) (obj1)).j <= 0.0D)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj1 = a(((b) (obj1)).j);
        if (net.youmi.android.a.b.b.e.a(((String) (obj1)))) goto _L4; else goto _L3
_L3:
        boolean flag1 = net.youmi.android.a.b.b.e.a(e);
        if (!flag1) goto _L5; else goto _L4
_L4:
        if (obj != null)
        {
            ((DatagramSocket) (obj)).close();
        }
        flag = false;
_L7:
        return flag;
_L5:
        flag1 = ((String) (obj1)).equals(e);
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_190;
        }
        if (obj == null) goto _L7; else goto _L6
_L6:
        ((DatagramSocket) (obj)).close();
        return true;
        String as[];
        String as1[];
        int k;
        int l;
        as = ((String) (obj1)).split("-");
        as1 = e.split("-");
        k = as.length;
        l = as1.length;
        if (k != l)
        {
            if (obj != null)
            {
                ((DatagramSocket) (obj)).close();
            }
            return false;
        }
        k = 0;
_L9:
        int i1;
        if (k >= as.length)
        {
            break MISSING_BLOCK_LABEL_316;
        }
        l = Integer.valueOf(as[k]).intValue();
        i1 = Integer.valueOf(as1[k]).intValue();
        if (l != i1)
        {
            break; /* Loop/switch isn't completed */
        }
_L12:
        k++;
        if (true) goto _L9; else goto _L8
_L8:
        if (l <= i1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (obj == null) goto _L7; else goto _L10
_L10:
        ((DatagramSocket) (obj)).close();
        return true;
        if (l >= i1) goto _L12; else goto _L11
_L11:
        if (obj != null)
        {
            ((DatagramSocket) (obj)).close();
        }
        return false;
        if (obj != null)
        {
            ((DatagramSocket) (obj)).close();
        }
        return false;
        Object obj2;
        obj2;
        j++;
          goto _L13
_L2:
        i++;
        if (true) goto _L15; else goto _L14
_L14:
        if (obj != null)
        {
            ((DatagramSocket) (obj)).close();
        }
_L17:
        return false;
        obj;
        obj = null;
_L20:
        if (obj != null)
        {
            ((DatagramSocket) (obj)).close();
        }
        if (true) goto _L17; else goto _L16
_L16:
        obj2;
        obj = null;
_L19:
        if (obj != null)
        {
            ((DatagramSocket) (obj)).close();
        }
        throw obj2;
        obj2;
        if (true) goto _L19; else goto _L18
_L18:
        obj2;
          goto _L20
    }

}
