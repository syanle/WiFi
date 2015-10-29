// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;


// Referenced classes of package com.baidu.location:
//            aq, au

class if
    implements Runnable
{

    final au a;
    final aq _fldif;

    public void run()
    {
        a._mthdo(_fldif.getGeofenceId(), true);
    }

    (au au1, aq aq1)
    {
        a = au1;
        _fldif = aq1;
        super();
    }
}
