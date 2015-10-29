// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util, Log

public class MAlarmHandler
{
    public static interface CallBack
    {

        public abstract boolean onTimerExpired();
    }

    public static interface IBumper
    {

        public abstract void cancel();

        public abstract void prepare();
    }


    public static final long NEXT_FIRE_INTERVAL = 0x7fffffffffffffffL;
    private static int ac;
    private static Map ah = new HashMap();
    private static IBumper aj;
    private static boolean ak = false;
    private final int ad;
    private final boolean ae;
    private long af;
    private long ag;
    private final CallBack ai;

    public MAlarmHandler(CallBack callback, boolean flag)
    {
        af = 0L;
        ag = 0L;
        Assert.assertTrue("bumper not initialized", ak);
        ai = callback;
        ae = flag;
        if (ac >= 8192)
        {
            ac = 0;
        }
        int i = ac + 1;
        ac = i;
        ad = i;
    }

    public static long fire()
    {
        LinkedList linkedlist = new LinkedList();
        Object obj = new HashSet();
        ((Set) (obj)).addAll(ah.keySet());
        obj = ((Set) (obj)).iterator();
        long l = 0x7fffffffffffffffL;
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            Integer integer = (Integer)((Iterator) (obj)).next();
            MAlarmHandler malarmhandler = (MAlarmHandler)ah.get(integer);
            if (malarmhandler != null)
            {
                long l2 = Util.ticksToNow(malarmhandler.af);
                long l1 = l2;
                if (l2 < 0L)
                {
                    l1 = 0L;
                }
                if (l1 > malarmhandler.ag)
                {
                    if (!malarmhandler.ai.onTimerExpired() || !malarmhandler.ae)
                    {
                        linkedlist.add(integer);
                    } else
                    {
                        l = malarmhandler.ag;
                    }
                    malarmhandler.af = Util.currentTicks();
                } else
                if (malarmhandler.ag - l1 < l)
                {
                    l = malarmhandler.ag - l1;
                }
            }
        } while (true);
        for (int i = 0; i < linkedlist.size(); i++)
        {
            ah.remove(linkedlist.get(i));
        }

        if (l == 0x7fffffffffffffffL && aj != null)
        {
            aj.cancel();
            Log.v("MicroMsg.MAlarmHandler", "cancel bumper for no more handler");
        }
        return l;
    }

    public static void initAlarmBumper(IBumper ibumper)
    {
        ak = true;
        aj = ibumper;
    }

    protected void finalize()
    {
        stopTimer();
        super.finalize();
    }

    public void startTimer(long l)
    {
        ag = l;
        af = Util.currentTicks();
        long l3 = ag;
        Log.d("MicroMsg.MAlarmHandler", (new StringBuilder("check need prepare: check=")).append(l3).toString());
        Iterator iterator = ah.entrySet().iterator();
        l = 0x7fffffffffffffffL;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            MAlarmHandler malarmhandler = (MAlarmHandler)((java.util.Map.Entry)iterator.next()).getValue();
            if (malarmhandler != null)
            {
                long l2 = Util.ticksToNow(malarmhandler.af);
                long l1 = l2;
                if (l2 < 0L)
                {
                    l1 = 0L;
                }
                if (l1 > malarmhandler.ag)
                {
                    l = malarmhandler.ag;
                } else
                if (malarmhandler.ag - l1 < l)
                {
                    l = malarmhandler.ag - l1;
                }
            }
        } while (true);
        boolean flag;
        if (l > l3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        stopTimer();
        ah.put(Integer.valueOf(ad), this);
        if (aj != null && flag)
        {
            Log.v("MicroMsg.MAlarmHandler", "prepare bumper");
            aj.prepare();
        }
    }

    public void stopTimer()
    {
        ah.remove(Integer.valueOf(ad));
    }

    public boolean stopped()
    {
        return !ah.containsKey(Integer.valueOf(ad));
    }

}
