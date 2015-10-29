// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.Context;
import net.youmi.android.a.a.c;
import net.youmi.android.a.a.g.d.a;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.b.e;

// Referenced classes of package net.youmi.android.a.a.g.e:
//            c

class m
    implements Runnable
{

    private Context a;

    m(Context context)
    {
        if (context == null)
        {
            return;
        }
        try
        {
            a = context.getApplicationContext();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public void run()
    {
        Object obj;
        int i;
        try
        {
            if (a == null)
            {
                return;
            }
        }
        catch (Throwable throwable)
        {
            return;
        }
        finally
        {
            throw exception;
        }
        obj = net.youmi.android.a.a.g.d.a.a(a);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        obj = net.youmi.android.a.a.g.d.a.a(a, ((String) (obj)));
        if (e.a(((String) (obj))))
        {
            break MISSING_BLOCK_LABEL_91;
        }
        obj = b.a(((String) (obj)));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        i = b.a(((org.json.JSONObject) (obj)), "c", 0);
        if (i != -1206 && i != -1002)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        c.a(2);
        net.youmi.android.a.a.g.e.c.b(a);
        net.youmi.android.a.a.g.e.c.c(a);
        return;
    }
}
