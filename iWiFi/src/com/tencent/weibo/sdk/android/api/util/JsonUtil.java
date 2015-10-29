// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.util;

import com.tencent.weibo.sdk.android.model.BaseVO;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class JsonUtil
{

    public JsonUtil()
    {
    }

    public static List jsonToList(Class class1, JSONArray jsonarray)
        throws Exception
    {
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            if (i >= jsonarray.length())
            {
                return arraylist;
            }
            arraylist.add(jsonToObject(class1, jsonarray.getJSONObject(i)));
            i++;
        } while (true);
    }

    public static BaseVO jsonToObject(Class class1, JSONObject jsonobject)
        throws Exception
    {
        HashMap hashmap;
        Object obj;
        int i;
        hashmap = new HashMap();
        obj = class1.getMethods();
        int j = obj.length;
        i = 0;
        do
        {
            if (i >= j)
            {
                obj = (BaseVO)class1.newInstance();
                class1 = class1.getDeclaredFields();
                j = class1.length;
                i = 0;
                break MISSING_BLOCK_LABEL_47;
            }
            Method method = obj[i];
            if (method.getName().startsWith("set"))
            {
                hashmap.put(method.getName().toLowerCase(), method);
            }
            i++;
        } while (true);
_L2:
        String s;
        Object obj1;
        if (i >= j)
        {
            return ((BaseVO) (obj));
        }
        obj1 = class1[i];
        s = ((Field) (obj1)).getType().getName();
        obj1 = ((Field) (obj1)).getName();
        if (s.equals("boolean"))
        {
            ((Method)hashmap.get((new StringBuilder("set")).append(((String) (obj1)).toLowerCase()).toString())).invoke(obj, new Object[] {
                Boolean.valueOf(jsonobject.getBoolean(((String) (obj1))))
            });
            break MISSING_BLOCK_LABEL_746;
        }
        if (s.equals(java/lang/Boolean.getName()))
        {
            ((Method)hashmap.get((new StringBuilder("set")).append(((String) (obj1)).toLowerCase()).toString())).invoke(obj, new Object[] {
                Boolean.valueOf(jsonobject.getBoolean(((String) (obj1))))
            });
            break MISSING_BLOCK_LABEL_746;
        }
        if (s.equals("int") || s.equals("byte"))
        {
            ((Method)hashmap.get((new StringBuilder("set")).append(((String) (obj1)).toLowerCase()).toString())).invoke(obj, new Object[] {
                Integer.valueOf(jsonobject.getInt(((String) (obj1))))
            });
            break MISSING_BLOCK_LABEL_746;
        }
        if (s.equals(java/lang/Integer.getName()) || s.equals(java/lang/Byte.getName()))
        {
            ((Method)hashmap.get((new StringBuilder("set")).append(((String) (obj1)).toLowerCase()).toString())).invoke(obj, new Object[] {
                Integer.valueOf(jsonobject.getInt(((String) (obj1))))
            });
            break MISSING_BLOCK_LABEL_746;
        }
        if (s.equals(java/lang/String.getName()))
        {
            ((Method)hashmap.get((new StringBuilder("set")).append(((String) (obj1)).toLowerCase()).toString())).invoke(obj, new Object[] {
                jsonobject.getString(((String) (obj1)))
            });
            break MISSING_BLOCK_LABEL_746;
        }
        if (s.equals("double") || s.equals("float"))
        {
            ((Method)hashmap.get((new StringBuilder("set")).append(((String) (obj1)).toLowerCase()).toString())).invoke(obj, new Object[] {
                Double.valueOf(jsonobject.getDouble(((String) (obj1))))
            });
            break MISSING_BLOCK_LABEL_746;
        }
        if (s.equals(java/lang/Double.getName()) || s.equals(java/lang/Float.getName()))
        {
            ((Method)hashmap.get((new StringBuilder("set")).append(((String) (obj1)).toLowerCase()).toString())).invoke(obj, new Object[] {
                Double.valueOf(jsonobject.getDouble(((String) (obj1))))
            });
            break MISSING_BLOCK_LABEL_746;
        }
        if (s.equals("long"))
        {
            ((Method)hashmap.get((new StringBuilder("set")).append(((String) (obj1)).toLowerCase()).toString())).invoke(obj, new Object[] {
                Long.valueOf(jsonobject.getLong(((String) (obj1))))
            });
            break MISSING_BLOCK_LABEL_746;
        }
        try
        {
            if (s.equals(java/lang/Long.getName()))
            {
                ((Method)hashmap.get((new StringBuilder("set")).append(((String) (obj1)).toLowerCase()).toString())).invoke(obj, new Object[] {
                    Long.valueOf(jsonobject.getLong(((String) (obj1))))
                });
            }
        }
        catch (Exception exception) { }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
