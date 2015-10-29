// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.b;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.k.k;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.b:
//            q

public final class p extends l
{

    public p()
    {
    }

    protected JSONObject a(h h1, f f1, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        android.content.Context context = h1.h();
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        return a(3);
        String s1 = b.a(jsonobject, "a", null);
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        return a(2);
        String s2;
        String s3;
        s2 = b.a(jsonobject, "b", null);
        s3 = b.a(jsonobject, "c", "\u7F51\u9875\u5FEB\u6377\u65B9\u5F0F");
        h1 = b.a(jsonobject, "d", null);
        if (h1 == null) goto _L2; else goto _L1
_L1:
        String s = b.a(h1, "a", null);
        if (s == null) goto _L4; else goto _L3
_L3:
        h1 = b.a(h1, "b", null);
_L9:
        net.youmi.android.a.a.e.g.h h2;
        String s4 = b.a(jsonobject, "e", null);
        jsonobject = b.a(jsonobject, "f", null);
        h2 = new net.youmi.android.a.a.e.g.h();
        h2.d(s4);
        h2.f(s);
        h2.e(h1);
        h2.c(s2);
        h2.a(s3);
        h2.b(s1);
        h2.g(jsonobject);
        if (!k.h(context)) goto _L6; else goto _L5
_L5:
        if (f1.a(new q(this, context, h2)))
        {
            return a(0);
        }
        h1 = a(3);
        return h1;
        h1;
        return null;
        h1;
          goto _L7
_L4:
        h1 = null;
        continue; /* Loop/switch isn't completed */
_L2:
        h1 = null;
        s = null;
        continue; /* Loop/switch isn't completed */
_L6:
        return null;
        h1;
        s = null;
_L7:
        h1 = null;
        if (true) goto _L9; else goto _L8
_L8:
    }
}
