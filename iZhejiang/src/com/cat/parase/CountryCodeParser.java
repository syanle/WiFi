// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.parase;

import com.cat.data.Person;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CountryCodeParser
{

    public CountryCodeParser()
    {
    }

    public static Object CountryCodeparaser(String s)
        throws Exception
    {
        Object obj;
        JSONObject jsonobject;
        Person person;
        int i;
        try
        {
            obj = new JSONObject(s);
            s = new ArrayList();
            obj = ((JSONObject) (obj)).getJSONArray("countrylist");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "JSONException";
        }
        i = 0;
        if (i >= ((JSONArray) (obj)).length())
        {
            return s;
        }
        jsonobject = (JSONObject)((JSONArray) (obj)).opt(i);
        person = new Person();
        person.setCountry(jsonobject.getString("country"));
        person.setCountrycn(jsonobject.getString("countrycn"));
        person.setCode(jsonobject.getString("code"));
        s.add(person);
        i++;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_27;
        }
    }
}
