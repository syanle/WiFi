// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.common;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.SystemClock;
import android.util.Log;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class OpenConfig
{

    private static HashMap a = null;
    private static String b = null;
    private Context c;
    private String d;
    private JSONObject e;
    private long f;
    private boolean g;

    private OpenConfig(Context context, String s)
    {
        c = null;
        d = null;
        e = null;
        f = 0L;
        g = true;
        c = context;
        d = s;
        a();
    }

    public static OpenConfig a(Context context, String s)
    {
        if (a == null)
        {
            a = new HashMap();
        }
        if (s != null)
        {
            b = s;
        }
        String s1 = s;
        OpenConfig openconfig;
        if (s == null)
        {
            if (b != null)
            {
                s1 = b;
            } else
            {
                s1 = "0";
            }
        }
        openconfig = (OpenConfig)a.get(s1);
        s = openconfig;
        if (openconfig == null)
        {
            s = new OpenConfig(context, s1);
            a.put(s1, s);
        }
        return s;
    }

    private void a()
    {
        String s = e("com.tencent.open.config.json");
        try
        {
            e = new JSONObject(s);
            return;
        }
        catch (JSONException jsonexception)
        {
            e = new JSONObject();
        }
    }

    private void b()
    {
        int j = e.optInt("Common_frequency");
        int i = j;
        if (j == 0)
        {
            i = 1;
        }
        long l = i * 0x36ee80;
        if (SystemClock.elapsedRealtime() - f < l);
    }

    private String e(String s)
    {
        if (d == null) goto _L2; else goto _L1
_L1:
        Object obj = (new StringBuilder()).append(s).append(".").append(d).toString();
_L6:
        obj = c.openFileInput(((String) (obj)));
        s = ((String) (obj));
_L7:
        Object obj1;
        obj = new BufferedReader(new InputStreamReader(s));
        obj1 = new StringBuffer();
_L5:
        String s1 = ((BufferedReader) (obj)).readLine();
        if (s1 == null) goto _L4; else goto _L3
_L3:
        ((StringBuffer) (obj1)).append(s1);
          goto _L5
        obj1;
        ((IOException) (obj1)).printStackTrace();
        try
        {
            s.close();
            ((BufferedReader) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
        return "";
_L2:
        obj = s;
          goto _L6
        obj;
        try
        {
            s = c.getAssets().open(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
          goto _L7
_L4:
        obj1 = ((StringBuffer) (obj1)).toString();
        try
        {
            s.close();
            ((BufferedReader) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return ((String) (obj1));
        }
        return ((String) (obj1));
        Exception exception;
        exception;
        try
        {
            s.close();
            ((BufferedReader) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        throw exception;
          goto _L6
    }

    private void f(String s)
    {
        if (g)
        {
            Log.i("OpenConfig", (new StringBuilder()).append(s).append("; appid: ").append(d).toString());
        }
    }

    public String a(String s)
    {
        f((new StringBuilder()).append("get ").append(s).toString());
        b();
        return e.optString(s);
    }

    public int b(String s)
    {
        f((new StringBuilder()).append("get ").append(s).toString());
        b();
        return e.optInt(s);
    }

    public long c(String s)
    {
        f((new StringBuilder()).append("get ").append(s).toString());
        b();
        return e.optLong(s);
    }

    public boolean d(String s)
    {
        f((new StringBuilder()).append("get ").append(s).toString());
        b();
        s = ((String) (e.opt(s)));
        if (s != null)
        {
            if (s instanceof Integer)
            {
                boolean flag;
                if (!s.equals(Integer.valueOf(0)))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return flag;
            }
            if (s instanceof Boolean)
            {
                return ((Boolean)s).booleanValue();
            }
        }
        return false;
    }

}
