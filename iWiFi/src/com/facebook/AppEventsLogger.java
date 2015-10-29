// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            Session, Settings, LoggingBehavior, Request, 
//            Response, FacebookRequestError, FacebookException

public class AppEventsLogger
{
    private static class AccessTokenAppIdPair
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        private final String accessToken;
        private final String applicationId;

        private Object writeReplace()
        {
            return new SerializationProxyV1(accessToken, applicationId, null);
        }

        public boolean equals(Object obj)
        {
            if (obj instanceof AccessTokenAppIdPair)
            {
                if (Utility.areObjectsEqual(((AccessTokenAppIdPair) (obj = (AccessTokenAppIdPair)obj)).accessToken, accessToken) && Utility.areObjectsEqual(((AccessTokenAppIdPair) (obj)).applicationId, applicationId))
                {
                    return true;
                }
            }
            return false;
        }

        String getAccessToken()
        {
            return accessToken;
        }

        String getApplicationId()
        {
            return applicationId;
        }

        public int hashCode()
        {
            int j = 0;
            int i;
            if (accessToken == null)
            {
                i = 0;
            } else
            {
                i = accessToken.hashCode();
            }
            if (applicationId != null)
            {
                j = applicationId.hashCode();
            }
            return i ^ j;
        }

        AccessTokenAppIdPair(Session session)
        {
            this(session.getAccessToken(), session.getApplicationId());
        }

        AccessTokenAppIdPair(String s, String s1)
        {
            String s2 = s;
            if (Utility.isNullOrEmpty(s))
            {
                s2 = null;
            }
            accessToken = s2;
            applicationId = s1;
        }
    }

    private static class AccessTokenAppIdPair.SerializationProxyV1
        implements Serializable
    {

        private static final long serialVersionUID = 0xdd772aee317ab613L;
        private final String accessToken;
        private final String appId;

        private Object readResolve()
        {
            return new AccessTokenAppIdPair(accessToken, appId);
        }

        private AccessTokenAppIdPair.SerializationProxyV1(String s, String s1)
        {
            accessToken = s;
            appId = s1;
        }

        AccessTokenAppIdPair.SerializationProxyV1(String s, String s1, AccessTokenAppIdPair.SerializationProxyV1 serializationproxyv1)
        {
            this(s, s1);
        }
    }

    static class AppEvent
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        private static final HashSet validatedIdentifiers = new HashSet();
        private boolean isImplicit;
        private JSONObject jsonObject;
        private String name;

        private void validateIdentifier(String s)
        {
            if (s == null || s.length() == 0 || s.length() > 40)
            {
                String s1 = s;
                if (s == null)
                {
                    s1 = "<None Provided>";
                }
                throw new FacebookException(String.format("Identifier '%s' must be less than %d characters", new Object[] {
                    s1, Integer.valueOf(40)
                }));
            }
            boolean flag;
            synchronized (validatedIdentifiers)
            {
                flag = validatedIdentifiers.contains(s);
            }
            if (!flag)
            {
                if (!s.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"))
                {
                    break MISSING_BLOCK_LABEL_114;
                }
                synchronized (validatedIdentifiers)
                {
                    validatedIdentifiers.add(s);
                }
            }
            return;
            s;
            hashset;
            JVM INSTR monitorexit ;
            throw s;
            s;
            hashset;
            JVM INSTR monitorexit ;
            throw s;
            throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", new Object[] {
                s
            }));
        }

        private Object writeReplace()
        {
            return new SerializationProxyV1(jsonObject.toString(), isImplicit, null);
        }

        public boolean getIsImplicit()
        {
            return isImplicit;
        }

        public JSONObject getJSONObject()
        {
            return jsonObject;
        }

        public String getName()
        {
            return name;
        }

        public String toString()
        {
            return String.format("\"%s\", implicit: %b, json: %s", new Object[] {
                jsonObject.optString("_eventName"), Boolean.valueOf(isImplicit), jsonObject.toString()
            });
        }


        public AppEvent(String s, Double double1, Bundle bundle, boolean flag)
        {
            Object obj;
            validateIdentifier(s);
            name = s;
            isImplicit = flag;
            jsonObject = new JSONObject();
            try
            {
                jsonObject.put("_eventName", s);
                jsonObject.put("_logTime", System.currentTimeMillis() / 1000L);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", new Object[] {
                    s.toString()
                });
                jsonObject = null;
                return;
            }
            if (double1 == null)
            {
                break MISSING_BLOCK_LABEL_77;
            }
            jsonObject.put("_valueToSum", double1.doubleValue());
            if (isImplicit)
            {
                jsonObject.put("_implicitlyLogged", "1");
            }
            s = Settings.getAppVersion();
            if (s == null)
            {
                break MISSING_BLOCK_LABEL_115;
            }
            jsonObject.put("_appVersion", s);
            if (bundle == null) goto _L2; else goto _L1
_L1:
            s = bundle.keySet().iterator();
_L4:
            if (s.hasNext()) goto _L3; else goto _L2
_L2:
            if (!isImplicit)
            {
                Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Created app event '%s'", new Object[] {
                    jsonObject.toString()
                });
                return;
            }
            break MISSING_BLOCK_LABEL_279;
_L3:
            double1 = (String)s.next();
            validateIdentifier(double1);
            obj = bundle.get(double1);
            if (!(obj instanceof String) && !(obj instanceof Number))
            {
                throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", new Object[] {
                    obj, double1
                }));
            }
            jsonObject.put(double1, obj.toString());
              goto _L4
        }

        private AppEvent(String s, boolean flag)
            throws JSONException
        {
            jsonObject = new JSONObject(s);
            isImplicit = flag;
        }

        AppEvent(String s, boolean flag, AppEvent appevent)
            throws JSONException
        {
            this(s, flag);
        }
    }

    private static class AppEvent.SerializationProxyV1
        implements Serializable
    {

        private static final long serialVersionUID = 0xdd772aee317ab613L;
        private final boolean isImplicit;
        private final String jsonString;

        private Object readResolve()
            throws JSONException
        {
            return new AppEvent(jsonString, isImplicit, null);
        }

        private AppEvent.SerializationProxyV1(String s, boolean flag)
        {
            jsonString = s;
            isImplicit = flag;
        }

        AppEvent.SerializationProxyV1(String s, boolean flag, AppEvent.SerializationProxyV1 serializationproxyv1)
        {
            this(s, flag);
        }
    }

    private static class EventSuppression
    {

        private SuppressionTimeoutBehavior behavior;
        private int timeoutPeriod;

        SuppressionTimeoutBehavior getBehavior()
        {
            return behavior;
        }

        int getTimeoutPeriod()
        {
            return timeoutPeriod;
        }

        EventSuppression(int i, SuppressionTimeoutBehavior suppressiontimeoutbehavior)
        {
            timeoutPeriod = i;
            behavior = suppressiontimeoutbehavior;
        }
    }

    public static final class FlushBehavior extends Enum
    {

        public static final FlushBehavior AUTO;
        private static final FlushBehavior ENUM$VALUES[];
        public static final FlushBehavior EXPLICIT_ONLY;

        public static FlushBehavior valueOf(String s)
        {
            return (FlushBehavior)Enum.valueOf(com/facebook/AppEventsLogger$FlushBehavior, s);
        }

        public static FlushBehavior[] values()
        {
            FlushBehavior aflushbehavior[] = ENUM$VALUES;
            int i = aflushbehavior.length;
            FlushBehavior aflushbehavior1[] = new FlushBehavior[i];
            System.arraycopy(aflushbehavior, 0, aflushbehavior1, 0, i);
            return aflushbehavior1;
        }

        static 
        {
            AUTO = new FlushBehavior("AUTO", 0);
            EXPLICIT_ONLY = new FlushBehavior("EXPLICIT_ONLY", 1);
            ENUM$VALUES = (new FlushBehavior[] {
                AUTO, EXPLICIT_ONLY
            });
        }

        private FlushBehavior(String s, int i)
        {
            super(s, i);
        }
    }

    private static final class FlushReason extends Enum
    {

        public static final FlushReason EAGER_FLUSHING_EVENT;
        private static final FlushReason ENUM$VALUES[];
        public static final FlushReason EVENT_THRESHOLD;
        public static final FlushReason EXPLICIT;
        public static final FlushReason PERSISTED_EVENTS;
        public static final FlushReason SESSION_CHANGE;
        public static final FlushReason TIMER;

        public static FlushReason valueOf(String s)
        {
            return (FlushReason)Enum.valueOf(com/facebook/AppEventsLogger$FlushReason, s);
        }

        public static FlushReason[] values()
        {
            FlushReason aflushreason[] = ENUM$VALUES;
            int i = aflushreason.length;
            FlushReason aflushreason1[] = new FlushReason[i];
            System.arraycopy(aflushreason, 0, aflushreason1, 0, i);
            return aflushreason1;
        }

        static 
        {
            EXPLICIT = new FlushReason("EXPLICIT", 0);
            TIMER = new FlushReason("TIMER", 1);
            SESSION_CHANGE = new FlushReason("SESSION_CHANGE", 2);
            PERSISTED_EVENTS = new FlushReason("PERSISTED_EVENTS", 3);
            EVENT_THRESHOLD = new FlushReason("EVENT_THRESHOLD", 4);
            EAGER_FLUSHING_EVENT = new FlushReason("EAGER_FLUSHING_EVENT", 5);
            ENUM$VALUES = (new FlushReason[] {
                EXPLICIT, TIMER, SESSION_CHANGE, PERSISTED_EVENTS, EVENT_THRESHOLD, EAGER_FLUSHING_EVENT
            });
        }

        private FlushReason(String s, int i)
        {
            super(s, i);
        }
    }

    private static final class FlushResult extends Enum
    {

        private static final FlushResult ENUM$VALUES[];
        public static final FlushResult NO_CONNECTIVITY;
        public static final FlushResult SERVER_ERROR;
        public static final FlushResult SUCCESS;
        public static final FlushResult UNKNOWN_ERROR;

        public static FlushResult valueOf(String s)
        {
            return (FlushResult)Enum.valueOf(com/facebook/AppEventsLogger$FlushResult, s);
        }

        public static FlushResult[] values()
        {
            FlushResult aflushresult[] = ENUM$VALUES;
            int i = aflushresult.length;
            FlushResult aflushresult1[] = new FlushResult[i];
            System.arraycopy(aflushresult, 0, aflushresult1, 0, i);
            return aflushresult1;
        }

        static 
        {
            SUCCESS = new FlushResult("SUCCESS", 0);
            SERVER_ERROR = new FlushResult("SERVER_ERROR", 1);
            NO_CONNECTIVITY = new FlushResult("NO_CONNECTIVITY", 2);
            UNKNOWN_ERROR = new FlushResult("UNKNOWN_ERROR", 3);
            ENUM$VALUES = (new FlushResult[] {
                SUCCESS, SERVER_ERROR, NO_CONNECTIVITY, UNKNOWN_ERROR
            });
        }

        private FlushResult(String s, int i)
        {
            super(s, i);
        }
    }

    private static class FlushStatistics
    {

        public int numEvents;
        public FlushResult result;

        private FlushStatistics()
        {
            numEvents = 0;
            result = FlushResult.SUCCESS;
        }

        FlushStatistics(FlushStatistics flushstatistics)
        {
            this();
        }
    }

    static class PersistedEvents
    {

        static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
        private static Object staticLock = new Object();
        private Context context;
        private HashMap persistedEvents;

        public static void persistEvents(Context context1, AccessTokenAppIdPair accesstokenappidpair, SessionEventsState sessioneventsstate)
        {
            HashMap hashmap = new HashMap();
            hashmap.put(accesstokenappidpair, sessioneventsstate);
            persistEvents(context1, ((Map) (hashmap)));
        }

        public static void persistEvents(Context context1, Map map)
        {
            Object obj = staticLock;
            obj;
            JVM INSTR monitorenter ;
            context1 = readAndClearStore(context1);
            map = map.entrySet().iterator();
_L2:
            if (map.hasNext())
            {
                break MISSING_BLOCK_LABEL_39;
            }
            context1.write();
            return;
            java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
            List list = ((SessionEventsState)entry.getValue()).getEventsToPersist();
            if (list.size() != 0)
            {
                context1.addEvents((AccessTokenAppIdPair)entry.getKey(), list);
            }
            if (true) goto _L2; else goto _L1
_L1:
            context1;
            obj;
            JVM INSTR monitorexit ;
            throw context1;
        }

        public static PersistedEvents readAndClearStore(Context context1)
        {
            synchronized (staticLock)
            {
                context1 = new PersistedEvents(context1);
                context1.readAndClearStore();
            }
            return context1;
            context1;
            obj;
            JVM INSTR monitorexit ;
            throw context1;
        }

        private void readAndClearStore()
        {
            Object obj1;
            Object obj2;
            Object obj4;
            obj4 = null;
            obj1 = null;
            obj2 = null;
            Object obj = new ObjectInputStream(new BufferedInputStream(context.openFileInput("AppEventsLogger.persistedevents")));
            obj1 = (HashMap)((ObjectInputStream) (obj)).readObject();
            context.getFileStreamPath("AppEventsLogger.persistedevents").delete();
            persistedEvents = ((HashMap) (obj1));
            Utility.closeQuietly(((java.io.Closeable) (obj)));
            return;
            obj;
            obj = obj2;
_L6:
            Utility.closeQuietly(((java.io.Closeable) (obj)));
            return;
            Object obj3;
            obj3;
            obj = obj4;
_L4:
            obj1 = obj;
            Log.d(AppEventsLogger.TAG, (new StringBuilder("Got unexpected exception: ")).append(((Exception) (obj3)).toString()).toString());
            Utility.closeQuietly(((java.io.Closeable) (obj)));
            return;
            obj;
_L2:
            Utility.closeQuietly(((java.io.Closeable) (obj1)));
            throw obj;
            obj3;
            obj1 = obj;
            obj = obj3;
            if (true) goto _L2; else goto _L1
_L1:
            obj3;
            if (true) goto _L4; else goto _L3
_L3:
            FileNotFoundException filenotfoundexception;
            filenotfoundexception;
            if (true) goto _L6; else goto _L5
_L5:
        }

        private void write()
        {
            Object obj;
            Object obj2;
            obj = null;
            obj2 = null;
            Object obj1 = new ObjectOutputStream(new BufferedOutputStream(context.openFileOutput("AppEventsLogger.persistedevents", 0)));
            ((ObjectOutputStream) (obj1)).writeObject(persistedEvents);
            Utility.closeQuietly(((java.io.Closeable) (obj1)));
            return;
            obj;
            obj1 = obj2;
            obj2 = obj;
_L4:
            obj = obj1;
            Log.d(AppEventsLogger.TAG, (new StringBuilder("Got unexpected exception: ")).append(((Exception) (obj2)).toString()).toString());
            Utility.closeQuietly(((java.io.Closeable) (obj1)));
            return;
            obj1;
_L2:
            Utility.closeQuietly(((java.io.Closeable) (obj)));
            throw obj1;
            obj2;
            obj = obj1;
            obj1 = obj2;
            if (true) goto _L2; else goto _L1
_L1:
            obj2;
            if (true) goto _L4; else goto _L3
_L3:
        }

        public void addEvents(AccessTokenAppIdPair accesstokenappidpair, List list)
        {
            if (!persistedEvents.containsKey(accesstokenappidpair))
            {
                persistedEvents.put(accesstokenappidpair, new ArrayList());
            }
            ((List)persistedEvents.get(accesstokenappidpair)).addAll(list);
        }

        public List getEvents(AccessTokenAppIdPair accesstokenappidpair)
        {
            return (List)persistedEvents.get(accesstokenappidpair);
        }

        public Set keySet()
        {
            return persistedEvents.keySet();
        }


        private PersistedEvents(Context context1)
        {
            persistedEvents = new HashMap();
            context = context1;
        }
    }

    static class SessionEventsState
    {

        public static final String ENCODED_EVENTS_KEY = "encoded_events";
        public static final String EVENT_COUNT_KEY = "event_count";
        public static final String NUM_SKIPPED_KEY = "num_skipped";
        private final int MAX_ACCUMULATED_LOG_EVENTS = 1000;
        private List accumulatedEvents;
        private String attributionId;
        private List inFlightEvents;
        private int numSkippedEventsDueToFullBuffer;
        private String packageName;

        private byte[] getStringAsByteArray(String s)
        {
            try
            {
                s = s.getBytes("UTF-8");
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Utility.logd("Encoding exception: ", s);
                return null;
            }
            return s;
        }

        private void populateRequest(Request request, int i, JSONArray jsonarray, boolean flag, boolean flag1)
        {
            Object obj = com.facebook.model.GraphObject.Factory.create();
            ((GraphObject) (obj)).setProperty("event", "CUSTOM_APP_EVENTS");
            if (numSkippedEventsDueToFullBuffer > 0)
            {
                ((GraphObject) (obj)).setProperty("num_skipped_events", Integer.valueOf(i));
            }
            if (flag && attributionId != null)
            {
                ((GraphObject) (obj)).setProperty("attribution", attributionId);
            }
            Bundle bundle;
            if (flag1)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            ((GraphObject) (obj)).setProperty("application_tracking_enabled", Boolean.valueOf(flag));
            ((GraphObject) (obj)).setProperty("application_package_name", packageName);
            request.setGraphObject(((GraphObject) (obj)));
            bundle = request.getParameters();
            obj = bundle;
            if (bundle == null)
            {
                obj = new Bundle();
            }
            jsonarray = jsonarray.toString();
            if (jsonarray != null)
            {
                ((Bundle) (obj)).putByteArray("custom_events_file", getStringAsByteArray(jsonarray));
                request.setTag(jsonarray);
            }
            request.setParameters(((Bundle) (obj)));
        }

        public void accumulatePersistedEvents(List list)
        {
            this;
            JVM INSTR monitorenter ;
            accumulatedEvents.addAll(list);
            this;
            JVM INSTR monitorexit ;
            return;
            list;
            throw list;
        }

        public void addEvent(AppEvent appevent)
        {
            this;
            JVM INSTR monitorenter ;
            if (accumulatedEvents.size() + inFlightEvents.size() < 1000) goto _L2; else goto _L1
_L1:
            numSkippedEventsDueToFullBuffer = numSkippedEventsDueToFullBuffer + 1;
_L4:
            this;
            JVM INSTR monitorexit ;
            return;
_L2:
            accumulatedEvents.add(appevent);
            if (true) goto _L4; else goto _L3
_L3:
            appevent;
            throw appevent;
        }

        public void clearInFlightAndStats(boolean flag)
        {
            this;
            JVM INSTR monitorenter ;
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_20;
            }
            accumulatedEvents.addAll(inFlightEvents);
            inFlightEvents.clear();
            numSkippedEventsDueToFullBuffer = 0;
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        public int getAccumulatedEventCount()
        {
            this;
            JVM INSTR monitorenter ;
            int i = accumulatedEvents.size();
            this;
            JVM INSTR monitorexit ;
            return i;
            Exception exception;
            exception;
            throw exception;
        }

        public List getEventsToPersist()
        {
            this;
            JVM INSTR monitorenter ;
            List list;
            list = accumulatedEvents;
            accumulatedEvents = new ArrayList();
            this;
            JVM INSTR monitorexit ;
            return list;
            Exception exception;
            exception;
            throw exception;
        }

        public int populateRequest(Request request, boolean flag, boolean flag1, boolean flag2)
        {
            this;
            JVM INSTR monitorenter ;
            JSONArray jsonarray;
            Iterator iterator;
            int i;
            i = numSkippedEventsDueToFullBuffer;
            inFlightEvents.addAll(accumulatedEvents);
            accumulatedEvents.clear();
            jsonarray = new JSONArray();
            iterator = inFlightEvents.iterator();
_L5:
            if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
            if (jsonarray.length() != 0)
            {
                break MISSING_BLOCK_LABEL_116;
            }
            this;
            JVM INSTR monitorexit ;
            return 0;
_L2:
            AppEvent appevent = (AppEvent)iterator.next();
            if (flag) goto _L4; else goto _L3
_L3:
            if (appevent.getIsImplicit()) goto _L5; else goto _L4
_L4:
            jsonarray.put(appevent.getJSONObject());
              goto _L5
            request;
            this;
            JVM INSTR monitorexit ;
            throw request;
            this;
            JVM INSTR monitorexit ;
            populateRequest(request, i, jsonarray, flag1, flag2);
            return jsonarray.length();
        }

        public SessionEventsState(String s, String s1)
        {
            accumulatedEvents = new ArrayList();
            inFlightEvents = new ArrayList();
            attributionId = s;
            packageName = s1;
        }
    }

    private static final class SuppressionTimeoutBehavior extends Enum
    {

        private static final SuppressionTimeoutBehavior ENUM$VALUES[];
        public static final SuppressionTimeoutBehavior RESET_TIMEOUT_WHEN_LOG_ATTEMPTED;
        public static final SuppressionTimeoutBehavior RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL;

        public static SuppressionTimeoutBehavior valueOf(String s)
        {
            return (SuppressionTimeoutBehavior)Enum.valueOf(com/facebook/AppEventsLogger$SuppressionTimeoutBehavior, s);
        }

        public static SuppressionTimeoutBehavior[] values()
        {
            SuppressionTimeoutBehavior asuppressiontimeoutbehavior[] = ENUM$VALUES;
            int i = asuppressiontimeoutbehavior.length;
            SuppressionTimeoutBehavior asuppressiontimeoutbehavior1[] = new SuppressionTimeoutBehavior[i];
            System.arraycopy(asuppressiontimeoutbehavior, 0, asuppressiontimeoutbehavior1, 0, i);
            return asuppressiontimeoutbehavior1;
        }

        static 
        {
            RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL = new SuppressionTimeoutBehavior("RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL", 0);
            RESET_TIMEOUT_WHEN_LOG_ATTEMPTED = new SuppressionTimeoutBehavior("RESET_TIMEOUT_WHEN_LOG_ATTEMPTED", 1);
            ENUM$VALUES = (new SuppressionTimeoutBehavior[] {
                RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL, RESET_TIMEOUT_WHEN_LOG_ATTEMPTED
            });
        }

        private SuppressionTimeoutBehavior(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String ACTION_APP_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_FLUSHED";
    private static final int APP_ACTIVATE_SUPPRESSION_PERIOD_IN_SECONDS = 300;
    public static final String APP_EVENTS_EXTRA_FLUSH_RESULT = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT";
    public static final String APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED";
    private static final String APP_EVENT_PREFERENCES = "com.facebook.sdk.appEventPreferences";
    private static final int APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS = 0x15180;
    private static final int FLUSH_PERIOD_IN_SECONDS = 60;
    private static final int NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER = 100;
    private static final String TAG = com/facebook/AppEventsLogger.getCanonicalName();
    private static Context applicationContext;
    private static FlushBehavior flushBehavior;
    private static Timer flushTimer;
    private static Map mapEventNameToSuppress = new HashMap() {

            
            {
                put("fb_mobile_activate_app", new EventSuppression(300, SuppressionTimeoutBehavior.RESET_TIMEOUT_WHEN_LOG_ATTEMPTED));
            }
    };
    private static Map mapEventsToSuppressionTime = new HashMap();
    private static boolean requestInFlight;
    private static Map stateMap = new ConcurrentHashMap();
    private static Object staticLock = new Object();
    private static Timer supportsAttributionRecheckTimer;
    private final AccessTokenAppIdPair accessTokenAppId;
    private final Context context;

    private AppEventsLogger(Context context1, String s, Session session)
    {
        Validate.notNull(context1, "context");
        context = context1;
        Session session1 = session;
        if (session == null)
        {
            session1 = Session.getActiveSession();
        }
        if (session1 != null)
        {
            accessTokenAppId = new AccessTokenAppIdPair(session1);
        } else
        {
            session = s;
            if (s == null)
            {
                session = Utility.getMetadataApplicationId(context1);
            }
            accessTokenAppId = new AccessTokenAppIdPair(null, session);
        }
        synchronized (staticLock)
        {
            if (applicationContext == null)
            {
                applicationContext = context1.getApplicationContext();
            }
        }
        initializeTimersIfNeeded();
        return;
        context1;
        s;
        JVM INSTR monitorexit ;
        throw context1;
    }

    private static int accumulatePersistedEvents()
    {
        PersistedEvents persistedevents = PersistedEvents.readAndClearStore(applicationContext);
        int i = 0;
        Iterator iterator = persistedevents.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return i;
            }
            Object obj = (AccessTokenAppIdPair)iterator.next();
            SessionEventsState sessioneventsstate = getSessionEventsState(applicationContext, ((AccessTokenAppIdPair) (obj)));
            obj = persistedevents.getEvents(((AccessTokenAppIdPair) (obj)));
            sessioneventsstate.accumulatePersistedEvents(((List) (obj)));
            i += ((List) (obj)).size();
        } while (true);
    }

    public static void activateApp(Context context1)
    {
        activateApp(context1, Utility.getMetadataApplicationId(context1));
    }

    public static void activateApp(Context context1, String s)
    {
        if (context1 == null || s == null)
        {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        } else
        {
            Settings.publishInstallAsync(context1, s);
            (new AppEventsLogger(context1, s, null)).logEvent("fb_mobile_activate_app");
            return;
        }
    }

    private static FlushStatistics buildAndExecuteRequests(FlushReason flushreason, Set set)
    {
        FlushStatistics flushstatistics;
        ArrayList arraylist;
        boolean flag;
        flushstatistics = new FlushStatistics(null);
        flag = getLimitEventUsage(applicationContext);
        arraylist = new ArrayList();
        set = set.iterator();
_L7:
        if (set.hasNext()) goto _L2; else goto _L1
_L1:
        if (arraylist.size() <= 0) goto _L4; else goto _L3
_L3:
        Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Flushing %d events due to %s.", new Object[] {
            Integer.valueOf(flushstatistics.numEvents), flushreason.toString()
        });
        flushreason = arraylist.iterator();
_L5:
        Object obj;
        SessionEventsState sessioneventsstate;
        if (!flushreason.hasNext())
        {
            return flushstatistics;
        }
        ((Request)flushreason.next()).executeAndWait();
        continue; /* Loop/switch isn't completed */
_L2:
        obj = (AccessTokenAppIdPair)set.next();
        sessioneventsstate = getSessionEventsState(((AccessTokenAppIdPair) (obj)));
        if (sessioneventsstate != null)
        {
            obj = buildRequestForSession(((AccessTokenAppIdPair) (obj)), sessioneventsstate, flag, flushstatistics);
            if (obj != null)
            {
                arraylist.add(obj);
            }
        }
        continue; /* Loop/switch isn't completed */
        if (true) goto _L5; else goto _L4
_L4:
        return null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static Request buildRequestForSession(final AccessTokenAppIdPair accessTokenAppId, final SessionEventsState sessionEventsState, boolean flag, final FlushStatistics flushState)
    {
        Object obj = accessTokenAppId.getApplicationId();
        com.facebook.internal.Utility.FetchedAppSettings fetchedappsettings = Utility.queryAppSettings(((String) (obj)), false);
        final Request postRequest = Request.newPostRequest(null, String.format("%s/activities", new Object[] {
            obj
        }), null, null);
        Bundle bundle = postRequest.getParameters();
        obj = bundle;
        if (bundle == null)
        {
            obj = new Bundle();
        }
        ((Bundle) (obj)).putString("access_token", accessTokenAppId.getAccessToken());
        postRequest.setParameters(((Bundle) (obj)));
        int i = sessionEventsState.populateRequest(postRequest, fetchedappsettings.supportsImplicitLogging(), fetchedappsettings.supportsAttribution(), flag);
        if (i == 0)
        {
            return null;
        } else
        {
            flushState.numEvents = flushState.numEvents + i;
            postRequest.setCallback(new Request.Callback() {

                private final AccessTokenAppIdPair val$accessTokenAppId;
                private final FlushStatistics val$flushState;
                private final Request val$postRequest;
                private final SessionEventsState val$sessionEventsState;

                public void onCompleted(Response response)
                {
                    AppEventsLogger.handleResponse(accessTokenAppId, postRequest, response, sessionEventsState, flushState);
                }

            
            {
                accessTokenAppId = accesstokenappidpair;
                postRequest = request;
                sessionEventsState = sessioneventsstate;
                flushState = flushstatistics;
                super();
            }
            });
            return postRequest;
        }
    }

    static void eagerFlush()
    {
        if (getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY)
        {
            flush(FlushReason.EAGER_FLUSHING_EVENT);
        }
    }

    private static void flush(final FlushReason reason)
    {
        Settings.getExecutor().execute(new Runnable() {

            private final FlushReason val$reason;

            public void run()
            {
                AppEventsLogger.flushAndWait(reason);
            }

            
            {
                reason = flushreason;
                super();
            }
        });
    }

    private static void flushAndWait(FlushReason flushreason)
    {
label0:
        {
            synchronized (staticLock)
            {
                if (!requestInFlight)
                {
                    break label0;
                }
            }
            return;
        }
        HashSet hashset;
        requestInFlight = true;
        hashset = new HashSet(stateMap.keySet());
        obj;
        JVM INSTR monitorexit ;
        accumulatePersistedEvents();
        obj = null;
        try
        {
            flushreason = buildAndExecuteRequests(flushreason, hashset);
        }
        // Misplaced declaration of an exception variable
        catch (FlushReason flushreason)
        {
            Log.d(TAG, (new StringBuilder("Caught unexpected exception while flushing: ")).append(flushreason.toString()).toString());
            flushreason = ((FlushReason) (obj));
        }
        synchronized (staticLock)
        {
            requestInFlight = false;
        }
        if (flushreason != null)
        {
            obj = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
            ((Intent) (obj)).putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", ((FlushStatistics) (flushreason)).numEvents);
            ((Intent) (obj)).putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", ((FlushStatistics) (flushreason)).result);
            LocalBroadcastManager.getInstance(applicationContext).sendBroadcast(((Intent) (obj)));
            return;
        } else
        {
            return;
        }
        flushreason;
        obj;
        JVM INSTR monitorexit ;
        throw flushreason;
        flushreason;
        obj;
        JVM INSTR monitorexit ;
        throw flushreason;
    }

    private static void flushIfNecessary()
    {
        synchronized (staticLock)
        {
            if (getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY && getAccumulatedEventCount() > 100)
            {
                flush(FlushReason.EVENT_THRESHOLD);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static int getAccumulatedEventCount()
    {
        Object obj = staticLock;
        obj;
        JVM INSTR monitorenter ;
        int i = 0;
        Iterator iterator = stateMap.values().iterator();
_L1:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_35;
        }
        obj;
        JVM INSTR monitorexit ;
        return i;
        i += ((SessionEventsState)iterator.next()).getAccumulatedEventCount();
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static FlushBehavior getFlushBehavior()
    {
        FlushBehavior flushbehavior;
        synchronized (staticLock)
        {
            flushbehavior = flushBehavior;
        }
        return flushbehavior;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static boolean getLimitEventUsage(Context context1)
    {
        return context1.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    private static SessionEventsState getSessionEventsState(Context context1, AccessTokenAppIdPair accesstokenappidpair)
    {
        Object obj = staticLock;
        obj;
        JVM INSTR monitorenter ;
        SessionEventsState sessioneventsstate1 = (SessionEventsState)stateMap.get(accesstokenappidpair);
        SessionEventsState sessioneventsstate;
        sessioneventsstate = sessioneventsstate1;
        if (sessioneventsstate1 != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        sessioneventsstate = new SessionEventsState(Settings.getAttributionId(context1.getContentResolver()), context1.getPackageName());
        stateMap.put(accesstokenappidpair, sessioneventsstate);
        obj;
        JVM INSTR monitorexit ;
        return sessioneventsstate;
        context1;
        obj;
        JVM INSTR monitorexit ;
        throw context1;
    }

    private static SessionEventsState getSessionEventsState(AccessTokenAppIdPair accesstokenappidpair)
    {
        synchronized (staticLock)
        {
            accesstokenappidpair = (SessionEventsState)stateMap.get(accesstokenappidpair);
        }
        return accesstokenappidpair;
        accesstokenappidpair;
        obj;
        JVM INSTR monitorexit ;
        throw accesstokenappidpair;
    }

    private static void handleResponse(AccessTokenAppIdPair accesstokenappidpair, Request request, Response response, SessionEventsState sessioneventsstate, FlushStatistics flushstatistics)
    {
        FacebookRequestError facebookrequesterror = response.getError();
        String s = "Success";
        FlushResult flushresult = FlushResult.SUCCESS;
        boolean flag;
        if (facebookrequesterror != null)
        {
            if (facebookrequesterror.getErrorCode() == -1)
            {
                s = "Failed: No Connectivity";
                flushresult = FlushResult.NO_CONNECTIVITY;
            } else
            {
                s = String.format("Failed:\n  Response: %s\n  Error %s", new Object[] {
                    response.toString(), facebookrequesterror.toString()
                });
                flushresult = FlushResult.SERVER_ERROR;
            }
        }
        if (Settings.isLoggingBehaviorEnabled(LoggingBehavior.APP_EVENTS))
        {
            response = (String)request.getTag();
            try
            {
                response = (new JSONArray(response)).toString(2);
            }
            // Misplaced declaration of an exception variable
            catch (Response response)
            {
                response = "<Can't encode events for debug logging>";
            }
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", new Object[] {
                request.getGraphObject().toString(), s, response
            });
        }
        if (facebookrequesterror != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        sessioneventsstate.clearInFlightAndStats(flag);
        if (flushresult == FlushResult.NO_CONNECTIVITY)
        {
            PersistedEvents.persistEvents(applicationContext, accesstokenappidpair, sessioneventsstate);
        }
        if (flushresult != FlushResult.SUCCESS && flushstatistics.result != FlushResult.NO_CONNECTIVITY)
        {
            flushstatistics.result = flushresult;
        }
    }

    private static void initializeTimersIfNeeded()
    {
label0:
        {
            synchronized (staticLock)
            {
                if (flushTimer == null)
                {
                    break label0;
                }
            }
            return;
        }
        flushTimer = new Timer();
        supportsAttributionRecheckTimer = new Timer();
        obj;
        JVM INSTR monitorexit ;
        flushTimer.schedule(new TimerTask() {

            public void run()
            {
                if (AppEventsLogger.getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY)
                {
                    AppEventsLogger.flushAndWait(FlushReason.TIMER);
                }
            }

        }, 0L, 60000L);
        supportsAttributionRecheckTimer.schedule(new TimerTask() {

            public void run()
            {
                HashSet hashset = new HashSet();
                Object obj1 = AppEventsLogger.staticLock;
                obj1;
                JVM INSTR monitorenter ;
                Iterator iterator = AppEventsLogger.stateMap.keySet().iterator();
_L3:
                if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
                obj1 = hashset.iterator();
_L4:
                if (!((Iterator) (obj1)).hasNext())
                {
                    return;
                }
                break MISSING_BLOCK_LABEL_83;
_L2:
                hashset.add(((AccessTokenAppIdPair)iterator.next()).getApplicationId());
                  goto _L3
                Exception exception1;
                exception1;
                obj1;
                JVM INSTR monitorexit ;
                throw exception1;
                Utility.queryAppSettings((String)((Iterator) (obj1)).next(), true);
                  goto _L4
            }

        }, 0L, 0x5265c00L);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void logEvent(Context context1, AppEvent appevent, AccessTokenAppIdPair accesstokenappidpair)
    {
        if (shouldSuppressEvent(appevent))
        {
            return;
        } else
        {
            getSessionEventsState(context1, accesstokenappidpair).addEvent(appevent);
            flushIfNecessary();
            return;
        }
    }

    private void logEvent(String s, Double double1, Bundle bundle, boolean flag)
    {
        s = new AppEvent(s, double1, bundle, flag);
        logEvent(context, ((AppEvent) (s)), accessTokenAppId);
    }

    public static AppEventsLogger newLogger(Context context1)
    {
        return new AppEventsLogger(context1, null, null);
    }

    public static AppEventsLogger newLogger(Context context1, Session session)
    {
        return new AppEventsLogger(context1, null, session);
    }

    public static AppEventsLogger newLogger(Context context1, String s)
    {
        return new AppEventsLogger(context1, s, null);
    }

    public static AppEventsLogger newLogger(Context context1, String s, Session session)
    {
        return new AppEventsLogger(context1, s, session);
    }

    private static void notifyDeveloperError(String s)
    {
        Logger.log(LoggingBehavior.DEVELOPER_ERRORS, "AppEvents", s);
    }

    public static void onContextStop()
    {
        PersistedEvents.persistEvents(applicationContext, stateMap);
    }

    public static void setFlushBehavior(FlushBehavior flushbehavior)
    {
        synchronized (staticLock)
        {
            flushBehavior = flushbehavior;
        }
        return;
        flushbehavior;
        obj;
        JVM INSTR monitorexit ;
        throw flushbehavior;
    }

    public static void setLimitEventUsage(Context context1, boolean flag)
    {
        context1 = context1.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit();
        context1.putBoolean("limitEventUsage", flag);
        context1.commit();
    }

    private static boolean shouldSuppressEvent(AppEvent appevent)
    {
        EventSuppression eventsuppression;
        boolean flag;
        boolean flag1;
        flag = false;
        flag1 = false;
        eventsuppression = (EventSuppression)mapEventNameToSuppress.get(appevent.getName());
        if (eventsuppression != null) goto _L2; else goto _L1
_L1:
        return flag1;
_L2:
        Date date = (Date)mapEventsToSuppressionTime.get(appevent.getName());
        if (date == null)
        {
            flag = false;
        } else
        if ((new Date()).getTime() - date.getTime() < (long)(eventsuppression.getTimeoutPeriod() * 1000))
        {
            flag = true;
        }
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = flag;
        if (eventsuppression.getBehavior() != SuppressionTimeoutBehavior.RESET_TIMEOUT_WHEN_LOG_ATTEMPTED) goto _L1; else goto _L3
_L3:
        mapEventsToSuppressionTime.put(appevent.getName(), new Date());
        return flag;
    }

    public void flush()
    {
        flush(FlushReason.EXPLICIT);
    }

    public String getApplicationId()
    {
        return accessTokenAppId.getApplicationId();
    }

    boolean isValidForSession(Session session)
    {
        session = new AccessTokenAppIdPair(session);
        return accessTokenAppId.equals(session);
    }

    public void logEvent(String s)
    {
        logEvent(s, ((Bundle) (null)));
    }

    public void logEvent(String s, double d)
    {
        logEvent(s, d, ((Bundle) (null)));
    }

    public void logEvent(String s, double d, Bundle bundle)
    {
        logEvent(s, Double.valueOf(d), bundle, false);
    }

    public void logEvent(String s, Bundle bundle)
    {
        logEvent(s, null, bundle, false);
    }

    public void logPurchase(BigDecimal bigdecimal, Currency currency)
    {
        logPurchase(bigdecimal, currency, null);
    }

    public void logPurchase(BigDecimal bigdecimal, Currency currency, Bundle bundle)
    {
        if (bigdecimal == null)
        {
            notifyDeveloperError("purchaseAmount cannot be null");
            return;
        }
        if (currency == null)
        {
            notifyDeveloperError("currency cannot be null");
            return;
        }
        Bundle bundle1 = bundle;
        if (bundle == null)
        {
            bundle1 = new Bundle();
        }
        bundle1.putString("fb_currency", currency.getCurrencyCode());
        logEvent("fb_mobile_purchase", bigdecimal.doubleValue(), bundle1);
        eagerFlush();
    }

    public void logSdkEvent(String s, Double double1, Bundle bundle)
    {
        logEvent(s, double1, bundle, true);
    }

    static 
    {
        flushBehavior = FlushBehavior.AUTO;
    }





}
