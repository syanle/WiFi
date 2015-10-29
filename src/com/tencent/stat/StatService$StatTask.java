// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.StatPreferences;
import com.tencent.stat.event.Event;
import com.tencent.stat.event.EventType;

// Referenced classes of package com.tencent.stat:
//            StatService, StatConfig, StatStore, StatDispatcher, 
//            StatReportStrategy, StatDispatchCallback

static class dStrategy
    implements Runnable
{

    private Event ev;
    private StatReportStrategy strategy;

    private void sendEvents()
    {
        if (StatStore.getInstance().getNumStoredEvents() > 0)
        {
            StatStore.getInstance().storeEvent(ev, null);
            StatStore.getInstance().loadEvents(-1);
            return;
        } else
        {
            sendEventsNow(true);
            return;
        }
    }

    private void sendEventsNow(boolean flag)
    {
        StatDispatchCallback statdispatchcallback = null;
        if (flag)
        {
            statdispatchcallback = new StatDispatchCallback() {

                final StatService.StatTask this$0;

                public void onDispatchFailure()
                {
                    StatStore.getInstance().storeEvent(ev, null);
                }

                public void onDispatchSuccess()
                {
                    StatStore.getInstance().loadEvents(-1);
                }

            
            {
                this$0 = StatService.StatTask.this;
                super();
            }
            };
        }
        StatDispatcher.getInstance().send(ev, statdispatchcallback);
    }

    public void run()
    {
        if (StatConfig.isEnableStatService()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        if (ev.getType() != EventType.ERROR && ev.toJsonString().length() > StatConfig.getMaxReportEventLength())
        {
            StatService.access$000().e((new StringBuilder()).append("Event length exceed StatConfig.getMaxReportEventLength(): ").append(StatConfig.getMaxReportEventLength()).toString());
            return;
        }
        if (StatConfig.getMaxSessionStatReportCount() > 0)
        {
            if (StatConfig.getCurSessionStatReportCount() >= StatConfig.getMaxSessionStatReportCount())
            {
                StatService.access$000().e("Times for reporting events has reached the limit of StatConfig.getMaxSessionStatReportCount() in current session.");
                return;
            }
            StatConfig.incCurSessionStatReportCount();
        }
        StatService.access$000().i((new StringBuilder()).append("Lauch stat task in thread:").append(Thread.currentThread().getName()).toString());
        obj = ev.getContext();
        if (!StatCommonHelper.isNetworkAvailable(((android.content.Context) (obj))))
        {
            StatStore.getInstance(((android.content.Context) (obj))).storeEvent(ev, null);
            return;
        }
        if (StatConfig.isEnableSmartReporting() && strategy != StatReportStrategy.ONLY_WIFI_NO_CACHE && StatCommonHelper.isWifiNet(((android.content.Context) (obj))))
        {
            strategy = StatReportStrategy.INSTANT;
        }
        switch (Map.com.tencent.stat.StatReportStrategy[strategy.ordinal()])
        {
        default:
            StatService.access$000().error((new StringBuilder()).append("Invalid stat strategy:").append(StatConfig.getStatSendStrategy()).toString());
            return;

        case 7: // '\007'
            continue; /* Loop/switch isn't completed */

        case 1: // '\001'
            sendEvents();
            return;

        case 2: // '\002'
            if (StatCommonHelper.isWiFiActive(((android.content.Context) (obj))))
            {
                sendEvents();
                return;
            } else
            {
                StatStore.getInstance(((android.content.Context) (obj))).storeEvent(ev, null);
                return;
            }

        case 3: // '\003'
        case 4: // '\004'
            StatStore.getInstance(((android.content.Context) (obj))).storeEvent(ev, null);
            return;

        case 5: // '\005'
            if (StatStore.getInstance(ev.getContext()) != null)
            {
                StatStore.getInstance(((android.content.Context) (obj))).storeEvent(ev, new StatDispatchCallback() {

                    final StatService.StatTask this$0;

                    public void onDispatchFailure()
                    {
                    }

                    public void onDispatchSuccess()
                    {
                        if (StatStore.getInstance().getNumStoredEvents() >= StatConfig.getMaxBatchReportCount())
                        {
                            StatStore.getInstance().loadEvents(StatConfig.getMaxBatchReportCount());
                        }
                    }

            
            {
                this$0 = StatService.StatTask.this;
                super();
            }
                });
                return;
            }
            break;

        case 6: // '\006'
            try
            {
                StatStore.getInstance(((android.content.Context) (obj))).storeEvent(ev, null);
                long l = StatPreferences.getLong(((android.content.Context) (obj)), "last_period_ts", 0L);
                Long long1 = Long.valueOf(System.currentTimeMillis());
                if (Long.valueOf(Long.valueOf(long1.longValue() - Long.valueOf(l).longValue()).longValue() / 60000L).longValue() > (long)StatConfig.getSendPeriodMinutes())
                {
                    StatStore.getInstance(((android.content.Context) (obj))).loadEvents(-1);
                    StatPreferences.putLong(((android.content.Context) (obj)), "last_period_ts", long1.longValue());
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                StatService.access$000().e(((Exception) (obj)));
                return;
            }
            break;
        }
        continue; /* Loop/switch isn't completed */
        if (!StatCommonHelper.isWiFiActive(((android.content.Context) (obj)))) goto _L1; else goto _L3
_L3:
        sendEventsNow(false);
        return;
        if (true) goto _L1; else goto _L4
_L4:
    }


    public _cls2.this._cls0(Event event)
    {
        strategy = null;
        ev = event;
        strategy = StatConfig.getStatSendStrategy();
    }
}
