// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.db;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.db:
//            SocializeDBConstants

public class f extends SQLiteOpenHelper
    implements SocializeDBConstants
{

    private static final String N = com/umeng/socialize/db/f.getName();

    public f(Context context, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory)
    {
        super(context, "USocialize.db", cursorfactory, 2);
    }

    protected void a(Cursor cursor)
    {
        if (cursor != null)
        {
            cursor.close();
        }
    }

    protected void a(SQLiteDatabase sqlitedatabase)
    {
        if (sqlitedatabase != null)
        {
            sqlitedatabase.close();
        }
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.beginTransaction();
        Log.c(N, (new StringBuilder(" createSQL: ")).append("CREATE TABLE comment(_id INTEGER PRIMARY KEY AUTOINCREMENT,uid VARCHAR(20),user VARCHAR(20),avatar_icon VARCHAR(40),entity_key VARCHAR(20),content TEXT,data INTEGER(20),location VARCHAR(20));").toString());
        sqlitedatabase.execSQL("CREATE TABLE comment(_id INTEGER PRIMARY KEY AUTOINCREMENT,uid VARCHAR(20),user VARCHAR(20),avatar_icon VARCHAR(40),entity_key VARCHAR(20),content TEXT,data INTEGER(20),location VARCHAR(20));");
        Log.c(N, (new StringBuilder(" createSQL: ")).append("CREATE TABLE friends(_id INTEGER PRIMARY KEY AUTOINCREMENT,_name VARCHAR(20),fid VARCHAR(20),link_name VARCHAR(20),pinyin VARCHAR(20),initial VARCHAR(20),avatar_icon VARCHAR(20),usid VARCHAR(40),last_at_time INTEGER,alive INTEGER);").toString());
        sqlitedatabase.execSQL("CREATE TABLE friends(_id INTEGER PRIMARY KEY AUTOINCREMENT,_name VARCHAR(20),fid VARCHAR(20),link_name VARCHAR(20),pinyin VARCHAR(20),initial VARCHAR(20),avatar_icon VARCHAR(20),usid VARCHAR(40),last_at_time INTEGER,alive INTEGER);");
        Log.c(N, (new StringBuilder(" createSQL: ")).append("CREATE TABLE platforms(_id INTEGER PRIMARY KEY AUTOINCREMENT,keyword VARCHAR(20),showord VARCHAR(20),icon_light VARCHAR(20),icon_grey VARCHAR(40),alive INTEGER);").toString());
        sqlitedatabase.execSQL("CREATE TABLE platforms(_id INTEGER PRIMARY KEY AUTOINCREMENT,keyword VARCHAR(20),showord VARCHAR(20),icon_light VARCHAR(20),icon_grey VARCHAR(40),alive INTEGER);");
        Log.c(N, (new StringBuilder(" createSQL: ")).append("CREATE TABLE accounts(_id INTEGER PRIMARY KEY AUTOINCREMENT,acc_id VARCHAR(20),usid VARCHAR(20),keyword VARCHAR(20),username VARCHAR(20),gender VARCHAR(10),avatar_url VARCHAR(40),default_acc INTEGER);").toString());
        sqlitedatabase.execSQL("CREATE TABLE accounts(_id INTEGER PRIMARY KEY AUTOINCREMENT,acc_id VARCHAR(20),usid VARCHAR(20),keyword VARCHAR(20),username VARCHAR(20),gender VARCHAR(10),avatar_url VARCHAR(40),default_acc INTEGER);");
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        Log.d(N, (new StringBuilder("DAOHelper.onUpgade do it  oldVersion:")).append(i).append("newVersion").append(j).toString());
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS comment;");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS friends;");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS platforms;");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS accounts;");
        onCreate(sqlitedatabase);
    }

}
