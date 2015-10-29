// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.b;

import com.mob.tools.utils.Hashon;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework.statistics.b:
//            f

public static class f
{

    public String a;
    public String b;
    public ArrayList c;
    public ArrayList d;
    public ArrayList e;
    public ArrayList f;
    public HashMap g;

    public String toString()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("text", b);
        hashmap.put("url", c);
        if (d != null && d.size() > 0)
        {
            hashmap.put("imgs", d);
        }
        if (g != null)
        {
            hashmap.put("attch", (new Hashon()).fromHashMap(g));
        }
        return (new Hashon()).fromHashMap(hashmap);
    }

    public ()
    {
        a = "";
        c = new ArrayList();
        d = new ArrayList();
        e = new ArrayList();
        f = new ArrayList();
    }
}
