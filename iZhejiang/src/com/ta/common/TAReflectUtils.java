// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.common;

import com.ta.annotation.TAField;
import com.ta.annotation.TATransparent;
import java.lang.reflect.Field;
import java.util.Date;

public class TAReflectUtils
{

    public TAReflectUtils()
    {
    }

    public static String getFieldName(Field field)
    {
        TAField tafield = (TAField)field.getAnnotation(com/ta/annotation/TAField);
        if (tafield != null && tafield.name().trim().length() != 0)
        {
            return tafield.name();
        } else
        {
            return field.getName();
        }
    }

    public static boolean isBaseDateType(Field field)
    {
        field = field.getType();
        return field.equals(java/lang/String) || field.equals(java/lang/Integer) || field.equals(java/lang/Byte) || field.equals(java/lang/Long) || field.equals(java/lang/Double) || field.equals(java/lang/Float) || field.equals(java/lang/Character) || field.equals(java/lang/Short) || field.equals(java/lang/Boolean) || field.equals(java/util/Date) || field.equals(java/util/Date) || field.equals(java/sql/Date) || field.isPrimitive();
    }

    public static boolean isTransient(Field field)
    {
        return field.getAnnotation(com/ta/annotation/TATransparent) != null;
    }
}
