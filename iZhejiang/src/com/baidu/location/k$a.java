// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;

// Referenced classes of package com.baidu.location:
//            k, LocationClientOption, az, c, 
//            af, h, ar, x, 
//            BDLocation, Jni, ae, ak

private class 
{

    final k a;
    public LocationClientOption _flddo;
    public Messenger _fldfor;
    public int _fldif;
    public String _fldint;

    private void a(int i)
    {
        Message message = Message.obtain(null, i);
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

    private void a(int i, String s, BDLocation bdlocation)
    {
        Bundle bundle = new Bundle();
        bundle.putParcelable(s, bdlocation);
        s = Message.obtain(null, i);
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

    static void a(if if1, int i)
    {
        if1.a(i);
    }

    public void a()
    {
        a(23);
    }

    public void a(BDLocation bdlocation)
    {
        a(bdlocation, 21);
    }

    public void a(BDLocation bdlocation, int i)
    {
        bdlocation = new BDLocation(bdlocation);
        bdlocation.internalSet(0, az.cn().iP);
        if (bdlocation == null)
        {
            return;
        }
        if (i == 21)
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
        a(i, "locStr", bdlocation);
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

    public cation(k k1, Message message)
    {
        a = k1;
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
        if (_flddo.getLocationMode() == tionClientOption.LocationMode.Hight_Accuracy)
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
