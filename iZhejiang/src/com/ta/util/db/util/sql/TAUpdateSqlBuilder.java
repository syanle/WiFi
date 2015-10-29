// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.util.sql;

import com.ta.common.TAStringUtils;
import com.ta.exception.TADBException;
import com.ta.util.db.annotation.TAPrimaryKey;
import com.ta.util.db.entity.TAArrayList;
import com.ta.util.db.util.TADBUtils;
import java.lang.reflect.Field;
import org.apache.http.NameValuePair;

// Referenced classes of package com.ta.util.db.util.sql:
//            TASqlBuilder

public class TAUpdateSqlBuilder extends TASqlBuilder
{

    public TAUpdateSqlBuilder()
    {
    }

    public static TAArrayList getFieldsAndValue(Object obj)
        throws TADBException, IllegalArgumentException, IllegalAccessException
    {
        TAArrayList taarraylist = new TAArrayList();
        if (obj == null)
        {
            throw new TADBException("\u6CA1\u6709\u52A0\u8F7D\u5B9E\u4F53\u7C7B\uFF01");
        }
        Field afield[] = obj.getClass().getDeclaredFields();
        int j = afield.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return taarraylist;
            }
            Object obj1 = afield[i];
            if (!TADBUtils.isTransient(((Field) (obj1))) && TADBUtils.isBaseDateType(((Field) (obj1))))
            {
                TAPrimaryKey taprimarykey = (TAPrimaryKey)((Field) (obj1)).getAnnotation(com/ta/util/db/annotation/TAPrimaryKey);
                if (taprimarykey == null || !taprimarykey.autoIncrement())
                {
                    String s = TADBUtils.getColumnByField(((Field) (obj1)));
                    ((Field) (obj1)).setAccessible(true);
                    if (s == null || s.equals(""))
                    {
                        s = ((Field) (obj1)).getName();
                    }
                    if (((Field) (obj1)).get(obj) == null)
                    {
                        obj1 = null;
                    } else
                    {
                        obj1 = ((Field) (obj1)).get(obj).toString();
                    }
                    taarraylist.add(s, ((String) (obj1)));
                }
            }
            i++;
        } while (true);
    }

    public String buildSql()
        throws TADBException, IllegalArgumentException, IllegalAccessException
    {
        StringBuilder stringbuilder = new StringBuilder(256);
        stringbuilder.append("UPDATE ");
        stringbuilder.append(tableName).append(" SET ");
        TAArrayList taarraylist = getUpdateFields();
        int i = 0;
        do
        {
            if (i >= taarraylist.size())
            {
                Object obj;
                StringBuilder stringbuilder1;
                if (!TAStringUtils.isEmpty(where))
                {
                    stringbuilder.append(buildConditionString());
                } else
                {
                    stringbuilder.append(buildWhere(buildWhere(entity)));
                }
                return stringbuilder.toString();
            }
            obj = (NameValuePair)taarraylist.get(i);
            stringbuilder1 = stringbuilder.append(((NameValuePair) (obj)).getName()).append(" = ");
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
                stringbuilder.append(", ");
            }
            i++;
        } while (true);
    }

    public TAArrayList buildWhere(Object obj)
        throws IllegalArgumentException, IllegalAccessException, TADBException
    {
        Class class1 = obj.getClass();
        TAArrayList taarraylist = new TAArrayList();
        Field afield[] = class1.getDeclaredFields();
        int j = afield.length;
        int i = 0;
        do
        {
            Field field;
            if (i >= j)
            {
                if (taarraylist.isEmpty())
                {
                    throw new TADBException("\u4E0D\u80FD\u521B\u5EFAWhere\u6761\u4EF6\uFF0C\u8BED\u53E5");
                } else
                {
                    return taarraylist;
                }
            }
            field = afield[i];
            field.setAccessible(true);
            if (!TADBUtils.isTransient(field) && TADBUtils.isBaseDateType(field) && field.getAnnotation(com/ta/util/db/annotation/TAPrimaryKey) != null)
            {
                String s = TADBUtils.getColumnByField(field);
                if (s == null || s.equals(""))
                {
                    s = field.getName();
                }
                taarraylist.add(s, field.get(obj).toString());
            }
            i++;
        } while (true);
    }

    public void onPreGetStatement()
        throws TADBException, IllegalArgumentException, IllegalAccessException
    {
        if (getUpdateFields() == null)
        {
            setUpdateFields(getFieldsAndValue(entity));
        }
        super.onPreGetStatement();
    }
}
