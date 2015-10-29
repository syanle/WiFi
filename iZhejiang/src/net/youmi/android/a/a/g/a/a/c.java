// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
import net.youmi.android.a.a.g.a.b.b;
import net.youmi.android.a.c.a.a;

// Referenced classes of package net.youmi.android.a.a.g.a.a:
//            d

public class c
{

    private static c a;
    private static d b;

    private c(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("Context must not be null");
        } else
        {
            b = new d(context.getApplicationContext());
            return;
        }
    }

    public static c a(Context context)
    {
        net/youmi/android/a/a/g/a/a/c;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new c(context);
        }
        context = a;
        net/youmi/android/a/a/g/a/a/c;
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

    public void a()
    {
        Object obj1 = null;
        "lock";
        JVM INSTR monitorenter ;
        Object obj = b.getWritableDatabase();
        obj1 = obj;
        boolean flag = a(((SQLiteDatabase) (obj)));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return;
        obj1 = obj;
        ContentValues contentvalues = new ContentValues();
        obj1 = obj;
        contentvalues.put("e", Integer.valueOf(0));
        obj1 = obj;
        int i = ((SQLiteDatabase) (obj)).update("d4fI98p", contentvalues, null, null);
        if (i == 0);
        b(((SQLiteDatabase) (obj)));
_L1:
        "lock";
        JVM INSTR monitorexit ;
        return;
        obj;
        "lock";
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        b(((SQLiteDatabase) (obj1)));
          goto _L1
_L3:
        b(((SQLiteDatabase) (obj1)));
        throw obj;
        Exception exception;
        exception;
        obj1 = obj;
        obj = exception;
        continue; /* Loop/switch isn't completed */
        obj;
        obj1 = null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public boolean a(String s)
    {
        if (s == null)
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
            break MISSING_BLOCK_LABEL_48;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        s;
        "lock";
        JVM INSTR monitorexit ;
        throw s;
        sqlitedatabase1 = sqlitedatabase;
        int i = sqlitedatabase.delete("d4fI98p", "a=?", new String[] {
            s
        });
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return true;
        b(sqlitedatabase);
_L1:
        "lock";
        JVM INSTR monitorexit ;
        return false;
_L2:
        b(s);
          goto _L1
        s;
        b(sqlitedatabase1);
        throw s;
        s;
        s = sqlitedatabase;
          goto _L2
        s;
        s = null;
          goto _L2
    }

    public boolean a(b b1)
    {
        SQLiteDatabase sqlitedatabase;
        SQLiteDatabase sqlitedatabase2;
        sqlitedatabase2 = null;
        for (sqlitedatabase = null; b1 == null || b1.b() == null;)
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
        b1;
        "lock";
        JVM INSTR monitorexit ;
        throw b1;
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        String s = net.youmi.android.a.c.a.a.a(net.youmi.android.a.b.h.b.a(b1.a()), "Android");
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        ContentValues contentvalues = new ContentValues();
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("a", b1.b());
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("b", s);
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("c", Long.valueOf(b1.c()));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("d", Long.valueOf(b1.d()));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("e", Integer.valueOf(b1.f()));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("f", Long.valueOf(b1.e()));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("g", Integer.valueOf(b1.g()));
        sqlitedatabase2 = sqlitedatabase1;
        long l;
        try
        {
            l = sqlitedatabase1.insertOrThrow("d4fI98p", null, contentvalues);
        }
        // Misplaced declaration of an exception variable
        catch (b b1)
        {
            l = -1L;
        }
        finally { }
        if (-1L == l)
        {
            break MISSING_BLOCK_LABEL_252;
        }
        b(sqlitedatabase1);
        "lock";
        JVM INSTR monitorexit ;
        return true;
        b(sqlitedatabase1);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        b1;
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        b(sqlitedatabase2);
        throw b1;
    }

    public b b(String s)
    {
        Object obj1 = null;
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
        s = ((SQLiteDatabase) (obj)).query("d4fI98p", null, "a=?", new String[] {
            s
        }, null, null, null, null);
        int i = s.getCount();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        a(s);
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        obj1 = new b();
        if (s.moveToNext())
        {
            ((b) (obj1)).b(s.getString(s.getColumnIndex("a")));
            ((b) (obj1)).a(net.youmi.android.a.c.a.a.b(net.youmi.android.a.b.h.b.a(s.getString(s.getColumnIndex("b"))), "Android"));
            ((b) (obj1)).a(s.getLong(s.getColumnIndex("c")));
            ((b) (obj1)).b(s.getLong(s.getColumnIndex("d")));
            ((b) (obj1)).c(s.getLong(s.getColumnIndex("f")));
            ((b) (obj1)).a(s.getInt(s.getColumnIndex("e")));
            ((b) (obj1)).b(s.getInt(s.getColumnIndex("g")));
        }
        a(s);
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return ((b) (obj1));
_L2:
        a(s);
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
_L1:
        a(s);
        b(((SQLiteDatabase) (obj1)));
        throw obj;
        s;
        "lock";
        JVM INSTR monitorexit ;
        throw s;
        Exception exception1;
        exception1;
        s = null;
        obj1 = obj;
        obj = exception1;
          goto _L1
        exception1;
        obj1 = obj;
        obj = exception1;
          goto _L1
        s;
        s = null;
          goto _L2
        Exception exception;
        exception;
          goto _L2
        s;
        s = null;
        obj = null;
          goto _L2
        obj;
        s = null;
          goto _L1
    }

    public void b()
    {
        Object obj1 = null;
        "lock";
        JVM INSTR monitorenter ;
        Object obj = b.getWritableDatabase();
        obj1 = obj;
        boolean flag = a(((SQLiteDatabase) (obj)));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return;
        obj1 = obj;
        int i = ((SQLiteDatabase) (obj)).delete("d4fI98p", null, null);
        if (i == 0);
        b(((SQLiteDatabase) (obj)));
_L1:
        "lock";
        JVM INSTR monitorexit ;
        return;
        obj;
        "lock";
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        b(((SQLiteDatabase) (obj1)));
          goto _L1
_L3:
        b(((SQLiteDatabase) (obj1)));
        throw obj;
        Exception exception;
        exception;
        obj1 = obj;
        obj = exception;
        continue; /* Loop/switch isn't completed */
        obj;
        obj1 = null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public boolean b(b b1)
    {
        while (b1 == null || b1.b() == null) 
        {
            return false;
        }
        "lock";
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase1 = null;
        SQLiteDatabase sqlitedatabase = b.getWritableDatabase();
        sqlitedatabase1 = sqlitedatabase;
        ContentValues contentvalues;
        int i;
        boolean flag;
        try
        {
            flag = a(sqlitedatabase);
        }
        // Misplaced declaration of an exception variable
        catch (b b1)
        {
            b1 = sqlitedatabase;
            continue; /* Loop/switch isn't completed */
        }
        finally { }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        b1;
        "lock";
        JVM INSTR monitorexit ;
        throw b1;
        sqlitedatabase1 = sqlitedatabase;
        contentvalues = new ContentValues();
        sqlitedatabase1 = sqlitedatabase;
        if (b1.c() == 0L)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        sqlitedatabase1 = sqlitedatabase;
        contentvalues.put("c", Long.valueOf(b1.c()));
        sqlitedatabase1 = sqlitedatabase;
        if (b1.d() == 0L)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        sqlitedatabase1 = sqlitedatabase;
        contentvalues.put("d", Long.valueOf(b1.d()));
        sqlitedatabase1 = sqlitedatabase;
        if (b1.g() != 1)
        {
            break MISSING_BLOCK_LABEL_146;
        }
        sqlitedatabase1 = sqlitedatabase;
        contentvalues.put("g", Integer.valueOf(b1.g()));
        sqlitedatabase1 = sqlitedatabase;
        contentvalues.put("e", Integer.valueOf(b1.f()));
        sqlitedatabase1 = sqlitedatabase;
        i = sqlitedatabase.update("d4fI98p", contentvalues, "a=?", new String[] {
            b1.b()
        });
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return true;
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
_L2:
        b(((SQLiteDatabase) (b1)));
        "lock";
        JVM INSTR monitorexit ;
        return false;
        b(sqlitedatabase1);
        throw b1;
        b1;
        b1 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public List c()
    {
        "lock";
        JVM INSTR monitorenter ;
        Object obj = b.getReadableDatabase();
        boolean flag = a(((SQLiteDatabase) (obj)));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        a(((Cursor) (null)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        Cursor cursor = ((SQLiteDatabase) (obj)).rawQuery("SELECT * FROM d4fI98p", null);
        int i = cursor.getCount();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        a(cursor);
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        obj;
        "lock";
        JVM INSTR monitorexit ;
        throw obj;
        Object obj1;
        obj1 = new ArrayList();
        b b1;
        for (; cursor.moveToNext(); ((List) (obj1)).add(b1))
        {
            b1 = new b();
            b1.b(cursor.getString(cursor.getColumnIndex("a")));
            b1.a(net.youmi.android.a.c.a.a.b(net.youmi.android.a.b.h.b.a(cursor.getString(cursor.getColumnIndex("b"))), "Android"));
            b1.a(cursor.getLong(cursor.getColumnIndex("c")));
            b1.b(cursor.getLong(cursor.getColumnIndex("d")));
            b1.c(cursor.getLong(cursor.getColumnIndex("f")));
            b1.a(cursor.getInt(cursor.getColumnIndex("e")));
            b1.b(cursor.getInt(cursor.getColumnIndex("g")));
        }

          goto _L1
        obj1;
        obj1 = obj;
        obj = cursor;
_L3:
        a(((Cursor) (obj)));
        b(((SQLiteDatabase) (obj1)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
_L1:
        a(cursor);
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return ((List) (obj1));
_L2:
        a(cursor);
        b(((SQLiteDatabase) (obj)));
        throw obj1;
        obj1;
        cursor = null;
          goto _L2
        obj1;
          goto _L2
        obj;
        obj = null;
        obj1 = null;
          goto _L3
        obj1;
        cursor = null;
        obj1 = obj;
        obj = cursor;
          goto _L3
        obj1;
        cursor = null;
        obj = null;
          goto _L2
    }

    public boolean c(b b1)
    {
        if (b1 == null)
        {
            return false;
        } else
        {
            return a(b1.b());
        }
    }

    public b d()
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
        Object obj1 = ((SQLiteDatabase) (obj)).query("d4fI98p", null, "e=?", new String[] {
            "1"
        }, null, null, null, null);
        int i = ((Cursor) (obj1)).getCount();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        obj2 = new b();
        if (((Cursor) (obj1)).moveToNext())
        {
            ((b) (obj2)).b(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("a")));
            ((b) (obj2)).a(net.youmi.android.a.c.a.a.b(net.youmi.android.a.b.h.b.a(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("b"))), "Android"));
            ((b) (obj2)).a(((Cursor) (obj1)).getLong(((Cursor) (obj1)).getColumnIndex("c")));
            ((b) (obj2)).b(((Cursor) (obj1)).getLong(((Cursor) (obj1)).getColumnIndex("d")));
            ((b) (obj2)).c(((Cursor) (obj1)).getLong(((Cursor) (obj1)).getColumnIndex("f")));
            ((b) (obj2)).a(((Cursor) (obj1)).getInt(((Cursor) (obj1)).getColumnIndex("e")));
            ((b) (obj2)).b(((Cursor) (obj1)).getInt(((Cursor) (obj1)).getColumnIndex("g")));
        }
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return ((b) (obj2));
_L2:
        a(((Cursor) (obj)));
        b(((SQLiteDatabase) (obj1)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
_L1:
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj2)));
        throw obj;
        obj;
        "lock";
        JVM INSTR monitorexit ;
        throw obj;
        Exception exception2;
        exception2;
        obj1 = null;
        obj2 = obj;
        obj = exception2;
          goto _L1
        exception2;
        obj2 = obj;
        obj = exception2;
          goto _L1
        obj1;
        obj1 = obj;
        obj = null;
          goto _L2
        Exception exception1;
        exception1;
        Object obj3 = obj;
        obj = obj1;
        obj1 = obj3;
          goto _L2
        Exception exception;
        exception;
        exception = null;
        obj1 = null;
          goto _L2
        exception;
        obj1 = null;
          goto _L1
    }
}
