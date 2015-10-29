// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.tencent.stat:
//            StatStore

static class DATABASE_VERSION extends SQLiteOpenHelper
{

    private static String DATABASE_NAME = "tencent_analysis.db";
    private static int DATABASE_VERSION = 3;

    private void upgradeEventsToVer3(SQLiteDatabase sqlitedatabase)
    {
        Object obj = sqlitedatabase.query("events", null, null, null, null, null, null);
        Object obj1 = new ArrayList();
        for (; ((Cursor) (obj)).moveToNext(); ((List) (obj1)).add(new t>(((Cursor) (obj)).getLong(0), ((Cursor) (obj)).getString(1), ((Cursor) (obj)).getInt(2), ((Cursor) (obj)).getInt(3)))) { }
        obj = new ContentValues();
        DATABASE_VERSION database_version;
        for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); sqlitedatabase.update("events", ((ContentValues) (obj)), "event_id=?", new String[] {
    Long.toString(database_version.te)
}))
        {
            database_version = (te)((Iterator) (obj1)).next();
            ((ContentValues) (obj)).put("content", StatCommonHelper.encode(database_version.ent));
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
        StatStore.access$400().debug((new StringBuilder()).append("upgrade DB from oldVersion ").append(i).append(" to newVersion ").append(j).toString());
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


    public orFactory(Context context)
    {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }
}
