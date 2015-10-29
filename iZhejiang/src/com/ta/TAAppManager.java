// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import java.util.Iterator;
import java.util.Stack;

public class TAAppManager
{

    private static Stack activityStack;
    private static TAAppManager instance;

    private TAAppManager()
    {
    }

    public static TAAppManager getAppManager()
    {
        if (instance == null)
        {
            instance = new TAAppManager();
        }
        return instance;
    }

    public void AppExit(Context context, Boolean boolean1)
    {
        finishAllActivity();
        ((ActivityManager)context.getSystemService("activity")).restartPackage(context.getPackageName());
        if (!boolean1.booleanValue())
        {
            System.exit(0);
        }
_L2:
        return;
        context;
        if (boolean1.booleanValue()) goto _L2; else goto _L1
_L1:
        System.exit(0);
        return;
        context;
        if (!boolean1.booleanValue())
        {
            System.exit(0);
        }
        throw context;
    }

    public void addActivity(Activity activity)
    {
        if (activityStack == null)
        {
            activityStack = new Stack();
        }
        activityStack.add(activity);
    }

    public Activity currentActivity()
    {
        return (Activity)activityStack.lastElement();
    }

    public void finishActivity()
    {
        finishActivity((Activity)activityStack.lastElement());
    }

    public void finishActivity(Activity activity)
    {
        if (activity != null)
        {
            activityStack.remove(activity);
            activity.finish();
        }
    }

    public void finishActivity(Class class1)
    {
        Iterator iterator = activityStack.iterator();
        do
        {
            Activity activity;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                activity = (Activity)iterator.next();
            } while (!activity.getClass().equals(class1));
            finishActivity(activity);
        } while (true);
    }

    public void finishAllActivity()
    {
        int i = 0;
        int j = activityStack.size();
        do
        {
            if (i >= j)
            {
                activityStack.clear();
                return;
            }
            if (activityStack.get(i) != null)
            {
                ((Activity)activityStack.get(i)).finish();
            }
            i++;
        } while (true);
    }

    public void removeActivity(Activity activity)
    {
        if (activity != null)
        {
            activityStack.remove(activity);
        }
    }
}
