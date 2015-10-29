// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.parser;

import com.iwifi.sdk.data.SdkKeyResult;
import org.json.JSONObject;

public class GetSdkKeyResultParser
{

    public GetSdkKeyResultParser()
    {
    }

    public static JSONObject GetJsonObject(String s)
        throws Exception
    {
        return new JSONObject(s);
    }

    public static SdkKeyResult GetSdkKeyResultList(String s)
        throws Exception
    {
        SdkKeyResult sdkkeyresult = new SdkKeyResult();
        s = new JSONObject(s);
        sdkkeyresult.setData(s.getString("data"));
        sdkkeyresult.setCode(s.getString("code"));
        sdkkeyresult.setResult(s.getString("result"));
        sdkkeyresult.setMessage(s.getString("message"));
        return sdkkeyresult;
    }
}
