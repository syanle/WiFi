// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import android.graphics.Color;
import net.youmi.android.a.a.h.a;
import net.youmi.android.a.a.j.a.b;
import net.youmi.android.a.b.b.e;

// Referenced classes of package net.youmi.android.offers:
//            OffersManager

public class OffersBrowserConfig
{

    private static String a;
    private static String b;
    private static int c = Color.parseColor("#FFFFBB34");
    public static boolean isUsingSdkPointsUnitApi = false;

    public OffersBrowserConfig()
    {
    }

    public static int getBrowserTitleBackgroundColor()
    {
        return c;
    }

    public static String getBrowserTitleText()
    {
        if (e.a(a))
        {
            return net.youmi.android.a.a.h.a.H();
        } else
        {
            return a;
        }
    }

    public static String getPointsUnit()
    {
        if (e.a(b))
        {
            return net.youmi.android.a.a.h.a.I();
        } else
        {
            return b;
        }
    }

    public static void setBrowserTitleBackgroundColor(int i)
    {
        c = i;
        net.youmi.android.a.a.j.a.b.a().a(i);
    }

    public static void setBrowserTitleText(String s)
    {
        a = s;
        net.youmi.android.a.a.j.a.b.a().a(s);
    }

    public static void setPointsUnit(String s)
    {
        b = s;
        if (!OffersManager.isUsingServerCallBack())
        {
            net.youmi.android.a.a.j.a.b.a().b(s);
        }
    }

}
