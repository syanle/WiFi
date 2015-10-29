// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.util.List;

// Referenced classes of package net.youmi.android.a.b.c:
//            a

public class g extends a
{

    private static g b;

    public g(Context context, String s, int i)
    {
        super(context, s, i);
    }

    public static g f(Context context)
    {
        net/youmi/android/a/b/c/g;
        JVM INSTR monitorenter ;
        try
        {
            if (b == null)
            {
                b = new g(context, "jqIqJYOT3JpT", 2);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = b;
        net/youmi/android/a/b/c/g;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public volatile void a()
    {
        super.a();
    }

    public volatile boolean a(String s, byte abyte0[], long l)
    {
        return super.a(s, abyte0, l);
    }

    public volatile boolean a(List list)
    {
        return super.a(list);
    }

    public volatile byte[] a(String s)
    {
        return super.a(s);
    }

    public volatile boolean b(String s)
    {
        return super.b(s);
    }

    public volatile void onCreate(SQLiteDatabase sqlitedatabase)
    {
        super.onCreate(sqlitedatabase);
    }

    public volatile void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        super.onUpgrade(sqlitedatabase, i, j);
    }
}
