// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.e;

import android.content.Context;
import android.content.Intent;
import java.util.Locale;
import net.youmi.android.AdBrowser;
import net.youmi.android.a.a.e.g.c;
import net.youmi.android.a.a.e.g.e;
import net.youmi.android.a.a.e.g.g;
import net.youmi.android.a.a.i.a.a.d;
import net.youmi.android.a.b.i.k;
import net.youmi.android.offers.OffersBrowserConfig;
import net.youmi.android.offers.OffersManager;
import net.youmi.android.offers.OffersWallDialogListener;
import net.youmi.android.offers.PointsManager;
import net.youmi.android.offers.b.b;

public class a
{

    public static Intent a(Context context, int i, int j)
    {
        c c1;
        net.youmi.android.a.a.j.a a1;
        try
        {
            c1 = new c(3, 500);
            c1.e(a(context, 1, 0, true));
            c1.a(new net.youmi.android.offers.c.a());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (j == 0)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        c1.c(j);
        if (!net.youmi.android.offers.f.a.a)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        c1.b(113);
        a1 = new net.youmi.android.a.a.j.a();
        a1.a = OffersBrowserConfig.getBrowserTitleText();
        a1.d = OffersBrowserConfig.getPointsUnit();
        a1.c = PointsManager.getInstance(context).queryPoints();
        a1.b = 9;
        a1.e = OffersBrowserConfig.getBrowserTitleBackgroundColor();
        if (!OffersManager.isUsingServerCallBack())
        {
            a1.b = a1.b | 4;
        }
        c1.a(a1);
_L1:
        context = new Intent(context, net/youmi/android/AdBrowser);
        context.putExtra("aca5522945c72310f9f22b333c68f2b3", c1);
        context.addFlags(i);
        return context;
        c1.b(1);
          goto _L1
    }

    private static String a(Context context, int i, int j, boolean flag)
    {
        boolean flag1 = false;
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("?type=");
        stringbuilder.append(i);
        stringbuilder.append("&model=");
        stringbuilder.append(j);
        if (Locale.getDefault().getCountry() != null)
        {
            stringbuilder.append("&lang=").append(Locale.getDefault().getCountry().toLowerCase());
        }
        stringbuilder.append("&st=").append(0);
        try
        {
            stringbuilder.append("&color=#");
            stringbuilder.append(Integer.toHexString(OffersBrowserConfig.getBrowserTitleBackgroundColor()));
        }
        catch (Exception exception1) { }
        try
        {
            if (k.b(context) != 100 && k.b(context) != 103)
            {
                stringbuilder.append("&tab=4");
            }
        }
        catch (Exception exception) { }
        if (net.youmi.android.offers.f.a.a)
        {
            StringBuilder stringbuilder1 = stringbuilder.append("&r=");
            i = ((flag1) ? 1 : 0);
            if (flag)
            {
                i = 1;
            }
            stringbuilder1.append(i);
        }
        if (net.youmi.android.offers.f.a.a)
        {
            if (net.youmi.android.a.b.b.e.a(e.p()))
            {
                e.f(net.youmi.android.offers.f.a.e(context));
            }
            return (new StringBuilder()).append(net.youmi.android.a.b.b.e.b()).append(e.p()).append("/offer/aos/lists.html").append(stringbuilder.toString()).toString();
        } else
        {
            return (new StringBuilder()).append(b.h()).append(stringbuilder.toString()).toString();
        }
    }

    private static g a(Context context)
    {
        g g1;
        g1 = new g(3, 500);
        g1.a(1);
        g1.e(a(context, 32, 0, true));
        g1.a(new net.youmi.android.offers.c.a());
        if (!net.youmi.android.offers.f.a.a)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        g1.b(113);
        net.youmi.android.a.a.j.a a1 = new net.youmi.android.a.a.j.a();
        a1.a = OffersBrowserConfig.getBrowserTitleText();
        a1.d = OffersBrowserConfig.getPointsUnit();
        a1.c = PointsManager.getInstance(context).queryPoints();
        a1.b = 8;
        a1.e = OffersBrowserConfig.getBrowserTitleBackgroundColor();
        if (!OffersManager.isUsingServerCallBack())
        {
            a1.b = a1.b | 4;
        }
        g1.a(a1);
        return g1;
        try
        {
            g1.b(1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return g1;
    }

    public static boolean a(Context context, double d1, double d2, OffersWallDialogListener offerswalldialoglistener)
    {
        g g1;
        try
        {
            g1 = a(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (g1 == null)
        {
            return false;
        }
        g1.a(d1);
        g1.b(d2);
        context = d.b(context, g1);
        context.a(offerswalldialoglistener);
        context.show();
        return true;
    }

    public static boolean a(Context context, int i, int j, OffersWallDialogListener offerswalldialoglistener)
    {
        g g1;
        try
        {
            g1 = a(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (g1 == null)
        {
            return false;
        }
        g1.f(i);
        g1.g(j);
        context = d.b(context, g1);
        context.a(offerswalldialoglistener);
        context.show();
        return true;
    }

    public static boolean a(Context context, OffersWallDialogListener offerswalldialoglistener)
    {
        return a(context, 0.94999999999999996D, 0.90000000000000002D, offerswalldialoglistener);
    }
}
