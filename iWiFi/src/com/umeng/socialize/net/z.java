// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import com.umeng.socialize.net.a.e;
import org.json.JSONObject;

public class z extends e
{

    public String a;
    public String b;

    public z(JSONObject jsonobject)
    {
        super(jsonobject);
    }

    public void a()
    {
        super.a();
        JSONObject jsonobject = l;
        if (jsonobject != null)
        {
            a = jsonobject.optString("large_url");
            b = jsonobject.optString("small_url");
        }
    }
}
