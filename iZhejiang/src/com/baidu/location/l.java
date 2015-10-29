// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.app.AlarmManager;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.os.Handler;
import android.text.TextUtils;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

// Referenced classes of package com.baidu.location:
//            ax, n, c, t, 
//            ar, q, aw, Jni, 
//            ad, f

class l
    implements ax, n
{
    public class a extends BroadcastReceiver
    {

        final l a;

        public void onReceive(Context context, Intent intent)
        {
            if (intent.getAction().equals("com.baidu.locTest.LocationServer4.2"))
            {
                l._mthif(a).sendEmptyMessage(1);
            }
        }

        public a()
        {
            a = l.this;
            super();
        }
    }

    class b
    {

        public static final double _flddo = 0.80000000000000004D;
        public static final double _fldif = 0.69999999999999996D;
        final l a;
        private double _fldfor;
        private HashMap _fldint;

        public double a()
        {
            return _fldfor;
        }

        double a(b b9)
        {
            Iterator iterator = _fldint.keySet().iterator();
            double d = 0.0D;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Object obj = (String)iterator.next();
                int i = ((Integer)_fldint.get(obj)).intValue();
                obj = (Integer)b9._mthif().get(obj);
                if (obj != null)
                {
                    d = (double)((100 - ((Integer) (obj)).intValue()) * (100 - i)) + d;
                }
            } while (true);
            return d / (_fldfor * b9.a());
        }

        public HashMap _mthif()
        {
            return _fldint;
        }

        public b(ar.b b9)
        {
            a = l.this;
            super();
            _fldint = new HashMap();
            _fldfor = 1.0D;
            if (b9._fldfor != null)
            {
                l1 = b9._fldfor.iterator();
                int i = 0;
                do
                {
                    if (!hasNext())
                    {
                        break;
                    }
                    b9 = (ScanResult)next();
                    int j = Math.abs(((ScanResult) (b9)).level);
                    _fldint.put(((ScanResult) (b9)).BSSID, Integer.valueOf(j));
                    _fldfor = _fldfor + (double)((100 - j) * (100 - j));
                    i++;
                } while (i <= 16);
                _fldfor = Math.sqrt(_fldfor);
            }
        }
    }

    class c extends BroadcastReceiver
    {

        final l a;
        boolean _fldif;

        public void a(Context context)
        {
            if (!_fldif)
            {
                _fldif = true;
                IntentFilter intentfilter = new IntentFilter();
                intentfilter.addAction("android.intent.action.SCREEN_OFF");
                intentfilter.addAction("android.intent.action.SCREEN_ON");
                context.registerReceiver(this, intentfilter);
            }
        }

        public void onReceive(Context context, Intent intent)
        {
            for (context = intent.getAction(); context.equals("android.intent.action.SCREEN_ON") || !context.equals("android.intent.action.SCREEN_OFF");)
            {
                return;
            }

            ad.cM().cK();
        }

        public c()
        {
            a = l.this;
            super();
            _fldif = false;
            a(f.getServiceContext());
        }
    }


    private static final int b5 = 200;
    private static File b7 = null;
    private static File bD = null;
    private static final int bK = 800;
    public static final String bM = "com.baidu.locTest.LocationServer4.2";
    private static final int bW = 24;
    private static String bZ;
    private long b0;
    private final int b1;
    private int b2;
    private int b3;
    private boolean b4;
    long b6;
    private a b8;
    private Handler bA;
    private boolean bB;
    private long bC[];
    private boolean bE;
    private boolean bF;
    private String bG;
    private int bH;
    private AlarmManager bI;
    private PendingIntent bJ;
    private Context bL;
    private String bN;
    private long bO;
    private boolean bP;
    private long bQ;
    private t.a bR;
    private long bS;
    private final int bT;
    String bU;
    ArrayList bV;
    private long bX;
    ArrayList bY;
    c bx;
    private final long by;
    private String bz;

    public l(Context context)
    {
        bG = (new StringBuilder()).append(I).append("/vm.dat").toString();
        by = 0x521c820L;
        b1 = 200;
        bI = null;
        b8 = null;
        bJ = null;
        bL = null;
        bX = 0L;
        bC = new long[20];
        bH = 0;
        bR = null;
        bN = null;
        b3 = 1;
        bF = false;
        bP = false;
        b4 = false;
        bA = null;
        bT = 1;
        bE = false;
        bS = com.baidu.location.c.ad;
        b2 = 0;
        bQ = 0L;
        bO = 0L;
        b0 = 0L;
        bz = "";
        bB = false;
        bx = null;
        bY = null;
        bV = null;
        b6 = 0L;
        bU = "dlcu.dat";
        bL = context;
        b6 = 0L;
        try
        {
            bx = new c();
        }
        catch (Exception exception)
        {
            bx = null;
        }
        this;
        JVM INSTR monitorenter ;
        bA = new _cls1();
        bX = System.currentTimeMillis();
        bI = (AlarmManager)context.getSystemService("alarm");
        b8 = new a();
        context.registerReceiver(b8, new IntentFilter("com.baidu.locTest.LocationServer4.2"));
        bJ = PendingIntent.getBroadcast(context, 0, new Intent("com.baidu.locTest.LocationServer4.2"), 0x8000000);
        bI.set(0, System.currentTimeMillis() + 1000L, bJ);
        bS = com.baidu.location.c.ad;
        bY = new ArrayList();
        bV = new ArrayList();
        t();
        bE = true;
        this;
        JVM INSTR monitorexit ;
        return;
        context;
        this;
        JVM INSTR monitorexit ;
        throw context;
    }

    static Handler _mthif(l l1)
    {
        return l1.bA;
    }

    private void _mthif(boolean flag)
    {
        Object obj = com.baidu.location.c._mthbyte();
        if (obj == null)
        {
            return;
        }
        obj = (new StringBuilder()).append(((String) (obj))).append(File.separator).append("baidu/tempdata/").append(bU).toString();
        try
        {
            obj = new RandomAccessFile(((String) (obj)), "rw");
        }
        catch (Exception exception)
        {
            return;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        ((RandomAccessFile) (obj)).seek(0L);
        ((RandomAccessFile) (obj)).writeLong(System.currentTimeMillis());
        ((RandomAccessFile) (obj)).writeInt(2125);
        b2 = 0;
        bQ = System.currentTimeMillis();
_L2:
        ((RandomAccessFile) (obj)).writeInt(b2);
        ((RandomAccessFile) (obj)).writeInt(2125);
        ((RandomAccessFile) (obj)).close();
        return;
        ((RandomAccessFile) (obj)).seek(12L);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void q()
    {
        if (bZ != null)
        {
            b7 = new File(bZ);
            if (!b7.exists())
            {
                Object obj = new File(I);
                if (!((File) (obj)).exists())
                {
                    ((File) (obj)).mkdirs();
                }
                b7.createNewFile();
                obj = new RandomAccessFile(b7, "rw");
                ((RandomAccessFile) (obj)).seek(0L);
                ((RandomAccessFile) (obj)).writeInt(-1);
                ((RandomAccessFile) (obj)).writeInt(-1);
                ((RandomAccessFile) (obj)).writeInt(0);
                ((RandomAccessFile) (obj)).writeLong(0L);
                ((RandomAccessFile) (obj)).writeInt(0);
                ((RandomAccessFile) (obj)).writeInt(0);
                ((RandomAccessFile) (obj)).close();
                return;
            }
            break MISSING_BLOCK_LABEL_121;
        }
        try
        {
            b7 = null;
            return;
        }
        catch (Exception exception)
        {
            b7 = null;
        }
    }

    public static String s()
    {
        return null;
    }

    private void t()
    {
        int i;
        boolean flag;
        Object obj = com.baidu.location.c._mthbyte();
        if (obj == null)
        {
            return;
        }
        obj = (new StringBuilder()).append(((String) (obj))).append(File.separator).append("baidu/tempdata/").append(bU).toString();
        int j;
        long l1;
        try
        {
            obj = new RandomAccessFile(((String) (obj)), "r");
            ((RandomAccessFile) (obj)).seek(0L);
            l1 = ((RandomAccessFile) (obj)).readLong();
        }
        catch (Exception exception)
        {
            l1 = 0L;
            i = 0;
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        if (((RandomAccessFile) (obj)).readInt() != 2125) goto _L2; else goto _L1
_L1:
        i = ((RandomAccessFile) (obj)).readInt();
        j = ((RandomAccessFile) (obj)).readInt();
        Exception exception1;
        if (j == 2125)
        {
            flag = true;
        } else
        {
            flag = false;
        }
_L5:
        try
        {
            ((RandomAccessFile) (obj)).close();
        }
        catch (Exception exception2) { }
_L3:
        if (flag)
        {
            b2 = i;
            bQ = l1;
            return;
        } else
        {
            b2 = 0;
            bQ = 0L;
            return;
        }
        exception1;
        i = 0;
        flag = false;
        continue; /* Loop/switch isn't completed */
        exception1;
        flag = false;
        if (true) goto _L3; else goto _L2
_L2:
        i = 0;
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    boolean _mthif(double d, double d1)
    {
        return -2.1971522000000001D * d + -0.70587058999999996D * d1 + 0.84280180000000005D > 0.0D;
    }

    public boolean r()
    {
        return ((KeyguardManager)bL.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    public void u()
    {
        this;
        JVM INSTR monitorenter ;
        bE = false;
        if (b8 != null)
        {
            bL.unregisterReceiver(b8);
        }
        b8 = null;
        if (bI != null && bJ != null)
        {
            bI.cancel(bJ);
        }
        bI = null;
        bJ = null;
        bD = null;
        bY.clear();
        bV.clear();
        bY = null;
        bV = null;
        b6 = 0L;
        b0 = 0L;
        bz = "";
        bB = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void v()
    {
        if (!bE)
        {
            return;
        }
        Object obj;
        Exception exception;
        String s1;
        String s2;
        t.a a1;
        ar.b b10;
        StringBuffer stringbuffer;
        String s3;
        boolean flag;
        int i;
        int j;
        int k;
        int j1;
        int k1;
        int l1;
        long l2;
        if (b0 != 0L)
        {
            l2 = (System.currentTimeMillis() - b0) + 30000L;
        } else
        {
            l2 = 0L;
        }
        b0 = System.currentTimeMillis();
        s2 = com.baidu.location.c._mthbyte();
        if (s2 == null)
        {
            bI.set(0, System.currentTimeMillis() + com.baidu.location.c.aQ, bJ);
            return;
        }
        a1 = com.baidu.location.t.an().ak();
        if (a1 == null)
        {
            bI.set(0, System.currentTimeMillis() + com.baidu.location.c.aQ, bJ);
            return;
        }
        b10 = ar.bW().b1();
        flag = false;
        if (b6 == 0L)
        {
            flag = true;
            bY.clear();
            bV.clear();
        }
        k = 0;
        j = k;
        if (!flag)
        {
            int i1 = bV.size();
            j = k;
            if (i1 > 0)
            {
                j = k;
                if (a1.a((t.a)bV.get(i1 - 1)))
                {
                    j = k;
                    if (bY.size() >= i1)
                    {
                        ar.b b9 = (ar.b)bY.get(i1 - 1);
                        j = k;
                        if (!_mthif(ar._mthif(b10, b9), (new b(b9)).a(new b(b10))))
                        {
                            j = -1;
                        }
                    }
                }
            }
        }
        k = 0;
        if (j < 0)
        {
            k = 1;
        }
        if (!k)
        {
            if (System.currentTimeMillis() - bQ > 0x5265c00L || System.currentTimeMillis() - bQ < 0L)
            {
                b2 = 0;
                _mthif(true);
            } else
            {
                b2 = b2 + 1;
                _mthif(false);
            }
            if (b2 > com.baidu.location.c.a5)
            {
                bO = (bQ + 0x5265c00L) - System.currentTimeMillis();
            }
        }
        if (bO <= 0xdbba0L) goto _L2; else goto _L1
_L1:
        bS = bO;
        bI.set(0, System.currentTimeMillis() + bS, bJ);
        bO = 0L;
_L9:
        b6 = System.currentTimeMillis();
        if (k)
        {
            com.baidu.location.q.x().z();
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (j >= 0) goto _L4; else goto _L3
_L3:
        bS = bS + com.baidu.location.c.ao;
        if (b10 != null && b10._fldfor != null && b10._fldfor.size() != 0) goto _L6; else goto _L5
_L5:
        if (bS > com.baidu.location.c.aK)
        {
            bS = com.baidu.location.c.aK;
        }
_L7:
        bI.set(0, System.currentTimeMillis() + bS, bJ);
        bB = true;
        continue; /* Loop/switch isn't completed */
_L6:
        if (bS > com.baidu.location.c.aQ)
        {
            bS = com.baidu.location.c.aQ;
        }
        if (true) goto _L7; else goto _L4
_L4:
        bS = com.baidu.location.c.ad;
        bI.set(0, System.currentTimeMillis() + bS, bJ);
        if (System.currentTimeMillis() - b6 > 0xcd140L)
        {
            bY.clear();
            bV.clear();
        }
        if (true) goto _L9; else goto _L8
_L8:
        stringbuffer = new StringBuffer(200);
        if (flag)
        {
            stringbuffer.append("s");
        }
        stringbuffer.append("v");
        stringbuffer.append(4);
        l1 = (int)(System.currentTimeMillis() >> 15);
        stringbuffer.append("t");
        stringbuffer.append(l1);
        if (a1._mthfor())
        {
            if (a1._flddo == 460)
            {
                stringbuffer.append("x,");
            } else
            {
                stringbuffer.append("x");
                stringbuffer.append(a1._flddo);
                stringbuffer.append(",");
            }
            stringbuffer.append(a1._fldif);
            stringbuffer.append(",");
            stringbuffer.append(a1._fldfor);
            stringbuffer.append(",");
            stringbuffer.append(a1._fldtry);
        }
        s1 = ar.bW().b4();
        i = 0;
        j = 0;
        obj = null;
        if (b10 == null || b10._fldfor == null) goto _L11; else goto _L10
        if (j1 == 0)
        {
            stringbuffer.append("w");
        } else
        {
            stringbuffer.append(",");
        }
        stringbuffer.append(s3);
        k = j;
        if (s1 != null)
        {
            k = j;
            if (s1.equals(s3))
            {
                s3 = ((ScanResult)b10._fldfor.get(j1)).capabilities;
                if (!TextUtils.isEmpty(s3))
                {
                    s3 = s3.toUpperCase(Locale.CHINA);
                    if (s3.contains("WEP") || s3.contains("WPA"))
                    {
                        stringbuffer.append("l");
                    } else
                    {
                        stringbuffer.append("j");
                    }
                } else
                {
                    stringbuffer.append("j");
                }
                k = 1;
            }
        }
        stringbuffer.append((new StringBuilder()).append(";").append(k1).toString());
        j = i + 1;
        i = k;
_L12:
        if (j <= 2)
        {
            break MISSING_BLOCK_LABEL_926;
        }
_L13:
        if (j < 3 && obj != null)
        {
            stringbuffer.append(((String) (obj)));
        }
_L11:
        if (r())
        {
            obj = "y2";
        } else
        {
            obj = "y1";
            try
            {
                ad.cM()._mthgoto(l1);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                exception = "y";
            }
        }
        s1 = ((String) (obj));
        if (aw._mthdo().a() != null)
        {
            s1 = (new StringBuilder()).append(((String) (obj))).append(aw._mthdo().a()).toString();
        }
        stringbuffer.append(s1);
        if (bB)
        {
            if (l2 > 0L)
            {
                l2 /= 60000L;
                bz = (new StringBuilder()).append("r").append(l2).toString();
                stringbuffer.append(bz);
                bz = "";
            }
            bB = false;
        }
        System.currentTimeMillis();
        Jni._mthint(s2, stringbuffer.toString());
        bY.add(b10);
        for (; bY.size() > 3; bY.remove(0)) { }
        bV.add(a1);
        for (; bV.size() > 3; bV.remove(0)) { }
        com.baidu.location.q.x().z();
        return;
_L10:
        j1 = 0;
        do
        {
            if (j1 >= b10._fldfor.size())
            {
                break MISSING_BLOCK_LABEL_1456;
            }
            s3 = ((ScanResult)b10._fldfor.get(j1)).BSSID.replace(":", "");
            k1 = ((ScanResult)b10._fldfor.get(j1)).level;
            if (k1 < 0)
            {
                k1 = -k1;
            }
            if (i >= 3)
            {
                break;
            }
label0:
            {
                {
                    if (j1 < 2 || j != 0 || s1 == null || s1.equals(s3))
                    {
                        break label0;
                    }
                    if (obj == null)
                    {
                        obj = (new StringBuilder()).append(",").append(s3).append(";").append(k1).toString();
                        k = j;
                        j = i;
                        i = k;
                    } else
                    {
                        k = i;
                        i = j;
                        j = k;
                    }
                }
                j1++;
                k = j;
                j = i;
                i = k;
            }
        } while (true);
        k = i;
        i = j;
        j = k;
          goto _L12
        j = i;
          goto _L13
    }

    static 
    {
        bZ = (new StringBuilder()).append(I).append("/glb.dat").toString();
    }

    private class _cls1 extends Handler
    {

        final l a;

        public void handleMessage(Message message)
        {
            if (!ab.gv)
            {
                return;
            }
            switch (message.what)
            {
            default:
                return;

            case 1: // '\001'
                break;
            }
            try
            {
                a.v();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Message message)
            {
                return;
            }
        }

        _cls1()
        {
            a = l.this;
            super();
        }
    }

}
