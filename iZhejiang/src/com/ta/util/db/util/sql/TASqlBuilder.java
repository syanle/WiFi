// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.util.sql;

import android.text.TextUtils;
import com.ta.common.TAStringUtils;
import com.ta.exception.TADBException;
import com.ta.util.db.entity.TAArrayList;
import com.ta.util.db.util.TADBUtils;
import org.apache.http.NameValuePair;

public abstract class TASqlBuilder
{

    protected Class clazz;
    protected Boolean distinct;
    protected Object entity;
    protected String groupBy;
    protected String having;
    protected String limit;
    protected String orderBy;
    protected String tableName;
    protected TAArrayList updateFields;
    protected String where;

    public TASqlBuilder()
    {
        clazz = null;
        tableName = null;
    }

    public TASqlBuilder(Class class1)
    {
        clazz = null;
        tableName = null;
        setTableName(class1);
    }

    public TASqlBuilder(Object obj)
    {
        clazz = null;
        tableName = null;
        entity = obj;
        setClazz(obj.getClass());
    }

    protected void appendClause(StringBuilder stringbuilder, String s, String s1)
    {
        if (!TextUtils.isEmpty(s1))
        {
            stringbuilder.append(s);
            stringbuilder.append(s1);
        }
    }

    protected String buildConditionString()
    {
        StringBuilder stringbuilder = new StringBuilder(120);
        appendClause(stringbuilder, " WHERE ", where);
        appendClause(stringbuilder, " GROUP BY ", groupBy);
        appendClause(stringbuilder, " HAVING ", having);
        appendClause(stringbuilder, " ORDER BY ", orderBy);
        appendClause(stringbuilder, " LIMIT ", limit);
        return stringbuilder.toString();
    }

    public abstract String buildSql()
        throws TADBException, IllegalArgumentException, IllegalAccessException;

    public String buildWhere(TAArrayList taarraylist)
    {
        StringBuilder stringbuilder = new StringBuilder(256);
        if (taarraylist == null) goto _L2; else goto _L1
_L1:
        int i;
        stringbuilder.append(" WHERE ");
        i = 0;
_L5:
        if (i < taarraylist.size()) goto _L3; else goto _L2
_L2:
        return stringbuilder.toString();
_L3:
        Object obj = (NameValuePair)taarraylist.get(i);
        StringBuilder stringbuilder1 = stringbuilder.append(((NameValuePair) (obj)).getName()).append(" = ");
        if (TAStringUtils.isNumeric(((NameValuePair) (obj)).getValue().toString()))
        {
            obj = ((NameValuePair) (obj)).getValue();
        } else
        {
            obj = (new StringBuilder("'")).append(((NameValuePair) (obj)).getValue()).append("'").toString();
        }
        stringbuilder1.append(((String) (obj)));
        if (i + 1 < taarraylist.size())
        {
            stringbuilder.append(" AND ");
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public Class getClazz()
    {
        return clazz;
    }

    public Object getEntity()
    {
        return entity;
    }

    public String getSqlStatement()
        throws TADBException, IllegalArgumentException, IllegalAccessException
    {
        onPreGetStatement();
        return buildSql();
    }

    public String getTableName()
    {
        return tableName;
    }

    public TAArrayList getUpdateFields()
    {
        return updateFields;
    }

    public void onPreGetStatement()
        throws TADBException, IllegalArgumentException, IllegalAccessException
    {
    }

    public void setClazz(Class class1)
    {
        setTableName(class1);
        clazz = class1;
    }

    public void setCondition(boolean flag, String s, String s1, String s2, String s3, String s4)
    {
        distinct = Boolean.valueOf(flag);
        where = s;
        groupBy = s1;
        having = s2;
        orderBy = s3;
        limit = s4;
    }

    public void setEntity(Object obj)
    {
        entity = obj;
        setClazz(obj.getClass());
    }

    public void setTableName(Class class1)
    {
        tableName = TADBUtils.getTableName(class1);
    }

    public void setTableName(String s)
    {
        tableName = s;
    }

    public void setUpdateFields(TAArrayList taarraylist)
    {
        updateFields = taarraylist;
    }
}
