// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class b extends SQLiteOpenHelper
{

    private static final String a;
    private static b b;

    public b(Context context)
    {
        super(context, b(context), null, 1);
    }

    public static b a(Context context)
    {
        net/youmi/android/a/a/g/e/b;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new b(context.getApplicationContext());
        }
        context = b;
        net/youmi/android/a/a/g/e/b;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private static String b(Context context)
    {
        context = context.getApplicationContext().getPackageName();
        return net.youmi.android.b.a.b.a((new StringBuilder()).append("and").append(net.youmi.android.b.a.b.a((new StringBuilder()).append("roid").append(context).append("db").toString())).append("3").toString());
    }

    public List a()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = getReadableDatabase();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        this;
        JVM INSTR monitorexit ;
        return null;
        if (!((SQLiteDatabase) (obj)).isOpen())
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_31;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        ArrayList arraylist;
        try
        {
            obj = ((SQLiteDatabase) (obj)).rawQuery("select * from a", null);
            arraylist = new ArrayList();
            for (; ((Cursor) (obj)).moveToNext(); arraylist.add(((Cursor) (obj)).getString(((Cursor) (obj)).getColumnIndex("a")))) { }
            break MISSING_BLOCK_LABEL_85;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally { }
        this;
        JVM INSTR monitorexit ;
        return null;
        ((Cursor) (obj)).close();
        this;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public boolean a(List list)
    {
        if (list == null || list.size() == 0)
        {
            return false;
        }
        this;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        if (sqlitedatabase != null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        this;
        JVM INSTR monitorexit ;
        return false;
        if (sqlitedatabase.isOpen())
        {
            break MISSING_BLOCK_LABEL_41;
        }
        this;
        JVM INSTR monitorexit ;
        return false;
        sqlitedatabase.beginTransaction();
        int i = 0;
_L2:
        String s;
        if (i >= list.size())
        {
            break MISSING_BLOCK_LABEL_134;
        }
        s = (String)list.get(i);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        if (s.equals(""))
        {
            break MISSING_BLOCK_LABEL_186;
        }
        try
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("a", s);
            sqlitedatabase.insert("a", null, contentvalues);
            break MISSING_BLOCK_LABEL_186;
        }
        // Misplaced declaration of an exception variable
        catch (List list) { }
        finally
        {
            if (sqlitedatabase == null) goto _L0; else goto _L0
        }
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        try
        {
            sqlitedatabase.endTransaction();
            sqlitedatabase.close();
        }
        // Misplaced declaration of an exception variable
        catch (List list) { }
        this;
        JVM INSTR monitorexit ;
        return false;
        sqlitedatabase.setTransactionSuccessful();
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        try
        {
            sqlitedatabase.endTransaction();
            sqlitedatabase.close();
        }
        // Misplaced declaration of an exception variable
        catch (List list) { }
        this;
        JVM INSTR monitorexit ;
        return true;
        list;
        this;
        JVM INSTR monitorexit ;
        throw list;
        try
        {
            sqlitedatabase.endTransaction();
            sqlitedatabase.close();
        }
        catch (Throwable throwable) { }
        throw list;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL(a);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        sqlitedatabase.execSQL(" drop table if exists a");
        onCreate(sqlitedatabase);
    }

    static 
    {
        a = String.format(Locale.US, "create table %s (%s integer primary key autoincrement, %s varchar(32)) ", new Object[] {
            "a", "id", "a"
        });
    }
}
