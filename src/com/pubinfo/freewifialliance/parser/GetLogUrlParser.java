// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.parser;

import com.pubinfo.freewifialliance.data.LogUrl;
import org.json.JSONObject;

public class GetLogUrlParser
{

    public GetLogUrlParser()
    {
    }

    public static LogUrl GetLogUrlList(String s)
        throws Exception
    {
        LogUrl logurl = new LogUrl();
        s = new JSONObject(s);
        logurl.setLogoffurl(s.getString("logooffurl"));
        logurl.setMsg(s.getString("msg"));
        logurl.setResult(s.getString("result"));
        return logurl;
    }
}
