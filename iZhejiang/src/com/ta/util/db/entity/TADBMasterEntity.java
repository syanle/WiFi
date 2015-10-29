// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.entity;

import com.ta.common.TABaseEntity;

public class TADBMasterEntity extends TABaseEntity
{

    private static final long serialVersionUID = 0x3e9cc513b7b39cf4L;
    private String name;
    private int rootpage;
    private String sql;
    private String tbl_name;
    private String type;

    public TADBMasterEntity()
    {
    }

    public String getName()
    {
        return name;
    }

    public int getRootpage()
    {
        return rootpage;
    }

    public String getSql()
    {
        return sql;
    }

    public String getTbl_name()
    {
        return tbl_name;
    }

    public String getType()
    {
        return type;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setRootpage(int i)
    {
        rootpage = i;
    }

    public void setSql(String s)
    {
        sql = s;
    }

    public void setTbl_name(String s)
    {
        tbl_name = s;
    }

    public void setType(String s)
    {
        type = s;
    }
}
