// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.text.TextUtils;

// Referenced classes of package com.baidu.location:
//            BDGeofence

public class aq
    implements BDGeofence
{

    private static final String _fldbyte = "Administrative";
    private static final int _fldcase = 2;
    private static final int d = 100;
    private static final int e = 2;
    private static final int _fldelse = 1;
    private static final String _fldfor = "Circle";
    private static final int i = 3;
    public static final int _fldint = 1;
    private static final long _fldvoid = 0x278d00L;
    private final int a;
    private float b;
    private final int c;
    private boolean _fldchar;
    private final String _flddo;
    private boolean f;
    protected int g;
    private final double _fldgoto;
    private long h;
    private boolean _fldif;
    private final long _fldlong;
    private final String _fldnew;
    private final double _fldtry;

    public aq(int j, String s, double d1, double d2, int k, 
            long l, String s1)
    {
        _mthdo(k);
        _mthif(s);
        a(d1, d2);
        a(s1);
        _mthif(l);
        c = j;
        _flddo = s;
        _fldgoto = d1;
        _fldtry = d2;
        a = k;
        _fldlong = l;
        _fldnew = s1;
    }

    public aq(String s, double d1, double d2, int j, long l, String s1)
    {
        this(1, s, d2, d1, j, l, s1);
    }

    private static void a(double d1, double d2)
    {
    }

    private static void a(String s)
    {
        if (!s.equals("bd09") && !s.equals("bd09ll") && !s.equals("gcj02"))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid coord type: ").append(s).toString());
        } else
        {
            return;
        }
    }

    private static void _mthdo(int j)
    {
        if (j != 1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid radius type: ").append(j).toString());
        } else
        {
            return;
        }
    }

    private static String _mthif(int j)
    {
        switch (j)
        {
        default:
            return null;

        case 1: // '\001'
            return "Circle";

        case 2: // '\002'
            return "Administrative";
        }
    }

    private static void _mthif(long l)
    {
        if ((double)l / 1000D > 2592000D)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid druationMillis :").append(l).toString());
        } else
        {
            return;
        }
    }

    private static void _mthif(String s)
    {
        if (TextUtils.isEmpty(s) || s.length() > 100)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Geofence name is null or too long: ").append(s).toString());
        } else
        {
            return;
        }
    }

    public double a()
    {
        return _fldtry;
    }

    public void a(float f1)
    {
        b = f1;
    }

    protected void a(int j)
    {
        g = j;
    }

    public void a(long l)
    {
        h = l;
    }

    public void a(boolean flag)
    {
        _fldif = flag;
    }

    public boolean _mthbyte()
    {
        return f;
    }

    public double _mthcase()
    {
        return _fldgoto;
    }

    public int _mthchar()
    {
        if (_fldchar)
        {
            return 1;
        }
        return !_fldif ? 3 : 2;
    }

    public float _mthdo()
    {
        return b;
    }

    public void _mthdo(boolean flag)
    {
        f = flag;
    }

    public long _mthelse()
    {
        return h;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (!(obj instanceof aq))
            {
                return false;
            }
            obj = (aq)obj;
            if (a != ((aq) (obj)).a)
            {
                return false;
            }
            if (_fldgoto != ((aq) (obj))._fldgoto)
            {
                return false;
            }
            if (_fldtry != ((aq) (obj))._fldtry)
            {
                return false;
            }
            if (c != ((aq) (obj)).c)
            {
                return false;
            }
            if (_fldnew != ((aq) (obj))._fldnew)
            {
                return false;
            }
        }
        return true;
    }

    public boolean _mthfor()
    {
        return _fldchar;
    }

    public String getGeofenceId()
    {
        return _flddo;
    }

    public long _mthgoto()
    {
        return _fldlong;
    }

    public void _mthif(boolean flag)
    {
        _fldchar = flag;
    }

    public boolean _mthif()
    {
        return _fldif;
    }

    public String _mthint()
    {
        return _fldnew;
    }

    public int _mthnew()
    {
        return a;
    }

    public String toString()
    {
        return String.format("Geofence[Type:%s, Name:%s, latitude:%.6f, longitude:%.6f, radius:%.0f, expriation:%d, coordType:%s, fenceType:%d]", new Object[] {
            _mthif(c), _flddo, Double.valueOf(_fldgoto), Double.valueOf(_fldtry), Float.valueOf(b), Long.valueOf(_fldlong), _fldnew, Integer.valueOf(_mthchar())
        });
    }

    protected int _mthtry()
    {
        return g;
    }
}
