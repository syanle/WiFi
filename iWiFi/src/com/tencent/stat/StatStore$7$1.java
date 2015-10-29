// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import com.tencent.stat.common.StatLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.tencent.stat:
//            StatDispatchCallback, StatStore, StatConfig, StatDispatcher

class val.loadNumber
    implements StatDispatchCallback
{

    final Events this$1;
    final List val$evs;
    final int val$loadNumber;

    public void onDispatchFailure()
    {
        StatStore statstore = _fld0;
        statstore.numStoredEvents = statstore.numStoredEvents + val$loadNumber;
        updateEvents(val$evs, 1);
    }

    public void onDispatchSuccess()
    {
        deleteEvents(val$evs);
        int i;
        if (maxNumber == -1)
        {
            i = maxNumber;
        } else
        {
            i = maxNumber - val$evs.size();
        }
        if (i == -1 || i > 0)
        {
            loadEvents(i);
        }
    }

    l.maxNumber()
    {
        this$1 = final_maxnumber;
        val$evs = list;
        val$loadNumber = I.this;
        super();
    }

    // Unreferenced inner class com/tencent/stat/StatStore$7

/* anonymous class */
    class StatStore._cls7
        implements Runnable
    {

        final StatStore this$0;
        final int val$maxNumber;

        public void run()
        {
            if (numStoredEvents != 0)
            {
                StatStore.access$400().i((new StringBuilder()).append("Load ").append(Integer.toString(numStoredEvents)).append(" unsent events").toString());
                ArrayList arraylist = new ArrayList();
                final ArrayList evs = new ArrayList();
                int i = maxNumber;
                if (i == -1 || i > StatConfig.getMaxLoadEventCount())
                {
                    i = StatConfig.getMaxLoadEventCount();
                }
                StatStore statstore = StatStore.this;
                statstore.numStoredEvents = statstore.numStoredEvents - i;
                StatStore.access$500(StatStore.this, evs, i);
                StatStore.access$400().i((new StringBuilder()).append("Peek ").append(Integer.toString(evs.size())).append(" unsent events.").toString());
                if (!evs.isEmpty())
                {
                    StatStore.access$100(StatStore.this, evs, 2);
                    for (Iterator iterator = evs.iterator(); iterator.hasNext(); arraylist.add(((StatStore.StoredEvent)iterator.next()).content)) { }
                    StatDispatcher.getInstance().send(arraylist, i. new StatStore._cls7._cls1());
                    return;
                }
            }
        }

            
            {
                this$0 = final_statstore;
                maxNumber = I.this;
                super();
            }
    }

}
