// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.mob.tools.utils.Ln;

// Referenced classes of package cn.sharesdk.framework.statistics.a:
//            a

public class b
{

    private static b c = null;
    private Context a;
    private a b;

    private b(Context context)
    {
        a = context.getApplicationContext();
        b = new a(a);
    }

    public static b a(Context context)
    {
        cn/sharesdk/framework/statistics/a/b;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            c = new b(context);
        }
        context = c;
        cn/sharesdk/framework/statistics/a/b;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public int a(String s)
    {
        String s1;
        String s2;
        SQLiteDatabase sqlitedatabase;
        int i;
        s2 = null;
        s1 = null;
        i = 0;
        sqlitedatabase = b.getWritableDatabase();
        s = sqlitedatabase.rawQuery((new StringBuilder()).append("select count(*) from ").append(s).toString(), null);
        s1 = s;
        s2 = s;
        if (!s.moveToNext())
        {
            break MISSING_BLOCK_LABEL_68;
        }
        s1 = s;
        s2 = s;
        i = s.getInt(0);
        s.close();
        return i;
        s;
        s2 = s1;
        Ln.e(s);
        s1.close();
        return 0;
        s;
        s2.close();
        throw s;
    }

    public int a(String s, String s1, String as[])
    {
        SQLiteDatabase sqlitedatabase = b.getWritableDatabase();
        int i = sqlitedatabase.delete(s, s1, as);
        Ln.d("Deleted %d rows from table: %s", new Object[] {
            Integer.valueOf(i), s
        });
        return i;
        s1;
        i = 0;
_L2:
        Ln.e(s1, "when delete database occur error table:%s,", new Object[] {
            s
        });
        return i;
        s1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public long a(String s, ContentValues contentvalues)
    {
        SQLiteDatabase sqlitedatabase = b.getWritableDatabase();
        long l;
        try
        {
            l = sqlitedatabase.replace(s, null, contentvalues);
        }
        // Misplaced declaration of an exception variable
        catch (ContentValues contentvalues)
        {
            Ln.e(contentvalues, "when insert database occur error table:%s,", new Object[] {
                s
            });
            return -1L;
        }
        return l;
    }

    public Cursor a(String s, String as[], String s1, String as1[], String s2)
    {
        SQLiteDatabase sqlitedatabase = b.getWritableDatabase();
        Ln.d("Query table: %s", new Object[] {
            s
        });
        try
        {
            as = sqlitedatabase.query(s, as, s1, as1, null, null, s2);
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            Ln.e(as, "when query database occur error table:%s,", new Object[] {
                s
            });
            return null;
        }
        return as;
    }

}
