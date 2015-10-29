// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.a.b;

import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.a.b:
//            j, h, f

public abstract class k extends j
{

    public k()
    {
    }

    public String a(h h, f f, String s)
    {
        try
        {
            h = a(a(h, f));
        }
        // Misplaced declaration of an exception variable
        catch (h h)
        {
            return j.b(3);
        }
        return h;
    }

    protected abstract JSONObject a(h h, f f);
}
