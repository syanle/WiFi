// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.ta.exception.TADBException;
import com.ta.exception.TADBNotOpenException;
import com.ta.util.TALogger;
import com.ta.util.db.entity.TAArrayList;
import com.ta.util.db.entity.TADBMasterEntity;
import com.ta.util.db.entity.TAMapArrayList;
import com.ta.util.db.util.TADBUtils;
import com.ta.util.db.util.TASqlBuilderFactory;
import com.ta.util.db.util.sql.TASqlBuilder;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.ta.util.db:
//            TADBHelper

public class TASQLiteDatabase
{
    public static class TADBParams
    {

        private String dbName;
        private int dbVersion;

        public String getDbName()
        {
            return dbName;
        }

        public int getDbVersion()
        {
            return dbVersion;
        }

        public void setDbName(String s)
        {
            dbName = s;
        }

        public void setDbVersion(int i)
        {
            dbVersion = i;
        }

        public TADBParams()
        {
            dbName = "think_android.db";
            dbVersion = 1;
        }

        public TADBParams(String s, int i)
        {
            dbName = "think_android.db";
            dbVersion = 1;
            dbName = s;
            dbVersion = i;
        }
    }

    public static interface TADBUpdateListener
    {

        public abstract void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j);
    }


    private static final String DB_NAME = "think_android.db";
    private static final int DB_VERSION = 1;
    private String error;
    private Boolean isConnect;
    private TADBHelper mDatabaseHelper;
    private SQLiteDatabase mSQLiteDatabase;
    private TADBUpdateListener mTadbUpdateListener;
    private Cursor queryCursor;
    private String queryStr;

    public TASQLiteDatabase(Context context)
    {
        queryStr = "";
        error = "";
        queryCursor = null;
        isConnect = Boolean.valueOf(false);
        mSQLiteDatabase = null;
        mDatabaseHelper = null;
        TADBParams tadbparams = new TADBParams();
        mDatabaseHelper = new TADBHelper(context, tadbparams.getDbName(), null, tadbparams.getDbVersion());
    }

    public TASQLiteDatabase(Context context, TADBParams tadbparams)
    {
        queryStr = "";
        error = "";
        queryCursor = null;
        isConnect = Boolean.valueOf(false);
        mSQLiteDatabase = null;
        mDatabaseHelper = null;
        mDatabaseHelper = new TADBHelper(context, tadbparams.getDbName(), null, tadbparams.getDbVersion());
    }

    public Boolean alterTable(String s)
    {
        return Boolean.valueOf(false);
    }

    public void close()
    {
        mSQLiteDatabase.close();
    }

    public Boolean creatTable(Class class1)
    {
        if (!testSQLiteDatabase().booleanValue()) goto _L2; else goto _L1
_L1:
        execute(TADBUtils.creatTableSql(class1), null);
        class1 = Boolean.valueOf(true);
_L3:
        return class1;
        Object obj;
        obj;
        class1 = Boolean.valueOf(false);
        ((TADBException) (obj)).printStackTrace();
        TALogger.e(this, ((TADBException) (obj)).getMessage());
        continue; /* Loop/switch isn't completed */
        obj;
        class1 = Boolean.valueOf(false);
        ((TADBNotOpenException) (obj)).printStackTrace();
        TALogger.e(this, ((TADBNotOpenException) (obj)).getMessage());
        if (true) goto _L3; else goto _L2
_L2:
        TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
        return Boolean.valueOf(false);
    }

    public Boolean delete(Class class1, String s)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            TASqlBuilder tasqlbuilder = TASqlBuilderFactory.getInstance().getSqlBuilder(2);
            tasqlbuilder.setClazz(class1);
            tasqlbuilder.setCondition(false, s, null, null, null, null);
            return execute(tasqlbuilder);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public Boolean delete(Object obj)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            TASqlBuilder tasqlbuilder = TASqlBuilderFactory.getInstance().getSqlBuilder(2);
            tasqlbuilder.setEntity(obj);
            return execute(tasqlbuilder);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public Boolean delete(String s, String s1, String as[])
    {
        if (testSQLiteDatabase().booleanValue())
        {
            if (mSQLiteDatabase.delete(s, s1, as) > 0)
            {
                return Boolean.valueOf(true);
            } else
            {
                return Boolean.valueOf(false);
            }
        } else
        {
            TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
            return Boolean.valueOf(false);
        }
    }

    public Boolean dropTable(Class class1)
    {
        return dropTable(TADBUtils.getTableName(class1));
    }

    public Boolean dropTable(String s)
    {
        Object obj = Boolean.valueOf(false);
        if (s == null || s.equalsIgnoreCase("")) goto _L2; else goto _L1
_L1:
        if (!testSQLiteDatabase().booleanValue()) goto _L4; else goto _L3
_L3:
        try
        {
            execute((new StringBuilder("DROP TABLE ")).append(s).toString(), null);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            s = Boolean.valueOf(false);
            ((Exception) (obj)).printStackTrace();
            TALogger.e(this, ((Exception) (obj)).getMessage());
            continue; /* Loop/switch isn't completed */
        }
        s = Boolean.valueOf(true);
_L6:
        return s;
_L4:
        TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
        return Boolean.valueOf(false);
_L2:
        TALogger.e(this, "\u5220\u9664\u6570\u636E\u8868\u540D\u4E0D\u80FD\u4E3A\u7A7A\uFF01");
        s = ((String) (obj));
        if (true) goto _L6; else goto _L5
_L5:
    }

    public String error()
    {
        if (queryStr != null && !queryStr.equalsIgnoreCase(""))
        {
            error = (new StringBuilder(String.valueOf(error))).append("\n [ SQL\u8BED\u53E5 ] : ").append(queryStr).toString();
        }
        TALogger.e(this, error);
        return error;
    }

    public Boolean execute(TASqlBuilder tasqlbuilder)
    {
        try
        {
            execute(tasqlbuilder.getSqlStatement(), null);
        }
        // Misplaced declaration of an exception variable
        catch (TASqlBuilder tasqlbuilder)
        {
            tasqlbuilder.printStackTrace();
            return Boolean.valueOf(false);
        }
        // Misplaced declaration of an exception variable
        catch (TASqlBuilder tasqlbuilder)
        {
            tasqlbuilder.printStackTrace();
            return Boolean.valueOf(false);
        }
        // Misplaced declaration of an exception variable
        catch (TASqlBuilder tasqlbuilder)
        {
            tasqlbuilder.printStackTrace();
            return Boolean.valueOf(false);
        }
        // Misplaced declaration of an exception variable
        catch (TASqlBuilder tasqlbuilder)
        {
            tasqlbuilder.printStackTrace();
            return Boolean.valueOf(false);
        }
        return Boolean.valueOf(true);
    }

    public void execute(String s, String as[])
        throws TADBNotOpenException
    {
label0:
        {
label1:
            {
                TALogger.i(this, (new StringBuilder("\u51C6\u5907\u6267\u884CSQL[")).append(s).append("]\u8BED\u53E5").toString());
                if (!testSQLiteDatabase().booleanValue())
                {
                    break label0;
                }
                if (s != null && !s.equalsIgnoreCase(""))
                {
                    queryStr = s;
                    if (as == null)
                    {
                        break label1;
                    }
                    mSQLiteDatabase.execSQL(s, as);
                }
                return;
            }
            mSQLiteDatabase.execSQL(s);
            return;
        }
        throw new TADBNotOpenException("\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
    }

    public void free()
    {
        if (queryCursor == null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        queryCursor.close();
        return;
        Exception exception;
        exception;
    }

    public String getLastSql()
    {
        return queryStr;
    }

    public Cursor getQueryCursor()
    {
        return queryCursor;
    }

    public TAMapArrayList getQueryCursorData()
    {
        TAMapArrayList tamaparraylist = null;
        if (queryCursor == null) goto _L2; else goto _L1
_L1:
        TAMapArrayList tamaparraylist1 = new TAMapArrayList();
        queryCursor.moveToFirst();
_L4:
        if (!queryCursor.moveToNext())
        {
            return tamaparraylist1;
        }
        tamaparraylist1.add(TADBUtils.getRowData(queryCursor));
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
        Exception exception;
        tamaparraylist = tamaparraylist1;
        exception = exception1;
_L6:
        exception.printStackTrace();
        TALogger.e(this, "\u5F53\u524D\u6570\u636E\u96C6\u83B7\u53D6\u5931\u8D25\uFF01");
        return tamaparraylist;
_L2:
        TALogger.e(this, "\u5F53\u524D\u6570\u636E\u96C6\u4E0D\u5B58\u5728\uFF01");
        return null;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public ArrayList getTables()
    {
        ArrayList arraylist;
        arraylist = new ArrayList();
        TALogger.i(this, "select * from sqlite_master where type='table' order by name");
        if (!testSQLiteDatabase().booleanValue())
        {
            break MISSING_BLOCK_LABEL_198;
        }
        if ("select * from sqlite_master where type='table' order by name" == null || "select * from sqlite_master where type='table' order by name".equalsIgnoreCase("")) goto _L2; else goto _L1
_L1:
        queryStr = "select * from sqlite_master where type='table' order by name";
        free();
        queryCursor = mSQLiteDatabase.rawQuery("select * from sqlite_master where type='table' order by name", null);
        if (queryCursor == null) goto _L4; else goto _L3
_L3:
        if (queryCursor.moveToNext()) goto _L5; else goto _L2
_L2:
        return arraylist;
_L5:
        if (queryCursor != null && queryCursor.getColumnCount() > 0)
        {
            TADBMasterEntity tadbmasterentity = new TADBMasterEntity();
            tadbmasterentity.setType(queryCursor.getString(0));
            tadbmasterentity.setName(queryCursor.getString(1));
            tadbmasterentity.setTbl_name(queryCursor.getString(2));
            tadbmasterentity.setRootpage(queryCursor.getInt(3));
            tadbmasterentity.setSql(queryCursor.getString(4));
            arraylist.add(tadbmasterentity);
        }
        if (true) goto _L3; else goto _L4
_L4:
        TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
        return arraylist;
        TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
        return arraylist;
    }

    public boolean hasTable(Class class1)
    {
        return hasTable(TADBUtils.getTableName(class1));
    }

    public boolean hasTable(String s)
    {
        boolean flag1 = false;
        if (s != null && !s.equalsIgnoreCase(""))
        {
            if (testSQLiteDatabase().booleanValue())
            {
                s = s.trim();
                s = (new StringBuilder("select count(*) as c from Sqlite_master  where type ='table' and name ='")).append(s).append("' ").toString();
                if (s != null && !s.equalsIgnoreCase(""))
                {
                    queryStr = s;
                }
                free();
                queryCursor = mSQLiteDatabase.rawQuery(s, null);
                boolean flag = flag1;
                if (queryCursor.moveToNext())
                {
                    flag = flag1;
                    if (queryCursor.getInt(0) > 0)
                    {
                        flag = true;
                    }
                }
                return flag;
            } else
            {
                TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
                return false;
            }
        } else
        {
            TALogger.e(this, "\u5224\u65AD\u6570\u636E\u8868\u540D\u4E0D\u80FD\u4E3A\u7A7A\uFF01");
            return false;
        }
    }

    public Boolean insert(Object obj)
    {
        return insert(obj, null);
    }

    public Boolean insert(Object obj, TAArrayList taarraylist)
    {
        TASqlBuilder tasqlbuilder = TASqlBuilderFactory.getInstance().getSqlBuilder(0);
        tasqlbuilder.setEntity(obj);
        tasqlbuilder.setUpdateFields(taarraylist);
        return execute(tasqlbuilder);
    }

    public Boolean insert(String s, String s1, ContentValues contentvalues)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            if (mSQLiteDatabase.insert(s, s1, contentvalues) > 0L)
            {
                return Boolean.valueOf(true);
            } else
            {
                return Boolean.valueOf(false);
            }
        } else
        {
            TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
            return Boolean.valueOf(false);
        }
    }

    public Boolean insertOrThrow(String s, String s1, ContentValues contentvalues)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            if (mSQLiteDatabase.insertOrThrow(s, s1, contentvalues) > 0L)
            {
                return Boolean.valueOf(true);
            } else
            {
                return Boolean.valueOf(false);
            }
        } else
        {
            TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
            return Boolean.valueOf(false);
        }
    }

    public SQLiteDatabase openDatabase(TADBUpdateListener tadbupdatelistener, Boolean boolean1)
    {
        if (boolean1.booleanValue())
        {
            mSQLiteDatabase = openWritable(mTadbUpdateListener);
        } else
        {
            mSQLiteDatabase = openReadable(mTadbUpdateListener);
        }
        return mSQLiteDatabase;
    }

    public SQLiteDatabase openReadable(TADBUpdateListener tadbupdatelistener)
    {
        if (tadbupdatelistener != null)
        {
            mTadbUpdateListener = tadbupdatelistener;
        }
        if (mTadbUpdateListener != null)
        {
            mDatabaseHelper.setOndbUpdateListener(mTadbUpdateListener);
        }
        try
        {
            mSQLiteDatabase = mDatabaseHelper.getReadableDatabase();
            isConnect = Boolean.valueOf(true);
        }
        // Misplaced declaration of an exception variable
        catch (TADBUpdateListener tadbupdatelistener)
        {
            isConnect = Boolean.valueOf(false);
        }
        return mSQLiteDatabase;
    }

    public SQLiteDatabase openWritable(TADBUpdateListener tadbupdatelistener)
    {
        if (tadbupdatelistener != null)
        {
            mTadbUpdateListener = tadbupdatelistener;
        }
        if (mTadbUpdateListener != null)
        {
            mDatabaseHelper.setOndbUpdateListener(mTadbUpdateListener);
        }
        try
        {
            mSQLiteDatabase = mDatabaseHelper.getWritableDatabase();
            isConnect = Boolean.valueOf(true);
        }
        // Misplaced declaration of an exception variable
        catch (TADBUpdateListener tadbupdatelistener)
        {
            isConnect = Boolean.valueOf(false);
        }
        return mSQLiteDatabase;
    }

    public ArrayList query(String s, boolean flag, String as[], String s1, String as1[], String s2, String s3, 
            String s4, String s5)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            free();
            queryCursor = mSQLiteDatabase.query(flag, s, as, s1, as1, s2, s3, s4, s5);
            if (queryCursor != null)
            {
                return getQueryCursorData();
            }
            TALogger.e(this, (new StringBuilder("\u67E5\u8BE2")).append(s).append("\u9519\u8BEF").toString());
        } else
        {
            TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
        }
        return null;
    }

    public ArrayList query(String s, String as[])
    {
        TALogger.i(this, s);
        if (testSQLiteDatabase().booleanValue())
        {
            if (s != null && !s.equalsIgnoreCase(""))
            {
                queryStr = s;
            }
            free();
            queryCursor = mSQLiteDatabase.rawQuery(s, as);
            if (queryCursor != null)
            {
                return getQueryCursorData();
            }
            TALogger.e(this, (new StringBuilder("\u6267\u884C")).append(s).append("\u9519\u8BEF").toString());
        } else
        {
            TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
        }
        return null;
    }

    public ArrayList query(String s, String as[], String s1, String as1[], String s2, String s3, String s4)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            queryCursor = mSQLiteDatabase.query(s, as, s1, as1, s2, s3, s4);
            if (queryCursor != null)
            {
                return getQueryCursorData();
            }
            TALogger.e(this, (new StringBuilder("\u67E5\u8BE2")).append(s).append("\u9519\u8BEF").toString());
        } else
        {
            TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
        }
        return null;
    }

    public ArrayList query(String s, String as[], String s1, String as1[], String s2, String s3, String s4, 
            String s5)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            free();
            queryCursor = mSQLiteDatabase.query(s, as, s1, as1, s2, s3, s4, s5);
            if (queryCursor != null)
            {
                return getQueryCursorData();
            }
            TALogger.e(this, (new StringBuilder("\u67E5\u8BE2")).append(s).append("\u9519\u8BEF").toString());
        } else
        {
            TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
        }
        return null;
    }

    public List query(Class class1, boolean flag, String s, String s1, String s2, String s3, String s4)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            TASqlBuilder tasqlbuilder = TASqlBuilderFactory.getInstance().getSqlBuilder(1);
            tasqlbuilder.setClazz(class1);
            tasqlbuilder.setCondition(flag, s, s1, s2, s3, s4);
            try
            {
                s = tasqlbuilder.getSqlStatement();
                TALogger.i(this, (new StringBuilder("\u6267\u884C")).append(s).toString());
                free();
                queryCursor = mSQLiteDatabase.rawQuery(s, null);
                class1 = TADBUtils.getListEntity(class1, queryCursor);
            }
            // Misplaced declaration of an exception variable
            catch (Class class1)
            {
                TALogger.e(this, class1.getMessage());
                class1.printStackTrace();
                return null;
            }
            // Misplaced declaration of an exception variable
            catch (Class class1)
            {
                TALogger.e(this, class1.getMessage());
                class1.printStackTrace();
                return null;
            }
            // Misplaced declaration of an exception variable
            catch (Class class1)
            {
                TALogger.e(this, class1.getMessage());
                class1.printStackTrace();
                return null;
            }
            return class1;
        } else
        {
            return null;
        }
    }

    public ArrayList queryWithFactory(android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory, boolean flag, String s, String as[], String s1, String as1[], String s2, 
            String s3, String s4, String s5)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            free();
            queryCursor = mSQLiteDatabase.queryWithFactory(cursorfactory, flag, s, as, s1, as1, s2, s3, s4, s5);
            if (queryCursor != null)
            {
                return getQueryCursorData();
            }
            TALogger.e(this, (new StringBuilder("\u67E5\u8BE2")).append(s).append("\u9519\u8BEF").toString());
        } else
        {
            TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
        }
        return null;
    }

    public void setOnDbUpdateListener(TADBUpdateListener tadbupdatelistener)
    {
        mTadbUpdateListener = tadbupdatelistener;
        if (mTadbUpdateListener != null)
        {
            mDatabaseHelper.setOndbUpdateListener(mTadbUpdateListener);
        }
    }

    public Boolean testSQLiteDatabase()
    {
        if (isConnect.booleanValue())
        {
            if (mSQLiteDatabase.isOpen())
            {
                return Boolean.valueOf(true);
            } else
            {
                return Boolean.valueOf(false);
            }
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public Boolean update(Object obj)
    {
        return update(obj, null);
    }

    public Boolean update(Object obj, String s)
    {
        if (testSQLiteDatabase().booleanValue())
        {
            TASqlBuilder tasqlbuilder = TASqlBuilderFactory.getInstance().getSqlBuilder(3);
            tasqlbuilder.setEntity(obj);
            tasqlbuilder.setCondition(false, s, null, null, null, null);
            return execute(tasqlbuilder);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public Boolean update(String s, ContentValues contentvalues, String s1, String as[])
    {
        if (testSQLiteDatabase().booleanValue())
        {
            if (mSQLiteDatabase.update(s, contentvalues, s1, as) > 0)
            {
                return Boolean.valueOf(true);
            } else
            {
                return Boolean.valueOf(false);
            }
        } else
        {
            TALogger.e(this, "\u6570\u636E\u5E93\u672A\u6253\u5F00\uFF01");
            return Boolean.valueOf(false);
        }
    }
}
