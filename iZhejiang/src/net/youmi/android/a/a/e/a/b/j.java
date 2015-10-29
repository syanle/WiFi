// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.a.b;

import net.youmi.android.a.a.e.a.a.a;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.a.b:
//            g, i

public abstract class j
    implements g
{

    protected i a;
    protected a b;

    public j()
    {
    }

    static String a(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        jsonobject = jsonobject.toString();
        return jsonobject;
        jsonobject;
        return b(3);
    }

    public static JSONObject a(int i)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("c", i);
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return jsonobject;
    }

    public static String b(int i)
    {
        Object obj = a(i);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        obj = ((JSONObject) (obj)).toString();
        return ((String) (obj));
        Throwable throwable;
        throwable;
        return "";
    }

    public void a(a a1)
    {
        b = a1;
    }

    public void a(i i)
    {
        a = i;
    }
}
