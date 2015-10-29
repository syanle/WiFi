// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util;

import com.ta.annotation.TACompareAnnotation;
import java.lang.reflect.Field;
import java.util.Comparator;

public class TAComparator
    implements Comparator
{

    public static final int ASC_SORT_TYPE = 1;
    public static final int DES_SORT_TYPE = 2;
    private int sortFlag;
    private int sortType;

    public TAComparator()
    {
        sortType = 1;
        sortFlag = 0;
    }

    public TAComparator(int i)
    {
        sortType = 1;
        sortFlag = 0;
        sortType = i;
    }

    public TAComparator(int i, int j)
    {
        sortType = 1;
        sortFlag = 0;
        sortType = i;
        sortFlag = j;
    }

    public int compare(Object obj, Object obj1)
    {
        int i;
        int j;
        try
        {
            i = getCompareValue(obj);
            j = getCompareValue(obj1);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
            i = 0;
            j = 0;
        }
        if (sortType == 2)
        {
            return j - i;
        } else
        {
            return i - j;
        }
    }

    public int getCompareValue(Object obj)
        throws IllegalArgumentException, IllegalAccessException
    {
        Field afield[];
        int i;
        int j;
        int k;
        j = 0;
        k = 0;
        afield = obj.getClass().getDeclaredFields();
        i = j;
        if (afield == null) goto _L2; else goto _L1
_L1:
        i = j;
        if (afield.length <= 0) goto _L2; else goto _L3
_L3:
        int l;
        l = afield.length;
        j = 0;
        i = k;
_L11:
        if (j < l) goto _L4; else goto _L2
_L2:
        return i;
_L4:
        Field field;
        field = afield[j];
        k = i;
        if (!field.isAnnotationPresent(com/ta/annotation/TACompareAnnotation)) goto _L6; else goto _L5
_L5:
        int i1;
        i1 = ((TACompareAnnotation)field.getAnnotation(com/ta/annotation/TACompareAnnotation)).sortFlag();
        field.setAccessible(true);
        if (!field.getType().equals(Integer.TYPE)) goto _L8; else goto _L7
_L7:
        i = field.getInt(obj);
_L9:
        k = i;
        if (i1 == sortFlag)
        {
            return i;
        }
        break; /* Loop/switch isn't completed */
_L8:
        if (field.getType().equals(Boolean.TYPE))
        {
            if (Boolean.valueOf(field.getBoolean(obj)).booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
        } else
        if (field.getType().equals(java/lang/String))
        {
            i = Integer.parseInt((String)field.get(obj));
        }
        if (true) goto _L9; else goto _L6
_L6:
        j++;
        i = k;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public int getSortType()
    {
        return sortType;
    }

    public void setSortType(int i)
    {
        sortType = i;
    }
}
