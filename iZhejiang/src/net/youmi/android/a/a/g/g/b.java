// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.g;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
import net.youmi.android.a.c.a.a;

// Referenced classes of package net.youmi.android.a.a.g.g:
//            a, c

public class b
{

    private static b b;
    private net.youmi.android.a.a.g.g.a a;

    private b(Context context)
    {
        a = new net.youmi.android.a.a.g.g.a(context.getApplicationContext());
    }

    public static b a(Context context)
    {
        net/youmi/android/a/a/g/g/b;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new b(context);
        }
        context = b;
        net/youmi/android/a/a/g/g/b;
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

    public List a()
    {
        "lock";
        JVM INSTR monitorenter ;
        Object obj = a.getReadableDatabase();
        boolean flag = a(((SQLiteDatabase) (obj)));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        a(((Cursor) (null)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        Object obj1 = ((SQLiteDatabase) (obj)).rawQuery("SELECT * FROM c6J4lm0j", null);
        int i = ((Cursor) (obj1)).getCount();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
        obj;
        "lock";
        JVM INSTR monitorexit ;
        throw obj;
        Object obj2;
        obj2 = new ArrayList();
        c c1;
        for (; ((Cursor) (obj1)).moveToNext(); ((List) (obj2)).add(c1))
        {
            c1 = new c();
            String s1 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("a"));
            String s = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("b"));
            s1 = net.youmi.android.a.c.a.a.b(s1, "Android");
            s = net.youmi.android.a.c.a.a.b(s, "Android");
            c1.a(s1);
            c1.b(s);
        }

          goto _L1
        obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj2;
_L3:
        a(((Cursor) (obj)));
        b(((SQLiteDatabase) (obj1)));
        "lock";
        JVM INSTR monitorexit ;
        return null;
_L1:
        ((Cursor) (obj1)).close();
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        "lock";
        JVM INSTR monitorexit ;
        return ((List) (obj2));
_L2:
        Exception exception;
        a(((Cursor) (obj1)));
        b(((SQLiteDatabase) (obj)));
        throw exception;
        exception;
        obj1 = null;
          goto _L2
        exception;
          goto _L2
        obj;
        obj = null;
        obj1 = null;
          goto _L3
        obj1;
        exception = null;
        obj1 = obj;
        obj = exception;
          goto _L3
        exception;
        obj1 = null;
        obj = null;
          goto _L2
    }

    public void a(String s)
    {
        if (s == null)
        {
            return;
        }
        "lock";
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase1 = null;
        SQLiteDatabase sqlitedatabase = a.getWritableDatabase();
        sqlitedatabase1 = sqlitedatabase;
        boolean flag = a(sqlitedatabase);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return;
        s;
        "lock";
        JVM INSTR monitorexit ;
        throw s;
        sqlitedatabase1 = sqlitedatabase;
        int i = sqlitedatabase.delete("c6J4lm0j", "a=?", new String[] {
            net.youmi.android.a.c.a.a.a(s, "Android")
        });
        if (i == 0);
        b(sqlitedatabase);
_L1:
        "lock";
        JVM INSTR monitorexit ;
        return;
        s;
        b(sqlitedatabase1);
          goto _L1
_L3:
        b(sqlitedatabase);
        throw s;
        s;
        continue; /* Loop/switch isn't completed */
        s;
        sqlitedatabase = null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void a(c c1)
    {
        while (c1 == null || c1.a() == null) 
        {
            return;
        }
        "lock";
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase1 = null;
        SQLiteDatabase sqlitedatabase = a.getWritableDatabase();
        sqlitedatabase1 = sqlitedatabase;
        boolean flag = a(sqlitedatabase);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        b(sqlitedatabase);
        "lock";
        JVM INSTR monitorexit ;
        return;
        c1;
        "lock";
        JVM INSTR monitorexit ;
        throw c1;
        sqlitedatabase1 = sqlitedatabase;
        String s = c1.a();
        sqlitedatabase1 = sqlitedatabase;
        c1 = c1.b();
        sqlitedatabase1 = sqlitedatabase;
        sqlitedatabase.execSQL("INSERT INTO c6J4lm0j VALUES(?, ?)", new Object[] {
            net.youmi.android.a.c.a.a.a(s, "Android"), net.youmi.android.a.c.a.a.a(c1, "Android")
        });
        b(sqlitedatabase);
_L1:
        "lock";
        JVM INSTR monitorexit ;
        return;
        c1;
        b(sqlitedatabase1);
          goto _L1
_L3:
        b(sqlitedatabase);
        throw c1;
        c1;
        continue; /* Loop/switch isn't completed */
        c1;
        sqlitedatabase = null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void b(c c1)
    {
        if (c1 == null)
        {
            return;
        } else
        {
            a(c1.a());
            return;
        }
    }
}
