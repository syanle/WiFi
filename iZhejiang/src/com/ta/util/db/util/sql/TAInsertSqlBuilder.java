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

public class TAInsertSqlBuilder extends TASqlBuilder
{

    public TAInsertSqlBuilder()
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
        StringBuilder stringbuilder1 = new StringBuilder(256);
        stringbuilder.append("INSERT INTO ");
        stringbuilder.append(tableName).append(" (");
        stringbuilder1.append("(");
        TAArrayList taarraylist = getUpdateFields();
        if (taarraylist != null)
        {
            int i = 0;
            do
            {
                if (i >= taarraylist.size())
                {
                    stringbuilder.append(") values ");
                    stringbuilder1.append(")");
                    stringbuilder.append(stringbuilder1);
                    return stringbuilder.toString();
                }
                NameValuePair namevaluepair = (NameValuePair)taarraylist.get(i);
                stringbuilder.append(namevaluepair.getName());
                String s;
                if (namevaluepair.getValue() != null)
                {
                    s = namevaluepair.getValue().toString();
                } else
                {
                    s = "";
                }
                if (TAStringUtils.isNumeric(s))
                {
                    s = namevaluepair.getValue();
                } else
                {
                    s = (new StringBuilder("'")).append(namevaluepair.getValue()).append("'").toString();
                }
                stringbuilder1.append(s);
                if (i + 1 < taarraylist.size())
                {
                    stringbuilder.append(", ");
                    stringbuilder1.append(", ");
                }
                i++;
            } while (true);
        } else
        {
            throw new TADBException("\u63D2\u5165\u6570\u636E\u6709\u8BEF\uFF01");
        }
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
