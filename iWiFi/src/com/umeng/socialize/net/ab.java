// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.util.Log;
import com.umeng.socialize.net.a.e;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ab extends e
{

    public Map a;

    public ab(JSONObject jsonobject)
    {
        super(jsonobject);
    }

    public void a()
    {
        a = new HashMap();
        System.out.println((new StringBuilder("--------------")).append(l.toString()).toString());
        JSONObject jsonobject;
        Iterator iterator;
        String s;
        JSONException jsonexception;
        Object obj;
        boolean flag;
        try
        {
            jsonobject = l;
            iterator = jsonobject.keys();
        }
        catch (Exception exception)
        {
            Log.w("com.umeng.socialize", exception.toString());
            return;
        }
        if (iterator == null) goto _L2; else goto _L1
_L1:
        flag = iterator.hasNext();
        if (flag) goto _L3; else goto _L2
_L2:
        return;
_L3:
        s = (String)iterator.next();
        obj = jsonobject.get(s);
        a.put(s, obj);
          goto _L1
        jsonexception;
        Log.w("com.umeng.socialize", jsonexception.toString());
          goto _L1
    }
}
