// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.b;

import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.a.b:
//            c

public abstract class b
{

    public b()
    {
    }

    protected abstract c a();

    final c a(JSONObject jsonobject, c c1)
    {
        if (jsonobject != null)
        {
            c c2;
            boolean flag;
            try
            {
                c2 = a();
                flag = c2.a(jsonobject);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                return c1;
            }
            if (flag)
            {
                return c2;
            }
        }
        return c1;
    }
}
