// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import java.util.List;
import net.youmi.android.a.b.k.o;

// Referenced classes of package net.youmi.android.offers:
//            PointsReceiver, OffersManager, EarnPointsOrderList

public class e extends PointsReceiver
{

    public e()
    {
    }

    protected void onEarnPoints(Context context, EarnPointsOrderList earnpointsorderlist)
    {
    }

    protected void onViewPoints(Context context)
    {
        int i;
        List list;
        android.app.ActivityManager.RunningTaskInfo runningtaskinfo;
        ComponentName componentname;
        try
        {
            list = o.f(context).getRunningTasks(0x7fffffff);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        i = 0;
        if (i >= list.size())
        {
            break MISSING_BLOCK_LABEL_93;
        }
        runningtaskinfo = (android.app.ActivityManager.RunningTaskInfo)list.get(i);
        componentname = runningtaskinfo.baseActivity;
        if (!runningtaskinfo.topActivity.getPackageName().equals(context.getPackageName()))
        {
            break MISSING_BLOCK_LABEL_82;
        }
        for (i = 1; i == 0; i = 0)
        {
            break MISSING_BLOCK_LABEL_81;
        }

        context.startActivity(OffersManager.getInstance(context).a(0x30020000, 0));
        return;
        for (i++; false;)
        {
        }

        break MISSING_BLOCK_LABEL_13;
    }
}
