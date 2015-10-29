// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.util;

import android.database.Cursor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.ta.util.db.util:
//            TADBUtils

public class TAEntityBuilder
{

    public TAEntityBuilder()
    {
    }

    public static List buildQueryList(Class class1, Cursor cursor)
    {
        ArrayList arraylist = new ArrayList();
        if (cursor.moveToFirst())
        {
            do
            {
                arraylist.add(buildQueryOneEntity(class1, cursor));
            } while (cursor.moveToNext());
        }
        return arraylist;
    }

    public static Object buildQueryOneEntity(Class class1, Cursor cursor)
    {
        int i;
        int j;
        Field afield[] = class1.getDeclaredFields();
        Class class3 = null;
        Class class2 = null;
        Field field;
        String s;
        try
        {
            class1 = ((Class) (class1.newInstance()));
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            class1.printStackTrace();
            return class2;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            class1.printStackTrace();
            return class3;
        }
        class2 = class1;
        class3 = class1;
        j = afield.length;
        i = 0;
          goto _L1
_L3:
        field = afield[i];
        class2 = class1;
        class3 = class1;
        field.setAccessible(true);
        class2 = class1;
        class3 = class1;
        if (TADBUtils.isTransient(field))
        {
            continue; /* Loop/switch isn't completed */
        }
        class2 = class1;
        class3 = class1;
        if (!TADBUtils.isBaseDateType(field))
        {
            continue; /* Loop/switch isn't completed */
        }
        class2 = class1;
        class3 = class1;
        s = TADBUtils.getColumnByField(field);
        class2 = class1;
        class3 = class1;
        field.setAccessible(true);
        class2 = class1;
        class3 = class1;
        setValue(field, s, class1, cursor);
        i++;
_L1:
        if (i < j) goto _L3; else goto _L2
_L2:
        return class1;
    }

    private static void setValue(Field field, String s, Object obj, Cursor cursor)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        if (s.equals(""))
        {
            break MISSING_BLOCK_LABEL_50;
        }
_L1:
        int i;
        i = cursor.getColumnIndexOrThrow(s);
        s = field.getType();
        if (s.equals(java/lang/String))
        {
            field.set(obj, cursor.getString(i));
            return;
        }
        break MISSING_BLOCK_LABEL_58;
        try
        {
            s = field.getName();
        }
        // Misplaced declaration of an exception variable
        catch (Field field)
        {
            field.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Field field)
        {
            field.printStackTrace();
            return;
        }
          goto _L1
        if (s.equals(java/lang/Integer) || s.equals(Integer.TYPE))
        {
            field.set(obj, Integer.valueOf(cursor.getInt(i)));
            return;
        }
        if (s.equals(java/lang/Float) || s.equals(Float.TYPE))
        {
            field.set(obj, Float.valueOf(cursor.getFloat(i)));
            return;
        }
        if (s.equals(java/lang/Double) || s.equals(Double.TYPE))
        {
            field.set(obj, Double.valueOf(cursor.getDouble(i)));
            return;
        }
        if (s.equals(java/lang/Short) || s.equals(java/lang/Short))
        {
            field.set(obj, Short.valueOf(cursor.getShort(i)));
            return;
        }
        if (s.equals(java/lang/Long) || s.equals(Long.TYPE))
        {
            field.set(obj, Long.valueOf(cursor.getLong(i)));
            return;
        }
        if (s.equals(java/lang/Byte) || s.equals(Byte.TYPE))
        {
            field.set(obj, cursor.getBlob(i));
            return;
        }
        if (s.equals(java/lang/Boolean))
        {
            field.set(obj, new Boolean(cursor.getString(i)));
            return;
        }
        if (s.equals(java/util/Date))
        {
            field.set(obj, new Date(cursor.getString(i)));
            return;
        }
        if (s.equals(java/lang/Character) || s.equals(Character.TYPE))
        {
            field.set(obj, Character.valueOf(cursor.getString(i).trim().toCharArray()[0]));
        }
        return;
    }
}
