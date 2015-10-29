// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.List;
import net.youmi.android.a.a.i.a.b.g;
import net.youmi.android.a.a.j.a.b;
import net.youmi.android.a.b.i.k;
import net.youmi.android.a.c.b.a;
import net.youmi.android.listener.Interface_ActivityListener;
import net.youmi.android.offers.d.b.h;

// Referenced classes of package net.youmi.android.offers:
//            e, PointsReceiver, a, OffersWallDialogListener

public class OffersManager
{

    public static final int STYLE_SPOT_CENTER = 0;
    public static final int STYLE_SPOT_TOP_DOWN_REVERSE = 1;
    private static OffersManager c;
    private static boolean d = false;
    private e a;
    private Context b;

    private OffersManager(Context context)
    {
        b = context.getApplicationContext();
        a = new e();
    }

    static Context a(OffersManager offersmanager)
    {
        return offersmanager.b;
    }

    private void a()
    {
        try
        {
            if (a == null)
            {
                a = new e();
            }
            if (a != null)
            {
                IntentFilter intentfilter = new IntentFilter();
                intentfilter.addAction(PointsReceiver.getActionName_ViewPoints(b));
                b.registerReceiver(a, intentfilter);
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    private boolean a(boolean flag)
    {
        Object obj;
        String s;
        obj = b.getPackageManager();
        s = PointsReceiver.getActionName_EarnPoints(b);
        if (s == null)
        {
            return false;
        }
        obj = ((PackageManager) (obj)).queryBroadcastReceivers(new Intent(s), 0);
        Object obj1;
        Object obj2;
        Throwable throwable;
        ActivityInfo activityinfo;
        int i;
        boolean flag1;
        if (obj == null)
        {
            return false;
        }
        i = 0;
          goto _L1
_L9:
        if (i >= ((List) (obj)).size())
        {
            break MISSING_BLOCK_LABEL_179;
        }
        obj2 = (ResolveInfo)((List) (obj)).get(i);
        if (obj2 == null) goto _L3; else goto _L2
_L2:
        activityinfo = ((ResolveInfo) (obj2)).activityInfo;
        if (activityinfo == null) goto _L3; else goto _L4
_L4:
        obj2 = Class.forName(((ResolveInfo) (obj2)).activityInfo.name);
        if (!net/youmi/android/offers/PointsReceiver.isAssignableFrom(((Class) (obj2)))) goto _L3; else goto _L5
_L5:
        flag1 = ((Class) (obj2)).getSimpleName().equals(net/youmi/android/offers/e.getSimpleName());
        if (!flag1) goto _L6; else goto _L3
_L3:
        i++;
        continue; /* Loop/switch isn't completed */
_L6:
        i = 1;
_L7:
        if (i != 0)
        {
            return true;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        net.youmi.android.a.c.b.a.b("Check Ad Componet Failure , There Is Not Class Found Which Extends %s", new Object[] {
            net/youmi/android/offers/PointsReceiver.getName()
        });
        return false;
        obj1;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        net.youmi.android.a.c.b.a.a(((Throwable) (obj1)));
        return false;
        obj1;
        throw obj1;
        throwable;
          goto _L3
        i = 0;
          goto _L7
_L1:
        if (true) goto _L9; else goto _L8
_L8:
    }

    private void b()
    {
        try
        {
            if (a != null)
            {
                b.unregisterReceiver(a);
                a = null;
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public static OffersManager getInstance(Context context)
    {
        net/youmi/android/offers/OffersManager;
        JVM INSTR monitorenter ;
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new NullPointerException("Context must not be null");
        context;
        net/youmi/android/offers/OffersManager;
        JVM INSTR monitorexit ;
        throw context;
        if (c == null)
        {
            c = new OffersManager(context);
        }
        context = c;
        net/youmi/android/offers/OffersManager;
        JVM INSTR monitorexit ;
        return context;
    }

    public static boolean isUsingServerCallBack()
    {
        return d;
    }

    public static void setUsingServerCallBack(boolean flag)
    {
        d = flag;
    }

    Intent a(int i, int j)
    {
        return net.youmi.android.offers.e.a.a(b, i, j);
    }

    public boolean checkOffersAdConfig()
    {
        return checkOffersAdConfig(false);
    }

    public boolean checkOffersAdConfig(boolean flag)
    {
        boolean flag1 = true;
        if (!net.youmi.android.offers.a.a.a(b))
        {
            flag1 = false;
        } else
        if (flag)
        {
            return a(true);
        }
        return flag1;
    }

    public String getCustomUserId()
    {
        return net.youmi.android.a.c.c.a.c(b);
    }

    public Intent getShowOffersWallIntent(int i)
    {
        return a(i, 0);
    }

    public void onAppExit()
    {
        try
        {
            h.b(b);
            if (!a(false))
            {
                b();
            }
            net.youmi.android.listener.a.a().d();
            if (net.youmi.android.offers.f.a.a)
            {
                g.a().f();
                net.youmi.android.a.a.j.a.b.a().b();
            }
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
        }
    }

    public void onAppLaunch()
    {
        if (!net.youmi.android.offers.f.a.a) goto _L2; else goto _L1
_L1:
        net.youmi.android.offers.f.b.a(b);
_L4:
        h.a(b);
        if (!a(false))
        {
            a();
            return;
        }
        break MISSING_BLOCK_LABEL_72;
_L2:
        if (k.b(b) == 100 || k.b(b) == 103)
        {
            net.youmi.android.offers.d.c.a.a(b);
        }
        if (true) goto _L4; else goto _L3
_L3:
        Throwable throwable;
        throwable;
        net.youmi.android.a.c.b.a.a(throwable);
    }

    public void setCustomUserId(String s)
    {
        net.youmi.android.a.c.a.a(new net.youmi.android.offers.a(this, s));
    }

    public void showOffersWall()
    {
        showOffersWall(null);
    }

    public void showOffersWall(Interface_ActivityListener interface_activitylistener)
    {
        Object obj;
        String s;
        int i;
        try
        {
            if (net.youmi.android.offers.f.a.a)
            {
                net.youmi.android.offers.f.b.b(b);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Interface_ActivityListener interface_activitylistener)
        {
            net.youmi.android.a.c.b.a.a(interface_activitylistener);
            return;
        }
        i = 0;
        if (interface_activitylistener == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        s = String.valueOf(System.currentTimeMillis());
        obj = s;
        if (s.length() > 9)
        {
            obj = s.substring(s.length() - 9, s.length());
        }
        i = Integer.parseInt(((String) (obj)));
        obj = a(0x10000000, i);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        if (interface_activitylistener == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        net.youmi.android.listener.a.a().a(i, interface_activitylistener);
        b.startActivity(((Intent) (obj)));
        h.a(b);
        return;
    }

    public void showOffersWallDialog(Activity activity)
    {
        showOffersWallDialog(activity, null);
    }

    public void showOffersWallDialog(Activity activity, double d1, double d2)
    {
        showOffersWallDialog(activity, d1, d2, null);
    }

    public void showOffersWallDialog(Activity activity, double d1, double d2, OffersWallDialogListener offerswalldialoglistener)
    {
        try
        {
            net.youmi.android.offers.e.a.a(activity, d1, d2, offerswalldialoglistener);
            h.a(b);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            net.youmi.android.a.c.b.a.a(activity);
        }
    }

    public void showOffersWallDialog(Activity activity, int i, int j)
    {
        showOffersWallDialog(activity, i, j, null);
    }

    public void showOffersWallDialog(Activity activity, int i, int j, OffersWallDialogListener offerswalldialoglistener)
    {
        try
        {
            net.youmi.android.offers.e.a.a(activity, i, j, offerswalldialoglistener);
            h.a(b);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            net.youmi.android.a.c.b.a.a(activity);
        }
    }

    public void showOffersWallDialog(Activity activity, OffersWallDialogListener offerswalldialoglistener)
    {
        try
        {
            net.youmi.android.offers.e.a.a(activity, offerswalldialoglistener);
            h.a(b);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            net.youmi.android.a.c.b.a.a(activity);
        }
    }

}
