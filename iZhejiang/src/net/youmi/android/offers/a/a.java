// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.a;

import android.content.Context;
import net.youmi.android.AdBrowser;
import net.youmi.android.AdReceiver;
import net.youmi.android.AdService;
import net.youmi.android.ExpService;
import net.youmi.android.a.b.k.c;
import net.youmi.android.a.b.k.k;

public class a
{

    public static boolean a(Context context)
    {
        while (!d(context) || !b(context) || !c(context)) 
        {
            return false;
        }
        return true;
    }

    private static boolean b(Context context)
    {
        if (!k.b(context))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Permission Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                "android.permission.INTERNET"
            });
            return false;
        }
        if (!k.c(context))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Permission Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                "android.permission.READ_PHONE_STATE"
            });
            return false;
        }
        if (!k.d(context))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Permission Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                "android.permission.ACCESS_NETWORK_STATE"
            });
            return false;
        }
        if (!k.g(context))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Permission Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                "android.permission.ACCESS_WIFI_STATE"
            });
            return false;
        }
        if (!k.a(context))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Permission Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                "android.permission.WRITE_EXTERNAL_STORAG"
            });
            return false;
        }
        if (!k.j(context))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Permission Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                "android.permission.GET_TASKS"
            });
            return false;
        } else
        {
            return true;
        }
    }

    private static boolean c(Context context)
    {
        if (!net.youmi.android.a.b.k.c.a(context, net/youmi/android/AdBrowser))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Component Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                net/youmi/android/AdBrowser.getName()
            });
            return false;
        }
        if (!net.youmi.android.a.b.k.c.b(context, net/youmi/android/AdService))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Component Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                net/youmi/android/AdService.getName()
            });
            return false;
        }
        if (!net.youmi.android.a.b.k.c.c(context, net/youmi/android/AdReceiver))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Component Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                net/youmi/android/AdReceiver.getName()
            });
            return false;
        }
        if (!net.youmi.android.a.b.k.c.b(context, net/youmi/android/ExpService))
        {
            net.youmi.android.a.c.b.a.b("Check Ad Component Failure , Please Add \"%s\" To AndroidManifest.xml", new Object[] {
                net/youmi/android/ExpService.getName()
            });
            return false;
        } else
        {
            return true;
        }
    }

    private static boolean d(Context context)
    {
        if (!net.youmi.android.a.c.c.a.d(context))
        {
            net.youmi.android.a.c.b.a.b("Check Appid And AppSecret Failure, Please input your Appid and AppSecret in AdManager.getInstance(Context context).init(...)");
            return false;
        } else
        {
            return true;
        }
    }
}
