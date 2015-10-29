// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.a.b;

import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.a.b:
//            j, h, f

public abstract class l extends j
{

    public l()
    {
    }

    public String a(h h, f f, String s)
    {
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return b(2);
        s = b.a(s);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        return b(2);
        s = b.a(s, "a", null);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        return b(2);
        h = a(a(h, f, ((JSONObject) (s))));
        return h;
        h;
        return net.youmi.android.a.a.e.a.b.j.b(3);
    }

    protected abstract JSONObject a(h h, f f, JSONObject jsonobject);
}
