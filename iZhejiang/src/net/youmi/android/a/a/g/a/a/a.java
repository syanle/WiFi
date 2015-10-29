// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Iterator;
import java.util.List;
import net.youmi.android.a.a.g.a.f;
import net.youmi.android.a.b.h.b;

// Referenced classes of package net.youmi.android.a.a.g.a.a:
//            b

public class a
{

    private static a a;
    private static net.youmi.android.a.a.g.a.a.b b;

    private a(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("Context must not be null");
        } else
        {
            b = new net.youmi.android.a.a.g.a.a.b(context);
            return;
        }
    }

    public static a a(Context context)
    {
        net/youmi/android/a/a/g/a/a/a;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new a(context.getApplicationContext());
        }
        context = a;
        net/youmi/android/a/a/g/a/a/a;
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

    public net.youmi.android.a.a.g.a.b.a a(int i)
    {
        if (i == 0)
        {
            return null;
        }
        "lock";
        JVM INSTR monitorenter ;
        Object obj = b.getReadableDatabase();
        boolean flag = a(((SQLiteDatabase) (obj)));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        a(((Cursor) (null)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        obj;
        "lock";
        JVM INSTR monitorexit ;
        throw obj;
        Object obj1 = ((SQLiteDatabase) (obj)).rawQuery("SELECT * FROM b5I3kl9i WHERE g=?", new String[] {
            net.youmi.android.a.c.a.a.a(String.valueOf(i), "Android")
        });
        i = ((Cursor) (obj1)).getCount();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        net.youmi.android.a.a.g.a.b.a a1;
        a1 = new net.youmi.android.a.a.g.a.b.a();
        if (((Cursor) (obj1)).moveToNext())
        {
            String s = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("a"));
            String s2 = net.youmi.android.a.b.h.b.a(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("b")));
            String s3 = net.youmi.android.a.b.h.b.a(((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("f")));
            String s1 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("g"));
            s2 = net.youmi.android.a.c.a.a.b(s2, "Android");
            s3 = net.youmi.android.a.c.a.a.b(s3, "Android");
            s1 = net.youmi.android.a.c.a.a.b(s1, "Android");
            a1.a(s);
            a1.b(s2);
            a1.c(s3);
            a1.a(Integer.parseInt(s1));
            a1.b(((Cursor) (obj1)).getInt(((Cursor) (obj1)).getColumnIndex("c")));
            a1.c(((Cursor) (obj1)).getInt(((Cursor) (obj1)).getColumnIndex("d")));
            f.a().a(s, 3, a1.d());
            f.a().a(s, 13, a1.e());
            a1.d(((Cursor) (obj1)).getInt(((Cursor) (obj1)).getColumnIndex("e")));
        }
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return a1;
_L2:
        a(((Cursor) (obj)));
        b(((SQLiteDatabase) (obj1)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
_L1:
        Object obj2;
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        throw obj2;
        obj2;
        obj1 = null;
          goto _L1
        obj2;
          goto _L1
        obj1;
        obj2 = null;
        obj1 = obj;
        obj = obj2;
          goto _L2
        obj2;
        obj2 = obj;
        obj = obj1;
        obj1 = obj2;
          goto _L2
        Exception exception;
        exception;
        exception = null;
        obj1 = null;
          goto _L2
        obj2;
        obj1 = null;
        exception = null;
          goto _L1
    }

    public net.youmi.android.a.a.g.a.b.a a(String s)
    {
        if (s == null)
        {
            return null;
        }
        "lock";
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = b.getReadableDatabase();
        boolean flag = a(sqlitedatabase);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        a(((Cursor) (null)));
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return null;
        s;
        "lock";
        JVM INSTR monitorexit ;
        throw s;
        Cursor cursor = sqlitedatabase.rawQuery("SELECT * FROM b5I3kl9i WHERE a=?", new String[] {
            s
        });
        int i = cursor.getCount();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        a(cursor);
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return null;
        net.youmi.android.a.a.g.a.b.a a1;
        a1 = new net.youmi.android.a.a.g.a.b.a();
        if (cursor.moveToNext())
        {
            a1.a(cursor.getString(cursor.getColumnIndex("a")));
            String s2 = net.youmi.android.a.b.h.b.a(cursor.getString(cursor.getColumnIndex("b")));
            String s3 = net.youmi.android.a.b.h.b.a(cursor.getString(cursor.getColumnIndex("f")));
            String s1 = cursor.getString(cursor.getColumnIndex("g"));
            s2 = net.youmi.android.a.c.a.a.b(s2, "Android");
            s3 = net.youmi.android.a.c.a.a.b(s3, "Android");
            s1 = net.youmi.android.a.c.a.a.b(s1, "Android");
            a1.b(s2);
            a1.c(s3);
            a1.a(Integer.parseInt(s1));
            a1.b(cursor.getInt(cursor.getColumnIndex("c")));
            a1.c(cursor.getInt(cursor.getColumnIndex("d")));
            f.a().a(s, 3, a1.d());
            f.a().a(s, 13, a1.e());
            a1.d(cursor.getInt(cursor.getColumnIndex("e")));
        }
        a(cursor);
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return a1;
_L2:
        a(((Cursor) (s)));
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return null;
_L1:
        a(cursor);
        b(sqlitedatabase);
        throw s;
        s;
        cursor = null;
          goto _L1
        s;
          goto _L1
        s;
        s = null;
          goto _L2
        s;
        s = cursor;
          goto _L2
        s;
        s = null;
        sqlitedatabase = null;
          goto _L2
        s;
        cursor = null;
        sqlitedatabase = null;
          goto _L1
    }

    public boolean a(List list)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = null;
        if (list == null || list.size() <= 0)
        {
            return false;
        }
        "lock";
        JVM INSTR monitorenter ;
        Object obj = b.getWritableDatabase();
        sqlitedatabase = ((SQLiteDatabase) (obj));
        boolean flag = a(sqlitedatabase);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        sqlitedatabase.endTransaction();
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        sqlitedatabase.beginTransaction();
        list = list.iterator();
_L2:
        do
        {
            if (!list.hasNext())
            {
                break MISSING_BLOCK_LABEL_286;
            }
            obj = (net.youmi.android.a.a.g.a.b.a)list.next();
        } while (obj == null);
        if (((net.youmi.android.a.a.g.a.b.a) (obj)).a() == null) goto _L2; else goto _L1
_L1:
        Object obj1;
        String s = net.youmi.android.a.b.h.b.a(((net.youmi.android.a.a.g.a.b.a) (obj)).c());
        obj1 = net.youmi.android.a.b.h.b.a(((net.youmi.android.a.a.g.a.b.a) (obj)).g());
        int i = ((net.youmi.android.a.a.g.a.b.a) (obj)).b();
        s = net.youmi.android.a.c.a.a.a(s, "Android");
        String s1 = net.youmi.android.a.c.a.a.a(((String) (obj1)), "Android");
        String s2 = net.youmi.android.a.c.a.a.a(String.valueOf(i), "Android");
        obj1 = new ContentValues();
        ((ContentValues) (obj1)).put("a", ((net.youmi.android.a.a.g.a.b.a) (obj)).a());
        ((ContentValues) (obj1)).put("b", s);
        ((ContentValues) (obj1)).put("c", Integer.valueOf(((net.youmi.android.a.a.g.a.b.a) (obj)).d()));
        ((ContentValues) (obj1)).put("d", Integer.valueOf(((net.youmi.android.a.a.g.a.b.a) (obj)).e()));
        ((ContentValues) (obj1)).put("e", Integer.valueOf(((net.youmi.android.a.a.g.a.b.a) (obj)).f()));
        ((ContentValues) (obj1)).put("f", s1);
        ((ContentValues) (obj1)).put("g", s2);
        long l;
        try
        {
            l = sqlitedatabase.insertOrThrow("b5I3kl9i", null, ((ContentValues) (obj1)));
        }
        catch (Throwable throwable)
        {
            l = -1L;
        }
        if (-1L != l) goto _L2; else goto _L3
_L3:
        if (sqlitedatabase.update("b5I3kl9i", ((ContentValues) (obj1)), "a=?", new String[] {
    ((net.youmi.android.a.a.g.a.b.a) (obj)).a()
}) == 0);
          goto _L2
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return true;
_L5:
        list.endTransaction();
        b(list);
        "lock";
        JVM INSTR monitorexit ;
        return false;
_L4:
        sqlitedatabase.endTransaction();
        b(sqlitedatabase);
        throw list;
        list;
        "lock";
        JVM INSTR monitorexit ;
        throw list;
        list;
          goto _L4
        list;
        list = sqlitedatabase;
          goto _L5
        list;
        list = sqlitedatabase;
          goto _L5
        list;
        sqlitedatabase = null;
          goto _L4
    }

    public boolean a(net.youmi.android.a.a.g.a.b.a a1)
    {
        SQLiteDatabase sqlitedatabase;
        SQLiteDatabase sqlitedatabase2;
        sqlitedatabase2 = null;
        sqlitedatabase = null;
        if (a1 == null || a1.a() == null)
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
        a1;
        "lock";
        JVM INSTR monitorexit ;
        throw a1;
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        String s = net.youmi.android.a.b.h.b.a(a1.c());
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        String s1 = net.youmi.android.a.b.h.b.a(a1.g());
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        int i = a1.b();
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        s = net.youmi.android.a.c.a.a.a(s, "Android");
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        s1 = net.youmi.android.a.c.a.a.a(s1, "Android");
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        String s2 = net.youmi.android.a.c.a.a.a(String.valueOf(i), "Android");
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        ContentValues contentvalues = new ContentValues();
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("a", a1.a());
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("b", s);
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("c", Integer.valueOf(a1.d()));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("d", Integer.valueOf(a1.e()));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("e", Integer.valueOf(a1.f()));
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("f", s1);
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase2 = sqlitedatabase1;
        contentvalues.put("g", s2);
        sqlitedatabase2 = sqlitedatabase1;
        long l;
        try
        {
            l = sqlitedatabase1.insertOrThrow("b5I3kl9i", null, contentvalues);
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.g.a.b.a a1)
        {
            l = -1L;
        }
        finally { }
        if (-1L != l)
        {
            break MISSING_BLOCK_LABEL_307;
        }
        b(sqlitedatabase1);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        b(sqlitedatabase1);
        "lock";
        JVM INSTR monitorexit ;
        return true;
        a1;
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        b(sqlitedatabase2);
        throw a1;
    }

    public boolean b(net.youmi.android.a.a.g.a.b.a a1)
    {
        if (a1 == null || a1.a() == null)
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
        a1;
        "lock";
        JVM INSTR monitorexit ;
        throw a1;
        sqlitedatabase1 = sqlitedatabase;
        ContentValues contentvalues = new ContentValues();
        sqlitedatabase1 = sqlitedatabase;
        if (a1.d() != 1)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        sqlitedatabase1 = sqlitedatabase;
        contentvalues.put("c", Integer.valueOf(a1.d()));
        sqlitedatabase1 = sqlitedatabase;
        if (a1.e() != 1)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        sqlitedatabase1 = sqlitedatabase;
        contentvalues.put("d", Integer.valueOf(a1.e()));
        sqlitedatabase1 = sqlitedatabase;
        if (a1.f() == 5)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        sqlitedatabase1 = sqlitedatabase;
        contentvalues.put("e", Integer.valueOf(a1.f()));
        sqlitedatabase1 = sqlitedatabase;
        String s = a1.g();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        sqlitedatabase1 = sqlitedatabase;
        if ("".equals(s.trim()))
        {
            break MISSING_BLOCK_LABEL_191;
        }
        sqlitedatabase1 = sqlitedatabase;
        contentvalues.put("f", net.youmi.android.a.c.a.a.a(net.youmi.android.a.b.h.b.a(s), "Android"));
        sqlitedatabase1 = sqlitedatabase;
        int i = contentvalues.size();
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_215;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return false;
        sqlitedatabase1 = sqlitedatabase;
        i = sqlitedatabase.update("b5I3kl9i", contentvalues, "a=?", new String[] {
            a1.a()
        });
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_255;
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
        b(((SQLiteDatabase) (a1)));
          goto _L1
        a1;
        b(sqlitedatabase1);
        throw a1;
        a1;
        a1 = sqlitedatabase;
          goto _L2
        a1;
        a1 = null;
          goto _L2
    }
}
