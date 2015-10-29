// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.List;
import net.youmi.android.a.b.b.e;

// Referenced classes of package net.youmi.android.a.b.c:
//            b

class a extends SQLiteOpenHelper
{

    protected static String a;
    private static final String b;
    private static final String c;

    protected a(Context context, String s, int i)
    {
        this(context, s, i, null);
    }

    protected a(Context context, String s, int i, String s1)
    {
        super(context.getApplicationContext(), s, null, i);
        if (s1 != null && !"".equals(s1.trim()))
        {
            a = s1;
        }
    }

    private void a(ContentValues contentvalues, String s, long l)
    {
        if (contentvalues == null || e.a(s))
        {
            return;
        } else
        {
            contentvalues.put(s, Long.valueOf(l));
            return;
        }
    }

    private void a(ContentValues contentvalues, String s, String s1)
    {
        if (contentvalues == null || e.a(s1) || e.a(s))
        {
            return;
        } else
        {
            contentvalues.put(s, s1);
            return;
        }
    }

    private void a(ContentValues contentvalues, String s, byte abyte0[])
    {
        while (contentvalues == null || e.a(s) || abyte0 == null || abyte0.length == 0) 
        {
            return;
        }
        contentvalues.put(s, abyte0);
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

    private boolean a(SQLiteDatabase sqlitedatabase, String s, ContentValues contentvalues)
    {
        boolean flag = false;
        long l;
        try
        {
            l = sqlitedatabase.insert(s, null, contentvalues);
        }
        // Misplaced declaration of an exception variable
        catch (SQLiteDatabase sqlitedatabase)
        {
            return false;
        }
        if (l > 0L)
        {
            flag = true;
        }
        return flag;
    }

    private boolean a(SQLiteDatabase sqlitedatabase, String s, ContentValues contentvalues, String s1, String s2)
    {
        int i;
        try
        {
            i = sqlitedatabase.update(s, contentvalues, (new StringBuilder()).append(s1).append("=?").toString(), new String[] {
                s2
            });
        }
        // Misplaced declaration of an exception variable
        catch (SQLiteDatabase sqlitedatabase)
        {
            return false;
        }
label0:
        {
            if ((long)i > 0L)
            {
                return true;
            }
            break label0;
        }
    }

    private boolean a(SQLiteDatabase sqlitedatabase, String s, String s1, String s2)
    {
        Object obj = null;
        sqlitedatabase = sqlitedatabase.query(s, null, (new StringBuilder()).append(s1).append("=?").toString(), new String[] {
            s2
        }, null, null, null);
        boolean flag = sqlitedatabase.moveToFirst();
        a(((Cursor) (sqlitedatabase)));
        return flag;
        sqlitedatabase;
        sqlitedatabase = null;
_L4:
        a(((Cursor) (sqlitedatabase)));
        return false;
        sqlitedatabase;
        s = obj;
_L2:
        a(((Cursor) (s)));
        throw sqlitedatabase;
        s1;
        s = sqlitedatabase;
        sqlitedatabase = s1;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        if (true) goto _L4; else goto _L3
_L3:
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
        "locking";
        JVM INSTR monitorenter ;
        Object obj1 = null;
        Object obj = getWritableDatabase();
        obj1 = obj;
        if (a(((SQLiteDatabase) (obj))));
        obj1 = obj;
        long l = System.currentTimeMillis();
        obj1 = obj;
        ((SQLiteDatabase) (obj)).delete(a, "d<? and d>?", new String[] {
            Long.toString(l), "-1"
        });
        b(((SQLiteDatabase) (obj)));
_L1:
        "locking";
        JVM INSTR monitorexit ;
        return;
        obj;
        b(((SQLiteDatabase) (obj1)));
          goto _L1
        obj;
        "locking";
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        Object obj2;
        obj2 = null;
        obj1 = obj;
_L3:
        b(((SQLiteDatabase) (obj2)));
        throw obj1;
        obj1;
        obj2 = obj;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public boolean a(String s, byte abyte0[], long l)
    {
        if (e.a(s))
        {
            return false;
        }
        if (abyte0 == null || abyte0.length == 0)
        {
            return false;
        }
        long l1 = System.currentTimeMillis();
        SQLiteDatabase sqlitedatabase;
        SQLiteDatabase sqlitedatabase1;
        SQLiteDatabase sqlitedatabase2;
        ContentValues contentvalues;
        boolean flag;
        if (l > 0L)
        {
            l = l1 + l;
        } else
        {
            l = -1L;
        }
        "locking";
        JVM INSTR monitorenter ;
        sqlitedatabase1 = null;
        sqlitedatabase = null;
        sqlitedatabase2 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (a(sqlitedatabase2));
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        contentvalues = new ContentValues();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        a(contentvalues, "a", s);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        a(contentvalues, "b", abyte0);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        a(contentvalues, "c", l1);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        a(contentvalues, "d", l);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (!a(sqlitedatabase2, a, "a", s)) goto _L2; else goto _L1
_L1:
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        flag = a(sqlitedatabase2, a, contentvalues, "a", s);
_L3:
        b(sqlitedatabase2);
_L4:
        "locking";
        JVM INSTR monitorexit ;
        return flag;
        s;
        "locking";
        JVM INSTR monitorexit ;
        throw s;
_L2:
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        flag = a(sqlitedatabase2, a, contentvalues);
          goto _L3
        s;
        b(sqlitedatabase);
        flag = false;
          goto _L4
        s;
        b(sqlitedatabase1);
        throw s;
          goto _L3
    }

    public boolean a(List list)
    {
        int j;
        long l;
        long l2;
        if (list == null || list.size() == 0)
        {
            return false;
        }
        l2 = System.currentTimeMillis();
        l = 0L;
        j = 0;
        int i = 0;
        "locking";
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        SQLiteDatabase sqlitedatabase1;
        sqlitedatabase1 = null;
        sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase2 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (a(sqlitedatabase2));
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        sqlitedatabase2.beginTransaction();
        int k = 0;
_L14:
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (k >= list.size()) goto _L2; else goto _L1
_L1:
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        Object obj = (b)list.get(k);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        String s = ((b) (obj)).b();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (!e.a(s)) goto _L4; else goto _L3
_L4:
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        byte abyte0[] = ((b) (obj)).a();
        if (abyte0 != null) goto _L5; else goto _L3
_L5:
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (abyte0.length != 0) goto _L6; else goto _L3
_L6:
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        l += abyte0.length;
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (((b) (obj)).c() <= 0L) goto _L8; else goto _L7
_L7:
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        long l1 = ((b) (obj)).c() + l2;
_L12:
        j++;
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        obj = new ContentValues();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        a(((ContentValues) (obj)), "a", s);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        a(((ContentValues) (obj)), "b", abyte0);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        a(((ContentValues) (obj)), "c", System.currentTimeMillis());
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        a(((ContentValues) (obj)), "d", l1);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (!a(sqlitedatabase2, a, "a", s))
        {
            break MISSING_BLOCK_LABEL_361;
        }
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (a(sqlitedatabase2, a, ((ContentValues) (obj)), "a", s))
        {
            i++;
        }
        break; /* Loop/switch isn't completed */
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        if (a(sqlitedatabase2, a, ((ContentValues) (obj))))
        {
            i++;
        }
        break; /* Loop/switch isn't completed */
_L2:
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        sqlitedatabase2.setTransactionSuccessful();
        if (sqlitedatabase2 == null)
        {
            break MISSING_BLOCK_LABEL_411;
        }
        sqlitedatabase2.endTransaction();
        b(sqlitedatabase2);
_L9:
        "locking";
        JVM INSTR monitorexit ;
        return true;
        list;
        "locking";
        JVM INSTR monitorexit ;
        throw list;
        list;
        b(sqlitedatabase2);
          goto _L9
        list;
        b(sqlitedatabase2);
        throw list;
        list;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_456;
        }
        sqlitedatabase.endTransaction();
        b(sqlitedatabase);
_L10:
        "locking";
        JVM INSTR monitorexit ;
        return false;
        list;
        b(sqlitedatabase);
          goto _L10
        list;
        b(sqlitedatabase);
        throw list;
        list;
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_492;
        }
        sqlitedatabase1.endTransaction();
        b(sqlitedatabase1);
_L11:
        throw list;
        Throwable throwable;
        throwable;
        b(sqlitedatabase1);
          goto _L11
        list;
        b(sqlitedatabase1);
        throw list;
_L8:
        l1 = -1L;
        if (true) goto _L12; else goto _L3
_L3:
        k++;
        if (true) goto _L14; else goto _L13
_L13:
    }

    public byte[] a(String s)
    {
        Object obj;
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = null;
        obj = null;
        System.currentTimeMillis();
        "locking";
        JVM INSTR monitorenter ;
        Object obj1 = getWritableDatabase();
        sqlitedatabase = ((SQLiteDatabase) (obj1));
        if (a(sqlitedatabase));
        obj1 = sqlitedatabase.query(a, null, "a=?", new String[] {
            s
        }, null, null, null);
        if (!((Cursor) (obj1)).moveToNext()) goto _L2; else goto _L1
_L1:
        byte abyte0[] = ((Cursor) (obj1)).getBlob(((Cursor) (obj1)).getColumnIndex("b"));
        long l;
        long l1;
        l = ((Cursor) (obj1)).getLong(((Cursor) (obj1)).getColumnIndex("d"));
        l1 = System.currentTimeMillis();
        obj = abyte0;
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        obj = abyte0;
        if (l >= l1)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        b(s);
        obj = null;
_L7:
        a(((Cursor) (obj1)));
        a(sqlitedatabase);
        s = ((String) (obj));
_L3:
        "locking";
        JVM INSTR monitorexit ;
        return s;
_L6:
        a(((Cursor) (obj)));
        a(sqlitedatabase);
          goto _L3
        s;
        "locking";
        JVM INSTR monitorexit ;
        throw s;
        s;
        obj1 = null;
        obj = sqlitedatabase;
_L5:
        a(((Cursor) (obj1)));
        a(((SQLiteDatabase) (obj)));
        throw s;
        s;
        obj1 = null;
        obj = sqlitedatabase;
        continue; /* Loop/switch isn't completed */
        s;
        obj = sqlitedatabase;
        if (true) goto _L5; else goto _L4
_L4:
        s;
        s = null;
          goto _L6
        s;
        s = null;
        obj = obj1;
          goto _L6
        s;
        obj = obj1;
        s = abyte0;
          goto _L6
_L2:
        obj = null;
          goto _L7
        s;
        obj = null;
          goto _L7
        s;
        sqlitedatabase = null;
        s = null;
          goto _L6
    }

    public boolean b(String s)
    {
        boolean flag = true;
        "locking";
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase1 = null;
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        sqlitedatabase1 = sqlitedatabase;
        if (a(sqlitedatabase));
        sqlitedatabase1 = sqlitedatabase;
        int i = sqlitedatabase.delete(a, "a =? ", new String[] {
            s
        });
        if (i <= 0)
        {
            flag = false;
        }
        a(sqlitedatabase);
_L1:
        "locking";
        JVM INSTR monitorexit ;
        return flag;
_L2:
        a(s);
        flag = false;
          goto _L1
        s;
        a(sqlitedatabase1);
        throw s;
        s;
        "locking";
        JVM INSTR monitorexit ;
        throw s;
        s;
        s = sqlitedatabase;
          goto _L2
        s;
        s = null;
          goto _L2
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL(b);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        sqlitedatabase.execSQL(c);
        sqlitedatabase.execSQL(b);
    }

    static 
    {
        a = "YINcpuKxQ5cA";
        b = (new StringBuilder()).append("create table if not exists ").append(a).append("(_id integer primary key autoincrement,").append("a").append(" text UNIQUE, ").append("b").append(" blob, ").append("c").append(" integer, ").append("d").append(" integer);").toString();
        c = (new StringBuilder()).append("drop table if exists ").append(a).toString();
    }
}
