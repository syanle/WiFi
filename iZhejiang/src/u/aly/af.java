// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            av, q, ae, bh, 
//            bn, bc

public class af extends av
    implements q
{

    public af(String s, Map map, long l, int i)
    {
        a(s);
        b(System.currentTimeMillis());
        if (map.size() > 0)
        {
            a(b(map));
        }
        if (i <= 0)
        {
            i = 1;
        }
        a(i);
        if (l > 0L)
        {
            a(l);
        }
    }

    public static ae a(String s, String s1, Map map)
    {
        ae ae1 = new ae();
        ae1.b = s;
        ae1.c = s1;
        ae1.d = map;
        return ae1;
    }

    public static String b(String s, String s1, Map map)
    {
        return (new StringBuilder()).append(s).append(s1).toString();
    }

    private HashMap b(Map map)
    {
        HashMap hashmap;
        int i;
        map = map.entrySet().iterator();
        hashmap = new HashMap();
        i = 0;
_L7:
        if (i >= 10 || !map.hasNext()) goto _L2; else goto _L1
_L1:
        java.util.Map.Entry entry;
        bh bh1;
        Object obj;
        entry = (java.util.Map.Entry)map.next();
        bh1 = new bh();
        obj = entry.getValue();
        if (!(obj instanceof String)) goto _L4; else goto _L3
_L3:
        bh1.b((String)obj);
_L5:
        if (bh1.k())
        {
            hashmap.put(entry.getKey(), bh1);
            i++;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (obj instanceof Long)
        {
            bh1.b(((Long)obj).longValue());
        } else
        if (obj instanceof Integer)
        {
            bh1.b(((Integer)obj).longValue());
        } else
        if (obj instanceof Float)
        {
            bh1.b(((Float)obj).longValue());
        } else
        if (obj instanceof Double)
        {
            bh1.b(((Double)obj).longValue());
        }
        if (true) goto _L5; else goto _L2
_L2:
        return hashmap;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void a(bn bn1, String s)
    {
        if (bn1.s() <= 0) goto _L2; else goto _L1
_L1:
        Iterator iterator = bn1.u().iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L3
_L3:
        bc bc1 = (bc)iterator.next();
        if (!s.equals(bc1.c())) goto _L5; else goto _L4
_L4:
        bc bc2 = bc1;
        if (bc1 == null)
        {
            bc2 = new bc();
            bc2.a(s);
            bn1.a(bc2);
        }
        bc2.a(this);
        return;
_L2:
        bc1 = null;
        if (true) goto _L4; else goto _L6
_L6:
    }
}
