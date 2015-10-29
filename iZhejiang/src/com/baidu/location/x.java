// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

// Referenced classes of package com.baidu.location:
//            ax, n, w, k, 
//            q, ar, t, c, 
//            at, y, az, Jni, 
//            ab, f, g

class x
    implements ax, n
{
    private class a
        implements android.location.GpsStatus.Listener, android.location.GpsStatus.NmeaListener
    {

        private long a;
        private boolean _fldbyte;
        private List _fldcase;
        private final int _fldchar;
        private String _flddo;
        private String _fldfor;
        long _fldif;
        final x _fldint;
        private String _fldnew;
        private boolean _fldtry;

        public void a(String s)
        {
            if (System.currentTimeMillis() - a <= 400L || !_fldbyte || _fldcase.size() <= 0) goto _L2; else goto _L1
_L1:
            at at1 = new at(_fldcase, _fldfor, _fldnew, _flddo);
            if (!at1.cV()) goto _L4; else goto _L3
_L3:
            com.baidu.location.c.al = x._mthif(_fldint, at1, x._mthtry(_fldint));
            if (com.baidu.location.c.al > 0)
            {
                x.m(String.format(Locale.CHINA, "&nmea=%.1f|%.1f&g_tp=%d", new Object[] {
                    Double.valueOf(at1.cT()), Double.valueOf(at1.cW()), Integer.valueOf(com.baidu.location.c.al)
                }));
            }
_L6:
            _fldcase.clear();
            _flddo = null;
            _fldnew = null;
            _fldfor = null;
            _fldbyte = false;
_L2:
            Exception exception;
            if (s.startsWith("$GPGGA"))
            {
                _fldbyte = true;
                _fldfor = s.trim();
            } else
            if (s.startsWith("$GPGSV"))
            {
                _fldcase.add(s.trim());
            } else
            if (s.startsWith("$GPGSA"))
            {
                _flddo = s.trim();
            }
            a = System.currentTimeMillis();
            return;
_L4:
            try
            {
                com.baidu.location.c.al = 0;
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                com.baidu.location.c.al = 0;
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public void onGpsStatusChanged(int i)
        {
            if (x._mthif(_fldint) != null)
            {
                switch (i)
                {
                case 3: // '\003'
                default:
                    return;

                case 2: // '\002'
                    x._mthif(_fldint, null);
                    x._mthif(_fldint, false);
                    x._mthint(0);
                    return;

                case 4: // '\004'
                    break;
                }
                if (x._mthcase(_fldint) || System.currentTimeMillis() - _fldif >= 10000L)
                {
                    Iterator iterator;
                    int j;
                    int i1;
                    if (x._mthdo(_fldint) == null)
                    {
                        x._mthif(_fldint, x._mthif(_fldint).getGpsStatus(null));
                    } else
                    {
                        x._mthif(_fldint).getGpsStatus(x._mthdo(_fldint));
                    }
                    iterator = x._mthdo(_fldint).getSatellites().iterator();
                    x._mthif(new StringBuilder());
                    x._mthdo(_fldint, 0);
                    x._mthif(_fldint, 0);
                    x._mthdo(_fldint, new HashMap());
                    i = 0;
                    i1 = 0;
                    int l;
                    for (j = 0; iterator.hasNext(); j = l)
                    {
                        GpsSatellite gpssatellite = (GpsSatellite)iterator.next();
                        i1++;
                        l = j;
                        if (gpssatellite.usedInFix())
                        {
                            l = j + 1;
                        }
                        j = i;
                        if (gpssatellite.getSnr() > 0.0F)
                        {
                            j = i + 1;
                        }
                        if (gpssatellite.getSnr() >= (float)com.baidu.location.c.aa)
                        {
                            x._mthint(_fldint);
                        }
                        x.aZ().append(x._mthif(_fldint, gpssatellite, x._mthnew(_fldint)));
                        i = j;
                    }

                    x._mthint(i);
                    x._mthif(_fldint, x._mthnew(_fldint));
                    if (!x._mthcase(_fldint) && System.currentTimeMillis() - x._mthchar(_fldint) >= 60000L && (j > 3 || i1 > 15))
                    {
                        Object obj = x._mthif(_fldint).getLastKnownLocation("gps");
                        if (obj != null)
                        {
                            _fldif = System.currentTimeMillis();
                            long l1 = (System.currentTimeMillis() + g.e().bp) - ((Location) (obj)).getTime();
                            if (l1 < 3500L && l1 > -200L && q._mthif(((Location) (obj)), false))
                            {
                                obj = x._mthbyte(_fldint).obtainMessage(3, obj);
                                x._mthbyte(_fldint).sendMessage(((android.os.Message) (obj)));
                                return;
                            }
                        }
                    }
                }
            }
        }

        public void onNmeaReceived(long l, String s)
        {
            if (x._mthcase(_fldint))
            {
                if (!y.f5)
                {
                    com.baidu.location.c.al = 0;
                    return;
                }
                if (s != null && !s.equals("") && s.length() >= 9 && s.length() <= 150 && _fldint.aR())
                {
                    x._mthbyte(_fldint).sendMessage(x._mthbyte(_fldint).obtainMessage(2, s));
                    return;
                }
            }
        }

        private a()
        {
            _fldint = x.this;
            super();
            _fldif = 0L;
            a = 0L;
            _fldchar = 400;
            _fldtry = true;
            _fldbyte = false;
            _fldcase = new ArrayList();
            _fldfor = null;
            _fldnew = null;
            _flddo = null;
        }

        a(_cls1 _pcls1)
        {
            this();
        }
    }

    private class b
        implements LocationListener
    {

        final x a;

        public void onLocationChanged(Location location)
        {
            x._mthdo(a, System.currentTimeMillis());
            x._mthif(a, true);
            x._mthif(a, location);
            x._mthdo(a, false);
        }

        public void onProviderDisabled(String s)
        {
            x._mthif(a, null);
            x._mthif(a, false);
        }

        public void onProviderEnabled(String s)
        {
        }

        public void onStatusChanged(String s, int i, Bundle bundle)
        {
            switch (i)
            {
            default:
                return;

            case 0: // '\0'
                x._mthif(a, null);
                x._mthif(a, false);
                return;

            case 1: // '\001'
                x._mthif(a, System.currentTimeMillis());
                x._mthdo(a, true);
                x._mthif(a, false);
                return;

            case 2: // '\002'
                x._mthdo(a, false);
                break;
            }
        }

        private b()
        {
            a = x.this;
            super();
        }

        b(_cls1 _pcls1)
        {
            this();
        }
    }

    private class c
        implements LocationListener
    {

        final x a;
        private long _fldif;

        public void onLocationChanged(Location location)
        {
            if (!x._mthcase(a) && location != null && location.getProvider() == "gps")
            {
                x._mthfor(a, System.currentTimeMillis());
                if (System.currentTimeMillis() - _fldif >= 10000L && q._mthif(location, false))
                {
                    _fldif = System.currentTimeMillis();
                    location = x._mthbyte(a).obtainMessage(4, location);
                    x._mthbyte(a).sendMessage(location);
                    return;
                }
            }
        }

        public void onProviderDisabled(String s)
        {
        }

        public void onProviderEnabled(String s)
        {
        }

        public void onStatusChanged(String s, int i, Bundle bundle)
        {
        }

        private c()
        {
            a = x.this;
            super();
            _fldif = 0L;
        }

        c(_cls1 _pcls1)
        {
            this();
        }
    }


    private static int fB = 0;
    private static final int fC = 1;
    private static String fE = null;
    private static final int fH = 3;
    private static final int fJ = 10000;
    private static final int fM = 5;
    private static x fN = null;
    private static File fO;
    private static final int fV = 0x46cd0;
    private static String fY;
    private static StringBuilder fp;
    private static final double fq = 1.0000000000000001E-05D;
    private static final int fs = 3000;
    private static String fu;
    private long fA;
    private final long fD = 1000L;
    private final int fF = 3;
    private Location fG;
    private boolean fI;
    private long fK;
    private b fL;
    private boolean fP;
    private c fQ;
    private String fR;
    private Location fS;
    private final int fT = 1;
    private long fU;
    private long fW;
    private int fX;
    private long fZ;
    private GpsStatus fg;
    private int fh;
    private Handler fi;
    private final int fj = 2;
    private LocationManager fk;
    private boolean fl;
    private Location fm;
    private a fn;
    private final int fo = 4;
    private HashMap fr;
    private long ft;
    private Location fv;
    private long fw;
    private long fx;
    private Location fy;
    private Context fz;

    private x()
    {
        fk = null;
        fL = null;
        fQ = null;
        fn = null;
        fw = 0L;
        ft = 0L;
        fl = false;
        fI = false;
        fR = null;
        fP = false;
        fA = 0L;
        fU = 0L;
        fi = null;
    }

    public static x a4()
    {
        if (fN == null)
        {
            fN = new x();
        }
        return fN;
    }

    private boolean aQ()
    {
        return false;
    }

    private static String aX()
    {
        if (fp != null)
        {
            if (!TextUtils.isEmpty(fp.toString()))
            {
                fp.insert(0, "&snls=");
            }
            if (!TextUtils.isEmpty(fu))
            {
                fp.append("&pogr=").append(fu);
            }
            return fp.toString();
        } else
        {
            return null;
        }
    }

    static StringBuilder aZ()
    {
        return fp;
    }

    static Handler _mthbyte(x x1)
    {
        return x1.fi;
    }

    public static String _mthbyte(Location location)
    {
        String s = _mthcase(location);
        location = s;
        if (s != null)
        {
            location = (new StringBuilder()).append(s).append("&g_tp=0").toString();
        }
        return location;
    }

    public static String _mthcase(Location location)
    {
        float f3 = -1F;
        if (location == null)
        {
            return null;
        }
        float f1 = (float)((double)location.getSpeed() * 3.6000000000000001D);
        if (!location.hasSpeed())
        {
            f1 = -1F;
        }
        double d;
        float f2;
        int i;
        if (location.hasAccuracy())
        {
            f2 = location.getAccuracy();
        } else
        {
            f2 = -1F;
        }
        i = (int)f2;
        if (location.hasAltitude())
        {
            d = location.getAltitude();
        } else
        {
            d = 555D;
        }
        f2 = f3;
        if (location.hasBearing())
        {
            f2 = location.getBearing();
        }
        return String.format(Locale.CHINA, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d", new Object[] {
            Double.valueOf(location.getLongitude()), Double.valueOf(location.getLatitude()), Float.valueOf(f1), Float.valueOf(f2), Integer.valueOf(i), Integer.valueOf(fB), Double.valueOf(d), Long.valueOf(location.getTime() / 1000L)
        });
    }

    static boolean _mthcase(x x1)
    {
        return x1.fI;
    }

    static long _mthchar(x x1)
    {
        return x1.fU;
    }

    static int _mthdo(x x1, int i)
    {
        x1.fX = i;
        return i;
    }

    static long _mthdo(x x1, long l)
    {
        x1.fA = l;
        return l;
    }

    static GpsStatus _mthdo(x x1)
    {
        return x1.fg;
    }

    static HashMap _mthdo(x x1, HashMap hashmap)
    {
        x1.fr = hashmap;
        return hashmap;
    }

    static void _mthdo(x x1, Location location)
    {
        x1._mthfor(location);
    }

    static boolean _mthdo(x x1, boolean flag)
    {
        x1.fl = flag;
        return flag;
    }

    private double[] _mthdo(double d, double d1)
    {
        return (new double[] {
            Math.sin(Math.toRadians(d1)) * d, Math.cos(Math.toRadians(d1)) * d
        });
    }

    static long _mthfor(x x1, long l)
    {
        x1.fU = l;
        return l;
    }

    static a _mthfor(x x1)
    {
        return x1.fn;
    }

    private void _mthfor(Location location)
    {
        fS = location;
        if (fS == null)
        {
            fR = null;
        } else
        {
            long l = System.currentTimeMillis();
            fS.setTime(l);
            float f1 = (float)((double)fS.getSpeed() * 3.6000000000000001D);
            if (!fS.hasSpeed())
            {
                f1 = -1F;
            }
            int j = fB;
            int i = j;
            if (j == 0)
            {
                try
                {
                    i = fS.getExtras().getInt("satellites");
                }
                // Misplaced declaration of an exception variable
                catch (Location location)
                {
                    i = j;
                }
            }
            fR = String.format(Locale.CHINA, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d", new Object[] {
                Double.valueOf(fS.getLongitude()), Double.valueOf(fS.getLatitude()), Float.valueOf(f1), Float.valueOf(fS.getBearing()), Integer.valueOf(i), Long.valueOf(l)
            });
            _mthif(fS.getLongitude(), fS.getLatitude(), f1);
        }
        try
        {
            w.aK()._mthdo(fS);
        }
        // Misplaced declaration of an exception variable
        catch (Location location) { }
        if (aR())
        {
            k.p()._mthbyte(aP());
            if (fB > 2 && q._mthif(fS, true))
            {
                ar.bW().b3();
                q._mthdo(t.an().ak(), ar.bW().bS(), fS, k.p().o());
            }
        }
    }

    private double[] _mthfor(double d, double d1)
    {
        double d2 = 0.0D;
        if (d1 != 0.0D) goto _L2; else goto _L1
_L1:
        if (d <= 0.0D) goto _L4; else goto _L3
_L3:
        d2 = 90D;
_L6:
        return (new double[] {
            Math.sqrt(d * d + d1 * d1), d2
        });
_L4:
        if (d < 0.0D)
        {
            d2 = 270D;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        d2 = Math.toDegrees(Math.atan(d / d1));
        if (true) goto _L6; else goto _L5
_L5:
    }

    private int _mthif(at at1, int i)
    {
        if (fB < com.baidu.location.c.W)
        {
            if (fB <= com.baidu.location.c.aI)
            {
                return 4;
            }
            double d = at1.cT();
            if (d > (double)com.baidu.location.c.ae)
            {
                if (d >= (double)com.baidu.location.c.aR)
                {
                    return 4;
                }
                d = at1.cW();
                if (d > (double)com.baidu.location.c.ag)
                {
                    if (d >= (double)com.baidu.location.c.aT)
                    {
                        return 4;
                    }
                    if (i < com.baidu.location.c.X)
                    {
                        if (i <= com.baidu.location.c.aJ)
                        {
                            return 4;
                        }
                        if (fr != null)
                        {
                            return _mthif(fr);
                        } else
                        {
                            return 3;
                        }
                    }
                }
            }
        }
        return 1;
    }

    static int _mthif(x x1, int i)
    {
        x1.fh = i;
        return i;
    }

    static int _mthif(x x1, at at1, int i)
    {
        return x1._mthif(at1, i);
    }

    static int _mthif(x x1, HashMap hashmap)
    {
        return x1._mthif(hashmap);
    }

    private int _mthif(HashMap hashmap)
    {
        if (fX > 4)
        {
            ArrayList arraylist = new ArrayList();
            ArrayList arraylist1 = new ArrayList();
            hashmap = hashmap.entrySet().iterator();
            int i = 0;
            do
            {
                if (!hashmap.hasNext())
                {
                    break;
                }
                List list = (List)((java.util.Map.Entry)hashmap.next()).getValue();
                if (list != null)
                {
                    double ad1[] = _mthif(list);
                    if (ad1 != null)
                    {
                        arraylist.add(ad1);
                        int l = i + 1;
                        arraylist1.add(Integer.valueOf(i));
                        i = l;
                    }
                }
            } while (true);
            if (!arraylist.isEmpty())
            {
                hashmap = new double[2];
                int i1 = arraylist.size();
                for (int j = 0; j < i1; j++)
                {
                    double ad2[] = (double[])arraylist.get(j);
                    int j1 = ((Integer)arraylist1.get(j)).intValue();
                    ad2[0] = ad2[0] * (double)j1;
                    ad2[1] = ad2[1] * (double)j1;
                    hashmap[0] = hashmap[0] + ad2[0];
                    hashmap[1] = hashmap[1] + ad2[1];
                }

                hashmap[0] = hashmap[0] / (double)i1;
                hashmap[1] = hashmap[1] / (double)i1;
                double ad[] = _mthfor(hashmap[0], hashmap[1]);
                fu = String.format(Locale.CHINA, "%d,%d,%d,%d", new Object[] {
                    Long.valueOf(Math.round(hashmap[0] * 100D)), Long.valueOf(Math.round(hashmap[1] * 100D)), Long.valueOf(Math.round(ad[0] * 100D)), Long.valueOf(Math.round(ad[1] * 100D))
                });
                if (ad[0] <= (double)com.baidu.location.c.ax)
                {
                    return 1;
                }
                if (ad[0] >= (double)com.baidu.location.c.a4)
                {
                    return 4;
                }
            }
        }
        return 3;
    }

    static long _mthif(x x1, long l)
    {
        x1.ft = l;
        return l;
    }

    static GpsStatus _mthif(x x1, GpsStatus gpsstatus)
    {
        x1.fg = gpsstatus;
        return gpsstatus;
    }

    static LocationManager _mthif(x x1)
    {
        return x1.fk;
    }

    private String _mthif(GpsSatellite gpssatellite, HashMap hashmap)
    {
        int l = (int)Math.floor(gpssatellite.getAzimuth() / 30F);
        float f1 = gpssatellite.getElevation();
        int j = (int)Math.floor(f1 / 15F);
        float f2 = gpssatellite.getSnr();
        int i1 = Math.round(f2 / 5F);
        if (f2 >= 10F && f1 >= 1.0F)
        {
            List list = (List)hashmap.get(Integer.valueOf(i1));
            Object obj = list;
            if (list == null)
            {
                obj = new ArrayList();
            }
            ((List) (obj)).add(gpssatellite);
            hashmap.put(Integer.valueOf(i1), obj);
            fX = fX + 1;
        }
        int i = l;
        if (l >= 12)
        {
            i = 11;
        }
        if (j >= 6)
        {
            j = 5;
        }
        return String.format(Locale.CHINA, "%02d%d", new Object[] {
            Integer.valueOf(j + i * 6 + 1), Integer.valueOf(i1)
        });
    }

    static String _mthif(x x1, GpsSatellite gpssatellite, HashMap hashmap)
    {
        return x1._mthif(gpssatellite, hashmap);
    }

    static StringBuilder _mthif(StringBuilder stringbuilder)
    {
        fp = stringbuilder;
        return stringbuilder;
    }

    private void _mthif(double d, double d1, float f1)
    {
        boolean flag = false;
        if (y.f1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        i = ((flag) ? 1 : 0);
        if (d >= 73.146973000000003D)
        {
            i = ((flag) ? 1 : 0);
            if (d <= 135.25268600000001D)
            {
                i = ((flag) ? 1 : 0);
                if (d1 <= 54.258806999999997D)
                {
                    i = ((flag) ? 1 : 0);
                    if (d1 >= 14.604846999999999D)
                    {
                        if (f1 <= 18F)
                        {
                            break; /* Loop/switch isn't completed */
                        }
                        i = ((flag) ? 1 : 0);
                    }
                }
            }
        }
_L4:
        if (com.baidu.location.c.ak != i)
        {
            com.baidu.location.c.ak = i;
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        double d2 = com.baidu.location.c.aH;
        double d3 = com.baidu.location.c.ac;
        i = (int)((d - d2) * 1000D);
        int j = (int)((d3 - d1) * 1000D);
        if (i > 0 && i < 50 && j > 0 && j < 50)
        {
            j = i + j * 50;
            i = ((flag) ? 1 : 0);
            if (com.baidu.location.c.ar)
            {
                i = com.baidu.location.c.aB[j >> 2] >> (j & 3) * 2 & 3;
            }
        } else
        {
            String s = String.format(Locale.CHINA, "&ll=%.5f|%.5f", new Object[] {
                Double.valueOf(d), Double.valueOf(d1)
            });
            s = (new StringBuilder()).append(s).append("&im=").append(az.cn().ck()).toString();
            com.baidu.location.c.a9 = d;
            com.baidu.location.c.an = d1;
            y.a7().n(s);
            i = ((flag) ? 1 : 0);
        }
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    static void _mthif(x x1, Location location)
    {
        x1._mthint(location);
    }

    static void _mthif(x x1, String s, Location location)
    {
        x1._mthif(s, location);
    }

    static void _mthif(x x1, boolean flag)
    {
        x1._mthnew(flag);
    }

    private void _mthif(String s, Location location)
    {
        s = (new StringBuilder()).append(s).append(k.p().o()).toString();
        q._mthdo(t.an().ak(), ar.bW().bS(), location, s);
    }

    public static boolean _mthif(Location location, Location location1, boolean flag)
    {
        boolean flag2 = true;
        if (location != location1) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        return flag1;
_L2:
        float f1;
        flag1 = flag2;
        if (location == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag1 = flag2;
        if (location1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        f1 = location1.getSpeed();
        if (!flag || com.baidu.location.c.ak != 3)
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = flag2;
        if (f1 < 5F) goto _L4; else goto _L3
_L3:
        float f2;
        f2 = location1.distanceTo(location);
        if (f1 <= com.baidu.location.c.bb)
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = flag2;
        if (f2 <= com.baidu.location.c.a0)
        {
            return false;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (f1 <= com.baidu.location.c.be)
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = flag2;
        if (f2 <= com.baidu.location.c.ap)
        {
            return false;
        }
        if (true) goto _L4; else goto _L6
_L6:
        flag1 = flag2;
        if (f2 <= 5F)
        {
            return false;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    private double[] _mthif(List list)
    {
        if (list == null || list.isEmpty())
        {
            return null;
        }
        double ad[] = new double[2];
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            GpsSatellite gpssatellite = (GpsSatellite)iterator.next();
            if (gpssatellite != null)
            {
                double ad1[] = _mthdo(90F - gpssatellite.getElevation(), gpssatellite.getAzimuth());
                ad[0] = ad[0] + ad1[0];
                ad[1] = ad[1] + ad1[1];
            }
        } while (true);
        int i = list.size();
        ad[0] = ad[0] / (double)i;
        ad[1] = ad[1] / (double)i;
        return ad;
    }

    static int _mthint(int i)
    {
        fB = i;
        return i;
    }

    static int _mthint(x x1)
    {
        int i = x1.fh;
        x1.fh = i + 1;
        return i;
    }

    private void _mthint(Location location)
    {
        location = fi.obtainMessage(1, location);
        fi.sendMessage(location);
    }

    static String m(String s)
    {
        fE = s;
        return s;
    }

    public static String _mthnew(Location location)
    {
        Object obj = _mthcase(location);
        location = ((Location) (obj));
        if (obj != null)
        {
            location = (new StringBuilder()).append(((String) (obj))).append(fE).toString();
        }
        String s = aX();
        obj = location;
        if (!TextUtils.isEmpty(s))
        {
            obj = (new StringBuilder()).append(location).append(s).toString();
        }
        return ((String) (obj));
    }

    static HashMap _mthnew(x x1)
    {
        return x1.fr;
    }

    private void _mthnew(boolean flag)
    {
        fP = flag;
        if (flag)
        {
            if (aR());
        }
    }

    static int _mthtry(x x1)
    {
        return x1.fh;
    }

    private void _mthtry(Location location)
    {
        long l = System.currentTimeMillis();
        fG = location;
        fW = l;
        if (fK == 0L || l - fK >= 0x46cd0L || fy == null)
        {
            if (fm == null)
            {
                fm = location;
                fv = fm;
                fK = l;
                fZ = fK;
                fy = null;
            } else
            if (l - fK >= 10000L)
            {
                fy = location;
                String s = String.format("&dt=%.6f|%.6f|%s|%s|%s", new Object[] {
                    Double.valueOf(fy.getLongitude() - fm.getLongitude()), Double.valueOf(fy.getLatitude() - fm.getLatitude()), Float.valueOf(fy.getSpeed()), Float.valueOf(fy.getBearing()), Long.valueOf(l - fK)
                });
                location = q._mthif(t.an().ak(), ar.bW().bS(), location, k.p().o(), s);
                if (!TextUtils.isEmpty(location))
                {
                    location = Jni.i(location);
                    q.x()._mthlong(location);
                }
                fm = null;
                return;
            }
        }
    }

    public void a0()
    {
        try
        {
            if (fG != null || fv != null)
            {
                String s = String.format(Locale.CHINA, "&dt=%.6f|%.6f|%s|%s|%s", new Object[] {
                    Double.valueOf(fG.getLongitude() - fv.getLongitude()), Double.valueOf(fG.getLatitude() - fv.getLatitude()), Float.valueOf(fG.getSpeed()), Float.valueOf(fG.getBearing()), Long.valueOf(fW - fZ)
                });
                s = q._mthif(t.an().ak(), ar.bW().bS(), fG, k.p().o(), s);
                if (!TextUtils.isEmpty(s))
                {
                    s = Jni.i(s);
                    q.x()._mthlong(s);
                }
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public boolean a1()
    {
        if (fk != null)
        {
            return fk.isProviderEnabled("gps");
        } else
        {
            return false;
        }
    }

    public void a2()
    {
        if (fI)
        {
            return;
        }
        try
        {
            fL = new b(null);
            fk.requestLocationUpdates("gps", 1000L, 0.0F, fL);
            fk.addNmeaListener(fn);
            fI = true;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void a3()
    {
        if (!fI)
        {
            return;
        }
        if (fk != null)
        {
            try
            {
                if (fL != null)
                {
                    fk.removeUpdates(fL);
                }
                if (fn != null)
                {
                    fk.removeNmeaListener(fn);
                }
            }
            catch (Exception exception) { }
        }
        com.baidu.location.c.al = 0;
        com.baidu.location.c.ak = 0;
        fL = null;
        fI = false;
        _mthnew(false);
    }

    public String aP()
    {
        String s = null;
        if (fS != null)
        {
            s = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(com.baidu.location.c._mthnew()).append("\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":").append("\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\",").append("\"s\":\"%f\",\"n\":\"%d\"}}").toString();
            float f1;
            double ad[];
            int i;
            if (fS.hasAccuracy())
            {
                f1 = fS.getAccuracy();
            } else
            {
                f1 = 10F;
            }
            i = (int)f1;
            f1 = (float)((double)fS.getSpeed() * 3.6000000000000001D);
            ad = Jni._mthif(fS.getLongitude(), fS.getLatitude(), "gps2gcj");
            if (ad[0] <= 0.0D && ad[1] <= 0.0D)
            {
                ad[0] = fS.getLongitude();
                ad[1] = fS.getLatitude();
            }
            s = String.format(Locale.CHINA, s, new Object[] {
                Double.valueOf(ad[0]), Double.valueOf(ad[1]), Integer.valueOf(i), Float.valueOf(fS.getBearing()), Float.valueOf(f1), Integer.valueOf(fB)
            });
        }
        return s;
    }

    public boolean aR()
    {
        while (!aT() || System.currentTimeMillis() - fA > 10000L) 
        {
            return false;
        }
        long l = System.currentTimeMillis();
        if (fl && l - ft < 3000L)
        {
            return true;
        } else
        {
            return fP;
        }
    }

    public Location aS()
    {
        return fS;
    }

    public boolean aT()
    {
        return fS != null && fS.getLatitude() != 0.0D && fS.getLongitude() != 0.0D;
    }

    public void aU()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = ab.gv;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        fz = f.getServiceContext();
        Exception exception;
        try
        {
            fk = (LocationManager)fz.getSystemService("location");
            fn = new a(null);
            fk.addGpsStatusListener(fn);
            fQ = new c(null);
            fk.requestLocationUpdates("passive", 1000L, 0.0F, fQ);
        }
        catch (Exception exception1) { }
        fi = new _cls1();
        if (true) goto _L1; else goto _L3
_L3:
        exception;
        throw exception;
    }

    public String aV()
    {
        return fR;
    }

    public void aW()
    {
        this;
        JVM INSTR monitorenter ;
        LocationManager locationmanager;
        a3();
        locationmanager = fk;
        if (locationmanager != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Exception exception;
        try
        {
            if (fn != null)
            {
                fk.removeGpsStatusListener(fn);
            }
            fk.removeUpdates(fQ);
        }
        catch (Exception exception1) { }
        fn = null;
        fk = null;
        if (true) goto _L1; else goto _L3
_L3:
        exception;
        throw exception;
    }

    public String aY()
    {
        if (aR() && fS != null)
        {
            return _mthcase(fS);
        } else
        {
            return null;
        }
    }

    public void _mthint(boolean flag)
    {
        if (flag)
        {
            a2();
            return;
        } else
        {
            a3();
            return;
        }
    }

    static 
    {
        fB = 0;
        fY = "Temp_in.dat";
        fO = new File(I, fY);
    }

    private class _cls1 extends Handler
    {

        final x a;

        public void handleMessage(Message message)
        {
            if (ab.gv) goto _L2; else goto _L1
_L1:
            return;
_L2:
            switch (message.what)
            {
            default:
                return;

            case 1: // '\001'
                x._mthdo(a, (Location)message.obj);
                return;

            case 2: // '\002'
                if (x._mthfor(a) != null)
                {
                    x._mthfor(a).a((String)message.obj);
                    return;
                }
                break;

            case 3: // '\003'
                x._mthif(a, "&og=1", (Location)message.obj);
                return;

            case 4: // '\004'
                x._mthif(a, "&og=2", (Location)message.obj);
                return;
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        _cls1()
        {
            a = x.this;
            super();
        }
    }

}
