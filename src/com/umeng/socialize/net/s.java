// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import com.umeng.socialize.net.a.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class s extends e
{

    public Map a;

    public s(JSONObject jsonobject)
    {
        super(jsonobject);
    }

    public void a()
    {
        Iterator iterator;
        super.a();
        a = new HashMap();
        iterator = l.keys();
_L1:
        String s1;
        if (!iterator.hasNext())
        {
            return;
        }
        s1 = (String)iterator.next();
        JSONObject jsonobject = l.getJSONObject(s1);
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        int i = jsonobject.optInt("st", -102);
_L2:
        a.put(s1, Integer.valueOf(i));
          goto _L1
        JSONException jsonexception;
        jsonexception;
          goto _L1
        i = -102;
          goto _L2
    }
}
