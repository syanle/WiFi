// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.a;

import java.util.ArrayList;
import java.util.HashMap;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.f.e;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.c.a;
import org.json.JSONArray;
import org.json.JSONObject;

public final class c extends l
{

    public c()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 == null)
        {
            return null;
        }
        ArrayList arraylist;
        android.content.Context context;
        JSONArray jsonarray;
        Object obj;
        String s;
        Object obj1;
        HashMap hashmap;
        int i;
        long l1;
        try
        {
            context = h1.h();
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (context == null)
        {
            return null;
        }
        jsonarray = b.a(jsonobject, "b", null);
        if (jsonarray != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        return a(2);
        f = null;
        l1 = 0L;
        arraylist = null;
        obj = b.a(jsonobject, "a", null);
        jsonobject = arraylist;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        f = b.a(((JSONObject) (obj)), "a", null);
        l1 = b.a(((JSONObject) (obj)), "b", 0L);
        jsonobject = b.a(((JSONObject) (obj)), "c", null);
        if (f == null || jsonobject != null)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        return a(2);
        arraylist = new ArrayList();
        i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = jsonarray.getJSONObject(i);
        obj = b.a(((JSONObject) (obj1)), "a", "");
        s = b.a(((JSONObject) (obj1)), "b", "");
        obj1 = b.a(((JSONObject) (obj1)), "c", "");
        hashmap = new HashMap();
        hashmap.put("packageName", obj);
        hashmap.put("md5sum", s);
        hashmap.put("apkUrl", obj1);
        arraylist.add(hashmap);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (arraylist.size() <= 0)
        {
            return a(3);
        }
        net.youmi.android.a.c.a.a(new e(context, h1, arraylist, f, l1, jsonobject));
        h1 = a(0);
        return h1;
    }
}
