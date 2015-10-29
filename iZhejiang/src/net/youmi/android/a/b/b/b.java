// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.b;

import org.json.JSONArray;
import org.json.JSONObject;

public class b
{

    public static double a(JSONObject jsonobject, String s, double d)
    {
        double d1 = d;
        try
        {
            if (a(jsonobject, s))
            {
                d1 = jsonobject.getDouble(s);
            }
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            return d;
        }
        return d1;
    }

    public static int a(JSONObject jsonobject, String s, int i)
    {
        int j = i;
        try
        {
            if (a(jsonobject, s))
            {
                j = jsonobject.getInt(s);
            }
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            return i;
        }
        return j;
    }

    public static long a(JSONObject jsonobject, String s, long l)
    {
        long l1 = l;
        try
        {
            if (a(jsonobject, s))
            {
                l1 = jsonobject.getLong(s);
            }
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            return l;
        }
        return l1;
    }

    public static String a(JSONArray jsonarray, int i, String s)
    {
        Object obj;
        obj = s;
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        obj = s;
        if (jsonarray.length() <= i)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        obj = s;
        if (i <= -1)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        try
        {
            jsonarray = jsonarray.getString(i);
        }
        // Misplaced declaration of an exception variable
        catch (JSONArray jsonarray)
        {
            return s;
        }
        obj = s;
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        jsonarray = jsonarray.trim();
        i = jsonarray.length();
        obj = s;
        if (i > 0)
        {
            obj = jsonarray;
        }
        return ((String) (obj));
    }

    public static String a(JSONObject jsonobject, String s, String s1)
    {
        Object obj = s1;
        if (!a(jsonobject, s))
        {
            break MISSING_BLOCK_LABEL_42;
        }
        jsonobject = jsonobject.getString(s);
        obj = s1;
        if (jsonobject != null)
        {
            int i;
            try
            {
                jsonobject = jsonobject.trim();
                i = jsonobject.length();
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                return s1;
            }
            obj = s1;
            if (i > 0)
            {
                obj = jsonobject;
            }
        }
        return ((String) (obj));
    }

    public static JSONArray a(JSONObject jsonobject, String s, JSONArray jsonarray)
    {
        JSONArray jsonarray1 = jsonarray;
        try
        {
            if (a(jsonobject, s))
            {
                jsonarray1 = jsonobject.getJSONArray(s);
            }
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            return jsonarray;
        }
        return jsonarray1;
    }

    public static JSONObject a(String s)
    {
        if (s == null)
        {
            return null;
        }
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static JSONObject a(JSONArray jsonarray, int i, JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        jsonobject1 = jsonobject;
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        jsonobject1 = jsonobject;
        if (jsonarray.length() > i)
        {
            jsonobject1 = jsonobject;
            if (i > -1)
            {
                try
                {
                    jsonobject1 = jsonarray.getJSONObject(i);
                }
                // Misplaced declaration of an exception variable
                catch (JSONArray jsonarray)
                {
                    return jsonobject;
                }
            }
        }
        return jsonobject1;
    }

    public static JSONObject a(JSONObject jsonobject, String s, JSONObject jsonobject1)
    {
        JSONObject jsonobject2 = jsonobject1;
        try
        {
            if (a(jsonobject, s))
            {
                jsonobject2 = jsonobject.getJSONObject(s);
            }
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            return jsonobject1;
        }
        return jsonobject2;
    }

    public static boolean a(JSONObject jsonobject, String s)
    {
        return jsonobject != null && !jsonobject.isNull(s);
    }

    public static boolean a(JSONObject jsonobject, String s, boolean flag)
    {
        boolean flag1 = flag;
        try
        {
            if (a(jsonobject, s))
            {
                flag1 = jsonobject.getBoolean(s);
            }
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            return flag;
        }
        return flag1;
    }
}
