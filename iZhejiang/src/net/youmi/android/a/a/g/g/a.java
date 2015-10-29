// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.g;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import net.youmi.android.a.b.d.g;

public class a extends SQLiteOpenHelper
{

    a(Context context)
    {
        super(context, a(context), null, 1);
    }

    private static String a(Context context)
    {
        return g.a((new StringBuilder()).append(net.youmi.android.a.c.c.a.a(context)).append("c5Jf9heg").toString());
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS c6J4lm0j(a VARCHAR PRIMARY KEY, b VARCHAR);");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS c6J4lm0j");
        onCreate(sqlitedatabase);
    }
}
