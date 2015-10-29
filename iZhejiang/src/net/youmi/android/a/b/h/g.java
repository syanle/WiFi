// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.h;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;
import net.youmi.android.a.b.k.o;

class g
{

    private static String a;
    private static String b;

    static String a(Context context)
    {
        String s = b(context);
        if (!"".equals(s))
        {
            return s;
        } else
        {
            return c(context);
        }
    }

    private static String a(String s)
    {
        if (s != null)
        {
            String s1 = s.trim().toLowerCase();
            s = s1;
            if (s1.length() < 10)
            {
                return null;
            }
        } else
        {
            s = null;
        }
        return s;
    }

    static String b(Context context)
    {
        if (a == null)
        {
            a = d(context);
        }
        if (a != null)
        {
            return a;
        } else
        {
            return "";
        }
    }

    static String c(Context context)
    {
        if (b == null)
        {
            b = e(context);
        }
        if (b != null)
        {
            return b;
        } else
        {
            return "";
        }
    }

    private static String d(Context context)
    {
        Object obj = null;
        TelephonyManager telephonymanager;
        try
        {
            telephonymanager = o.b(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        context = obj;
        if (telephonymanager == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        context = a(telephonymanager.getSubscriberId());
        return context;
    }

    private static String e(Context context)
    {
        Object obj = null;
        String s = f(context);
        if (s != null)
        {
            return s;
        }
        obj = s;
        s = g(context);
        obj = s;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        obj = s;
        context = h(context);
        obj = context;
        if (context != null)
        {
            return context;
        }
        break MISSING_BLOCK_LABEL_42;
        context;
        return ((String) (obj));
    }

    private static String f(Context context)
    {
        Integer integer;
        Object obj;
        obj = Integer.TYPE;
        integer = new Integer(1);
        context = o.b(context);
        if (context != null)
        {
            try
            {
                obj = context.getClass().getDeclaredMethod("getSubscriberIdGemini", new Class[] {
                    obj
                });
                ((Method) (obj)).setAccessible(true);
                context = (String)((Method) (obj)).invoke(context, new Object[] {
                    integer
                });
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context = null;
            }
        } else
        {
            context = null;
        }
        return a(context);
    }

    private static String g(Context context)
    {
        Integer integer;
        Object obj;
        obj = Integer.TYPE;
        integer = new Integer(1);
        context = o.b(context);
        if (context != null)
        {
            try
            {
                obj = context.getClass().getDeclaredMethod("getSimSerialNumber", new Class[] {
                    obj
                });
                ((Method) (obj)).setAccessible(true);
                context = (String)((Method) (obj)).invoke(context, new Object[] {
                    integer
                });
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context = null;
            }
        } else
        {
            context = null;
        }
        return a(context);
    }

    private static String h(Context context)
    {
        Class class1 = Class.forName("com.android.internal.telephony.PhoneFactory");
        context = (TelephonyManager)context.getSystemService((String)class1.getMethod("getServiceName", new Class[] {
            java/lang/String, Integer.TYPE
        }).invoke(class1, new Object[] {
            "phone", Integer.valueOf(1)
        }));
        if (context != null)
        {
            try
            {
                context = context.getSubscriberId();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context = null;
            }
        } else
        {
            context = null;
        }
        return a(context);
    }
}
