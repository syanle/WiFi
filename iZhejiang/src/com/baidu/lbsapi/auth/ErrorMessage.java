// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.lbsapi.auth;

import org.json.JSONException;
import org.json.JSONObject;

class ErrorMessage
{

    ErrorMessage()
    {
    }

    static String a(String s)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("status", -1);
            jsonobject.put("message", s);
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        return jsonobject.toString();
    }
}
