// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.entity;


public class TAPropertyEntity
{

    protected boolean autoIncrement;
    protected String columnName;
    protected Object defaultValue;
    protected int index;
    protected boolean isAllowNull;
    protected String name;
    protected boolean primaryKey;
    protected Class type;

    public TAPropertyEntity()
    {
        isAllowNull = true;
        primaryKey = false;
        autoIncrement = false;
    }

    public TAPropertyEntity(String s, Class class1, Object obj, boolean flag, boolean flag1, boolean flag2, String s1)
    {
        isAllowNull = true;
        primaryKey = false;
        autoIncrement = false;
        name = s;
        type = class1;
        defaultValue = obj;
        primaryKey = flag;
        isAllowNull = flag1;
        autoIncrement = flag2;
        columnName = s1;
    }

    public String getColumnName()
    {
        return columnName;
    }

    public Object getDefaultValue()
    {
        return defaultValue;
    }

    public int getIndex()
    {
        return index;
    }

    public String getName()
    {
        return name;
    }

    public Class getType()
    {
        return type;
    }

    public boolean isAllowNull()
    {
        return isAllowNull;
    }

    public boolean isAutoIncrement()
    {
        return autoIncrement;
    }

    public boolean isPrimaryKey()
    {
        return primaryKey;
    }

    public void setAllowNull(boolean flag)
    {
        isAllowNull = flag;
    }

    public void setAutoIncrement(boolean flag)
    {
        autoIncrement = flag;
    }

    public void setColumnName(String s)
    {
        columnName = s;
    }

    public void setDefaultValue(Object obj)
    {
        defaultValue = obj;
    }

    public void setIndex(int i)
    {
        index = i;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPrimaryKey(boolean flag)
    {
        primaryKey = flag;
    }

    public void setType(Class class1)
    {
        type = class1;
    }
}
