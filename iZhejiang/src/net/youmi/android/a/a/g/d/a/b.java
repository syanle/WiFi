// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.d.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.c.a.a;

// Referenced classes of package net.youmi.android.a.a.g.d.a:
//            c, d

class b
{

    private static b a;
    private static c b;

    private b(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("Context must not be null");
        } else
        {
            b = new c(context);
            return;
        }
    }

    static b a(Context context)
    {
        net/youmi/android/a/a/g/d/a/b;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new b(context.getApplicationContext());
        }
        context = a;
        net/youmi/android/a/a/g/d/a/b;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private void a(Cursor cursor)
    {
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        cursor.close();
        return;
        cursor;
    }

    private boolean a(SQLiteDatabase sqlitedatabase)
    {
        if (sqlitedatabase == null)
        {
            return false;
        } else
        {
            return sqlitedatabase.isOpen();
        }
    }

    private void b(SQLiteDatabase sqlitedatabase)
    {
        try
        {
            if (a(sqlitedatabase))
            {
                sqlitedatabase.close();
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SQLiteDatabase sqlitedatabase)
        {
            return;
        }
    }

    d a(String s)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = null;
        if (e.a(s))
        {
            return null;
        }
        "lock";
        JVM INSTR monitorenter ;
        Object obj = b.getWritableDatabase();
        sqlitedatabase = ((SQLiteDatabase) (obj));
        boolean flag = a(sqlitedatabase);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return null;
        int i;
        s = sqlitedatabase.query("Exj23LdkF", null, "b=?", new String[] {
            net.youmi.android.a.c.a.a.a(s, "lock")
        }, null, null, "a");
        i = s.getCount();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return null;
        if (!s.moveToNext())
        {
            break MISSING_BLOCK_LABEL_301;
        }
        obj = new d();
        obj.a = Long.parseLong(s.getString(s.getColumnIndex("a")));
        try
        {
            obj.e = Long.parseLong(s.getString(s.getColumnIndex("e")));
        }
        catch (Throwable throwable1) { }
        obj.b = net.youmi.android.a.c.a.a.b(s.getString(s.getColumnIndex("b")), "lock");
        obj.c = Integer.parseInt(net.youmi.android.a.c.a.a.b(s.getString(s.getColumnIndex("c")), "lock"));
        obj.d = Long.parseLong(s.getString(s.getColumnIndex("d")));
        obj.f = net.youmi.android.a.c.a.a.b(s.getString(s.getColumnIndex("f")), "lock");
        try
        {
            obj.g = Long.parseLong(s.getString(s.getColumnIndex("g")));
        }
        catch (Throwable throwable) { }
        obj.h = net.youmi.android.a.c.a.a.b(s.getString(s.getColumnIndex("h")), "lock");
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return ((d) (obj));
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return null;
_L2:
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return null;
_L1:
        b(sqlitedatabase);
        throw s;
        s;
        "lock";
        JVM INSTR monitorexit ;
        throw s;
        s;
          goto _L1
        s;
          goto _L2
        s;
        sqlitedatabase = null;
          goto _L2
        s;
          goto _L1
    }

    boolean a()
    {
        "lock";
        JVM INSTR monitorenter ;
        Object obj1 = null;
        Object obj = b.getWritableDatabase();
        obj1 = obj;
        boolean flag = a(((SQLiteDatabase) (obj)));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return false;
        obj1 = obj;
        int i = ((SQLiteDatabase) (obj)).delete("Exj23LdkF", "d>? and d<?", new String[] {
            "0", Long.toString(System.currentTimeMillis())
        });
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return true;
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return false;
        obj;
        "lock";
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        obj = null;
_L2:
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        b(((SQLiteDatabase) (obj1)));
        throw exception;
        Throwable throwable;
        throwable;
        if (true) goto _L2; else goto _L1
_L1:
    }

    boolean a(d d1)
    {
        SQLiteDatabase sqlitedatabase;
        SQLiteDatabase sqlitedatabase2;
        sqlitedatabase2 = null;
        sqlitedatabase = null;
        if (d1 == null || !d1.a())
        {
            return false;
        }
        "lock";
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase1 = b.getWritableDatabase();
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        boolean flag = a(sqlitedatabase1);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        b(sqlitedatabase1);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        d1;
        "lock";
        JVM INSTR monitorexit ;
        throw d1;
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        String s = net.youmi.android.a.c.a.a.a(d1.b, "lock");
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        String s1 = net.youmi.android.a.c.a.a.a((new StringBuilder()).append(d1.c).append("").toString(), "lock");
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        ContentValues contentvalues = new ContentValues();
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("a", Long.valueOf(d1.a));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("b", s);
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("c", s1);
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("d", Long.valueOf(d1.d));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        if (d1.e <= 0L)
        {
            break MISSING_BLOCK_LABEL_224;
        }
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("e", Long.valueOf(d1.e));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        if (!e.a(d1.f))
        {
            break MISSING_BLOCK_LABEL_260;
        }
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("f", net.youmi.android.a.c.a.a.a(d1.f, "lock"));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        if (d1.g <= 0L)
        {
            break MISSING_BLOCK_LABEL_293;
        }
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("g", Long.valueOf(d1.g));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        if (!e.a(d1.h))
        {
            break MISSING_BLOCK_LABEL_329;
        }
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("h", net.youmi.android.a.c.a.a.a(d1.h, "lock"));
        sqlitedatabase2 = sqlitedatabase1;
        long l;
        try
        {
            l = sqlitedatabase1.insertOrThrow("Exj23LdkF", null, contentvalues);
        }
        // Misplaced declaration of an exception variable
        catch (d d1)
        {
            l = -1L;
        }
        finally { }
        if (-1L != l)
        {
            break MISSING_BLOCK_LABEL_362;
        }
        b(sqlitedatabase1);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        b(sqlitedatabase1);
        "lock";
        JVM INSTR monitorexit ;
        return true;
        d1;
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        b(sqlitedatabase2);
        throw d1;
    }

    List b()
    {
        Object obj2 = null;
        "lock";
        JVM INSTR monitorenter ;
        Object obj = b.getReadableDatabase();
        boolean flag = a(((SQLiteDatabase) (obj)));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        a(((Cursor) (null)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        Object obj1 = ((SQLiteDatabase) (obj)).query("Exj23LdkF", null, null, null, null, null, "a");
        int i = ((Cursor) (obj1)).getCount();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        obj2 = new ArrayList();
_L2:
        flag = ((Cursor) (obj1)).moveToNext();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_329;
        }
        d d1;
        d1 = new d();
        d1.a = Long.parseLong(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("a")));
        try
        {
            d1.e = Long.parseLong(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("e")));
        }
        catch (Throwable throwable4) { }
        if (d1.e > d1.a) goto _L2; else goto _L1
_L1:
        d1.b = net.youmi.android.a.c.a.a.b(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("b")), "lock");
        d1.c = Integer.parseInt(net.youmi.android.a.c.a.a.b(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("c")), "lock"));
        d1.d = Long.parseLong(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("d")));
        d1.f = net.youmi.android.a.c.a.a.b(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("f")), "lock");
        Throwable throwable1;
        Exception exception;
        try
        {
            d1.g = Long.parseLong(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("g")));
        }
        catch (Throwable throwable3) { }
        try
        {
            d1.h = net.youmi.android.a.c.a.a.b(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("h")), "lock");
            ((List) (obj2)).add(d1);
        }
        catch (Throwable throwable2) { }
          goto _L2
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return ((List) (obj2));
_L4:
        a(((Cursor) (obj)));
        b(((SQLiteDatabase) (obj1)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
_L3:
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj2)));
        throw obj;
        obj;
        "lock";
        JVM INSTR monitorexit ;
        throw obj;
        exception;
        obj1 = null;
        obj2 = obj;
        obj = exception;
          goto _L3
        exception;
        obj2 = obj;
        obj = exception;
          goto _L3
        obj1;
        obj1 = obj;
        obj = null;
          goto _L4
        throwable1;
        throwable1 = ((Throwable) (obj));
        obj = obj1;
        obj1 = throwable1;
          goto _L4
        Throwable throwable;
        throwable;
        throwable = null;
        obj1 = null;
          goto _L4
        throwable;
        obj1 = null;
          goto _L3
    }

    boolean b(d d1)
    {
        if (d1 == null || !d1.a())
        {
            return false;
        }
        "lock";
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase1 = null;
        SQLiteDatabase sqlitedatabase = b.getWritableDatabase();
        sqlitedatabase1 = sqlitedatabase;
        boolean flag = a(sqlitedatabase);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        d1;
        "lock";
        JVM INSTR monitorexit ;
        throw d1;
        sqlitedatabase1 = sqlitedatabase;
        long l = d1.e;
        if (l > 0L)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        sqlitedatabase1 = sqlitedatabase;
        ContentValues contentvalues = new ContentValues();
        sqlitedatabase1 = sqlitedatabase;
        contentvalues.put("e", Long.valueOf(d1.e));
        sqlitedatabase1 = sqlitedatabase;
        d1 = net.youmi.android.a.c.a.a.a(d1.b, "lock");
        l = -1L;
        sqlitedatabase1 = sqlitedatabase;
        int i = sqlitedatabase.update("Exj23LdkF", contentvalues, "b=?", new String[] {
            d1
        });
        l = i;
_L2:
        if (0L == l)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return true;
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
_L1:
        b(((SQLiteDatabase) (d1)));
        "lock";
        JVM INSTR monitorexit ;
        return false;
        d1;
        b(sqlitedatabase1);
        throw d1;
        d1;
        d1 = sqlitedatabase;
          goto _L1
        d1;
          goto _L2
        d1;
        d1 = null;
          goto _L1
    }
}
