// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.c.c.a;

// Referenced classes of package net.youmi.android.offers:
//            EarnPointsOrderList

public abstract class PointsReceiver extends BroadcastReceiver
{

    public PointsReceiver()
    {
    }

    public static final String getActionName_EarnPoints(Context context)
    {
        try
        {
            context = a.a(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (context == null)
        {
            return null;
        }
        context = (new StringBuilder()).append(net.youmi.android.offers.b.a.b()).append(context).toString();
        return context;
    }

    public static final String getActionName_ViewPoints(Context context)
    {
        try
        {
            context = a.a(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (context == null)
        {
            return null;
        }
        context = (new StringBuilder()).append(net.youmi.android.offers.b.a.c()).append(context).toString();
        return context;
    }

    protected abstract void onEarnPoints(Context context, EarnPointsOrderList earnpointsorderlist);

    public final void onReceive(Context context, Intent intent)
    {
        String s;
        String s1;
        boolean flag;
        try
        {
            s = a.a(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        net.youmi.android.a.c.b.a.b("Points Receiver : AppID is null");
        return;
        s1 = e.b(intent.getAction());
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        net.youmi.android.a.c.b.a.b("Points Receiver : Action is null");
        return;
        if (!s1.startsWith(net.youmi.android.offers.b.a.b()))
        {
            break MISSING_BLOCK_LABEL_179;
        }
        flag = s1.equalsIgnoreCase((new StringBuilder()).append(net.youmi.android.offers.b.a.b()).append(s).toString());
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_163;
        }
        try
        {
            intent = intent.getSerializableExtra(net.youmi.android.offers.b.a.d());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (intent != null)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        net.youmi.android.a.c.b.a.b("Points Receiver : Error Params");
        return;
        if (!(intent instanceof EarnPointsOrderList))
        {
            break MISSING_BLOCK_LABEL_145;
        }
        intent = (EarnPointsOrderList)intent;
        flag = intent.isEmpty();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        onEarnPoints(context, intent);
_L1:
        net.youmi.android.a.c.b.a.a("Points Receiver : Finish Notify");
        return;
        context;
        net.youmi.android.a.c.b.a.a(context);
          goto _L1
        net.youmi.android.a.c.b.a.d("Points Receiver : Order List is empty");
        return;
        net.youmi.android.a.c.b.a.b("Points Receiver : Error Params! Params is not an instance of %s", new Object[] {
            net/youmi/android/offers/EarnPointsOrderList.getSimpleName()
        });
        return;
        net.youmi.android.a.c.b.a.b("Points Receiver : action not right when decode %s, please check the appid", new Object[] {
            net.youmi.android.offers.b.a.b()
        });
        return;
        if (!s1.startsWith(net.youmi.android.offers.b.a.c()))
        {
            break MISSING_BLOCK_LABEL_249;
        }
        flag = s1.equalsIgnoreCase((new StringBuilder()).append(net.youmi.android.offers.b.a.c()).append(s).toString());
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_234;
        }
        try
        {
            onViewPoints(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        net.youmi.android.a.c.b.a.a(context);
        return;
        net.youmi.android.a.c.b.a.b("Points Receiver : action not right when decode %s, please check the appsecret", new Object[] {
            net.youmi.android.offers.b.a.c()
        });
    }

    protected abstract void onViewPoints(Context context);
}
