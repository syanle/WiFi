// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.f;

import android.content.Context;
import java.util.ArrayList;
import net.youmi.android.a.a.a.a;
import net.youmi.android.a.a.a.a.d;
import net.youmi.android.a.a.a.a.f;
import net.youmi.android.a.a.e.a.b.h;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.f:
//            a

public class g
    implements Runnable
{

    private Context a;
    private ArrayList b;
    private String c;
    private long d;
    private JSONArray e;
    private String f;
    private h g;

    public g(Context context, h h, ArrayList arraylist, String s, long l, String s1)
    {
        a = context;
        b = arraylist;
        c = s;
        d = l;
        f = s1;
        g = h;
    }

    public void run()
    {
        if (a == null || b == null) goto _L2; else goto _L1
_L1:
        int i = b.size();
        if (i != 0) goto _L3; else goto _L2
_L2:
        if (c != null && e != null && e.length() > 0)
        {
            String s = e.toString();
            StringBuilder stringbuilder = new StringBuilder(s.length() * 2);
            stringbuilder.append("javascript:").append(c).append("(").append(d).append(",").append(s).append(")");
            net.youmi.android.a.a.e.f.a.a().a(f, stringbuilder.toString());
        }
_L5:
        return;
_L3:
        Object obj;
        net.youmi.android.a.a.a.a.a(a, g, b);
        obj = c;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_256;
        }
        if (c == null || e == null || e.length() <= 0) goto _L5; else goto _L4
_L4:
        obj = e.toString();
        StringBuilder stringbuilder1 = new StringBuilder(((String) (obj)).length() * 2);
        stringbuilder1.append("javascript:").append(c).append("(").append(d).append(",").append(((String) (obj))).append(")");
        net.youmi.android.a.a.e.f.a.a().a(f, stringbuilder1.toString());
        return;
        Object obj1;
        obj1;
        return;
        int k = b.size();
        i = 0;
_L7:
        if (i >= k)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj1 = (net.youmi.android.a.a.a.a.a)b.get(i);
        if (obj1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L9:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
        if (((net.youmi.android.a.a.a.a.a) (obj1)).g() == null || ((net.youmi.android.a.a.a.a.a) (obj1)).g().c() == null) goto _L9; else goto _L8
_L8:
        if (((net.youmi.android.a.a.a.a.a) (obj1)).e() == null)
        {
            ((net.youmi.android.a.a.a.a.a) (obj1)).a(new f());
        }
_L13:
        if (c == null) goto _L9; else goto _L10
_L10:
        Object obj2;
        if (e == null)
        {
            e = new JSONArray();
        }
        obj2 = new JSONObject();
        ((JSONObject) (obj2)).put("a", ((net.youmi.android.a.a.a.a.a) (obj1)).g().c());
        ((JSONObject) (obj2)).put("b", ((net.youmi.android.a.a.a.a.a) (obj1)).a());
        int j;
        if (((net.youmi.android.a.a.a.a.a) (obj1)).e().e())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        ((JSONObject) (obj2)).put("c", j);
        if (((net.youmi.android.a.a.a.a.a) (obj1)).e().a())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        ((JSONObject) (obj2)).put("d", j);
        ((JSONObject) (obj2)).put("e", ((net.youmi.android.a.a.a.a.a) (obj1)).e().f());
        if (((net.youmi.android.a.a.a.a.a) (obj1)).i() != null)
        {
            ((JSONObject) (obj2)).put("f", ((net.youmi.android.a.a.a.a.a) (obj1)).i().b());
        }
        if (((net.youmi.android.a.a.a.a.a) (obj1)).e().b())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        try
        {
            ((JSONObject) (obj2)).put("g", j);
            net.youmi.android.a.a.g.a.a.a a1 = net.youmi.android.a.a.g.a.a.a.a(a);
            new net.youmi.android.a.a.g.a.b.a();
            obj1 = a1.a(net.youmi.android.a.b.d.g.a(((net.youmi.android.a.a.a.a.a) (obj1)).g().c()));
            ((JSONObject) (obj2)).put("h", ((net.youmi.android.a.a.g.a.b.a) (obj1)).e());
            ((JSONObject) (obj2)).put("i", ((net.youmi.android.a.a.g.a.b.a) (obj1)).d());
            e.put(obj2);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
        finally { }
          goto _L9
        if (c == null || e == null || e.length() <= 0) goto _L5; else goto _L11
_L11:
        obj1 = e.toString();
        obj2 = new StringBuilder(((String) (obj1)).length() * 2);
        ((StringBuilder) (obj2)).append("javascript:").append(c).append("(").append(d).append(",").append(((String) (obj1))).append(")");
        net.youmi.android.a.a.e.f.a.a().a(f, ((StringBuilder) (obj2)).toString());
        return;
        obj1;
        return;
        obj1;
        if (c == null || e == null || e.length() <= 0) goto _L5; else goto _L12
_L12:
        obj1 = e.toString();
        obj2 = new StringBuilder(((String) (obj1)).length() * 2);
        ((StringBuilder) (obj2)).append("javascript:").append(c).append("(").append(d).append(",").append(((String) (obj1))).append(")");
        net.youmi.android.a.a.e.f.a.a().a(f, ((StringBuilder) (obj2)).toString());
        return;
        obj1;
        return;
        try
        {
            if (c != null && e != null && e.length() > 0)
            {
                String s1 = e.toString();
                StringBuilder stringbuilder2 = new StringBuilder(s1.length() * 2);
                stringbuilder2.append("javascript:").append(c).append("(").append(d).append(",").append(s1).append(")");
                net.youmi.android.a.a.e.f.a.a().a(f, stringbuilder2.toString());
            }
        }
        catch (Throwable throwable) { }
        throw obj1;
        Throwable throwable1;
        throwable1;
          goto _L13
        obj1;
          goto _L9
    }
}
