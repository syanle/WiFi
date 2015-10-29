// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.g.b;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.c.f;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.k.m;
import net.youmi.android.a.c.a.a;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.a:
//            i

public final class h extends l
{

    public h()
    {
    }

    private String a(String s, int j)
    {
        try
        {
            s = Intent.parseUri(s, j).getData().getSchemeSpecificPart();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    private JSONObject a()
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = a(0);
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("a", 0);
            jsonobject.put("d", jsonobject1);
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return jsonobject;
    }

    private JSONObject a(Context context, String s, int j, int k, String s1, String s2, b b1, 
            net.youmi.android.a.a.e.a.b.h h1)
    {
        if (j != 0) goto _L2; else goto _L1
_L1:
        net.youmi.android.a.a.g.a.b.b b2;
        int i1;
        int j1;
        try
        {
            if (b1.e())
            {
                h1.a(4, b1);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
_L4:
        try
        {
            context = a(0);
            s = new JSONObject();
            s.put("a", 1);
            context.put("d", s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return context;
_L2:
        if (s == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        h1 = g.a(s);
        f.a(context, net.youmi.android.a.a.g.a.h.b(h1), net.youmi.android.a.c.a.a.a(b1.f(), net.youmi.android.a.a.g.a.h.b(h1)), 0x1499700L);
        b1 = net.youmi.android.a.a.g.a.a.a.a(context).a(h1);
        i1 = b1.d();
        j1 = b1.e();
        b2 = new net.youmi.android.a.a.g.a.b.b();
        b2.b(h1);
        b2.c(j * 1000);
        if (i1 != 0 && j1 != 0)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        net.youmi.android.a.a.g.a.g.a(context, b2);
        continue; /* Loop/switch isn't completed */
        if (k != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!net.youmi.android.a.a.g.a.a.a(context, s))
        {
            a(context, s1);
            b1.c(s2);
            net.youmi.android.a.a.g.a.a.a.a(context).b(b1);
            b2.b(1);
            net.youmi.android.a.a.g.a.g.a(context, b2);
        }
        continue; /* Loop/switch isn't completed */
        context;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(Context context, String s)
    {
        if (!e.a(s))
        {
            m.a().a(new i(this, context, s));
        }
    }

    protected JSONObject a(net.youmi.android.a.a.e.a.b.h h1, net.youmi.android.a.a.e.a.b.f f1, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        f1 = h1.h();
        if (f1 != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        return a(3);
        String s = net.youmi.android.a.b.b.b.a(jsonobject, "a", null);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        return a(2);
        int j = net.youmi.android.a.b.b.b.a(jsonobject, "b", 1);
        if (j == 0 || j == 1 || j == 2)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        return a(2);
        b b1;
        int k;
        k = net.youmi.android.a.b.b.b.a(jsonobject, "d", 0);
        b1 = new b();
        Object obj = net.youmi.android.a.b.b.b.a(jsonobject, "e", null);
        String s2;
        String s4;
        int i1;
        int j1;
        if (obj != null)
        {
            try
            {
                String s1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "a", null);
                String s3 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "b", null);
                String s5 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "c", null);
                obj = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "d", null);
                b1.a(s1);
                b1.b(s3);
                b1.c(s5);
                b1.d(((String) (obj)));
            }
            catch (Throwable throwable) { }
        }
        i1 = net.youmi.android.a.b.b.b.a(jsonobject, "f", 0);
        j1 = net.youmi.android.a.b.b.b.a(jsonobject, "h", 0);
        s2 = net.youmi.android.a.b.b.b.a(jsonobject, "i", null);
        s4 = net.youmi.android.a.b.b.b.a(jsonobject, "j", null);
        if (j != 0)
        {
            break MISSING_BLOCK_LABEL_296;
        }
        if (!jsonobject.isNull("d"))
        {
            break MISSING_BLOCK_LABEL_261;
        }
        if (net.youmi.android.a.b.k.h.b(f1, s))
        {
            return a(((Context) (f1)), s, i1, j1, s2, s4, b1, h1);
        }
        jsonobject = a();
        return jsonobject;
        jsonobject;
        try
        {
            if (net.youmi.android.a.b.k.h.d(f1, s, k))
            {
                return a(((Context) (f1)), s, i1, j1, s2, s4, b1, h1);
            } else
            {
                return a();
            }
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.a.b.h h1) { }
        break MISSING_BLOCK_LABEL_402;
        if (j != 1)
        {
            break MISSING_BLOCK_LABEL_343;
        }
        if (net.youmi.android.a.b.k.h.a(f1, s, k))
        {
            return a(((Context) (f1)), a(s, k), i1, j1, s2, s4, b1, h1);
        } else
        {
            return a();
        }
        if (j != 2)
        {
            break MISSING_BLOCK_LABEL_402;
        }
        if (net.youmi.android.a.b.k.h.a(f1, s, k, net.youmi.android.a.b.b.b.a(jsonobject, "c", net.youmi.android.a.a.h.a.o())))
        {
            return a(((Context) (f1)), a(s, k), i1, j1, s2, s4, b1, h1);
        }
        h1 = a();
        return h1;
        return null;
    }
}
