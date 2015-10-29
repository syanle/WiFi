// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package u.aly:
//            x, u, ae

public class m
{

    private final String a = "umeng_event_snapshot";
    private boolean b;
    private SharedPreferences c;
    private Map d;

    public m(Context context)
    {
        b = false;
        d = new HashMap();
        c = x.a(context, "umeng_event_snapshot");
    }

    private void c(String s)
    {
        Object obj = null;
        if (d.containsKey(s))
        {
            for (obj = (ArrayList)d.get(s); ((ArrayList) (obj)).size() > 4; ((ArrayList) (obj)).remove(0)) { }
            obj = u.a(((java.io.Serializable) (obj)));
        }
        c.edit().putString(s, ((String) (obj))).commit();
    }

    private boolean d(String s)
    {
        if (d.containsKey(s))
        {
            return true;
        }
        Object obj = c.getString(s, null);
        if (obj != null)
        {
            obj = (ArrayList)u.a(((String) (obj)));
            if (obj != null)
            {
                d.put(s, obj);
                return true;
            }
        }
        return false;
    }

    public int a(String s)
    {
        if (d.containsKey(s))
        {
            return ((ArrayList)d.get(s)).size();
        } else
        {
            return 0;
        }
    }

    public void a(String s, ae ae1)
    {
        if (b)
        {
            d(s);
        }
        if (d.containsKey(s))
        {
            ((ArrayList)d.get(s)).add(ae1);
        } else
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(ae1);
            d.put(s, arraylist);
        }
        if (b)
        {
            c(s);
        }
    }

    public void a(boolean flag)
    {
        b = flag;
    }

    public ae b(String s)
    {
        if (b)
        {
            d(s);
        }
        if (!d.containsKey(s)) goto _L2; else goto _L1
_L1:
        Object obj = (ArrayList)d.get(s);
        if (((ArrayList) (obj)).size() <= 0) goto _L2; else goto _L3
_L3:
        obj = (ae)((ArrayList) (obj)).remove(((ArrayList) (obj)).size() - 1);
_L5:
        if (b)
        {
            c(s);
        }
        return ((ae) (obj));
_L2:
        obj = null;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
