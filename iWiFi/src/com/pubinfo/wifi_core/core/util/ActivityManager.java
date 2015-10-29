// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.app.Activity;
import java.util.Stack;

// Referenced classes of package com.pubinfo.wifi_core.core.util:
//            IPopForwardActivity

public class ActivityManager
{

    private static ActivityManager instance = null;
    public Stack activityStack;

    public ActivityManager()
    {
        activityStack = null;
    }

    public static ActivityManager getInstance()
    {
        if (instance == null)
        {
            instance = new ActivityManager();
        }
        return instance;
    }

    public Activity currentActivity()
    {
        return (Activity)activityStack.lastElement();
    }

    public void popActivity(Activity activity)
    {
        activityStack.remove(activity);
        activity.finish();
    }

    public void popAllActivity()
    {
        if (activityStack == null || activityStack.size() <= 0) goto _L2; else goto _L1
_L1:
        int i = activityStack.size() - 1;
_L5:
        if (i >= 0) goto _L3; else goto _L2
_L2:
        return;
_L3:
        popActivity((Activity)activityStack.get(i));
        i--;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void popAllActivityExceptOne(Activity activity)
    {
        do
        {
            Activity activity1;
            do
            {
                activity1 = currentActivity();
            } while (activity1 == null || activity1.getClass().equals(activity));
            popActivity(activity1);
        } while (true);
    }

    public void popCurrentActivity()
    {
        if (activityStack.size() > 0)
        {
            Activity activity = (Activity)activityStack.lastElement();
            if (activity != null)
            {
                activityStack.remove(activity);
                activity.finish();
            }
        }
    }

    public boolean popForwardActivity(IPopForwardActivity ipopforwardactivity)
    {
        return ipopforwardactivity.popForwardActivity(activityStack);
    }

    public void pushActivity(Activity activity)
    {
        if (activityStack == null)
        {
            activityStack = new Stack();
        }
        activityStack.add(activity);
    }

}
