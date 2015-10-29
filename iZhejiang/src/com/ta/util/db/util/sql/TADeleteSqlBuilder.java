// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.util.sql;

import com.ta.exception.TADBException;
import com.ta.util.db.entity.TAArrayList;
import com.ta.util.db.util.TADBUtils;
import java.lang.reflect.Field;

// Referenced classes of package com.ta.util.db.util.sql:
//            TASqlBuilder

public class TADeleteSqlBuilder extends TASqlBuilder
{

    public TADeleteSqlBuilder()
    {
    }

    public String buildSql()
        throws TADBException, IllegalArgumentException, IllegalAccessException
    {
        StringBuilder stringbuilder = new StringBuilder(256);
        stringbuilder.append("DELETE FROM ");
        stringbuilder.append(tableName);
        if (entity == null)
        {
            stringbuilder.append(buildConditionString());
        } else
        {
            stringbuilder.append(buildWhere(buildWhere(entity)));
        }
        return stringbuilder.toString();
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
            if (!TADBUtils.isTransient(field) && TADBUtils.isBaseDateType(field) && !TADBUtils.isAutoIncrement(field))
            {
                String s = TADBUtils.getColumnByField(field);
                if (field.get(obj) != null && field.get(obj).toString().length() > 0)
                {
                    if (s == null || s.equals(""))
                    {
                        s = field.getName();
                    }
                    taarraylist.add(s, field.get(obj).toString());
                }
            }
            i++;
        } while (true);
    }
}
