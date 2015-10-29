// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.entity;

import java.util.Date;
import java.util.HashMap;

public class TAHashMap extends HashMap
{

    private static final long serialVersionUID = 1L;

    public TAHashMap()
    {
    }

    public Object get(Object obj)
    {
        return super.get(obj);
    }

    public byte[] getBlob(String s)
    {
        return getString(s).getBytes();
    }

    public boolean getBoolean(String s)
    {
        return Boolean.valueOf(getString(s)).booleanValue();
    }

    public char getChar(String s)
    {
        return getString(s).trim().toCharArray()[0];
    }

    public Date getDate(String s)
    {
        return new Date(getString(s));
    }

    public double getDouble(String s)
    {
        return Double.valueOf(getString(s)).doubleValue();
    }

    public float getFloat(String s)
    {
        return Float.valueOf(getString(s)).floatValue();
    }

    public int getInt(String s)
    {
        return Integer.valueOf(getString(s)).intValue();
    }

    public long getLong(String s)
    {
        return Long.valueOf(getString(s)).longValue();
    }

    public short getShort(String s)
    {
        return Short.valueOf(getString(s)).shortValue();
    }

    public String getString(String s)
    {
        return String.valueOf(get(s));
    }

    public boolean hasValue(Object obj)
    {
        return obj != null;
    }

    public volatile Object put(Object obj, Object obj1)
    {
        return put((String)obj, (Object)obj1);
    }

    public Object put(String s, Object obj)
    {
        if (hasValue(obj))
        {
            return super.put(s, obj);
        } else
        {
            return null;
        }
    }
}
