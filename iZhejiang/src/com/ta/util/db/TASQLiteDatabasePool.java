// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db;

import android.content.Context;
import com.ta.util.TALogger;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Vector;

// Referenced classes of package com.ta.util.db:
//            TASQLiteDatabase

public class TASQLiteDatabasePool
{
    class PooledSQLiteDatabase
    {

        boolean busy;
        TASQLiteDatabase sqliteDatabase;
        final TASQLiteDatabasePool this$0;

        public TASQLiteDatabase getSqliteDatabase()
        {
            return sqliteDatabase;
        }

        public boolean isBusy()
        {
            return busy;
        }

        public void setBusy(boolean flag)
        {
            busy = flag;
        }

        public void setSqliteDatabase(TASQLiteDatabase tasqlitedatabase)
        {
            sqliteDatabase = tasqlitedatabase;
        }

        public PooledSQLiteDatabase(TASQLiteDatabase tasqlitedatabase)
        {
            this$0 = TASQLiteDatabasePool.this;
            super();
            sqliteDatabase = null;
            busy = false;
            sqliteDatabase = tasqlitedatabase;
        }
    }


    private static HashMap poolMap = new HashMap();
    private Context context;
    private int incrementalSQLiteDatabase;
    private int initialSQLiteDatabase;
    private Boolean isWrite;
    private TASQLiteDatabase.TADBUpdateListener mDBUpdateListener;
    private int maxSQLiteDatabase;
    private Vector pSQLiteDatabases;
    private TASQLiteDatabase.TADBParams params;
    private String testTable;

    public TASQLiteDatabasePool(Context context1, TASQLiteDatabase.TADBParams tadbparams, Boolean boolean1)
    {
        testTable = "Sqlite_master";
        initialSQLiteDatabase = 2;
        incrementalSQLiteDatabase = 2;
        maxSQLiteDatabase = 10;
        pSQLiteDatabases = null;
        isWrite = Boolean.valueOf(false);
        context = context1;
        params = tadbparams;
        isWrite = boolean1;
    }

    private void closeSQLiteDatabase(TASQLiteDatabase tasqlitedatabase)
    {
        tasqlitedatabase.close();
    }

    private void createSQLiteDatabase(int i)
    {
        do
        {
            int j;
            for (j = 0; j >= i || maxSQLiteDatabase > 0 && pSQLiteDatabases.size() >= maxSQLiteDatabase;)
            {
                return;
            }

            try
            {
                pSQLiteDatabases.addElement(new PooledSQLiteDatabase(newSQLiteDatabase()));
            }
            catch (Exception exception)
            {
                TALogger.i(this, (new StringBuilder(" \u521B\u5EFA\u6570\u636E\u5E93\u8FDE\u63A5\u5931\u8D25\uFF01 ")).append(exception.getMessage()).toString());
            }
            TALogger.i(this, "\u6570\u636E\u5E93\u8FDE\u63A5\u5DF1\u521B\u5EFA ......");
            j++;
        } while (true);
    }

    private TASQLiteDatabase findFreeSQLiteDatabase()
    {
        TASQLiteDatabase tasqlitedatabase;
        Object obj;
        tasqlitedatabase = null;
        obj = pSQLiteDatabases.elements();
_L2:
        if (((Enumeration) (obj)).hasMoreElements())
        {
            PooledSQLiteDatabase pooledsqlitedatabase = (PooledSQLiteDatabase)((Enumeration) (obj)).nextElement();
            if (pooledsqlitedatabase.isBusy())
            {
                continue; /* Loop/switch isn't completed */
            }
            obj = pooledsqlitedatabase.getSqliteDatabase();
            pooledsqlitedatabase.setBusy(true);
            tasqlitedatabase = ((TASQLiteDatabase) (obj));
            if (!testSQLiteDatabase(((TASQLiteDatabase) (obj))))
            {
                TASQLiteDatabase tasqlitedatabase1 = newSQLiteDatabase();
                pooledsqlitedatabase.setSqliteDatabase(tasqlitedatabase1);
                return tasqlitedatabase1;
            }
        }
        return tasqlitedatabase;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private TASQLiteDatabase getFreeSQLiteDatabase()
    {
        TASQLiteDatabase tasqlitedatabase1 = findFreeSQLiteDatabase();
        TASQLiteDatabase tasqlitedatabase = tasqlitedatabase1;
        if (tasqlitedatabase1 == null)
        {
            createSQLiteDatabase(incrementalSQLiteDatabase);
            TASQLiteDatabase tasqlitedatabase2 = findFreeSQLiteDatabase();
            tasqlitedatabase = tasqlitedatabase2;
            if (tasqlitedatabase2 == null)
            {
                return null;
            }
        }
        return tasqlitedatabase;
    }

    public static TASQLiteDatabasePool getInstance(Context context1)
    {
        return getInstance(context1, new TASQLiteDatabase.TADBParams(), Boolean.valueOf(false));
    }

    public static TASQLiteDatabasePool getInstance(Context context1, TASQLiteDatabase.TADBParams tadbparams, Boolean boolean1)
    {
        com/ta/util/db/TASQLiteDatabasePool;
        JVM INSTR monitorenter ;
        TASQLiteDatabasePool tasqlitedatabasepool1;
        String s;
        s = tadbparams.getDbName().trim();
        tasqlitedatabasepool1 = (TASQLiteDatabasePool)poolMap.get(s);
        TASQLiteDatabasePool tasqlitedatabasepool;
        tasqlitedatabasepool = tasqlitedatabasepool1;
        if (tasqlitedatabasepool1 != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        tasqlitedatabasepool = new TASQLiteDatabasePool(context1, tadbparams, boolean1);
        poolMap.put(s.trim(), tasqlitedatabasepool);
        com/ta/util/db/TASQLiteDatabasePool;
        JVM INSTR monitorexit ;
        return tasqlitedatabasepool;
        context1;
        throw context1;
    }

    public static TASQLiteDatabasePool getInstance(Context context1, String s, int i, Boolean boolean1)
    {
        return getInstance(context1, new TASQLiteDatabase.TADBParams(s, i), boolean1);
    }

    private TASQLiteDatabase newSQLiteDatabase()
    {
        TASQLiteDatabase tasqlitedatabase = new TASQLiteDatabase(context, params);
        tasqlitedatabase.openDatabase(mDBUpdateListener, isWrite);
        return tasqlitedatabase;
    }

    private boolean testSQLiteDatabase(TASQLiteDatabase tasqlitedatabase)
    {
        if (tasqlitedatabase != null)
        {
            return tasqlitedatabase.testSQLiteDatabase().booleanValue();
        } else
        {
            return false;
        }
    }

    private void wait(int i)
    {
        long l = i;
        try
        {
            Thread.sleep(l);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
    }

    public void closeSQLiteDatabase()
    {
        this;
        JVM INSTR monitorenter ;
        if (pSQLiteDatabases != null) goto _L2; else goto _L1
_L1:
        TALogger.d(this, "\u8FDE\u63A5\u6C60\u4E0D\u5B58\u5728\uFF0C\u65E0\u6CD5\u5173\u95ED !");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Object obj = pSQLiteDatabases.elements();
_L5:
        if (((Enumeration) (obj)).hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_48;
        }
        pSQLiteDatabases = null;
        if (true) goto _L4; else goto _L3
_L3:
        obj;
        throw obj;
        PooledSQLiteDatabase pooledsqlitedatabase = (PooledSQLiteDatabase)((Enumeration) (obj)).nextElement();
        if (pooledsqlitedatabase.isBusy())
        {
            wait(5000);
        }
        closeSQLiteDatabase(pooledsqlitedatabase.getSqliteDatabase());
        pSQLiteDatabases.removeElement(pooledsqlitedatabase);
          goto _L5
    }

    public void createPool()
    {
        this;
        JVM INSTR monitorenter ;
        Vector vector = pSQLiteDatabases;
        if (vector == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        pSQLiteDatabases = new Vector();
        createSQLiteDatabase(initialSQLiteDatabase);
        TALogger.i(this, " \u6570\u636E\u5E93\u8FDE\u63A5\u6C60\u521B\u5EFA\u6210\u529F\uFF01 ");
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public int getIncrementalSQLiteDatabase()
    {
        return incrementalSQLiteDatabase;
    }

    public int getInitialSQLiteDatabase()
    {
        return initialSQLiteDatabase;
    }

    public int getMaxSQLiteDatabase()
    {
        return maxSQLiteDatabase;
    }

    public TASQLiteDatabase getSQLiteDatabase()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = pSQLiteDatabases;
        if (obj != null) goto _L2; else goto _L1
_L1:
        TASQLiteDatabase tasqlitedatabase = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return tasqlitedatabase;
_L2:
        obj = getFreeSQLiteDatabase();
_L5:
        tasqlitedatabase = ((TASQLiteDatabase) (obj));
        if (obj != null) goto _L4; else goto _L3
_L3:
        wait(250);
        obj = getFreeSQLiteDatabase();
          goto _L5
        Exception exception;
        exception;
        throw exception;
    }

    public String getTestTable()
    {
        return testTable;
    }

    public void refreshSQLiteDatabase()
    {
        this;
        JVM INSTR monitorenter ;
        if (pSQLiteDatabases != null) goto _L2; else goto _L1
_L1:
        TALogger.d(this, " \u8FDE\u63A5\u6C60\u4E0D\u5B58\u5728\uFF0C\u65E0\u6CD5\u5237\u65B0 !");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Enumeration enumeration = pSQLiteDatabases.elements();
        while (enumeration.hasMoreElements()) 
        {
            PooledSQLiteDatabase pooledsqlitedatabase = (PooledSQLiteDatabase)enumeration.nextElement();
            if (pooledsqlitedatabase.isBusy())
            {
                wait(5000);
            }
            closeSQLiteDatabase(pooledsqlitedatabase.getSqliteDatabase());
            pooledsqlitedatabase.setSqliteDatabase(newSQLiteDatabase());
            pooledsqlitedatabase.setBusy(false);
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void releaseSQLiteDatabase(TASQLiteDatabase tasqlitedatabase)
    {
        if (pSQLiteDatabases != null) goto _L2; else goto _L1
_L1:
        TALogger.d(this, " \u8FDE\u63A5\u6C60\u4E0D\u5B58\u5728\uFF0C\u65E0\u6CD5\u8FD4\u56DE\u6B64\u8FDE\u63A5\u5230\u8FDE\u63A5\u6C60\u4E2D !");
_L4:
        return;
_L2:
        PooledSQLiteDatabase pooledsqlitedatabase;
        Enumeration enumeration = pSQLiteDatabases.elements();
        do
        {
            if (!enumeration.hasMoreElements())
            {
                continue; /* Loop/switch isn't completed */
            }
            pooledsqlitedatabase = (PooledSQLiteDatabase)enumeration.nextElement();
        } while (tasqlitedatabase != pooledsqlitedatabase.getSqliteDatabase());
        break; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        pooledsqlitedatabase.setBusy(false);
        return;
    }

    public void setIncrementalSQLiteDatabase(int i)
    {
        incrementalSQLiteDatabase = i;
    }

    public void setInitialSQLiteDatabase(int i)
    {
        initialSQLiteDatabase = i;
    }

    public void setMaxSQLiteDatabase(int i)
    {
        maxSQLiteDatabase = i;
    }

    public void setOnDbUpdateListener(TASQLiteDatabase.TADBUpdateListener tadbupdatelistener)
    {
        mDBUpdateListener = tadbupdatelistener;
    }

    public void setTestTable(String s)
    {
        testTable = s;
    }

}
