// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.parser;

import com.iwifi.sdk.data.CodeResult;
import org.json.JSONObject;

public class GetCodeResultParser
{

    public GetCodeResultParser()
    {
    }

    public static CodeResult GetCodeResultList(String s)
        throws Exception
    {
        CodeResult coderesult = new CodeResult();
        s = new JSONObject(s);
        coderesult.setData(s.getString("data"));
        coderesult.setMsg(s.getString("msg"));
        coderesult.setResult(s.getString("result"));
        return coderesult;
    }

    public static CodeResult GetCodeResultList(String s, String s1, String s2, String s3)
        throws Exception
    {
        CodeResult coderesult = new CodeResult();
        s = new JSONObject(s);
        if (s3 != null)
        {
            coderesult.setData(s.getString(s3));
        }
        if (s2 != null)
        {
            coderesult.setMsg(s.getString(s2));
        }
        if (s1 != null)
        {
            coderesult.setResult(s.getString(s1));
        }
        return coderesult;
    }

    public static CodeResult GetCodeResultList(String s, String s1, String s2, String s3, String s4)
        throws Exception
    {
        CodeResult coderesult = new CodeResult();
        s = new JSONObject(s);
        if (s3 != null)
        {
            coderesult.setData(s.getString(s3));
        }
        if (s4 != null)
        {
            coderesult.setData1(s.getString(s4));
        }
        if (s2 != null)
        {
            coderesult.setMsg(s.getString(s2));
        }
        if (s1 != null)
        {
            coderesult.setResult(s.getString(s1));
        }
        return coderesult;
    }

    public static CodeResult GetCodeResultList(String s, String s1, String s2, String s3, String s4, String s5)
        throws Exception
    {
        CodeResult coderesult = new CodeResult();
        s = new JSONObject(s);
        if (s3 != null)
        {
            coderesult.setData(s.getString(s3));
        }
        if (s4 != null)
        {
            coderesult.setData1(s.getString(s4));
        }
        if (s5 != null)
        {
            coderesult.setData2(s.getString(s5));
        }
        if (s2 != null)
        {
            coderesult.setMsg(s.getString(s2));
        }
        if (s1 != null)
        {
            coderesult.setResult(s.getString(s1));
        }
        return coderesult;
    }

    public static CodeResult GetCodeResultList(String s, String s1, String s2, String s3, String s4, String s5, String s6)
        throws Exception
    {
        CodeResult coderesult = new CodeResult();
        s = new JSONObject(s);
        if (s3 != null)
        {
            coderesult.setData(s.getString(s3));
        }
        if (s4 != null)
        {
            coderesult.setData1(s.getString(s4));
        }
        if (s5 != null)
        {
            coderesult.setData2(s.getString(s5));
        }
        if (s6 != null)
        {
            coderesult.setData3(s.getString(s6));
        }
        if (s2 != null)
        {
            coderesult.setMsg(s.getString(s2));
        }
        if (s1 != null)
        {
            coderesult.setResult(s.getString(s1));
        }
        return coderesult;
    }

    public static JSONObject GetJsonObject(String s)
        throws Exception
    {
        return new JSONObject(s);
    }
}
