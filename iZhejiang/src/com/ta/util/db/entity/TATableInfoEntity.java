// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.entity;

import com.ta.common.TABaseEntity;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.ta.util.db.entity:
//            TAPKProperyEntity

public class TATableInfoEntity extends TABaseEntity
{

    private static final long serialVersionUID = 0x6c652c4471bf2eeL;
    private String className;
    private TAPKProperyEntity pkProperyEntity;
    ArrayList propertieArrayList;
    private String tableName;

    public TATableInfoEntity()
    {
        tableName = "";
        className = "";
        pkProperyEntity = null;
        propertieArrayList = new ArrayList();
    }

    public String getClassName()
    {
        return className;
    }

    public TAPKProperyEntity getPkProperyEntity()
    {
        return pkProperyEntity;
    }

    public ArrayList getPropertieArrayList()
    {
        return propertieArrayList;
    }

    public String getTableName()
    {
        return tableName;
    }

    public void setClassName(String s)
    {
        className = s;
    }

    public void setPkProperyEntity(TAPKProperyEntity tapkproperyentity)
    {
        pkProperyEntity = tapkproperyentity;
    }

    public void setPropertieArrayList(List list)
    {
        propertieArrayList = (ArrayList)list;
    }

    public void setTableName(String s)
    {
        tableName = s;
    }
}
