// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db;


// Referenced classes of package com.ta.util.db:
//            TASQLiteDatabase

public static class dbVersion
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

    public ()
    {
        dbName = "think_android.db";
        dbVersion = 1;
    }

    public dbVersion(String s, int i)
    {
        dbName = "think_android.db";
        dbVersion = 1;
        dbName = s;
        dbVersion = i;
    }
}
