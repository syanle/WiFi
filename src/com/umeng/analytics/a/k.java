// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import org.json.JSONArray;

public class k
{

    public String a;
    public int b;

    public k()
    {
    }

    public k(JSONArray jsonarray)
        throws Exception
    {
        a = jsonarray.getString(0);
        b = jsonarray.getInt(1);
    }
}
