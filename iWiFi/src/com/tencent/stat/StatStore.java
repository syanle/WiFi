// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.User;
import com.tencent.stat.event.Event;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat:
//            StatConfig, StatDispatchCallback, StatDispatcher

public class StatStore
{
    static class StatStoreHelper extends SQLiteOpenHelper
    {

        private static String DATABASE_NAME = "tencent_analysis.db";
        private static int DATABASE_VERSION = 3;

        private void upgradeEventsToVer3(SQLiteDatabase sqlitedatabase)
        {
            Object obj = sqlitedatabase.query("events", null, null, null, null, null, null);
            Object obj1 = new ArrayList();
            for (; ((Cursor) (obj)).moveToNext(); ((List) (obj1)).add(new StoredEvent(((Cursor) (obj)).getLong(0), ((Cursor) (obj)).getString(1), ((Cursor) (obj)).getInt(2), ((Cursor) (obj)).getInt(3)))) { }
            obj = new ContentValues();
            StoredEvent storedevent;
            for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); sqlitedatabase.update("events", ((ContentValues) (obj)), "event_id=?", new String[] {
        Long.toString(storedevent.id)
    }))
            {
                storedevent = (StoredEvent)((Iterator) (obj1)).next();
                ((ContentValues) (obj)).put("content", StatCommonHelper.encode(storedevent.content));
            }

        }

        private void upgradeUserToVer3(SQLiteDatabase sqlitedatabase)
        {
            String s = null;
            Cursor cursor = sqlitedatabase.query("user", null, null, null, null, null, null);
            ContentValues contentvalues = new ContentValues();
            if (cursor.moveToNext())
            {
                s = cursor.getString(0);
                cursor.getInt(1);
                cursor.getString(2);
                cursor.getLong(3);
                contentvalues.put("uid", StatCommonHelper.encode(s));
            }
            if (s != null)
            {
                sqlitedatabase.update("user", contentvalues, "uid=?", new String[] {
                    s
                });
            }
        }

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            sqlitedatabase.execSQL("create table if not exists events(event_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, content TEXT, status INTEGER, send_count INTEGER, timestamp LONG)");
            sqlitedatabase.execSQL("create table if not exists user(uid TEXT PRIMARY KEY, user_type INTEGER, app_ver TEXT, ts INTEGER)");
            sqlitedatabase.execSQL("create table if not exists config(type INTEGER PRIMARY KEY NOT NULL, content TEXT, md5sum TEXT, version INTEGER)");
            sqlitedatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            StatStore.logger.debug((new StringBuilder()).append("upgrade DB from oldVersion ").append(i).append(" to newVersion ").append(j).toString());
            if (i == 1)
            {
                sqlitedatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
                upgradeUserToVer3(sqlitedatabase);
                upgradeEventsToVer3(sqlitedatabase);
            }
            if (i == 2)
            {
                upgradeUserToVer3(sqlitedatabase);
                upgradeEventsToVer3(sqlitedatabase);
            }
        }


        public StatStoreHelper(Context context)
        {
            super(context, DATABASE_NAME, null, DATABASE_VERSION);
        }
    }

    static class StoredEvent
    {

        String content;
        long id;
        int send_count;
        int status;

        public StoredEvent(long l, String s, int i, int j)
        {
            id = l;
            content = s;
            status = i;
            send_count = j;
        }
    }


    private static StatStore instance = null;
    private static StatLogger logger = StatCommonHelper.getLogger();
    Handler handler;
    private StatStoreHelper helper;
    private HashMap kvMap;
    volatile int numStoredEvents;
    User user;

    private StatStore(Context context)
    {
        handler = null;
        numStoredEvents = 0;
        user = null;
        kvMap = new HashMap();
        try
        {
            HandlerThread handlerthread = new HandlerThread("StatStore");
            handlerthread.start();
            logger.w((new StringBuilder()).append("Launch store thread:").append(handlerthread).toString());
            handler = new Handler(handlerthread.getLooper());
            context = context.getApplicationContext();
            helper = new StatStoreHelper(context);
            helper.getWritableDatabase();
            helper.getReadableDatabase();
            getUser(context);
            loadConfig();
            loadKeyValues();
            handler.post(new Runnable() {

                final StatStore this$0;

                public void run()
                {
                    loadUnsentEventCount();
                }

            
            {
                this$0 = StatStore.this;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            logger.e(context);
        }
    }

    private void directDeleteEvents(List list)
    {
        logger.i((new StringBuilder()).append("Delete ").append(list.size()).append(" sent events in thread:").append(Thread.currentThread()).toString());
        try
        {
            helper.getWritableDatabase().beginTransaction();
            for (list = list.iterator(); list.hasNext();)
            {
                StoredEvent storedevent = (StoredEvent)list.next();
                numStoredEvents = numStoredEvents - helper.getWritableDatabase().delete("events", "event_id = ?", new String[] {
                    Long.toString(storedevent.id)
                });
            }

            break MISSING_BLOCK_LABEL_136;
        }
        // Misplaced declaration of an exception variable
        catch (List list) { }
        finally
        {
            try
            {
                helper.getWritableDatabase().endTransaction();
            }
            catch (SQLiteException sqliteexception)
            {
                logger.e(sqliteexception);
            }
            throw list;
        }
        logger.e(list);
        try
        {
            helper.getWritableDatabase().endTransaction();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            logger.e(list);
        }
        break MISSING_BLOCK_LABEL_191;
        helper.getWritableDatabase().setTransactionSuccessful();
        numStoredEvents = (int)DatabaseUtils.queryNumEntries(helper.getReadableDatabase(), "events");
        try
        {
            helper.getWritableDatabase().endTransaction();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            logger.e(list);
        }
        return;
    }

    private void directUpdateEvents(List list, int i)
    {
        logger.i((new StringBuilder()).append("Update ").append(list.size()).append(" sending events to status:").append(i).append(" in thread:").append(Thread.currentThread()).toString());
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        contentvalues.put("status", Integer.toString(i));
        helper.getWritableDatabase().beginTransaction();
        list = list.iterator();
_L3:
        StoredEvent storedevent;
        if (!list.hasNext())
        {
            break MISSING_BLOCK_LABEL_319;
        }
        storedevent = (StoredEvent)list.next();
        if (storedevent.send_count + 1 <= StatConfig.getMaxSendRetryCount()) goto _L2; else goto _L1
_L1:
        numStoredEvents = numStoredEvents - helper.getWritableDatabase().delete("events", "event_id=?", new String[] {
            Long.toString(storedevent.id)
        });
          goto _L3
        list;
        logger.e(list);
        try
        {
            helper.getWritableDatabase().endTransaction();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            logger.e(list);
        }
        break MISSING_BLOCK_LABEL_374;
_L2:
        contentvalues.put("send_count", Integer.valueOf(storedevent.send_count + 1));
        logger.i((new StringBuilder()).append("Update event:").append(storedevent.id).append(" for content:").append(contentvalues).toString());
        i = helper.getWritableDatabase().update("events", contentvalues, "event_id=?", new String[] {
            Long.toString(storedevent.id)
        });
        if (i > 0) goto _L3; else goto _L4
_L4:
        logger.e((new StringBuilder()).append("Failed to update db, error code:").append(Integer.toString(i)).toString());
          goto _L3
        list;
        try
        {
            helper.getWritableDatabase().endTransaction();
        }
        catch (SQLiteException sqliteexception)
        {
            logger.e(sqliteexception);
        }
        throw list;
        helper.getWritableDatabase().setTransactionSuccessful();
        numStoredEvents = (int)DatabaseUtils.queryNumEntries(helper.getReadableDatabase(), "events");
        try
        {
            helper.getWritableDatabase().endTransaction();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            logger.e(list);
        }
        return;
    }

    public static StatStore getInstance()
    {
        return instance;
    }

    public static StatStore getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new StatStore(context);
        }
        return instance;
    }

    private void loadKeyValues()
    {
        Object obj1 = helper.getReadableDatabase().query("keyvalues", null, null, null, null, null, null);
_L4:
        Object obj = obj1;
        if (!((Cursor) (obj1)).moveToNext()) goto _L2; else goto _L1
_L1:
        obj = obj1;
        kvMap.put(((Cursor) (obj1)).getString(0), ((Cursor) (obj1)).getString(1));
        if (true) goto _L4; else goto _L3
_L3:
        SQLiteException sqliteexception;
        sqliteexception;
_L10:
        obj = obj1;
        logger.e(sqliteexception);
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
_L6:
        return;
_L2:
        if (obj1 == null) goto _L6; else goto _L5
_L5:
        ((Cursor) (obj1)).close();
        return;
        obj1;
        obj = null;
_L8:
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        throw obj1;
        obj1;
        if (true) goto _L8; else goto _L7
_L7:
        sqliteexception;
        obj1 = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private void loadUnsentEventCount()
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("status", Integer.valueOf(1));
        helper.getWritableDatabase().update("events", contentvalues, "status=?", new String[] {
            Long.toString(2L)
        });
        numStoredEvents = (int)DatabaseUtils.queryNumEntries(helper.getReadableDatabase(), "events");
        logger.i((new StringBuilder()).append("Total ").append(numStoredEvents).append(" unsent events.").toString());
    }

    private void peekEvents(List list, int i)
    {
        SQLiteException sqliteexception = null;
        Object obj;
        obj = helper.getReadableDatabase();
        String s = Integer.toString(1);
        String s1 = Integer.toString(i);
        obj = ((SQLiteDatabase) (obj)).query("events", null, "status=?", new String[] {
            s
        }, null, null, "event_id", s1);
        while (((Cursor) (obj)).moveToNext()) 
        {
            list.add(new StoredEvent(((Cursor) (obj)).getLong(0), StatCommonHelper.decode(((Cursor) (obj)).getString(1)), ((Cursor) (obj)).getInt(2), ((Cursor) (obj)).getInt(3)));
        }
          goto _L1
        sqliteexception;
        list = ((List) (obj));
        obj = sqliteexception;
_L7:
        logger.e(((Exception) (obj)));
        if (list != null)
        {
            list.close();
        }
_L3:
        return;
_L1:
        if (obj == null) goto _L3; else goto _L2
_L2:
        ((Cursor) (obj)).close();
        return;
        list;
        obj = sqliteexception;
_L5:
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        throw list;
        list;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        obj = list;
        list = exception;
        if (true) goto _L5; else goto _L4
_L4:
        obj;
        list = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    void deleteEvents(final List evs)
    {
        if (Thread.currentThread().getId() == handler.getLooper().getThread().getId())
        {
            directDeleteEvents(evs);
            return;
        }
        try
        {
            handler.post(new Runnable() {

                final StatStore this$0;
                final List val$evs;

                public void run()
                {
                    directDeleteEvents(evs);
                }

            
            {
                this$0 = StatStore.this;
                evs = list;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (final List evs)
        {
            logger.e(evs);
        }
        return;
    }

    void directStoreEvent(Event event, StatDispatchCallback statdispatchcallback)
    {
        if (StatConfig.getMaxStoreEventCount() > 0)
        {
            if (numStoredEvents > StatConfig.getMaxStoreEventCount())
            {
                logger.warn("Too many events stored in db.");
                numStoredEvents = numStoredEvents - helper.getWritableDatabase().delete("events", "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)", null);
            }
            ContentValues contentvalues = new ContentValues();
            String s = StatCommonHelper.encode(event.toJsonString());
            contentvalues.put("content", s);
            contentvalues.put("send_count", "0");
            contentvalues.put("status", Integer.toString(1));
            contentvalues.put("timestamp", Long.valueOf(event.getTimestamp()));
            if (helper.getWritableDatabase().insert("events", null, contentvalues) == -1L)
            {
                logger.error((new StringBuilder()).append("Failed to store event:").append(s).toString());
                return;
            }
            numStoredEvents = numStoredEvents + 1;
            if (statdispatchcallback != null)
            {
                statdispatchcallback.onDispatchSuccess();
                return;
            }
        }
    }

    public int getNumStoredEvents()
    {
        return numStoredEvents;
    }

    public User getUser(Context context)
    {
        if (user != null)
        {
            return user;
        }
        Object obj1 = helper.getReadableDatabase().query("user", null, null, null, null, null, null, null);
        int i = 0;
        if (!((Cursor) (obj1)).moveToNext()) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj2;
        String s1;
        int l;
        long l1;
        long l3;
        s1 = ((Cursor) (obj1)).getString(0);
        obj2 = StatCommonHelper.decode(s1);
        l = ((Cursor) (obj1)).getInt(1);
        obj = ((Cursor) (obj1)).getString(2);
        l1 = ((Cursor) (obj1)).getLong(3);
        l3 = System.currentTimeMillis() / 1000L;
        if (l == 1) goto _L4; else goto _L3
_L3:
        if (StatCommonHelper.getDateFormat(l1 * 1000L).equals(StatCommonHelper.getDateFormat(1000L * l3))) goto _L4; else goto _L5
_L5:
        i = 1;
_L33:
        Object obj3;
        String as[];
        Object obj6;
        String s;
        int j;
        int k;
        if (!((String) (obj)).equals(StatCommonHelper.getAppVersion(context)))
        {
            j = i | 2;
        } else
        {
            j = i;
        }
        as = ((String) (obj2)).split(",");
        if (as == null) goto _L7; else goto _L6
_L6:
        if (as.length <= 0) goto _L7; else goto _L8
_L8:
        obj = as[0];
        if (obj == null) goto _L10; else goto _L9
_L9:
        if (((String) (obj)).length() >= 11) goto _L11; else goto _L10
_L10:
        obj3 = StatCommonHelper.getDeviceID(context);
        if (obj3 == null) goto _L13; else goto _L12
_L12:
        if (((String) (obj3)).length() > 10)
        {
            i = 1;
            obj = obj3;
            break MISSING_BLOCK_LABEL_766;
        }
          goto _L13
_L24:
        if (as == null) goto _L15; else goto _L14
_L14:
        if (as.length < 2) goto _L15; else goto _L16
_L16:
        obj6 = as[1];
        obj3 = (new StringBuilder()).append(((String) (obj2))).append(",").append(((String) (obj6))).toString();
        k = i;
_L26:
        user = new User(((String) (obj2)), ((String) (obj6)), j);
        obj = new ContentValues();
        ((ContentValues) (obj)).put("uid", StatCommonHelper.encode(((String) (obj3))));
        ((ContentValues) (obj)).put("user_type", Integer.valueOf(j));
        ((ContentValues) (obj)).put("app_ver", StatCommonHelper.getAppVersion(context));
        ((ContentValues) (obj)).put("ts", Long.valueOf(l3));
        if (k == 0)
        {
            break MISSING_BLOCK_LABEL_369;
        }
        helper.getWritableDatabase().update("user", ((ContentValues) (obj)), "uid=?", new String[] {
            s1
        });
        if (j == l) goto _L18; else goto _L17
_L17:
        helper.getWritableDatabase().replace("user", null, ((ContentValues) (obj)));
        i = 1;
_L2:
        if (i != 0) goto _L20; else goto _L19
_L19:
        obj2 = StatCommonHelper.getUserID(context);
        obj3 = StatCommonHelper.getMacId(context);
        if (obj3 == null) goto _L22; else goto _L21
_L21:
        if (((String) (obj3)).length() <= 0) goto _L22; else goto _L23
_L23:
        obj = (new StringBuilder()).append(((String) (obj2))).append(",").append(((String) (obj3))).toString();
_L32:
        long l2 = System.currentTimeMillis() / 1000L;
        context = StatCommonHelper.getAppVersion(context);
        obj6 = new ContentValues();
        ((ContentValues) (obj6)).put("uid", StatCommonHelper.encode(((String) (obj))));
        ((ContentValues) (obj6)).put("user_type", Integer.valueOf(0));
        ((ContentValues) (obj6)).put("app_ver", context);
        ((ContentValues) (obj6)).put("ts", Long.valueOf(l2));
        helper.getWritableDatabase().insert("user", null, ((ContentValues) (obj6)));
        user = new User(((String) (obj2)), ((String) (obj3)), 0);
_L20:
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
_L28:
        return user;
_L7:
        obj = StatCommonHelper.getUserID(context);
        obj2 = obj;
        i = 1;
          goto _L24
_L15:
        s = StatCommonHelper.getMacId(context);
        obj6 = s;
        k = i;
        obj3 = obj;
        if (s == null) goto _L26; else goto _L25
_L25:
        obj6 = s;
        k = i;
        obj3 = obj;
        if (s.length() <= 0) goto _L26; else goto _L27
_L27:
        obj3 = (new StringBuilder()).append(((String) (obj2))).append(",").append(s).toString();
        k = 1;
        obj6 = s;
          goto _L26
        obj;
        context = null;
_L31:
        logger.e(obj);
        if (context != null)
        {
            context.close();
        }
          goto _L28
        context;
        obj1 = null;
_L30:
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
        throw context;
        context;
        continue; /* Loop/switch isn't completed */
        obj;
        obj1 = context;
        context = ((Context) (obj));
        if (true) goto _L30; else goto _L29
_L29:
        obj;
        context = ((Context) (obj1));
          goto _L31
_L22:
        obj = obj2;
          goto _L32
_L18:
        i = 1;
          goto _L2
_L13:
        i = 0;
        break MISSING_BLOCK_LABEL_766;
_L11:
        i = 0;
        Object obj4 = obj;
        obj = obj2;
        obj2 = obj4;
          goto _L24
_L4:
        i = l;
          goto _L33
        Object obj5 = obj;
        obj = obj2;
        obj2 = obj5;
          goto _L24
    }

    void loadConfig()
    {
        handler.post(new Runnable() {

            final StatStore this$0;

            public void run()
            {
                Object obj1 = helper.getReadableDatabase().query("config", null, null, null, null, null, null);
_L4:
                Object obj = obj1;
                if (!((Cursor) (obj1)).moveToNext()) goto _L2; else goto _L1
_L1:
                obj = obj1;
                int i = ((Cursor) (obj1)).getInt(0);
                obj = obj1;
                String s = ((Cursor) (obj1)).getString(1);
                obj = obj1;
                String s1 = ((Cursor) (obj1)).getString(2);
                obj = obj1;
                int j = ((Cursor) (obj1)).getInt(3);
                obj = obj1;
                StatConfig.OnlineConfig onlineconfig = new StatConfig.OnlineConfig(i);
                obj = obj1;
                onlineconfig.type = i;
                obj = obj1;
                onlineconfig.props = new JSONObject(s);
                obj = obj1;
                onlineconfig.md5sum = s1;
                obj = obj1;
                onlineconfig.version = j;
                obj = obj1;
                StatConfig.setConfig(onlineconfig);
                if (true) goto _L4; else goto _L3
_L3:
                Exception exception;
                exception;
_L10:
                obj = obj1;
                StatStore.logger.e(exception);
                if (obj1 != null)
                {
                    ((Cursor) (obj1)).close();
                }
_L6:
                return;
_L2:
                if (obj1 == null) goto _L6; else goto _L5
_L5:
                ((Cursor) (obj1)).close();
                return;
                obj1;
                obj = null;
_L8:
                if (obj != null)
                {
                    ((Cursor) (obj)).close();
                }
                throw obj1;
                obj1;
                if (true) goto _L8; else goto _L7
_L7:
                exception;
                obj1 = null;
                if (true) goto _L10; else goto _L9
_L9:
            }

            
            {
                this$0 = StatStore.this;
                super();
            }
        });
    }

    void loadEvents(final int maxNumber)
    {
        handler.post(new Runnable() {

            final StatStore this$0;
            final int val$maxNumber;

            public void run()
            {
                if (numStoredEvents != 0)
                {
                    StatStore.logger.i((new StringBuilder()).append("Load ").append(Integer.toString(numStoredEvents)).append(" unsent events").toString());
                    ArrayList arraylist = new ArrayList();
                    final ArrayList evs = new ArrayList();
                    int i = maxNumber;
                    if (i == -1 || i > StatConfig.getMaxLoadEventCount())
                    {
                        i = StatConfig.getMaxLoadEventCount();
                    }
                    StatStore statstore = StatStore.this;
                    statstore.numStoredEvents = statstore.numStoredEvents - i;
                    peekEvents(evs, i);
                    StatStore.logger.i((new StringBuilder()).append("Peek ").append(Integer.toString(evs.size())).append(" unsent events.").toString());
                    if (!evs.isEmpty())
                    {
                        directUpdateEvents(evs, 2);
                        for (Iterator iterator = evs.iterator(); iterator.hasNext(); arraylist.add(((StoredEvent)iterator.next()).content)) { }
                        StatDispatcher.getInstance().send(arraylist, i. new StatDispatchCallback() {

                            final _cls7 this$1;
                            final List val$evs;
                            final int val$loadNumber;

                            public void onDispatchFailure()
                            {
                                StatStore statstore = _fld0;
                                statstore.numStoredEvents = statstore.numStoredEvents + loadNumber;
                                updateEvents(evs, 1);
                            }

                            public void onDispatchSuccess()
                            {
                                deleteEvents(evs);
                                int i;
                                if (maxNumber == -1)
                                {
                                    i = maxNumber;
                                } else
                                {
                                    i = maxNumber - evs.size();
                                }
                                if (i == -1 || i > 0)
                                {
                                    loadEvents(i);
                                }
                            }

            
            {
                this$1 = final__pcls7;
                evs = list;
                loadNumber = I.this;
                super();
            }
                        });
                        return;
                    }
                }
            }

            
            {
                this$0 = StatStore.this;
                maxNumber = i;
                super();
            }
        });
    }

    void storeCfg(final StatConfig.OnlineConfig cfg)
    {
        if (cfg == null)
        {
            return;
        }
        try
        {
            handler.post(new Runnable() {

                final StatStore this$0;
                final StatConfig.OnlineConfig val$cfg;

                public void run()
                {
                    Object obj;
                    String s;
                    s = cfg.toJsonString();
                    obj = StatCommonHelper.md5sum(s);
                    if (((String) (obj)).equals(cfg.md5sum)) goto _L2; else goto _L1
_L1:
                    ContentValues contentvalues;
                    contentvalues = new ContentValues();
                    contentvalues.put("content", cfg.props.toString());
                    contentvalues.put("md5sum", ((String) (obj)));
                    cfg.md5sum = ((String) (obj));
                    contentvalues.put("version", Integer.valueOf(cfg.version));
                    Cursor cursor = helper.getReadableDatabase().query("config", null, null, null, null, null, null);
_L6:
                    obj = cursor;
                    if (!cursor.moveToNext()) goto _L4; else goto _L3
_L3:
                    obj = cursor;
                    int i = cursor.getInt(0);
                    obj = cursor;
                    int j = cfg.type;
                    if (i != j) goto _L6; else goto _L5
_L5:
                    i = 1;
_L14:
                    j = i;
                    if (cursor != null)
                    {
                        cursor.close();
                        j = i;
                    }
_L9:
                    Exception exception;
                    Exception exception1;
                    long l;
                    if (true == j)
                    {
                        l = helper.getWritableDatabase().update("config", contentvalues, "type=?", new String[] {
                            Integer.toString(cfg.type)
                        });
                    } else
                    {
                        contentvalues.put("type", Integer.valueOf(cfg.type));
                        l = helper.getWritableDatabase().insert("config", null, contentvalues);
                    }
                    if (l != -1L) goto _L8; else goto _L7
_L7:
                    StatStore.logger.error((new StringBuilder()).append("Failed to store cfg:").append(s).toString());
_L2:
                    return;
                    exception1;
                    cursor = null;
_L12:
                    obj = cursor;
                    StatStore.logger.e(exception1);
                    if (cursor != null)
                    {
                        cursor.close();
                        j = 0;
                    } else
                    {
                        j = 0;
                    }
                      goto _L9
                    exception;
                    obj = null;
_L11:
                    if (obj != null)
                    {
                        ((Cursor) (obj)).close();
                    }
                    throw exception;
_L8:
                    StatStore.logger.i((new StringBuilder()).append("Sucessed to store cfg:").append(s).toString());
                    return;
                    exception;
                    if (true) goto _L11; else goto _L10
_L10:
                    exception1;
                      goto _L12
_L4:
                    i = 0;
                    if (true) goto _L14; else goto _L13
_L13:
                }

            
            {
                this$0 = StatStore.this;
                cfg = onlineconfig;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (final StatConfig.OnlineConfig cfg)
        {
            logger.e(cfg);
        }
    }

    void storeEvent(final Event ev, final StatDispatchCallback cb)
    {
        if (!StatConfig.isEnableStatService())
        {
            return;
        }
        try
        {
            if (Thread.currentThread().getId() == handler.getLooper().getThread().getId())
            {
                directStoreEvent(ev, cb);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (final Event ev)
        {
            logger.e(ev);
            return;
        }
        handler.post(new Runnable() {

            final StatStore this$0;
            final StatDispatchCallback val$cb;
            final Event val$ev;

            public void run()
            {
                directStoreEvent(ev, cb);
            }

            
            {
                this$0 = StatStore.this;
                ev = event;
                cb = statdispatchcallback;
                super();
            }
        });
        return;
    }

    void updateEvents(final List evs, final int status)
    {
        if (Thread.currentThread().getId() == handler.getLooper().getThread().getId())
        {
            directUpdateEvents(evs, status);
            return;
        }
        try
        {
            handler.post(new Runnable() {

                final StatStore this$0;
                final List val$evs;
                final int val$status;

                public void run()
                {
                    directUpdateEvents(evs, status);
                }

            
            {
                this$0 = StatStore.this;
                evs = list;
                status = i;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (final List evs)
        {
            logger.e(evs);
        }
        return;
    }







}
