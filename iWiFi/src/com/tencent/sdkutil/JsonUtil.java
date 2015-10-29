// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.os.Bundle;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.sdkutil:
//            TemporaryStorage

public class JsonUtil
{

    JSONObject mJsonObject;

    public JsonUtil()
    {
    }

    public JsonUtil(String s)
    {
        mJsonObject = parseJson(s);
    }

    public static String parseBundleToJsonString(Bundle bundle)
    {
        StringBuffer stringbuffer = new StringBuffer("{");
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); stringbuffer.append(","))
        {
            String s = (String)iterator.next();
            Object obj = bundle.get(s);
            stringbuffer.append((new StringBuilder()).append(s).append(":").append(obj.toString()).toString());
        }

        stringbuffer.append("}");
        return stringbuffer.toString();
    }

    public static JSONObject parseJson(String s)
    {
        String s1 = s;
        if (s.equals("false"))
        {
            s1 = "{value : false}";
        }
        s = s1;
        if (s1.equals("true"))
        {
            s = "{value : true}";
        }
        s1 = s;
        if (s.contains("allback("))
        {
            s1 = s.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
        }
        s = s1;
        if (s1.contains("online"))
        {
            s = (new StringBuilder()).append("{online:").append(s1.charAt(s1.length() - 2)).append("}").toString();
        }
        return new JSONObject(s);
    }

    public static Bundle parseJsonToBundleWithFile(JSONObject jsonobject)
    {
        Iterator iterator = jsonobject.keys();
        Bundle bundle = new Bundle();
        while (iterator.hasNext()) 
        {
            Object obj = (String)iterator.next();
            if (((String) (obj)).equals("file"))
            {
                obj = jsonobject.getJSONObject(((String) (obj))).keys();
                while (((Iterator) (obj)).hasNext()) 
                {
                    String s = (String)((Iterator) (obj)).next();
                    bundle.putByteArray(s, (byte[])(byte[])TemporaryStorage.get(s));
                }
            } else
            {
                bundle.putString(((String) (obj)), jsonobject.getString(((String) (obj))));
            }
        }
        return bundle;
    }

    public boolean getBoolean(String s, boolean flag)
    {
        boolean flag1;
        try
        {
            flag1 = mJsonObject.getBoolean(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return flag;
        }
        return flag1;
    }

    public double getFloat(String s, double d)
    {
        double d1;
        try
        {
            d1 = mJsonObject.getDouble(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return d;
        }
        return d1;
    }

    public int getInt(String s, int i)
    {
        int j;
        try
        {
            j = mJsonObject.getInt(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return i;
        }
        return j;
    }

    public String getString(String s)
    {
        try
        {
            s = mJsonObject.getString(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public JSONObject getmJsonObject()
    {
        return mJsonObject;
    }

    public void setJson(String s)
    {
        mJsonObject = parseJson(s);
    }
}
