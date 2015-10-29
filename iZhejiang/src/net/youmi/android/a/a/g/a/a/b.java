// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.c.c.a;

class b extends SQLiteOpenHelper
{

    b(Context context)
    {
        super(context, a(context), null, 4);
    }

    private static final String a(Context context)
    {
        return g.a((new StringBuilder()).append(net.youmi.android.a.c.c.a.a(context)).append("b4He8gdf").toString());
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS b5I3kl9i(a VARCHAR PRIMARY KEY, b VARCHAR, c INTEGER, d INTEGER, e INTEGER, f VARCHAR, g VARCHAR);");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS b5I3kl9i");
        onCreate(sqlitedatabase);
    }
}
