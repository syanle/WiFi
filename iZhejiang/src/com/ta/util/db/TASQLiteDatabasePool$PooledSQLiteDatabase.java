// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db;


// Referenced classes of package com.ta.util.db:
//            TASQLiteDatabasePool, TASQLiteDatabase

class sqliteDatabase
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

    public (TASQLiteDatabase tasqlitedatabase)
    {
        this$0 = TASQLiteDatabasePool.this;
        super();
        sqliteDatabase = null;
        busy = false;
        sqliteDatabase = tasqlitedatabase;
    }
}
