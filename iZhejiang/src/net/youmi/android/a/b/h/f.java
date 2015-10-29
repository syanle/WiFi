// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.h;

import android.content.Context;
import java.lang.reflect.Method;

// Referenced classes of package net.youmi.android.a.b.h:
//            e

final class f
    implements Runnable
{

    final Context a;

    f(Context context)
    {
        a = context;
        super();
    }

    public void run()
    {
        Object obj;
        try
        {
            obj = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            obj = ((Class) (obj)).getDeclaredMethod("getAdvertisingIdInfo", new Class[] {
                android/content/Context
            }).invoke(obj, new Object[] {
                a
            });
            obj = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getDeclaredMethod("getId", null).invoke(obj, null);
        }
        catch (Throwable throwable)
        {
            return;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        e.a(obj.toString());
    }
}
