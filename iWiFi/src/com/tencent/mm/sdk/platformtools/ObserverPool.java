// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util, Log

public final class ObserverPool
{
    public static class Event
    {

        public static final int FLAG_ORDER_EXE = 1;
        private final String aB;
        private int aC;
        public final Bundle data = new Bundle();

        public int getFlag()
        {
            return aC;
        }

        public String getId()
        {
            return aB;
        }

        public void onComplete()
        {
        }

        public Event setFlag(int i)
        {
            aC = i;
            return this;
        }

        public Event(String s)
        {
            Assert.assertNotNull(s);
            aB = s;
        }
    }

    public static abstract class Listener
    {

        private final int priority;

        static int a(Listener listener)
        {
            return listener.priority;
        }

        public abstract boolean callback(Event event);

        public int getPriority()
        {
            return priority;
        }

        public Listener()
        {
            priority = 0;
        }

        public Listener(int i)
        {
            priority = i;
        }
    }


    private final HashMap ay = new HashMap();

    public ObserverPool()
    {
    }

    public final boolean add(String s, Listener listener)
    {
        this;
        JVM INSTR monitorenter ;
        LinkedList linkedlist1;
        Assert.assertNotNull(listener);
        linkedlist1 = (LinkedList)ay.get(s);
        LinkedList linkedlist;
        linkedlist = linkedlist1;
        if (linkedlist1 != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        linkedlist = new LinkedList();
        ay.put(s, linkedlist);
        if (!linkedlist.contains(listener)) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.ObserverPool", "Cannot add the same listener twice. EventId: %s, Stack: %s.", new Object[] {
            s, Util.getStack()
        });
        boolean flag = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = linkedlist.add(listener);
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    public final void asyncPublish(Event event)
    {
        asyncPublish(event, Looper.myLooper());
    }

    public final void asyncPublish(Event event, Looper looper)
    {
        Assert.assertNotNull(looper);
        (new Handler(looper)).post(new _cls2(event));
    }

    public final boolean publish(Event event)
    {
        boolean flag = false;
        Assert.assertNotNull(event);
        String s = event.getId();
        LinkedList linkedlist = (LinkedList)ay.get(s);
        if (linkedlist == null)
        {
            Log.w("MicroMsg.ObserverPool", "No listener for this event %s, Stack: %s.", new Object[] {
                s, Util.getStack()
            });
            return false;
        }
        if ((event.getFlag() & 1) != 0)
        {
            flag = true;
        }
        if (flag)
        {
            Collections.sort(linkedlist, new _cls1());
        }
        for (Iterator iterator = linkedlist.iterator(); iterator.hasNext() && (!((Listener)iterator.next()).callback(event) || !flag);) { }
        event.onComplete();
        return true;
    }

    public final void release()
    {
        this;
        JVM INSTR monitorenter ;
        ay.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean remove(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Assert.assertNotNull(s);
        s = ((String) (ay.remove(s)));
        boolean flag;
        if (s != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        s;
        throw s;
    }

    public final boolean remove(String s, Listener listener)
    {
        this;
        JVM INSTR monitorenter ;
        LinkedList linkedlist;
        Assert.assertNotNull(listener);
        linkedlist = (LinkedList)ay.get(s);
        if (linkedlist == null) goto _L2; else goto _L1
_L1:
        boolean flag = linkedlist.remove(listener);
_L4:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        Log.e("MicroMsg.ObserverPool", "Listener isnot existed in the map. EventId: %s, Stack: %s.", new Object[] {
            s, Util.getStack()
        });
        this;
        JVM INSTR monitorexit ;
        return flag;
        s;
        throw s;
_L2:
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ObserverPool profile:\n");
        stringbuilder.append("\tEvent number: ").append(ay.size()).append("\n");
        stringbuilder.append("\tDetail:\n");
        String s;
        for (Iterator iterator = ay.keySet().iterator(); iterator.hasNext(); stringbuilder.append("\t").append(s).append(" : ").append(((LinkedList)ay.get(s)).size()).append("\n"))
        {
            s = (String)iterator.next();
        }

        stringbuilder.append("End...");
        return stringbuilder.toString();
    }

    private class _cls2
        implements Runnable
    {

        final Event aA;
        final ObserverPool az;

        public void run()
        {
            az.publish(aA);
        }

        _cls2(Event event)
        {
            az = ObserverPool.this;
            aA = event;
            super();
        }
    }


    private class _cls1
        implements Comparator
    {

        final ObserverPool az;

        public int compare(Listener listener, Listener listener1)
        {
            return Listener.a(listener1) - Listener.a(listener);
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((Listener)obj, (Listener)obj1);
        }

        _cls1()
        {
            az = ObserverPool.this;
            super();
        }
    }

}
