// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import java.io.Serializable;
import java.util.ArrayList;
import net.youmi.android.a.b.b.e;

// Referenced classes of package net.youmi.android.offers:
//            EarnPointsOrderInfo

public class EarnPointsOrderList
    implements Serializable
{

    private ArrayList a;
    private String b;

    public EarnPointsOrderList()
    {
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new ArrayList();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void a(String s)
    {
        s = e.b(s);
        if (s != null)
        {
            b = s;
        }
    }

    boolean a(EarnPointsOrderInfo earnpointsorderinfo)
    {
        if (earnpointsorderinfo == null)
        {
            return false;
        } else
        {
            a();
            return a.add(earnpointsorderinfo);
        }
    }

    public EarnPointsOrderInfo get(int i)
    {
        while (a == null || i < 0 || i >= a.size()) 
        {
            return null;
        }
        return (EarnPointsOrderInfo)a.get(i);
    }

    public String getCurrencyName()
    {
        return b;
    }

    public boolean isEmpty()
    {
        return size() <= 0;
    }

    public int size()
    {
        if (a == null)
        {
            return 0;
        } else
        {
            return a.size();
        }
    }
}
