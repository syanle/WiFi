// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            ag, ax, n, as, 
//            ar, q, k, c, 
//            BDLocation, x, ak, ae, 
//            t, ay, j

class ah extends ag
    implements ax, n
{
    private class a
        implements Runnable
    {

        final ah a;

        public void run()
        {
            if (ah._mthdo(a))
            {
                ah._mthif(a, false);
                ah._mthif(a);
            }
        }

        private a()
        {
            a = ah.this;
            super();
        }

    }


    private static ah eo = null;
    final int eA = 2000;
    private String eB;
    final Handler eg = new ag.b(this);
    final int el = 1000;
    public ag.a em;
    private volatile boolean en;
    private int ep;
    private long eq;
    private as er;
    private long es;
    private t.a et;
    private ar.b eu;
    private boolean ev;
    private boolean ew;
    private boolean ex;
    private BDLocation ey;
    private BDLocation ez;

    private ah()
    {
        ew = true;
        er = null;
        em = null;
        eB = null;
        ey = null;
        ez = null;
        eu = null;
        et = null;
        ex = true;
        en = false;
        ev = false;
        eq = 0L;
        es = 0L;
        er = new as();
        em = new ag.a(this);
    }

    private void aB()
    {
        if (ex)
        {
            aE();
        } else
        if (!en)
        {
            if (ar.bW().bX())
            {
                ev = true;
                eg.postDelayed(new a(), 2000L);
                return;
            } else
            {
                aE();
                return;
            }
        }
    }

    private void aD()
    {
        if (ey != null)
        {
            q.x().E();
        }
    }

    private void aE()
    {
        if (en)
        {
            return;
        }
        if (System.currentTimeMillis() - eq < 1000L && ey != null)
        {
            k.p()._mthdo(ey);
            av();
            return;
        }
        c._mthif("baidu_location_service", "start network locating ...");
        en = true;
        ew = _mthif(et);
        if (!_mthif(eu) && !ew && ey != null && ep == 0)
        {
            if (ez != null && System.currentTimeMillis() - es > 30000L)
            {
                ey = ez;
                ez = null;
            }
            k.p()._mthdo(ey);
            av();
            return;
        }
        String s1 = e(null);
        if (s1 == null)
        {
            BDLocation bdlocation = new BDLocation();
            bdlocation.setLocType(62);
            k.p()._mthdo(bdlocation);
            av();
            return;
        }
        String s = s1;
        if (eB != null)
        {
            s = (new StringBuilder()).append(s1).append(eB).toString();
            eB = null;
        }
        em.d(s);
        et = eh;
        eu = ek;
        if (ex)
        {
            ex = false;
        }
        eq = System.currentTimeMillis();
    }

    private boolean au()
    {
        ek = ar.bW().b1();
        return !er._mthdo(ek);
    }

    private void av()
    {
        en = false;
        aD();
    }

    public static ah ay()
    {
        if (eo == null)
        {
            eo = new ah();
        }
        return eo;
    }

    private void _mthchar(Message message)
    {
        String s = x.a4().aP();
        BDLocation bdlocation = new BDLocation(s);
        k.p()._mthif(bdlocation, message);
        ak.a().a(null);
        ak.a()._mthif(s);
    }

    static boolean _mthdo(ah ah1)
    {
        return ah1.ev;
    }

    private void _mthelse(Message message)
    {
        c._mthif("baidu_location_service", "on request location ...");
        if (!ae.bp().bq()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = k.p()._mthfor(message);
        ep = message.arg1;
        switch (i)
        {
        default:
            throw new IllegalArgumentException(String.format("this type %d is illegal", new Object[] {
                Integer.valueOf(i)
            }));

        case 3: // '\003'
            if (x.a4().aR())
            {
                _mthchar(message);
                return;
            }
            break;

        case 1: // '\001'
            _mthgoto(message);
            return;

        case 2: // '\002'
            aB();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void _mthgoto(Message message)
    {
        if (x.a4().aR())
        {
            _mthchar(message);
            return;
        } else
        {
            aB();
            return;
        }
    }

    static void _mthif(ah ah1)
    {
        ah1.aE();
    }

    static boolean _mthif(ah ah1, boolean flag)
    {
        ah1.ev = flag;
        return flag;
    }

    private boolean _mthif(ar.b b)
    {
        boolean flag1 = true;
        ek = ar.bW().b1();
        boolean flag;
        if (b == ek)
        {
            flag = false;
        } else
        {
            flag = flag1;
            if (ek != null)
            {
                flag = flag1;
                if (b != null)
                {
                    flag = flag1;
                    if (b.a(ek))
                    {
                        return false;
                    }
                }
            }
        }
        return flag;
    }

    private boolean _mthif(t.a a1)
    {
        boolean flag1 = true;
        eh = t.an().ak();
        boolean flag;
        if (eh == a1)
        {
            flag = false;
        } else
        {
            flag = flag1;
            if (eh != null)
            {
                flag = flag1;
                if (a1 != null)
                {
                    flag = flag1;
                    if (a1.a(eh))
                    {
                        return false;
                    }
                }
            }
        }
        return flag;
    }

    public boolean aA()
    {
        return ew;
    }

    void aC()
    {
        ex = true;
        en = false;
    }

    void at()
    {
        c._mthif("baidu_location_service", "on network exception");
        if (ew || ey == null)
        {
            k.p()._mthif(com.baidu.location.ay.cd()._mthcase(false), 21);
        } else
        {
            k.p()._mthif(ey, 21);
        }
        ey = null;
        ez = null;
        er.b6();
        av();
    }

    public void aw()
    {
        if (ev)
        {
            aE();
            ev = false;
        }
    }

    void ax()
    {
        en = false;
        az();
    }

    void az()
    {
        ey = null;
        er.b6();
    }

    void _mthbyte(Message message)
    {
        c._mthif("baidu_location_service", "on network success");
        message = (BDLocation)message.obj;
        BDLocation bdlocation = new BDLocation(message);
        ez = null;
        boolean flag1 = false;
        boolean flag = flag1;
        if (message.getLocType() == 161)
        {
            flag = flag1;
            if ("cl".equals(message.getNetworkLocationType()))
            {
                flag = flag1;
                if (ey != null)
                {
                    flag = flag1;
                    if (ey.getLocType() == 161)
                    {
                        flag = flag1;
                        if ("wf".equals(ey.getNetworkLocationType()))
                        {
                            flag = flag1;
                            if (System.currentTimeMillis() - es < 30000L)
                            {
                                flag = true;
                                ez = message;
                            }
                        }
                    }
                }
            }
        }
        int i;
        if (flag)
        {
            k.p()._mthif(ey, 21);
        } else
        {
            k.p()._mthif(message, 21);
            es = System.currentTimeMillis();
        }
        if (c._mthif(message))
        {
            if (!flag)
            {
                ey = message;
            }
        } else
        {
            ey = null;
            er.b6();
        }
        i = c._mthdo(ee, "ssid\":\"", "\"");
        if (i != 0x80000000 && eu != null)
        {
            eB = eu._mthif(i);
        } else
        {
            eB = null;
        }
        com.baidu.location.ay.cd()._mthif(ee, et, eu, bdlocation);
        j.cZ()._mthbyte(bdlocation);
        av();
    }

    public void _mthcase(Message message)
    {
        _mthelse(message);
    }

    public void _mthfor(BDLocation bdlocation)
    {
        az();
        ey = bdlocation;
    }

}
