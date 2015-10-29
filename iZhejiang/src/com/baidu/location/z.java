// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.baidu.location:
//            ax, n, LocationClient, BDNotifyListener, 
//            BDLocation, Jni, BDLocationListener

public class z
    implements ax, n
{
    public class a
        implements BDLocationListener
    {

        final z a;

        public void a(BDLocation bdlocation)
        {
        }

        public void onReceiveLocation(BDLocation bdlocation)
        {
            z._mthif(a, bdlocation);
        }

        public a()
        {
            a = z.this;
            super();
        }
    }

    public class b extends BroadcastReceiver
    {

        final z a;

        public void onReceive(Context context, Intent intent)
        {
            if (z._mthdo(a) == null || z._mthdo(a).isEmpty())
            {
                return;
            } else
            {
                z._mthif(a).requestNotifyLocation();
                return;
            }
        }

        public b()
        {
            a = z.this;
            super();
        }
    }


    public static final String gi = "android.com.baidu.location.TIMER.NOTIFY";
    private int ge;
    private Context gf;
    private AlarmManager gg;
    private a gh;
    private PendingIntent gj;
    private ArrayList gk;
    private BDLocation gl;
    private long gm;
    private b gn;
    private float go;
    private boolean gp;
    private boolean gq;
    private long gr;
    private boolean gs;
    private LocationClient gt;

    public z(Context context, LocationClient locationclient)
    {
        gk = null;
        go = 3.402823E+38F;
        gl = null;
        gr = 0L;
        gt = null;
        gf = null;
        ge = 0;
        gm = 0L;
        gq = false;
        gp = false;
        gj = null;
        gg = null;
        gn = null;
        gh = new a();
        gs = false;
        gf = context;
        gt = locationclient;
        gt.registerNotifyLocationListener(gh);
        gg = (AlarmManager)gf.getSystemService("alarm");
        gn = new b();
        gs = false;
    }

    private void bd()
    {
        char c = '\u2710';
        if (bf()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag;
        int i;
        long l;
        long l1;
        long l2;
        if (go > 5000F)
        {
            i = 0x927c0;
        } else
        if (go > 1000F)
        {
            i = 0x1d4c0;
        } else
        if (go > 500F)
        {
            i = 60000;
        } else
        {
            i = 10000;
        }
        if (gp)
        {
            gp = false;
            i = c;
        }
        if (ge == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        l = gm;
        l1 = ge;
        l2 = System.currentTimeMillis();
        if ((long)i <= (l + l1) - l2)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = false;
_L4:
        if (flag)
        {
            ge = i;
            gm = System.currentTimeMillis();
            _mthif(ge);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        flag = true;
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    private boolean bf()
    {
        if (gk != null && !gk.isEmpty()) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        return flag1;
_L2:
        Iterator iterator = gk.iterator();
        boolean flag = false;
        do
        {
            flag1 = flag;
            if (!iterator.hasNext())
            {
                continue;
            }
            if (((BDNotifyListener)iterator.next()).Notified < 3)
            {
                flag = true;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    static ArrayList _mthdo(z z1)
    {
        return z1.gk;
    }

    static LocationClient _mthif(z z1)
    {
        return z1.gt;
    }

    private void _mthif(long l)
    {
        if (gq)
        {
            gg.cancel(gj);
        }
        gj = PendingIntent.getBroadcast(gf, 0, new Intent("android.com.baidu.location.TIMER.NOTIFY"), 0x8000000);
        gg.set(0, System.currentTimeMillis() + l, gj);
    }

    static void _mthif(z z1, BDLocation bdlocation)
    {
        z1._mthint(bdlocation);
    }

    private void _mthint(BDLocation bdlocation)
    {
        gq = false;
        if (bdlocation.getLocType() != 61 && bdlocation.getLocType() != 161 && bdlocation.getLocType() != 65)
        {
            _mthif(0x1d4c0L);
        } else
        if (System.currentTimeMillis() - gr >= 5000L && gk != null)
        {
            gl = bdlocation;
            gr = System.currentTimeMillis();
            float af[] = new float[1];
            Iterator iterator = gk.iterator();
            float f = 3.402823E+38F;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                BDNotifyListener bdnotifylistener = (BDNotifyListener)iterator.next();
                Location.distanceBetween(bdlocation.getLatitude(), bdlocation.getLongitude(), bdnotifylistener.mLatitudeC, bdnotifylistener.mLongitudeC, af);
                float f1 = af[0] - bdnotifylistener.mRadius - bdlocation.getRadius();
                if (f1 > 0.0F)
                {
                    if (f1 < f)
                    {
                        f = f1;
                    }
                } else
                if (bdnotifylistener.Notified < 3)
                {
                    bdnotifylistener.Notified = bdnotifylistener.Notified + 1;
                    bdnotifylistener.onNotify(bdlocation, af[0]);
                    if (bdnotifylistener.Notified < 3)
                    {
                        gp = true;
                    }
                }
            } while (true);
            if (f < go)
            {
                go = f;
            }
            ge = 0;
            bd();
            return;
        }
    }

    public void be()
    {
        if (gq)
        {
            gg.cancel(gj);
        }
        gl = null;
        gr = 0L;
        if (gs)
        {
            gf.unregisterReceiver(gn);
        }
        gs = false;
    }

    public int _mthdo(BDNotifyListener bdnotifylistener)
    {
        if (gk == null)
        {
            gk = new ArrayList();
        }
        gk.add(bdnotifylistener);
        bdnotifylistener.isAdded = true;
        bdnotifylistener.mNotifyCache = this;
        if (!gs)
        {
            gf.registerReceiver(gn, new IntentFilter("android.com.baidu.location.TIMER.NOTIFY"));
            gs = true;
        }
        if (bdnotifylistener.mCoorType == null)
        {
            return 1;
        }
        if (!bdnotifylistener.mCoorType.equals("gcj02"))
        {
            double ad[] = Jni._mthif(bdnotifylistener.mLongitude, bdnotifylistener.mLatitude, (new StringBuilder()).append(bdnotifylistener.mCoorType).append("2gcj").toString());
            bdnotifylistener.mLongitudeC = ad[0];
            bdnotifylistener.mLatitudeC = ad[1];
        }
        if (gl != null && System.currentTimeMillis() - gr <= 30000L) goto _L2; else goto _L1
_L1:
        gt.requestNotifyLocation();
_L4:
        bd();
        return 1;
_L2:
        float af[] = new float[1];
        Location.distanceBetween(gl.getLatitude(), gl.getLongitude(), bdnotifylistener.mLatitudeC, bdnotifylistener.mLongitudeC, af);
        float f = af[0] - bdnotifylistener.mRadius - gl.getRadius();
        if (f > 0.0F)
        {
            if (f < go)
            {
                go = f;
            }
        } else
        if (bdnotifylistener.Notified < 3)
        {
            bdnotifylistener.Notified = bdnotifylistener.Notified + 1;
            bdnotifylistener.onNotify(gl, af[0]);
            if (bdnotifylistener.Notified < 3)
            {
                gp = true;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int _mthfor(BDNotifyListener bdnotifylistener)
    {
        if (gk == null)
        {
            return 0;
        }
        if (gk.contains(bdnotifylistener))
        {
            gk.remove(bdnotifylistener);
        }
        if (gk.size() == 0 && gq)
        {
            gg.cancel(gj);
        }
        return 1;
    }

    public void _mthif(BDNotifyListener bdnotifylistener)
    {
        if (bdnotifylistener.mCoorType == null)
        {
            return;
        }
        if (!bdnotifylistener.mCoorType.equals("gcj02"))
        {
            double ad[] = Jni._mthif(bdnotifylistener.mLongitude, bdnotifylistener.mLatitude, (new StringBuilder()).append(bdnotifylistener.mCoorType).append("2gcj").toString());
            bdnotifylistener.mLongitudeC = ad[0];
            bdnotifylistener.mLatitudeC = ad[1];
        }
        if (gl != null && System.currentTimeMillis() - gr <= 0x493e0L) goto _L2; else goto _L1
_L1:
        gt.requestNotifyLocation();
_L4:
        bd();
        return;
_L2:
        float af[] = new float[1];
        Location.distanceBetween(gl.getLatitude(), gl.getLongitude(), bdnotifylistener.mLatitudeC, bdnotifylistener.mLongitudeC, af);
        float f = af[0] - bdnotifylistener.mRadius - gl.getRadius();
        if (f > 0.0F)
        {
            if (f < go)
            {
                go = f;
            }
        } else
        if (bdnotifylistener.Notified < 3)
        {
            bdnotifylistener.Notified = bdnotifylistener.Notified + 1;
            bdnotifylistener.onNotify(gl, af[0]);
            if (bdnotifylistener.Notified < 3)
            {
                gp = true;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
