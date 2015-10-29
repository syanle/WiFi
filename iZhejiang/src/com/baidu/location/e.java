// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import java.io.File;
import java.io.RandomAccessFile;

// Referenced classes of package com.baidu.location:
//            c

class e
{

    static e _fldif;
    int a;
    int _flddo;
    int _fldfor;
    String _fldint;

    e()
    {
        _fldint = "firll.dat";
        _fldfor = 3164;
        _flddo = 0;
        a = 20;
    }

    private long a(int i)
    {
        Object obj = c._mthgoto();
        if (obj != null)
        {
            obj = (new StringBuilder()).append(((String) (obj))).append(File.separator).append(_fldint).toString();
            int j;
            long l;
            try
            {
                obj = new RandomAccessFile(((String) (obj)), "rw");
                ((RandomAccessFile) (obj)).seek(i);
                i = ((RandomAccessFile) (obj)).readInt();
                l = ((RandomAccessFile) (obj)).readLong();
                j = ((RandomAccessFile) (obj)).readInt();
                ((RandomAccessFile) (obj)).close();
            }
            catch (Exception exception)
            {
                return -1L;
            }
            if (i == j)
            {
                return l;
            }
        }
        return -1L;
    }

    private void a(int i, long l)
    {
        Object obj = c._mthgoto();
        if (obj == null)
        {
            return;
        }
        obj = (new StringBuilder()).append(((String) (obj))).append(File.separator).append(_fldint).toString();
        try
        {
            obj = new RandomAccessFile(((String) (obj)), "rw");
            ((RandomAccessFile) (obj)).seek(i);
            ((RandomAccessFile) (obj)).writeInt(_fldfor);
            ((RandomAccessFile) (obj)).writeLong(l);
            ((RandomAccessFile) (obj)).writeInt(_fldfor);
            ((RandomAccessFile) (obj)).close();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static e _mthdo()
    {
        if (_fldif == null)
        {
            _fldif = new e();
        }
        return _fldif;
    }

    public long a()
    {
        return a(a);
    }

    public void a(long l)
    {
        a(_flddo, l);
    }

    public long _mthif()
    {
        return a(_flddo);
    }

    public void _mthif(long l)
    {
        a(a, l);
    }
}
