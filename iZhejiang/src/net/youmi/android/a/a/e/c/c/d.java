// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.c;

import java.util.ArrayList;
import java.util.List;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.b.a;
import net.youmi.android.a.b.b.b;
import org.json.JSONArray;
import org.json.JSONObject;

public final class d extends l
{

    public d()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        h1 = h1.h();
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        return a(3);
        f = b.a(jsonobject, "a", null);
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        return a(2);
        int j = f.length();
        if (j > 0)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        return a(2);
        ArrayList arraylist = new ArrayList();
        int i = 0;
_L2:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_199;
        }
        Object obj;
        Object obj1;
        long l1;
        long l2;
        try
        {
            obj1 = b.a(f, i, null);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        obj = b.a(((JSONObject) (obj1)), "a", null);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        obj1 = b.a(((JSONObject) (obj1)), "b", null);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        l2 = b.a(jsonobject, "c", 0L) * 1000L;
        l1 = l2;
        if (l2 < 0L)
        {
            l1 = -1L;
        }
        obj = new a(((String) (obj)));
        if (((a) (obj)).a())
        {
            ((a) (obj)).b(((String) (obj1)));
            ((a) (obj)).a(l1);
            arraylist.add(obj);
        }
        break MISSING_BLOCK_LABEL_223;
        if (net.youmi.android.a.a.e.b.d.a(h1).a(arraylist))
        {
            return a(0);
        }
        h1 = a(3);
        return h1;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
