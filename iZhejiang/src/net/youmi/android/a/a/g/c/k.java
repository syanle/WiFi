// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import java.util.Random;
import net.youmi.android.a.a.a.b.c;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

public class k
    implements c
{

    private int a;
    private int b;

    public k()
    {
        try
        {
            a = (new Random(System.currentTimeMillis())).nextInt();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public JSONObject a()
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("a", a);
            jsonobject.put("b", b);
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return jsonobject;
    }

    public void a(int i)
    {
        a = i;
    }

    public boolean a(JSONObject jsonobject)
    {
        if (jsonobject != null)
        {
            try
            {
                a = net.youmi.android.a.b.b.b.a(jsonobject, "a", a);
                b = net.youmi.android.a.b.b.b.a(jsonobject, "b", b);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject) { }
        }
        return true;
    }

    public int b()
    {
        return a;
    }

    public void b(int i)
    {
        b = i;
    }

    public int c()
    {
        return b;
    }
}
