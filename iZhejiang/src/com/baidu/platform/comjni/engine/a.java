// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.engine;

import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
{

    private static final String a = com/baidu/platform/comjni/engine/a.getSimpleName();
    private static SparseArray b = new SparseArray();

    public a()
    {
    }

    public static void a()
    {
        SparseArray sparsearray = b;
        sparsearray;
        JVM INSTR monitorenter ;
        int j = b.size();
        int i = 0;
_L2:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        List list = (List)b.get(b.keyAt(i));
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        list.clear();
        break MISSING_BLOCK_LABEL_64;
        b.clear();
        sparsearray;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        sparsearray;
        JVM INSTR monitorexit ;
        throw exception;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(int i, int j, int k, int l)
    {
        SparseArray sparsearray = b;
        sparsearray;
        JVM INSTR monitorenter ;
        Object obj = (List)b.get(i);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        if (!((List) (obj)).isEmpty())
        {
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); Message.obtain((Handler)((Iterator) (obj)).next(), i, j, k, Integer.valueOf(l)).sendToTarget()) { }
        }
        break MISSING_BLOCK_LABEL_88;
        Exception exception;
        exception;
        sparsearray;
        JVM INSTR monitorexit ;
        throw exception;
        sparsearray;
        JVM INSTR monitorexit ;
    }

    public static void a(int i, Handler handler)
    {
        SparseArray sparsearray = b;
        sparsearray;
        JVM INSTR monitorenter ;
        if (handler != null)
        {
            break MISSING_BLOCK_LABEL_13;
        }
        sparsearray;
        JVM INSTR monitorexit ;
        return;
        List list = (List)b.get(i);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        if (!list.contains(handler))
        {
            list.add(handler);
        }
_L1:
        sparsearray;
        JVM INSTR monitorexit ;
        return;
        handler;
        sparsearray;
        JVM INSTR monitorexit ;
        throw handler;
        ArrayList arraylist = new ArrayList();
        arraylist.add(handler);
        b.put(i, arraylist);
          goto _L1
    }

    public static void b(int i, Handler handler)
    {
        SparseArray sparsearray = b;
        sparsearray;
        JVM INSTR monitorenter ;
        if (handler == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        List list;
        handler.removeCallbacksAndMessages(null);
        list = (List)b.get(i);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        list.remove(handler);
        sparsearray;
        JVM INSTR monitorexit ;
        return;
        handler;
        sparsearray;
        JVM INSTR monitorexit ;
        throw handler;
    }

}
