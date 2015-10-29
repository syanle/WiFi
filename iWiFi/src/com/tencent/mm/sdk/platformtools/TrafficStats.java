// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.Process;
import java.io.File;
import java.util.Scanner;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public final class TrafficStats
{

    public static final String DEV_FILE = "/proc/self/net/dev";
    public static final String GPRSLINE = "rmnet0";
    public static final String WIFILINE = "tiwlan0";
    private static long br;
    private static long bs;
    private static long bt;
    private static long bu;
    private static long bv;
    private static long bw;
    private static long bx;
    private static long by;

    private TrafficStats()
    {
    }

    public static long getMobileRx(long l)
    {
        long l1 = l;
        if (bw > l)
        {
            l1 = bw;
        }
        return l1;
    }

    public static long getMobileTx(long l)
    {
        long l1 = l;
        if (bv > l)
        {
            l1 = bv;
        }
        return l1;
    }

    public static long getWifiRx(long l)
    {
        long l1 = l;
        if (by > l)
        {
            l1 = by;
        }
        return l1;
    }

    public static long getWifiTx(long l)
    {
        long l1 = l;
        if (bx > l)
        {
            l1 = bx;
        }
        return l1;
    }

    public static void reset()
    {
        br = -1L;
        bs = -1L;
        bt = -1L;
        bu = -1L;
        update();
    }

    public static void update()
    {
        long l;
        long l1;
        long l2;
        long l3;
        l3 = 0L;
        l2 = 0L;
        l1 = 0L;
        l = 0L;
        Scanner scanner;
        scanner = new Scanner(new File((new StringBuilder("/proc/")).append(Process.myPid()).append("/net/dev").toString()));
        scanner.nextLine();
        scanner.nextLine();
_L2:
        String as[];
        if (!scanner.hasNext())
        {
            break MISSING_BLOCK_LABEL_232;
        }
        as = scanner.nextLine().split("[ :\t]+");
        Exception exception;
        int i;
        long l4;
        long l5;
        if (as[0].length() == 0)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        l5 = l2;
        l4 = l3;
        if (as[0].equals("lo"))
        {
            break MISSING_BLOCK_LABEL_154;
        }
        l5 = l2;
        l4 = l3;
        if (as[i + 0].startsWith("rmnet"))
        {
            l4 = l3 + Long.parseLong(as[i + 9]);
            l5 = l2 + Long.parseLong(as[i + 1]);
        }
        l2 = l5;
        l3 = l4;
        if (as[i + 0].equals("lo")) goto _L2; else goto _L1
_L1:
        l2 = l5;
        l3 = l4;
        if (as[i + 0].startsWith("rmnet")) goto _L2; else goto _L3
_L3:
        l1 += Long.parseLong(as[i + 9]);
        l += Long.parseLong(as[i + 1]);
        l2 = l5;
        l3 = l4;
          goto _L2
        scanner.close();
        if (br < 0L)
        {
            br = l3;
            Log.v("MicroMsg.SDK.TrafficStats", "fix loss newMobileTx %d", new Object[] {
                Long.valueOf(l3)
            });
        }
        if (bs < 0L)
        {
            bs = l2;
            Log.v("MicroMsg.SDK.TrafficStats", "fix loss newMobileRx %d", new Object[] {
                Long.valueOf(l2)
            });
        }
        if (bt < 0L)
        {
            bt = l1;
            Log.v("MicroMsg.SDK.TrafficStats", "fix loss newWifiTx %d", new Object[] {
                Long.valueOf(l1)
            });
        }
        if (bu < 0L)
        {
            bu = l;
            Log.v("MicroMsg.SDK.TrafficStats", "fix loss newWifiRx %d", new Object[] {
                Long.valueOf(l)
            });
        }
        if (l - bu < 0L)
        {
            Log.v("MicroMsg.SDK.TrafficStats", "minu %d", new Object[] {
                Long.valueOf(l - bu)
            });
        }
        if (l1 - bt < 0L)
        {
            Log.v("MicroMsg.SDK.TrafficStats", "minu %d", new Object[] {
                Long.valueOf(l1 - bt)
            });
        }
        if (l3 < br) goto _L5; else goto _L4
_L4:
        l4 = l3 - br;
_L12:
        bv = l4;
        if (l2 < bs) goto _L7; else goto _L6
_L6:
        l4 = l2 - bs;
_L13:
        bw = l4;
        if (l1 < bt) goto _L9; else goto _L8
_L8:
        l4 = l1 - bt;
_L14:
        bx = l4;
        if (l < bu) goto _L11; else goto _L10
_L10:
        l4 = l - bu;
_L15:
        by = l4;
        br = l3;
        bs = l2;
        bt = l1;
        bu = l;
_L16:
        Log.d("MicroMsg.SDK.TrafficStats", "current system traffic: wifi rx/tx=%d/%d, mobile rx/tx=%d/%d", new Object[] {
            Long.valueOf(by), Long.valueOf(bx), Long.valueOf(bw), Long.valueOf(bv)
        });
        return;
_L5:
        l4 = l3;
          goto _L12
_L7:
        l4 = l2;
          goto _L13
_L9:
        l4 = l1;
          goto _L14
_L11:
        l4 = l;
          goto _L15
        exception;
        exception.printStackTrace();
          goto _L16
    }

    public static long updateMobileRx(long l)
    {
        update();
        return getMobileRx(l);
    }

    public static long updateMobileTx(long l)
    {
        update();
        return getMobileTx(l);
    }

    public static long updateWifiRx(long l)
    {
        update();
        return getWifiRx(l);
    }

    public static long updateWifiTx(long l)
    {
        update();
        return getWifiTx(l);
    }
}
