// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.listener;

import android.content.Context;
import android.util.SparseArray;

// Referenced classes of package net.youmi.android.listener:
//            Interface_ActivityListener

public class a
{

    private static a a;
    private SparseArray b;

    public a()
    {
    }

    public static a a()
    {
        net/youmi/android/listener/a;
        JVM INSTR monitorenter ;
        a a1;
        if (a == null)
        {
            a = new a();
        }
        a1 = a;
        net/youmi/android/listener/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(int i, Interface_ActivityListener interface_activitylistener)
    {
        if (i != 0 && interface_activitylistener != null)
        {
            b().put(i, interface_activitylistener);
        }
    }

    public void a(Context context, int i)
    {
        Interface_ActivityListener interface_activitylistener;
        try
        {
            interface_activitylistener = (Interface_ActivityListener)b().get(i, null);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (interface_activitylistener == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        interface_activitylistener.onActivityDestroy(context);
        b().remove(i);
        return;
    }

    protected SparseArray b()
    {
        this;
        JVM INSTR monitorenter ;
        SparseArray sparsearray;
        if (b == null)
        {
            b = new SparseArray();
        }
        sparsearray = b;
        this;
        JVM INSTR monitorexit ;
        return sparsearray;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean c()
    {
        return b() == null || b().size() <= 0;
    }

    public void d()
    {
        if (!c())
        {
            b().clear();
        }
    }
}
