// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.d.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.c.c.a;

class c extends SQLiteOpenHelper
{

    private static final String a = String.format("create table if not exists %s (_id integer primary key autoincrement, %s varchar, %s text UNIQUE, %s varchar, %s varchar, %s varchar, %s varchar, %s varchar, %s varchar)", new Object[] {
        "Exj23LdkF", "a", "b", "c", "d", "e", "f", "g", "h"
    });

    c(Context context)
    {
        super(context, a(context), null, 4);
    }

    private static final String a(Context context)
    {
        try
        {
            context = g.a((new StringBuilder()).append(net.youmi.android.a.c.c.a.a(context)).append("E9xSkldfF").toString());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return "E9xSkldfF";
        }
        return context;
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL(a);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS Exj23LdkF");
        onCreate(sqlitedatabase);
    }

}
