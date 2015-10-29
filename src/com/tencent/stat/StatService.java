// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.stat.common.Env;
import com.tencent.stat.common.SdkProtection;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.StatPreferences;
import com.tencent.stat.common.User;
import com.tencent.stat.event.AdditionEvent;
import com.tencent.stat.event.CustomEvent;
import com.tencent.stat.event.ErrorEvent;
import com.tencent.stat.event.Event;
import com.tencent.stat.event.EventType;
import com.tencent.stat.event.MonitorStatEvent;
import com.tencent.stat.event.PageView;
import com.tencent.stat.event.SessionEnv;
import java.util.Map;
import java.util.Properties;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat:
//            StatConfig, StatStore, StatDispatcher, StatReportStrategy, 
//            StatAppMonitor, MtaSDkException, StatDispatchCallback

public class StatService
{
    static class StatTask
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

                    final StatTask this$0;

                    public void onDispatchFailure()
                    {
                        StatStore.getInstance().storeEvent(ev, null);
                    }

                    public void onDispatchSuccess()
                    {
                        StatStore.getInstance().loadEvents(-1);
                    }

            
            {
                this$0 = StatTask.this;
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
                StatService.logger.e((new StringBuilder()).append("Event length exceed StatConfig.getMaxReportEventLength(): ").append(StatConfig.getMaxReportEventLength()).toString());
                return;
            }
            if (StatConfig.getMaxSessionStatReportCount() > 0)
            {
                if (StatConfig.getCurSessionStatReportCount() >= StatConfig.getMaxSessionStatReportCount())
                {
                    StatService.logger.e("Times for reporting events has reached the limit of StatConfig.getMaxSessionStatReportCount() in current session.");
                    return;
                }
                StatConfig.incCurSessionStatReportCount();
            }
            StatService.logger.i((new StringBuilder()).append("Lauch stat task in thread:").append(Thread.currentThread().getName()).toString());
            obj = ev.getContext();
            if (!StatCommonHelper.isNetworkAvailable(((Context) (obj))))
            {
                StatStore.getInstance(((Context) (obj))).storeEvent(ev, null);
                return;
            }
            if (StatConfig.isEnableSmartReporting() && strategy != StatReportStrategy.ONLY_WIFI_NO_CACHE && StatCommonHelper.isWifiNet(((Context) (obj))))
            {
                strategy = StatReportStrategy.INSTANT;
            }
            static class _cls2
            {

                static final int $SwitchMap$com$tencent$stat$StatReportStrategy[];

                static 
                {
                    $SwitchMap$com$tencent$stat$StatReportStrategy = new int[StatReportStrategy.values().length];
                    try
                    {
                        $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.INSTANT.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    try
                    {
                        $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.ONLY_WIFI.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    try
                    {
                        $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.APP_LAUNCH.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    try
                    {
                        $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.DEVELOPER.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.BATCH.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.PERIOD.ordinal()] = 6;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.ONLY_WIFI_NO_CACHE.ordinal()] = 7;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls2..SwitchMap.com.tencent.stat.StatReportStrategy[strategy.ordinal()])
            {
            default:
                StatService.logger.error((new StringBuilder()).append("Invalid stat strategy:").append(StatConfig.getStatSendStrategy()).toString());
                return;

            case 7: // '\007'
                continue; /* Loop/switch isn't completed */

            case 1: // '\001'
                sendEvents();
                return;

            case 2: // '\002'
                if (StatCommonHelper.isWiFiActive(((Context) (obj))))
                {
                    sendEvents();
                    return;
                } else
                {
                    StatStore.getInstance(((Context) (obj))).storeEvent(ev, null);
                    return;
                }

            case 3: // '\003'
            case 4: // '\004'
                StatStore.getInstance(((Context) (obj))).storeEvent(ev, null);
                return;

            case 5: // '\005'
                if (StatStore.getInstance(ev.getContext()) != null)
                {
                    StatStore.getInstance(((Context) (obj))).storeEvent(ev, new StatDispatchCallback() {

                        final StatTask this$0;

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
                this$0 = StatTask.this;
                super();
            }
                    });
                    return;
                }
                break;

            case 6: // '\006'
                try
                {
                    StatStore.getInstance(((Context) (obj))).storeEvent(ev, null);
                    long l = StatPreferences.getLong(((Context) (obj)), "last_period_ts", 0L);
                    Long long1 = Long.valueOf(System.currentTimeMillis());
                    if (Long.valueOf(Long.valueOf(long1.longValue() - Long.valueOf(l).longValue()).longValue() / 60000L).longValue() > (long)StatConfig.getSendPeriodMinutes())
                    {
                        StatStore.getInstance(((Context) (obj))).loadEvents(-1);
                        StatPreferences.putLong(((Context) (obj)), "last_period_ts", long1.longValue());
                        return;
                    }
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    StatService.logger.e(((Exception) (obj)));
                    return;
                }
                break;
            }
            continue; /* Loop/switch isn't completed */
            if (!StatCommonHelper.isWiFiActive(((Context) (obj)))) goto _L1; else goto _L3
_L3:
            sendEventsNow(false);
            return;
            if (true) goto _L1; else goto _L4
_L4:
        }


        public StatTask(Event event)
        {
            strategy = null;
            ev = event;
            strategy = StatConfig.getStatSendStrategy();
        }
    }


    private static boolean firstSession = true;
    private static Handler handler;
    private static volatile long lastActivityTimestamp = 0L;
    private static volatile String lastReferPageId = "";
    private static volatile String last_pageId = "";
    private static StatLogger logger = StatCommonHelper.getLogger();
    private static volatile long nextDayStartTimestamp = 0L;
    private static Thread.UncaughtExceptionHandler originalExceptionHandler = null;
    private static volatile int sessionId = 0;
    private static Map timedEventMap = new WeakHashMap();
    private static Map timedPageEventMap = new WeakHashMap();

    public StatService()
    {
    }

    public static void commitEvents(Context context, int i)
    {
        if (!StatConfig.isEnableStatService())
        {
            return;
        }
        if (context == null)
        {
            logger.error("The Context of StatService.commitEvents() can not be null!");
            return;
        }
        if (i < -1 || i == 0)
        {
            logger.error("The maxNumber of StatService.commitEvents() should be -1 or bigger than 0.");
            return;
        }
        try
        {
            StatStore.getInstance(context).loadEvents(i);
            return;
        }
        catch (Throwable throwable)
        {
            reportSdkSelfException(context, throwable);
        }
    }

    static JSONObject getEncodeConfig()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            JSONObject jsonobject1 = new JSONObject();
            if (StatConfig.sdkCfg.version != 0)
            {
                jsonobject1.put("v", StatConfig.sdkCfg.version);
            }
            jsonobject.put(Integer.toString(StatConfig.sdkCfg.type), jsonobject1);
            jsonobject1 = new JSONObject();
            if (StatConfig.userCfg.version != 0)
            {
                jsonobject1.put("v", StatConfig.userCfg.version);
            }
            jsonobject.put(Integer.toString(StatConfig.userCfg.type), jsonobject1);
        }
        catch (JSONException jsonexception)
        {
            logger.e(jsonexception);
            return jsonobject;
        }
        return jsonobject;
    }

    private static Handler getHandler(Context context)
    {
        init(context);
        return handler;
    }

    static int getSessionID(Context context, boolean flag)
    {
        boolean flag2 = true;
        long l = System.currentTimeMillis();
        boolean flag1;
        if (flag && l - lastActivityTimestamp >= (long)StatConfig.getSessionTimoutMillis())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        lastActivityTimestamp = l;
        if (nextDayStartTimestamp == 0L)
        {
            nextDayStartTimestamp = StatCommonHelper.getTomorrowStartMilliseconds();
        }
        if (l >= nextDayStartTimestamp)
        {
            nextDayStartTimestamp = StatCommonHelper.getTomorrowStartMilliseconds();
            if (StatStore.getInstance(context).getUser(context).getType() != 1)
            {
                StatStore.getInstance(context).getUser(context).setType(1);
            }
            StatConfig.setCurrentDaySessionNumbers(0);
            flag1 = true;
        }
        if (firstSession)
        {
            flag1 = flag2;
        }
        if (flag1)
        {
            if (StatConfig.getCurrentDaySessionNumbers() < StatConfig.getMaxDaySessionNumbers())
            {
                sendNewSessionEnv(context);
            } else
            {
                logger.e("Exceed StatConfig.getMaxDaySessionNumbers().");
            }
        }
        if (firstSession)
        {
            SdkProtection.endCheck(context);
            firstSession = false;
        }
        return sessionId;
    }

    static void init(Context context)
    {
        while (context == null || handler != null || !isServiceStatActive(context)) 
        {
            return;
        }
        if (!SdkProtection.beginCheck(context))
        {
            logger.error("ooh, Compatibility problem was found in this device!");
            logger.error("If you are on debug mode, please delete apk and try again.");
            StatConfig.setEnableStatService(false);
            return;
        }
        StatStore.getInstance(context);
        HandlerThread handlerthread = new HandlerThread("StatService");
        handlerthread.start();
        StatDispatcher.setApplicationContext(context);
        handler = new Handler(handlerthread.getLooper());
        originalExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (StatConfig.isAutoExceptionCaught())
        {
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(context.getApplicationContext()) {

                final Context val$tempContext;

                public void uncaughtException(Thread thread, Throwable throwable)
                {
                    if (!StatConfig.isEnableStatService())
                    {
                        return;
                    }
                    StatStore.getInstance(tempContext).storeEvent(new ErrorEvent(tempContext, StatService.getSessionID(tempContext, false), 2, throwable), null);
                    StatService.logger.debug("MTA has caught the following uncaught exception:");
                    StatService.logger.error(throwable);
                    if (StatService.originalExceptionHandler != null)
                    {
                        StatService.logger.debug("Call the original uncaught exception handler.");
                        StatService.originalExceptionHandler.uncaughtException(thread, throwable);
                        return;
                    } else
                    {
                        StatService.logger.debug("Original uncaught exception handler not set.");
                        return;
                    }
                }

            
            {
                tempContext = context;
                super();
            }
            });
        } else
        {
            logger.warn("MTA SDK AutoExceptionCaught is disable");
        }
        if (StatConfig.getStatSendStrategy() == StatReportStrategy.APP_LAUNCH && StatCommonHelper.isNetworkAvailable(context))
        {
            StatStore.getInstance(context).loadEvents(-1);
        }
        logger.d("Init MTA StatService success.");
    }

    static boolean isEmpty(String s)
    {
        return s == null || s.length() == 0;
    }

    static boolean isServiceStatActive(Context context)
    {
        long l = StatPreferences.getLong(context, StatConfig.HIBERNATE, 0L);
        if (StatCommonHelper.getSDKLongVersion("1.0.0") <= l)
        {
            StatConfig.setEnableStatService(false);
            return false;
        } else
        {
            return true;
        }
    }

    public static void onPause(Context context)
    {
        if (!StatConfig.isEnableStatService())
        {
            return;
        }
        if (context == null)
        {
            logger.error("The Context of StatService.onPause() can not be null!");
            return;
        }
        Long long1;
        String s;
        s = StatCommonHelper.getActivityName(context);
        long1 = (Long)timedPageEventMap.remove(s);
        if (long1 == null)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        Long long2 = Long.valueOf((System.currentTimeMillis() - long1.longValue()) / 1000L);
        Object obj = long2;
        try
        {
            if (long2.longValue() == 0L)
            {
                obj = Long.valueOf(1L);
            }
            if (lastReferPageId.equals(s))
            {
                lastReferPageId = "-";
            }
            obj = new PageView(context, lastReferPageId, getSessionID(context, false), ((Long) (obj)));
            if (!((PageView) (obj)).getPageId().equals(last_pageId))
            {
                logger.warn("Invalid invocation since previous onResume on diff page.");
            }
            if (getHandler(context) != null)
            {
                getHandler(context).post(new StatTask(((Event) (obj))));
            }
            lastReferPageId = s;
            return;
        }
        catch (Throwable throwable)
        {
            reportSdkSelfException(context, throwable);
        }
        return;
        logger.e((new StringBuilder()).append("Starttime for PageID:").append(s).append(" not found, lost onResume()?").toString());
        return;
    }

    public static void onResume(Context context)
    {
        if (StatConfig.isEnableStatService()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (context == null)
        {
            logger.error("The Context of StatService.onResume() can not be null!");
            return;
        }
        try
        {
            if (timedPageEventMap.size() >= StatConfig.getMaxParallelTimmingEvents())
            {
                logger.error((new StringBuilder()).append("The number of page events exceeds the maximum value ").append(Integer.toString(StatConfig.getMaxParallelTimmingEvents())).toString());
                return;
            }
        }
        catch (Throwable throwable)
        {
            reportSdkSelfException(context, throwable);
            return;
        }
        last_pageId = StatCommonHelper.getActivityName(context);
        if (last_pageId == null) goto _L1; else goto _L3
_L3:
        if (timedPageEventMap.containsKey(last_pageId))
        {
            logger.e((new StringBuilder()).append("Duplicate PageID : ").append(last_pageId).append(", onResume() repeated?").toString());
            return;
        }
        timedPageEventMap.put(last_pageId, Long.valueOf(System.currentTimeMillis()));
        getSessionID(context, true);
        return;
    }

    public static void reportAppMonitorStat(Context context, StatAppMonitor statappmonitor)
    {
        if (StatConfig.isEnableStatService())
        {
            if (context == null)
            {
                logger.error("The Context of StatService.reportAppMonitorStat() can not be null!");
                return;
            }
            if (statappmonitor == null)
            {
                logger.error("The StatAppMonitor of StatService.reportAppMonitorStat() can not be null!");
                return;
            }
            if (statappmonitor.getInterfaceName() == null)
            {
                logger.error("The interfaceName of StatAppMonitor on StatService.reportAppMonitorStat() can not be null!");
                return;
            }
            try
            {
                statappmonitor = new MonitorStatEvent(context, getSessionID(context, false), statappmonitor);
                if (getHandler(context) != null)
                {
                    getHandler(context).post(new StatTask(statappmonitor));
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (StatAppMonitor statappmonitor)
            {
                reportSdkSelfException(context, statappmonitor);
                return;
            }
        }
    }

    public static void reportError(Context context, String s)
    {
        if (StatConfig.isEnableStatService())
        {
            if (context == null)
            {
                logger.error("The Context of StatService.reportError() can not be null!");
                return;
            }
            if (isEmpty(s))
            {
                logger.error("Error message in StatService.reportError() is empty.");
                return;
            }
            try
            {
                s = new ErrorEvent(context, getSessionID(context, false), s);
                if (getHandler(context) != null)
                {
                    getHandler(context).post(new StatTask(s));
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                reportSdkSelfException(context, s);
                return;
            }
        }
    }

    public static void reportException(Context context, Throwable throwable)
    {
        if (StatConfig.isEnableStatService())
        {
            if (context == null)
            {
                logger.error("The Context of StatService.reportException() can not be null!");
                return;
            }
            if (throwable == null)
            {
                logger.error("The Throwable error message of StatService.reportException() can not be null!");
                return;
            }
            throwable = new ErrorEvent(context, getSessionID(context, false), 1, throwable);
            if (getHandler(context) != null)
            {
                getHandler(context).post(new StatTask(throwable));
                return;
            }
        }
    }

    public static void reportQQ(Context context, String s)
    {
        String s1 = s;
        if (s == null)
        {
            s1 = "";
        }
        if (!StatConfig.qq.equals(s1))
        {
            StatConfig.qq = s1;
            sendAdditionEvent(context, null);
        }
    }

    static void reportSdkSelfException(Context context, Throwable throwable)
    {
        if (!StatConfig.isEnableStatService())
        {
            return;
        }
        if (context == null)
        {
            try
            {
                logger.error("The Context of StatService.reportSdkSelfException() can not be null!");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                logger.e((new StringBuilder()).append("reportSdkSelfException error: ").append(context).toString());
            }
            return;
        }
        throwable = new ErrorEvent(context, getSessionID(context, false), 99, throwable);
        if (getHandler(context) != null)
        {
            getHandler(context).post(new StatTask(throwable));
        }
        return;
    }

    static void sendAdditionEvent(Context context, Map map)
    {
        if (StatConfig.isEnableStatService())
        {
            if (context == null)
            {
                logger.error("The Context of StatService.sendAdditionEvent() can not be null!");
                return;
            }
            try
            {
                map = new AdditionEvent(context, getSessionID(context, false), map);
                if (getHandler(context) != null)
                {
                    getHandler(context).post(new StatTask(map));
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (Map map)
            {
                reportSdkSelfException(context, map);
                return;
            }
        }
    }

    static void sendNewSessionEnv(Context context)
    {
        if (getHandler(context) != null)
        {
            logger.d("start new session.");
            sessionId = StatCommonHelper.getNextSessionID();
            StatConfig.setCurSessionStatReportCount(0);
            StatConfig.incCurrentDaySessionNumbers();
            getHandler(context).post(new StatTask(new SessionEnv(context, sessionId, getEncodeConfig())));
        }
    }

    public static void setEnvAttributes(Context context, Map map)
    {
        if (map == null || map.size() > 512)
        {
            logger.error("The map in setEnvAttributes can't be null or its size can't exceed 512.");
            return;
        }
        try
        {
            Env.appendEnvAttr(context, map);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            logger.e(context);
        }
    }

    public static void startNewSession(Context context)
    {
        if (!StatConfig.isEnableStatService())
        {
            return;
        }
        if (context == null)
        {
            logger.error("The Context of StatService.startNewSession() can not be null!");
            return;
        }
        try
        {
            stopSession();
            getSessionID(context, true);
            return;
        }
        catch (Throwable throwable)
        {
            reportSdkSelfException(context, throwable);
        }
    }

    public static boolean startStatService(Context context, String s, String s1)
        throws MtaSDkException
    {
        if (!StatConfig.isEnableStatService())
        {
            logger.error("MTA StatService is disable.");
            return false;
        }
        logger.d((new StringBuilder()).append("MTA SDK version, current: ").append("1.0.0").append(" ,required: ").append(s1).toString());
        if (context == null || s1 == null)
        {
            logger.error("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
            StatConfig.setEnableStatService(false);
            throw new MtaSDkException("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
        }
        if (StatCommonHelper.getSDKLongVersion("1.0.0") < StatCommonHelper.getSDKLongVersion(s1))
        {
            context = (new StringBuilder()).append("MTA SDK version conflicted, current: ").append("1.0.0").append(",required: ").append(s1).toString();
            context = (new StringBuilder()).append(context).append(". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/").toString();
            logger.error(context);
            StatConfig.setEnableStatService(false);
            throw new MtaSDkException(context);
        }
        try
        {
            s1 = StatConfig.getInstallChannel(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            logger.e(context);
            return false;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        if (s1.length() != 0)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        StatConfig.setInstallChannel("-");
        StatConfig.setAppKey(context, s);
        getHandler(context);
        return true;
    }

    public static void stopSession()
    {
        lastActivityTimestamp = 0L;
    }

    public static transient void trackCustomBeginEvent(Context context, String s, String as[])
    {
        if (!StatConfig.isEnableStatService())
        {
            return;
        }
        if (context == null)
        {
            logger.error("The Context of StatService.trackCustomBeginEvent() can not be null!");
            return;
        }
        if (isEmpty(s))
        {
            logger.error("The event_id of StatService.trackCustomBeginEvent() can not be null or empty.");
            return;
        }
        try
        {
            s = new CustomEvent(context, getSessionID(context, false), s);
            s.setArgs(as);
            s = s.getKey();
            if (timedEventMap.containsKey(s))
            {
                logger.error((new StringBuilder()).append("Duplicate CustomEvent key: ").append(s.toString()).append(", trackCustomBeginEvent() repeated?").toString());
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            reportSdkSelfException(context, s);
            return;
        }
        if (timedEventMap.size() <= StatConfig.getMaxParallelTimmingEvents())
        {
            timedEventMap.put(s, Long.valueOf(System.currentTimeMillis()));
            return;
        }
        logger.error((new StringBuilder()).append("The number of timedEvent exceeds the maximum value ").append(Integer.toString(StatConfig.getMaxParallelTimmingEvents())).toString());
        return;
    }

    public static void trackCustomBeginKVEvent(Context context, String s, Properties properties)
    {
        if (!StatConfig.isEnableStatService())
        {
            return;
        }
        if (context == null)
        {
            logger.error("The Context of StatService.trackCustomBeginEvent() can not be null!");
            return;
        }
        if (isEmpty(s))
        {
            logger.error("The event_id of StatService.trackCustomBeginEvent() can not be null or empty.");
            return;
        }
        try
        {
            s = new CustomEvent(context, getSessionID(context, false), s);
            s.setProperties(properties);
            s = s.getKey();
            if (timedEventMap.containsKey(s))
            {
                logger.error((new StringBuilder()).append("Duplicate CustomEvent key: ").append(s.toString()).append(", trackCustomBeginKVEvent() repeated?").toString());
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            reportSdkSelfException(context, s);
            return;
        }
        if (timedEventMap.size() <= StatConfig.getMaxParallelTimmingEvents())
        {
            timedEventMap.put(s, Long.valueOf(System.currentTimeMillis()));
            return;
        }
        logger.error((new StringBuilder()).append("The number of timedEvent exceeds the maximum value ").append(Integer.toString(StatConfig.getMaxParallelTimmingEvents())).toString());
        return;
    }

    public static transient void trackCustomEndEvent(Context context, String s, String as[])
    {
        if (StatConfig.isEnableStatService()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        long l;
        if (context == null)
        {
            logger.error("The Context of StatService.trackCustomEndEvent() can not be null!");
            return;
        }
        if (isEmpty(s))
        {
            logger.error("The event_id of StatService.trackCustomEndEvent() can not be null or empty.");
            return;
        }
        try
        {
            s = new CustomEvent(context, getSessionID(context, false), s);
            s.setArgs(as);
            as = (Long)timedEventMap.remove(s.getKey());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            reportSdkSelfException(context, s);
            return;
        }
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        as = Long.valueOf((System.currentTimeMillis() - as.longValue()) / 1000L);
        if (as.longValue() != 0L)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        l = 1L;
_L4:
        s.setDuration(Long.valueOf(l).longValue());
        if (getHandler(context) == null) goto _L1; else goto _L3
_L3:
        getHandler(context).post(new StatTask(s));
        return;
        l = as.longValue();
          goto _L4
        logger.error((new StringBuilder()).append("No start time found for custom event: ").append(s.getKey().toString()).append(", lost trackCustomBeginEvent()?").toString());
        return;
    }

    public static void trackCustomEndKVEvent(Context context, String s, Properties properties)
    {
        if (StatConfig.isEnableStatService()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        long l;
        if (context == null)
        {
            logger.error("The Context of StatService.trackCustomEndEvent() can not be null!");
            return;
        }
        if (isEmpty(s))
        {
            logger.error("The event_id of StatService.trackCustomEndEvent() can not be null or empty.");
            return;
        }
        try
        {
            s = new CustomEvent(context, getSessionID(context, false), s);
            s.setProperties(properties);
            properties = (Long)timedEventMap.remove(s.getKey());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            reportSdkSelfException(context, s);
            return;
        }
        if (properties == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        properties = Long.valueOf((System.currentTimeMillis() - properties.longValue()) / 1000L);
        if (properties.longValue() != 0L)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        l = 1L;
_L4:
        s.setDuration(Long.valueOf(l).longValue());
        if (getHandler(context) == null) goto _L1; else goto _L3
_L3:
        getHandler(context).post(new StatTask(s));
        return;
        l = properties.longValue();
          goto _L4
        logger.error((new StringBuilder()).append("No start time found for custom event: ").append(s.getKey().toString()).append(", lost trackCustomBeginKVEvent()?").toString());
        return;
    }

    public static transient void trackCustomEvent(Context context, String s, String as[])
    {
        if (StatConfig.isEnableStatService())
        {
            if (context == null)
            {
                logger.error("The Context of StatService.trackCustomEvent() can not be null!");
                return;
            }
            if (isEmpty(s))
            {
                logger.error("The event_id of StatService.trackCustomEvent() can not be null or empty.");
                return;
            }
            try
            {
                s = new CustomEvent(context, getSessionID(context, false), s);
                s.setArgs(as);
                if (getHandler(context) != null)
                {
                    getHandler(context).post(new StatTask(s));
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                reportSdkSelfException(context, s);
                return;
            }
        }
    }

    public static void trackCustomKVEvent(Context context, String s, Properties properties)
    {
        if (StatConfig.isEnableStatService())
        {
            if (context == null)
            {
                logger.error("The Context of StatService.trackCustomEvent() can not be null!");
                return;
            }
            if (isEmpty(s))
            {
                logger.error("The event_id of StatService.trackCustomEvent() can not be null or empty.");
                return;
            }
            try
            {
                s = new CustomEvent(context, getSessionID(context, false), s);
                s.setProperties(properties);
                if (getHandler(context) != null)
                {
                    getHandler(context).post(new StatTask(s));
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                reportSdkSelfException(context, s);
                return;
            }
        }
    }



}
