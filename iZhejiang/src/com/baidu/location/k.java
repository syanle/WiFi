// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

// Referenced classes of package com.baidu.location:
//            ax, n, LocationClientOption, c, 
//            x, BDLocation, ak, az, 
//            af, h, ah, ar, 
//            Jni, ae

class k
    implements ax, n
{
    private class a
    {

        final k a;
        public LocationClientOption _flddo;
        public Messenger _fldfor;
        public int _fldif;
        public String _fldint;

        private void a(int i1)
        {
            Message message = Message.obtain(null, i1);
            if (_fldfor != null)
            {
                _fldfor.send(message);
            }
            _fldif = 0;
_L1:
            return;
            Exception exception;
            exception;
            if (exception instanceof DeadObjectException)
            {
                _fldif = _fldif + 1;
                return;
            }
              goto _L1
        }

        private void a(int i1, String s, BDLocation bdlocation)
        {
            Bundle bundle = new Bundle();
            bundle.putParcelable(s, bdlocation);
            s = Message.obtain(null, i1);
            s.setData(bundle);
            if (_fldfor != null)
            {
                _fldfor.send(s);
            }
            _fldif = 0;
_L1:
            return;
            s;
            if (s instanceof DeadObjectException)
            {
                _fldif = _fldif + 1;
                return;
            }
              goto _L1
        }

        static void a(a a1, int i1)
        {
            a1.a(i1);
        }

        public void a()
        {
            a(23);
        }

        public void a(BDLocation bdlocation)
        {
            a(bdlocation, 21);
        }

        public void a(BDLocation bdlocation, int i1)
        {
            bdlocation = new BDLocation(bdlocation);
            bdlocation.internalSet(0, az.cn().iP);
            if (bdlocation == null)
            {
                return;
            }
            if (i1 == 21)
            {
                a(27, "locStr", bdlocation);
            }
            if (_flddo._flddo != null && !_flddo._flddo.equals("gcj02"))
            {
                double d = bdlocation.getLongitude();
                double d1 = bdlocation.getLatitude();
                if (d != 4.9406564584124654E-324D && d1 != 4.9406564584124654E-324D)
                {
                    double ad[] = Jni._mthif(d, d1, _flddo._flddo);
                    bdlocation.setLongitude(ad[0]);
                    bdlocation.setLatitude(ad[1]);
                }
            }
            a(i1, "locStr", bdlocation);
        }

        public void _mthif()
        {
label0:
            {
                if (_flddo._fldgoto)
                {
                    if (!c.am)
                    {
                        break label0;
                    }
                    a(54);
                }
                return;
            }
            a(55);
        }

        public void _mthif(BDLocation bdlocation)
        {
            if (!_flddo._fldgoto || ae.bp().bq())
            {
                return;
            } else
            {
                a(bdlocation);
                ak.a().a(null);
                ak.a()._mthif(ak.a()._fldnew);
                return;
            }
        }

        public a(Message message)
        {
            a = k.this;
            super();
            _fldint = null;
            _fldfor = null;
            _flddo = new LocationClientOption();
            _fldif = 0;
            _fldfor = message.replyTo;
            _fldint = message.getData().getString("packName");
            _flddo._fldif = message.getData().getString("prodName");
            az.cn()._mthtry(_flddo._fldif, _fldint);
            _flddo._flddo = message.getData().getString("coorType");
            _flddo._fldelse = message.getData().getString("addrType");
            c.aw = _flddo._fldelse;
            _flddo._fldfor = message.getData().getBoolean("openGPS");
            _flddo._fldint = message.getData().getInt("scanSpan");
            _flddo.d = message.getData().getInt("timeOut");
            _flddo.h = message.getData().getInt("priority");
            _flddo._fldgoto = message.getData().getBoolean("location_change_notify");
            _flddo.g = message.getData().getBoolean("needDirect");
            if (_flddo.g)
            {
                af.bw()._mthtry(_flddo.g);
                af.bw().bx();
            }
            if (_flddo._fldint > 1000)
            {
                az.cn().cm();
                h._mthfor()._mthint();
            }
            if (_flddo.getLocationMode() == LocationClientOption.LocationMode.Hight_Accuracy)
            {
                if (!ar.bW().bZ())
                {
                    Log.w("baidu_location_service", "use hight accuracy mode does not use open wifi");
                }
                if (!x.a4().a1())
                {
                    Log.w("baidu_location_service", "use hight accuracy mode does not use open gps");
                }
            }
        }
    }


    private static k bv = null;
    private boolean bt;
    private ArrayList bu;
    private boolean bw;

    private k()
    {
        bu = null;
        bw = false;
        bt = false;
        bu = new ArrayList();
    }

    private a _mthif(Messenger messenger)
    {
        if (bu == null)
        {
            return null;
        }
        for (Iterator iterator = bu.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1._fldfor.equals(messenger))
            {
                return a1;
            }
        }

        return null;
    }

    private void _mthif(a a1)
    {
        if (a1 == null)
        {
            return;
        }
        if (_mthif(a1._fldfor) != null)
        {
            a.a(a1, 14);
            return;
        } else
        {
            bu.add(a1);
            a.a(a1, 13);
            return;
        }
    }

    private void j()
    {
        l();
        m();
    }

    private void l()
    {
        Iterator iterator = bu.iterator();
        boolean flag = false;
        boolean flag1 = false;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            a a1 = (a)iterator.next();
            if (a1._flddo._fldfor)
            {
                flag1 = true;
            }
            if (a1._flddo._fldgoto)
            {
                flag = true;
            }
        } while (true);
        c.a3 = flag;
        if (bw != flag1)
        {
            bw = flag1;
            x.a4()._mthint(bw);
        }
    }

    public static k p()
    {
        if (bv == null)
        {
            bv = new k();
        }
        return bv;
    }

    public void _mthbyte(String s)
    {
        BDLocation bdlocation = new BDLocation(s);
        ak.a()._fldnew = s;
        for (s = bu.iterator(); s.hasNext(); ((a)s.next())._mthif(bdlocation)) { }
    }

    public void _mthdo(Message message)
    {
        message = _mthif(message.replyTo);
        if (message != null)
        {
            bu.remove(message);
        }
        az.cn().cp();
        af.bw().bv();
        h._mthfor()._mthdo();
        j();
    }

    public void _mthdo(BDLocation bdlocation)
    {
        Object obj = new ArrayList();
        Iterator iterator = bu.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            a a1 = (a)iterator.next();
            a1.a(bdlocation);
            if (a1._fldif > 4)
            {
                ((ArrayList) (obj)).add(a1);
            }
        } while (true);
        if (obj != null && ((ArrayList) (obj)).size() > 0)
        {
            for (bdlocation = ((ArrayList) (obj)).iterator(); bdlocation.hasNext(); bu.remove(obj))
            {
                obj = (a)bdlocation.next();
            }

        }
    }

    public int _mthfor(Message message)
    {
        if (message != null && message.replyTo != null)
        {
            if ((message = _mthif(message.replyTo)) != null && ((a) (message))._flddo != null)
            {
                return ((a) (message))._flddo.h;
            }
        }
        return 1;
    }

    public void i()
    {
        for (Iterator iterator = bu.iterator(); iterator.hasNext(); ((a)iterator.next()).a()) { }
    }

    public String _mthif(Message message)
    {
        Object obj1 = null;
        Object obj = obj1;
        if (message != null)
        {
            if (message.replyTo == null)
            {
                obj = obj1;
            } else
            {
                a a1 = _mthif(message.replyTo);
                obj = obj1;
                if (a1 != null)
                {
                    a1._flddo._fldlong = message.getData().getInt("num", a1._flddo._fldlong);
                    a1._flddo.c = message.getData().getFloat("distance", a1._flddo.c);
                    a1._flddo.e = message.getData().getBoolean("extraInfo", a1._flddo.e);
                    a1._flddo._fldnew = true;
                    message = String.format(Locale.CHINA, "&poi=%.1f|%d", new Object[] {
                        Float.valueOf(a1._flddo.c), Integer.valueOf(a1._flddo._fldlong)
                    });
                    obj = message;
                    if (a1._flddo.e)
                    {
                        return (new StringBuilder()).append(message).append("|1").toString();
                    }
                }
            }
        }
        return ((String) (obj));
    }

    public void _mthif(BDLocation bdlocation, int i1)
    {
        Object obj = new ArrayList();
        Iterator iterator = bu.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            a a1 = (a)iterator.next();
            a1.a(bdlocation, i1);
            if (a1._fldif > 4)
            {
                ((ArrayList) (obj)).add(a1);
            }
        } while (true);
        if (obj != null && ((ArrayList) (obj)).size() > 0)
        {
            for (bdlocation = ((ArrayList) (obj)).iterator(); bdlocation.hasNext(); bu.remove(obj))
            {
                obj = (a)bdlocation.next();
            }

        }
    }

    public void _mthif(BDLocation bdlocation, Message message)
    {
        if (bdlocation != null && message != null)
        {
            if ((message = _mthif(message.replyTo)) != null)
            {
                message.a(bdlocation);
                if (((a) (message))._fldif > 4)
                {
                    bu.remove(message);
                    return;
                }
            }
        }
    }

    public boolean _mthint(Message message)
    {
        boolean flag1 = false;
        a a1 = _mthif(message.replyTo);
        if (a1 == null)
        {
            return false;
        }
        int i1 = a1._flddo._fldint;
        a1._flddo._fldint = message.getData().getInt("scanSpan", a1._flddo._fldint);
        String s;
        LocationClientOption locationclientoption;
        boolean flag;
        if (a1._flddo._fldint < 1000)
        {
            h._mthfor().a();
            az.cn().cp();
            af.bw().bv();
            x.a4().a0();
        } else
        {
            h._mthfor()._mthif();
        }
        flag = flag1;
        if (a1._flddo._fldint > 999)
        {
            flag = flag1;
            if (i1 < 1000)
            {
                flag = true;
                if (a1._flddo.g)
                {
                    af.bw()._mthtry(a1._flddo.g);
                    af.bw().bx();
                }
                az.cn().cm();
            }
        }
        a1._flddo._fldfor = message.getData().getBoolean("openGPS", a1._flddo._fldfor);
        s = message.getData().getString("coorType");
        locationclientoption = a1._flddo;
        if (s == null || s.equals(""))
        {
            s = a1._flddo._flddo;
        }
        locationclientoption._flddo = s;
        s = message.getData().getString("addrType");
        locationclientoption = a1._flddo;
        if (s == null || s.equals(""))
        {
            s = a1._flddo._fldelse;
        }
        locationclientoption._fldelse = s;
        if (!c.aw.equals(a1._flddo._fldelse))
        {
            ah.ay().az();
        }
        c.aw = a1._flddo._fldelse;
        a1._flddo.d = message.getData().getInt("timeOut", a1._flddo.d);
        a1._flddo._fldgoto = message.getData().getBoolean("location_change_notify", a1._flddo._fldgoto);
        a1._flddo.h = message.getData().getInt("priority", a1._flddo.h);
        j();
        return flag;
    }

    public boolean k()
    {
        return bw;
    }

    public void m()
    {
        for (Iterator iterator = bu.iterator(); iterator.hasNext(); ((a)iterator.next())._mthif()) { }
    }

    public void n()
    {
        bu.clear();
        j();
    }

    public void _mthnew(Message message)
    {
        if (message == null || message.replyTo == null)
        {
            return;
        } else
        {
            _mthif(new a(message));
            j();
            return;
        }
    }

    public String o()
    {
        Object obj = new StringBuffer(256);
        if (bu.isEmpty())
        {
            return (new StringBuilder()).append("&prod=").append(az.iM).append(":").append(az.iH).toString();
        }
        a a1 = (a)bu.get(0);
        if (a1._flddo._fldif != null)
        {
            ((StringBuffer) (obj)).append(a1._flddo._fldif);
        }
        if (a1._fldint != null)
        {
            ((StringBuffer) (obj)).append(":");
            ((StringBuffer) (obj)).append(a1._fldint);
            ((StringBuffer) (obj)).append("|");
        }
        obj = ((StringBuffer) (obj)).toString();
        if (obj != null && !((String) (obj)).equals(""))
        {
            return (new StringBuilder()).append("&prod=").append(((String) (obj))).toString();
        } else
        {
            return null;
        }
    }

}
