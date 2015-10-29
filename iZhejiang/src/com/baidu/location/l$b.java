// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.net.wifi.ScanResult;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.baidu.location:
//            l

class for
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

    double a(for for1)
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
            obj = (Integer)for1._mthif().get(obj);
            if (obj != null)
            {
                d = (double)((100 - ((Integer) (obj)).intValue()) * (100 - i)) + d;
            }
        } while (true);
        return d / (_fldfor * for1.a());
    }

    public HashMap _mthif()
    {
        return _fldint;
    }

    public (l l1,  )
    {
        a = l1;
        super();
        _fldint = new HashMap();
        _fldfor = 1.0D;
        if (._fldfor != null)
        {
            l1 = ._fldfor.iterator();
            int i = 0;
            do
            {
                if (!l1.hasNext())
                {
                    break;
                }
                 = (ScanResult)l1.next();
                int j = Math.abs(((ScanResult) ()).level);
                _fldint.put(((ScanResult) ()).BSSID, Integer.valueOf(j));
                _fldfor = _fldfor + (double)((100 - j) * (100 - j));
                i++;
            } while (i <= 16);
            _fldfor = Math.sqrt(_fldfor);
        }
    }
}
