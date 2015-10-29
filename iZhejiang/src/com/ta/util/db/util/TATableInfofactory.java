// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.util;

import com.ta.exception.TADBException;
import com.ta.util.db.entity.TAPKProperyEntity;
import com.ta.util.db.entity.TATableInfoEntity;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.ta.util.db.util:
//            TADBUtils

public class TATableInfofactory
{

    private static TATableInfofactory instance;
    private static final HashMap tableInfoEntityMap = new HashMap();

    private TATableInfofactory()
    {
    }

    public static TATableInfofactory getInstance()
    {
        if (instance == null)
        {
            instance = new TATableInfofactory();
        }
        return instance;
    }

    public TATableInfoEntity getTableInfoEntity(Class class1)
        throws TADBException
    {
        if (class1 == null)
        {
            throw new TADBException("\u8868\u4FE1\u606F\u83B7\u53D6\u5931\u8D25\uFF0C\u5E94\u4E3Aclass\u4E3Anull");
        }
        TATableInfoEntity tatableinfoentity1 = (TATableInfoEntity)tableInfoEntityMap.get(class1.getName());
        TATableInfoEntity tatableinfoentity = tatableinfoentity1;
        if (tatableinfoentity1 == null)
        {
            tatableinfoentity = new TATableInfoEntity();
            tatableinfoentity.setTableName(TADBUtils.getTableName(class1));
            tatableinfoentity.setClassName(class1.getName());
            Object obj = TADBUtils.getPrimaryKeyField(class1);
            if (obj != null)
            {
                TAPKProperyEntity tapkproperyentity = new TAPKProperyEntity();
                tapkproperyentity.setColumnName(TADBUtils.getColumnByField(((Field) (obj))));
                tapkproperyentity.setName(((Field) (obj)).getName());
                tapkproperyentity.setType(((Field) (obj)).getType());
                tapkproperyentity.setAutoIncrement(TADBUtils.isAutoIncrement(((Field) (obj))));
                tatableinfoentity.setPkProperyEntity(tapkproperyentity);
            } else
            {
                tatableinfoentity.setPkProperyEntity(null);
            }
            obj = TADBUtils.getPropertyList(class1);
            if (obj != null)
            {
                tatableinfoentity.setPropertieArrayList(((java.util.List) (obj)));
            }
            tableInfoEntityMap.put(class1.getName(), tatableinfoentity);
        }
        if (tatableinfoentity == null || tatableinfoentity.getPropertieArrayList() == null || tatableinfoentity.getPropertieArrayList().size() == 0)
        {
            throw new TADBException((new StringBuilder("\u4E0D\u80FD\u521B\u5EFA+")).append(class1).append("\u7684\u8868\u4FE1\u606F").toString());
        } else
        {
            return tatableinfoentity;
        }
    }

}
