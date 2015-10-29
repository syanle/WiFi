// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class m extends SQLiteOpenHelper
{

    private static m a;
    private static final String _flddo = "bd_geofence.db";
    private static final int _fldif = 2;

    public m(Context context)
    {
        super(context, "bd_geofence.db", null, 2);
    }

    public static m a(Context context)
    {
        com/baidu/location/m;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new m(context);
        }
        context = a;
        com/baidu/location/m;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private String a(String s, String s1, String s2)
    {
        return (new StringBuilder()).append("ALTER TABLE ").append(s).append(" ADD ").append(s1).append(" ").append(s2).toString();
    }

    private void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE  IF NOT EXISTS geofence (_id INTEGER PRIMARY KEY AUTOINCREMENT,geofence_id NTEXT,longitude NTEXT,latitude NTEXT,radius_type INTEGER,radius NTEXT,valid_date INTEGER,duration_millis INTEGER,coord_type NTEXT,next_active_time INTEGER,is_lac INTEGER,is_cell INTEGER,is_wifi INTEGER,next_exit_active_time INTEGER);");
        sqlitedatabase.execSQL("CREATE TABLE  IF NOT EXISTS geofence_detail (_id INTEGER PRIMARY KEY AUTOINCREMENT,geofence_id NTEXT,ap NTEXT,ap_backup NTEXT);");
        sqlitedatabase.execSQL("CREATE INDEX  IF NOT EXISTS ap_index ON geofence_detail (ap);");
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        a(sqlitedatabase);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        if (i < 2)
        {
            a("geofence", "next_exit_active_time", "INTEGER");
        }
        a(sqlitedatabase);
    }
}
