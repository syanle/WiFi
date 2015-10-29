// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util;

import android.app.Activity;
import android.content.res.Resources;
import com.ta.annotation.TAInject;
import com.ta.annotation.TAInjectResource;
import com.ta.annotation.TAInjectView;
import java.lang.reflect.Field;

public class TAInjector
{

    private static TAInjector instance;

    private TAInjector()
    {
    }

    public static TAInjector getInstance()
    {
        if (instance == null)
        {
            instance = new TAInjector();
        }
        return instance;
    }

    private void inject(Activity activity, Field field)
    {
        try
        {
            field.setAccessible(true);
            field.set(activity, field.getType().newInstance());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            activity.printStackTrace();
        }
    }

    private void injectResource(Activity activity, Field field)
    {
        String s;
        int i;
        if (!field.isAnnotationPresent(com/ta/annotation/TAInjectResource))
        {
            break MISSING_BLOCK_LABEL_250;
        }
        i = ((TAInjectResource)field.getAnnotation(com/ta/annotation/TAInjectResource)).id();
        try
        {
            field.setAccessible(true);
            s = activity.getResources().getResourceTypeName(i);
            if (s.equalsIgnoreCase("string"))
            {
                field.set(activity, activity.getResources().getString(i));
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            activity.printStackTrace();
            return;
        }
        if (s.equalsIgnoreCase("drawable"))
        {
            field.set(activity, activity.getResources().getDrawable(i));
            return;
        }
        if (s.equalsIgnoreCase("layout"))
        {
            field.set(activity, activity.getResources().getLayout(i));
            return;
        }
        if (!s.equalsIgnoreCase("array"))
        {
            break MISSING_BLOCK_LABEL_196;
        }
        if (field.getType().equals([I))
        {
            field.set(activity, activity.getResources().getIntArray(i));
            return;
        }
        if (field.getType().equals([Ljava/lang/String;))
        {
            field.set(activity, activity.getResources().getStringArray(i));
            return;
        }
        field.set(activity, activity.getResources().getStringArray(i));
        return;
        if (!s.equalsIgnoreCase("color"))
        {
            break MISSING_BLOCK_LABEL_250;
        }
        if (field.getType().equals(Integer.TYPE))
        {
            field.set(activity, Integer.valueOf(activity.getResources().getColor(i)));
            return;
        }
        field.set(activity, activity.getResources().getColorStateList(i));
    }

    private void injectView(Activity activity, Field field)
    {
        int i;
        if (!field.isAnnotationPresent(com/ta/annotation/TAInjectView))
        {
            break MISSING_BLOCK_LABEL_39;
        }
        i = ((TAInjectView)field.getAnnotation(com/ta/annotation/TAInjectView)).id();
        field.setAccessible(true);
        field.set(activity, activity.findViewById(i));
        return;
        activity;
        activity.printStackTrace();
        return;
    }

    public void inJectAll(Activity activity)
    {
        Field afield[] = activity.getClass().getDeclaredFields();
        if (afield == null || afield.length <= 0) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        j = afield.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        Field field;
        field = afield[i];
        if (!field.isAnnotationPresent(com/ta/annotation/TAInjectView))
        {
            break; /* Loop/switch isn't completed */
        }
        injectView(activity, field);
_L6:
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        if (field.isAnnotationPresent(com/ta/annotation/TAInjectResource))
        {
            injectResource(activity, field);
        } else
        if (field.isAnnotationPresent(com/ta/annotation/TAInject))
        {
            inject(activity, field);
        }
          goto _L6
        if (true) goto _L5; else goto _L7
_L7:
    }

    public void inject(Activity activity)
    {
        Field afield[] = activity.getClass().getDeclaredFields();
        if (afield == null || afield.length <= 0) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        j = afield.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        Field field = afield[i];
        if (field.isAnnotationPresent(com/ta/annotation/TAInject))
        {
            inject(activity, field);
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void injectResource(Activity activity)
    {
        Field afield[] = activity.getClass().getDeclaredFields();
        if (afield == null || afield.length <= 0) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        j = afield.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        Field field = afield[i];
        if (field.isAnnotationPresent(com/ta/annotation/TAInjectResource))
        {
            injectResource(activity, field);
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void injectView(Activity activity)
    {
        Field afield[] = activity.getClass().getDeclaredFields();
        if (afield == null || afield.length <= 0) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        j = afield.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        Field field = afield[i];
        if (field.isAnnotationPresent(com/ta/annotation/TAInjectView))
        {
            injectView(activity, field);
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
