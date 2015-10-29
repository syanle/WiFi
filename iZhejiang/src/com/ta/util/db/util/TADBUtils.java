// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.util;

import android.database.Cursor;
import com.ta.common.TAStringUtils;
import com.ta.exception.TADBException;
import com.ta.util.db.annotation.TAColumn;
import com.ta.util.db.annotation.TAPrimaryKey;
import com.ta.util.db.annotation.TATableName;
import com.ta.util.db.annotation.TATransient;
import com.ta.util.db.entity.TAHashMap;
import com.ta.util.db.entity.TAPKProperyEntity;
import com.ta.util.db.entity.TAPropertyEntity;
import com.ta.util.db.entity.TATableInfoEntity;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.ta.util.db.util:
//            TATableInfofactory, TAEntityBuilder

public class TADBUtils
{

    public TADBUtils()
    {
    }

    public static String creatTableSql(Class class1)
        throws TADBException
    {
        Object obj = TATableInfofactory.getInstance().getTableInfoEntity(class1);
        Object obj1 = ((TATableInfoEntity) (obj)).getPkProperyEntity();
        class1 = new StringBuffer();
        class1.append("CREATE TABLE IF NOT EXISTS ");
        class1.append(((TATableInfoEntity) (obj)).getTableName());
        class1.append(" ( ");
        if (obj1 != null)
        {
            Class class2 = ((TAPKProperyEntity) (obj1)).getType();
            if (class2 == Integer.TYPE || class2 == java/lang/Integer)
            {
                if (((TAPKProperyEntity) (obj1)).isAutoIncrement())
                {
                    class1.append("\"").append(((TAPKProperyEntity) (obj1)).getColumnName()).append("\"    ").append("INTEGER PRIMARY KEY AUTOINCREMENT,");
                } else
                {
                    class1.append("\"").append(((TAPKProperyEntity) (obj1)).getColumnName()).append("\"    ").append("INTEGER PRIMARY KEY,");
                }
            } else
            {
                class1.append("\"").append(((TAPKProperyEntity) (obj1)).getColumnName()).append("\"    ").append("TEXT PRIMARY KEY,");
            }
        } else
        {
            class1.append("\"").append("id").append("\"    ").append("INTEGER PRIMARY KEY AUTOINCREMENT,");
        }
        obj = ((TATableInfoEntity) (obj)).getPropertieArrayList().iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                class1.deleteCharAt(class1.length() - 1);
                class1.append(" )");
                return class1.toString();
            }
            obj1 = (TAPropertyEntity)((Iterator) (obj)).next();
            class1.append("\"").append(((TAPropertyEntity) (obj1)).getColumnName());
            class1.append("\",");
        } while (true);
    }

    public static String getColumnByField(Field field)
    {
        Object obj = (TAColumn)field.getAnnotation(com/ta/util/db/annotation/TAColumn);
        if (obj != null && ((TAColumn) (obj)).name().trim().length() != 0)
        {
            return ((TAColumn) (obj)).name();
        }
        obj = (TAPrimaryKey)field.getAnnotation(com/ta/util/db/annotation/TAPrimaryKey);
        if (obj != null && ((TAPrimaryKey) (obj)).name().trim().length() != 0)
        {
            return ((TAPrimaryKey) (obj)).name();
        } else
        {
            return field.getName();
        }
    }

    public static List getListEntity(Class class1, Cursor cursor)
    {
        return TAEntityBuilder.buildQueryList(class1, cursor);
    }

    public static Field getPrimaryKeyField(Class class1)
    {
        boolean flag = false;
        Object obj = null;
        Field afield[] = class1.getDeclaredFields();
        int i;
        int j;
        if (afield != null)
        {
            j = afield.length;
            i = 0;
        } else
        {
            throw new RuntimeException((new StringBuilder("this model[")).append(class1).append("] has no field").toString());
        }
        if (i < j) goto _L2; else goto _L1
_L1:
        class1 = ((Class) (obj));
_L6:
        obj = class1;
        if (class1 != null) goto _L4; else goto _L3
_L3:
        j = afield.length;
        i = 0;
_L8:
        if (i < j)
        {
label0:
            {
                obj = afield[i];
                if (!"_id".equals(((Field) (obj)).getName()))
                {
                    break label0;
                }
                class1 = ((Class) (obj));
            }
        }
        obj = class1;
        if (class1 != null) goto _L4; else goto _L5
_L5:
        j = afield.length;
        i = ((flag) ? 1 : 0);
_L9:
        if (i < j)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        obj = class1;
_L4:
        return ((Field) (obj));
_L2:
        class1 = afield[i];
        if (class1.getAnnotation(com/ta/util/db/annotation/TAPrimaryKey) == null) goto _L7; else goto _L6
_L7:
        i++;
        break MISSING_BLOCK_LABEL_20;
        i++;
          goto _L8
        obj = afield[i];
        if ("id".equals(((Field) (obj)).getName()))
        {
            return ((Field) (obj));
        }
        i++;
          goto _L9
    }

    public static String getPrimaryKeyFieldName(Class class1)
    {
        class1 = getPrimaryKeyField(class1);
        if (class1 == null)
        {
            return "id";
        } else
        {
            return class1.getName();
        }
    }

    public static String getPropertyDefaultValue(Field field)
    {
        field = (TAColumn)field.getAnnotation(com/ta/util/db/annotation/TAColumn);
        if (field != null && field.defaultValue().trim().length() != 0)
        {
            return field.defaultValue();
        } else
        {
            return null;
        }
    }

    public static List getPropertyList(Class class1)
    {
        ArrayList arraylist;
        int i;
        int j;
        arraylist = new ArrayList();
        Field afield[];
        Field field;
        TAPKProperyEntity tapkproperyentity;
        try
        {
            afield = class1.getDeclaredFields();
            class1 = getPrimaryKeyFieldName(class1);
            j = afield.length;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            throw new RuntimeException(class1.getMessage(), class1);
        }
        i = 0;
          goto _L1
_L3:
        field = afield[i];
        if (isTransient(field) || !isBaseDateType(field) || field.getName().equals(class1))
        {
            break; /* Loop/switch isn't completed */
        }
        tapkproperyentity = new TAPKProperyEntity();
        tapkproperyentity.setColumnName(getColumnByField(field));
        tapkproperyentity.setName(field.getName());
        tapkproperyentity.setType(field.getType());
        tapkproperyentity.setDefaultValue(getPropertyDefaultValue(field));
        arraylist.add(tapkproperyentity);
        break; /* Loop/switch isn't completed */
_L1:
        if (i >= j)
        {
            return arraylist;
        }
        if (true) goto _L3; else goto _L2
_L2:
        i++;
          goto _L1
        if (true) goto _L3; else goto _L4
_L4:
    }

    public static TAHashMap getRowData(Cursor cursor)
    {
        if (cursor != null && cursor.getColumnCount() > 0)
        {
            TAHashMap tahashmap = new TAHashMap();
            int j = cursor.getColumnCount();
            int i = 0;
            do
            {
                if (i >= j)
                {
                    return tahashmap;
                }
                tahashmap.put(cursor.getColumnName(i), cursor.getString(i));
                i++;
            } while (true);
        } else
        {
            return null;
        }
    }

    public static String getTableName(Class class1)
    {
        TATableName tatablename = (TATableName)class1.getAnnotation(com/ta/util/db/annotation/TATableName);
        if (tatablename == null || TAStringUtils.isEmpty(tatablename.name()))
        {
            return class1.getName().toLowerCase().replace('.', '_');
        } else
        {
            return tatablename.name();
        }
    }

    public static boolean isAutoIncrement(Field field)
    {
        field = (TAPrimaryKey)field.getAnnotation(com/ta/util/db/annotation/TAPrimaryKey);
        if (field != null)
        {
            return field.autoIncrement();
        } else
        {
            return false;
        }
    }

    public static boolean isBaseDateType(Field field)
    {
        field = field.getType();
        return field.equals(java/lang/String) || field.equals(java/lang/Integer) || field.equals(java/lang/Byte) || field.equals(java/lang/Long) || field.equals(java/lang/Double) || field.equals(java/lang/Float) || field.equals(java/lang/Character) || field.equals(java/lang/Short) || field.equals(java/lang/Boolean) || field.equals(java/util/Date) || field.equals(java/util/Date) || field.equals(java/sql/Date) || field.isPrimitive();
    }

    public static boolean isPrimaryKey(Field field)
    {
        return field.getAnnotation(com/ta/util/db/annotation/TAPrimaryKey) != null;
    }

    public static boolean isTransient(Field field)
    {
        return field.getAnnotation(com/ta/util/db/annotation/TATransient) != null;
    }
}
