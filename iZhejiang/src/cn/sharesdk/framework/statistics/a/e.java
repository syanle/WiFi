// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.mob.tools.utils.Ln;
import java.util.ArrayList;

// Referenced classes of package cn.sharesdk.framework.statistics.a:
//            b, d

public class e
{

    public static int a = 0;
    public static int b = 1;
    public static int c = 2;

    public static long a(Context context, String s, long l)
    {
        cn/sharesdk/framework/statistics/a/e;
        JVM INSTR monitorenter ;
        if (s == null) goto _L2; else goto _L1
_L1:
        String s1 = s.trim();
        if (s1 != "") goto _L3; else goto _L2
_L2:
        l = -1L;
_L5:
        cn/sharesdk/framework/statistics/a/e;
        JVM INSTR monitorexit ;
        return l;
_L3:
        context = cn.sharesdk.framework.statistics.a.b.a(context);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("post_time", Long.valueOf(l));
        contentvalues.put("message_data", s.toString());
        l = context.a("message", contentvalues);
        if (true) goto _L5; else goto _L4
_L4:
        context;
        throw context;
    }

    public static long a(Context context, ArrayList arraylist)
    {
        cn/sharesdk/framework/statistics/a/e;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
_L2:
        if (i >= arraylist.size())
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append("'");
        stringbuilder.append((String)arraylist.get(i));
        stringbuilder.append("'");
        stringbuilder.append(",");
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        arraylist = stringbuilder.toString().substring(0, stringbuilder.length() - 1);
        i = cn.sharesdk.framework.statistics.a.b.a(context).a("message", (new StringBuilder()).append("_id in ( ").append(arraylist).append(" )").toString(), null);
        Ln.e("delete COUNT == %s", new Object[] {
            Integer.valueOf(i)
        });
        long l = i;
        cn/sharesdk/framework/statistics/a/e;
        JVM INSTR monitorexit ;
        return l;
        context;
        throw context;
    }

    public static ArrayList a(Context context)
    {
        cn/sharesdk/framework/statistics/a/e;
        JVM INSTR monitorenter ;
        if (cn.sharesdk.framework.statistics.a.b.a(context).a("message") <= 0) goto _L2; else goto _L1
_L1:
        context = a(context, null, ((String []) (null)));
_L4:
        cn/sharesdk/framework/statistics/a/e;
        JVM INSTR monitorexit ;
        return context;
_L2:
        context = new ArrayList();
        if (true) goto _L4; else goto _L3
_L3:
        context;
        throw context;
    }

    private static ArrayList a(Context context, String s, String as[])
    {
        cn/sharesdk/framework/statistics/a/e;
        JVM INSTR monitorenter ;
        d d1;
        StringBuilder stringbuilder;
        ArrayList arraylist;
        arraylist = new ArrayList();
        d1 = new d();
        stringbuilder = new StringBuilder();
        as = cn.sharesdk.framework.statistics.a.b.a(context).a("message", new String[] {
            "_id", "post_time", "message_data"
        }, s, as, null);
        context = stringbuilder;
        s = d1;
_L1:
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        if (!as.moveToNext())
        {
            break MISSING_BLOCK_LABEL_191;
        }
        ((d) (s)).b.add(as.getString(0));
        if (((d) (s)).b.size() != 100)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        context.append(as.getString(2));
        s.a = context.toString();
        arraylist.add(s);
        s = new d();
        context = new StringBuilder();
          goto _L1
        context;
        throw context;
        context.append((new StringBuilder()).append(as.getString(2)).append("\n").toString());
          goto _L1
        as.close();
        if (((d) (s)).b.size() != 0)
        {
            s.a = context.toString().substring(0, context.length() - 1);
            arraylist.add(s);
        }
        cn/sharesdk/framework/statistics/a/e;
        JVM INSTR monitorexit ;
        return arraylist;
    }

}
