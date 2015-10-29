// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class TADBHelper extends SQLiteOpenHelper
{

    private TASQLiteDatabase.TADBUpdateListener mTadbUpdateListener;

    public TADBHelper(Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory, int i)
    {
        super(context, s, cursorfactory, i);
    }

    public TADBHelper(Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory, int i, TASQLiteDatabase.TADBUpdateListener tadbupdatelistener)
    {
        super(context, s, cursorfactory, i);
        mTadbUpdateListener = tadbupdatelistener;
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        if (mTadbUpdateListener != null)
        {
            mTadbUpdateListener.onUpgrade(sqlitedatabase, i, j);
        }
    }

    public void setOndbUpdateListener(TASQLiteDatabase.TADBUpdateListener tadbupdatelistener)
    {
        mTadbUpdateListener = tadbupdatelistener;
    }
}
