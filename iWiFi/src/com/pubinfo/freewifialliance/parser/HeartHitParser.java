// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.parser;

import com.pubinfo.freewifialliance.data.CodeResult;
import org.json.JSONObject;

public class HeartHitParser
{

    public HeartHitParser()
    {
    }

    public static Object HeartHit(String s)
        throws Exception
    {
        CodeResult coderesult = new CodeResult();
        s = new JSONObject(s);
        coderesult.setMsg(s.getString("msg"));
        coderesult.setResult(s.getString("result"));
        return coderesult;
    }
}
