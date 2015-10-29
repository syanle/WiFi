// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.db:
//            SocializeDBConstants, f

public class e extends SQLiteOpenHelper
    implements SocializeDBConstants
{

    private static final String N = com/umeng/socialize/db/f.getName();

    public e(Context context, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory)
    {
        super(context, "USocialize.db", cursorfactory, 2);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        Log.c(N, (new StringBuilder(" createSQL: ")).append("CREATE TABLE sns_account(_id INTEGER PRIMARY KEY AUTOINCREMENT,uid VARCHAR(20),user VARCHAR(20),avatar_icon VARCHAR(40),entity_key VARCHAR(20),content TEXT,data INTEGER(20),location VARCHAR(20));").toString());
        sqlitedatabase.execSQL("CREATE TABLE sns_account(_id INTEGER PRIMARY KEY AUTOINCREMENT,uid VARCHAR(20),user VARCHAR(20),avatar_icon VARCHAR(40),entity_key VARCHAR(20),content TEXT,data INTEGER(20),location VARCHAR(20));");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }

}
