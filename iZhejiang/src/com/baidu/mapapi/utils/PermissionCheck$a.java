// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;

import com.baidu.lbsapi.auth.i;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.utils:
//            PermissionCheck

private static class <init>
    implements i
{

    public void a(int j, String s)
    {
        if (s != null)
        {
            <init> <init>1 = new <init>();
            try
            {
                s = new JSONObject(s);
                if (s.has("status"))
                {
                    <init>1.a = s.optInt("status");
                }
                if (s.has("appid"))
                {
                    <init>1.c = s.optString("appid");
                }
                if (s.has("uid"))
                {
                    <init>1.b = s.optString("uid");
                }
                if (s.has("message"))
                {
                    <init>1.d = s.optString("message");
                }
                if (s.has("token"))
                {
                    <init>1.e = s.optString("token");
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
            if (PermissionCheck.a() != null)
            {
                PermissionCheck.a().a(<init>1);
                return;
            }
        }
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
