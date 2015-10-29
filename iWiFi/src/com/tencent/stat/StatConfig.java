// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.StatPreferences;
import java.util.Iterator;
import org.apache.http.HttpHost;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat:
//            StatReportStrategy, StatDispatcher, StatService, StatStore

public class StatConfig
{
    static class OnlineConfig
    {

        String md5sum;
        JSONObject props;
        int type;
        int version;

        String toJsonString()
        {
            return props.toString();
        }

        public OnlineConfig(int i)
        {
            props = new JSONObject();
            md5sum = "";
            version = 0;
            type = i;
        }
    }


    static String HIBERNATE = "__HIBERNATE__";
    private static String appkey;
    private static volatile int curSessionStatReportCount = 0;
    private static int currentDaySessionNumbers = 0;
    private static boolean enableSmartReporting = true;
    private static boolean enableStatService = true;
    private static String installChannel;
    public static boolean isAutoExceptionCaught = true;
    private static long lastReportStrategyCheckTime = 0L;
    private static StatLogger logger = StatCommonHelper.getLogger();
    private static int maxBatchReportCount = 30;
    private static int maxDaySessionNumbers = 20;
    private static int maxLoadEventCount = 30;
    private static int maxParallelTimmingEvents = 1024;
    private static int maxReportEventLength = 4096;
    private static long maxReportStrategyCheckTime = 0x493e0L;
    private static int maxSendRetryCount = 3;
    private static int maxSessionStatReportCount = 0;
    private static int maxStoreEventCount = 1024;
    static String qq = "";
    private static boolean reportTrafficStat = false;
    static OnlineConfig sdkCfg = new OnlineConfig(1);
    private static int sendPeriodMinutes = 1440;
    private static int sessionTimoutMillis = 30000;
    private static String statReportUrl = "http://pingma.qq.com:80/mstat/report";
    private static StatReportStrategy statSendStrategy;
    private static String ta_http_proxy = null;
    static OnlineConfig userCfg = new OnlineConfig(2);

    public StatConfig()
    {
    }

    static void checkHibernate(JSONObject jsonobject)
    {
        try
        {
            jsonobject = jsonobject.getString(HIBERNATE);
            logger.d((new StringBuilder()).append("hibernateVer:").append(jsonobject).append(", current version:").append("1.0.0").toString());
            long l = StatCommonHelper.getSDKLongVersion(jsonobject);
            if (StatCommonHelper.getSDKLongVersion("1.0.0") <= l)
            {
                StatPreferences.putLong(StatDispatcher.getApplicationContext(), HIBERNATE, l);
                setEnableStatService(false);
                logger.warn((new StringBuilder()).append("MTA has disable for SDK version of ").append(jsonobject).append(" or lower.").toString());
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            logger.d("__HIBERNATE__ not found.");
        }
    }

    public static String getAppKey(Context context)
    {
        if (appkey != null)
        {
            return appkey;
        }
        if (context != null && appkey == null)
        {
            appkey = StatCommonHelper.getAppKey(context);
        }
        if (appkey == null || appkey.trim().length() == 0)
        {
            logger.error("AppKey can not be null or empty, please read Developer's Guide first!");
        }
        return appkey;
    }

    public static int getCurSessionStatReportCount()
    {
        return curSessionStatReportCount;
    }

    static int getCurrentDaySessionNumbers()
    {
        return currentDaySessionNumbers;
    }

    public static String getCustomProperty(String s)
    {
        try
        {
            s = userCfg.props.getString(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static String getCustomProperty(String s, String s1)
    {
        try
        {
            s = userCfg.props.getString(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return s1;
        }
        if (s != null)
        {
            s1 = s;
        }
        return s1;
    }

    public static String getInstallChannel(Context context)
    {
        if (installChannel != null)
        {
            return installChannel;
        }
        installChannel = StatCommonHelper.getInstallChannel(context);
        if (installChannel == null || installChannel.trim().length() == 0)
        {
            logger.e("installChannel can not be null or empty, please read Developer's Guide first!");
        }
        return installChannel;
    }

    public static int getMaxBatchReportCount()
    {
        return maxBatchReportCount;
    }

    public static int getMaxDaySessionNumbers()
    {
        return maxDaySessionNumbers;
    }

    static int getMaxLoadEventCount()
    {
        return maxLoadEventCount;
    }

    public static int getMaxParallelTimmingEvents()
    {
        return maxParallelTimmingEvents;
    }

    public static int getMaxReportEventLength()
    {
        return maxReportEventLength;
    }

    public static int getMaxSendRetryCount()
    {
        return maxSendRetryCount;
    }

    public static int getMaxSessionStatReportCount()
    {
        return maxSessionStatReportCount;
    }

    public static int getMaxStoreEventCount()
    {
        return maxStoreEventCount;
    }

    public static String getQQ()
    {
        return qq;
    }

    public static int getSendPeriodMinutes()
    {
        return sendPeriodMinutes;
    }

    public static int getSessionTimoutMillis()
    {
        return sessionTimoutMillis;
    }

    static HttpHost getStatHttpProxy()
    {
        if (ta_http_proxy != null && ta_http_proxy.length() > 0)
        {
            String s = ta_http_proxy;
            String as[] = s.split(":");
            int i = 80;
            if (as.length == 2)
            {
                s = as[0];
                i = Integer.parseInt(as[1]);
            }
            return new HttpHost(s, i);
        } else
        {
            return null;
        }
    }

    public static String getStatReportUrl()
    {
        return statReportUrl;
    }

    public static StatReportStrategy getStatSendStrategy()
    {
        return statSendStrategy;
    }

    static String getStoredAppkeys(Context context)
    {
        return StatCommonHelper.decode(StatPreferences.getString(context, "_mta_ky_tag_", null));
    }

    static void incCurSessionStatReportCount()
    {
        com/tencent/stat/StatConfig;
        JVM INSTR monitorenter ;
        curSessionStatReportCount++;
        com/tencent/stat/StatConfig;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void incCurrentDaySessionNumbers()
    {
        currentDaySessionNumbers++;
    }

    public static boolean isAutoExceptionCaught()
    {
        return isAutoExceptionCaught;
    }

    static boolean isBetween(int i, int j, int k)
    {
        return i >= j && i <= k;
    }

    public static boolean isDebugEnable()
    {
        return StatCommonHelper.getLogger().isDebugEnable();
    }

    public static boolean isEnableSmartReporting()
    {
        return enableSmartReporting;
    }

    public static boolean isEnableStatService()
    {
        return enableStatService;
    }

    public static void setAppKey(Context context, String s)
    {
        if (context == null)
        {
            logger.error("ctx in StatConfig.setAppKey() is null");
        } else
        {
            if (s == null || s.length() > 256)
            {
                logger.error("appkey in StatConfig.setAppKey() is null or exceed 256 bytes");
                return;
            }
            if (appkey == null)
            {
                appkey = getStoredAppkeys(context);
            }
            if (updateAppkeys(s) | updateAppkeys(StatCommonHelper.getAppKey(context)))
            {
                storeAppkeys(context, appkey);
                return;
            }
        }
    }

    public static void setAppKey(String s)
    {
        if (s == null)
        {
            logger.error("appkey in StatConfig.setAppKey() is null");
            return;
        }
        if (s.length() > 256)
        {
            logger.error("The length of appkey cann't exceed 256 bytes.");
            return;
        } else
        {
            appkey = s;
            return;
        }
    }

    public static void setAutoExceptionCaught(boolean flag)
    {
        isAutoExceptionCaught = flag;
    }

    static void setConfig(OnlineConfig onlineconfig)
        throws JSONException
    {
        if (onlineconfig.type == sdkCfg.type)
        {
            sdkCfg = onlineconfig;
            updateReportStrategy(sdkCfg.props);
        } else
        if (onlineconfig.type == userCfg.type)
        {
            userCfg = onlineconfig;
            return;
        }
    }

    static void setCurSessionStatReportCount(int i)
    {
        com/tencent/stat/StatConfig;
        JVM INSTR monitorenter ;
        curSessionStatReportCount = i;
        com/tencent/stat/StatConfig;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void setCurrentDaySessionNumbers(int i)
    {
        if (i < 0)
        {
            return;
        } else
        {
            currentDaySessionNumbers = i;
            return;
        }
    }

    public static void setDebugEnable(boolean flag)
    {
        StatCommonHelper.getLogger().setDebugEnable(flag);
    }

    public static void setEnableSmartReporting(boolean flag)
    {
        enableSmartReporting = flag;
    }

    public static void setEnableStatService(boolean flag)
    {
        enableStatService = flag;
        if (!flag)
        {
            logger.warn("!!!!!!MTA StatService has been disabled!!!!!!");
        }
    }

    public static void setInstallChannel(String s)
    {
        if (s.length() > 128)
        {
            logger.error("the length of installChannel can not exceed the range of 128 bytes.");
            return;
        } else
        {
            installChannel = s;
            return;
        }
    }

    public static void setMaxBatchReportCount(int i)
    {
        if (!isBetween(i, 2, 1000))
        {
            logger.error("setMaxBatchReportCount can not exceed the range of [2,1000].");
            return;
        } else
        {
            maxBatchReportCount = i;
            return;
        }
    }

    public static void setMaxDaySessionNumbers(int i)
    {
        if (i <= 0)
        {
            logger.e("maxDaySessionNumbers must be greater than 0.");
            return;
        } else
        {
            maxDaySessionNumbers = i;
            return;
        }
    }

    public static void setMaxParallelTimmingEvents(int i)
    {
        if (!isBetween(i, 1, 4096))
        {
            logger.error("setMaxParallelTimmingEvents can not exceed the range of [1, 4096].");
            return;
        } else
        {
            maxParallelTimmingEvents = i;
            return;
        }
    }

    public static void setMaxReportEventLength(int i)
    {
        if (i <= 0)
        {
            logger.error("maxReportEventLength on setMaxReportEventLength() must greater than 0.");
            return;
        } else
        {
            maxReportEventLength = i;
            return;
        }
    }

    public static void setMaxSendRetryCount(int i)
    {
        if (!isBetween(i, 1, 10))
        {
            logger.error("setMaxSendRetryCount can not exceed the range of [1,10].");
            return;
        } else
        {
            maxSendRetryCount = i;
            return;
        }
    }

    public static void setMaxSessionStatReportCount(int i)
    {
        if (i < 0)
        {
            logger.error("maxSessionStatReportCount cannot be less than 0.");
            return;
        } else
        {
            maxSessionStatReportCount = i;
            return;
        }
    }

    public static void setMaxStoreEventCount(int i)
    {
        if (!isBetween(i, 0, 0x7a120))
        {
            logger.error("setMaxStoreEventCount can not exceed the range of [0, 500000].");
            return;
        } else
        {
            maxStoreEventCount = i;
            return;
        }
    }

    public static void setQQ(Context context, String s)
    {
        StatService.reportQQ(context, s);
    }

    public static void setSendPeriodMinutes(int i)
    {
        if (!isBetween(i, 1, 10080))
        {
            logger.error("setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes.");
            return;
        } else
        {
            sendPeriodMinutes = i;
            return;
        }
    }

    public static void setSessionTimoutMillis(int i)
    {
        if (!isBetween(i, 1000, 0x5265c00))
        {
            logger.error("setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000].");
            return;
        } else
        {
            sessionTimoutMillis = i;
            return;
        }
    }

    public static void setStatReportUrl(String s)
    {
        if (s == null || s.length() == 0)
        {
            logger.error("statReportUrl cannot be null or empty.");
            return;
        } else
        {
            statReportUrl = s;
            return;
        }
    }

    public static void setStatSendStrategy(StatReportStrategy statreportstrategy)
    {
        statSendStrategy = statreportstrategy;
        logger.d((new StringBuilder()).append("Change to statSendStrategy: ").append(statreportstrategy).toString());
    }

    static void storeAppkeys(Context context, String s)
    {
        if (s != null)
        {
            StatPreferences.putString(context, "_mta_ky_tag_", StatCommonHelper.encode(s));
        }
    }

    private static boolean updateAppkeys(String s)
    {
        if (s != null)
        {
            if (appkey == null)
            {
                appkey = s;
                return true;
            }
            if (!appkey.contains(s))
            {
                appkey = (new StringBuilder()).append(appkey).append("|").append(s).toString();
                return true;
            }
        }
        return false;
    }

    static void updateCfg(OnlineConfig onlineconfig, JSONObject jsonobject)
    {
        Iterator iterator = jsonobject.keys();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        String s = (String)iterator.next();
        if (!s.equalsIgnoreCase("v")) goto _L4; else goto _L3
_L3:
        onlineconfig.version = jsonobject.getInt(s);
          goto _L5
        onlineconfig;
        logger.e(onlineconfig);
_L10:
        return;
_L4:
        if (!s.equalsIgnoreCase("c")) goto _L7; else goto _L6
_L6:
        s = jsonobject.getString("c");
        if (s.length() > 0)
        {
            onlineconfig.props = new JSONObject(s);
        }
          goto _L5
        onlineconfig;
        logger.e(onlineconfig);
        return;
_L7:
        if (!s.equalsIgnoreCase("m")) goto _L5; else goto _L8
_L8:
        onlineconfig.md5sum = jsonobject.getString("m");
          goto _L5
_L2:
        jsonobject = StatStore.getInstance(StatDispatcher.getApplicationContext());
        if (jsonobject == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        jsonobject.storeCfg(onlineconfig);
        if (onlineconfig.type != sdkCfg.type) goto _L10; else goto _L9
_L9:
        updateReportStrategy(onlineconfig.props);
        checkHibernate(onlineconfig.props);
        return;
          goto _L5
    }

    static void updateOnlineConfig(JSONObject jsonobject)
    {
        Iterator iterator = jsonobject.keys();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Object obj = (String)iterator.next();
        if (!((String) (obj)).equalsIgnoreCase(Integer.toString(sdkCfg.type))) goto _L4; else goto _L3
_L3:
        obj = jsonobject.getJSONObject(((String) (obj)));
        updateCfg(sdkCfg, ((JSONObject) (obj)));
          goto _L5
        jsonobject;
        logger.e(jsonobject);
_L2:
        return;
_L4:
        if (!((String) (obj)).equalsIgnoreCase(Integer.toString(userCfg.type)))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = jsonobject.getJSONObject(((String) (obj)));
        updateCfg(userCfg, ((JSONObject) (obj)));
          goto _L5
        if (!((String) (obj)).equalsIgnoreCase("rs")) goto _L2; else goto _L6
_L6:
        obj = StatReportStrategy.getStatReportStrategy(jsonobject.getInt(((String) (obj))));
        if (obj == null) goto _L5; else goto _L7
_L7:
        statSendStrategy = ((StatReportStrategy) (obj));
        logger.d((new StringBuilder()).append("Change to ReportStrategy:").append(((StatReportStrategy) (obj)).name()).toString());
          goto _L5
    }

    static void updateReportStrategy(JSONObject jsonobject)
    {
        try
        {
            jsonobject = StatReportStrategy.getStatReportStrategy(jsonobject.getInt("rs"));
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            logger.d("rs not found.");
            return;
        }
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        setStatSendStrategy(jsonobject);
        logger.debug((new StringBuilder()).append("Change to ReportStrategy: ").append(jsonobject.name()).toString());
    }

    static 
    {
        statSendStrategy = StatReportStrategy.APP_LAUNCH;
    }
}
