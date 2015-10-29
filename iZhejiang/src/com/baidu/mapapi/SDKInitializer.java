// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi;

import android.app.Application;
import android.content.Context;
import com.baidu.mapapi.utils.b;
import java.io.File;

// Referenced classes of package com.baidu.mapapi:
//            a

public class SDKInitializer
{

    public static final String SDK_BROADCAST_ACTION_STRING_NETWORK_ERROR = "network error";
    public static final String SDK_BROADTCAST_ACTION_STRING_PERMISSION_CHECK_ERROR = "permission check error";
    public static final String SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE = "error_code";
    private static boolean a;

    private SDKInitializer()
    {
    }

    public static void initialize(Context context)
    {
        initialize(null, context);
    }

    public static void initialize(String s, Context context)
    {
label0:
        {
            if (!a)
            {
                if (context == null)
                {
                    throw new IllegalArgumentException("context can not be null");
                }
                if (!(context instanceof Application))
                {
                    break label0;
                }
                com.baidu.mapapi.a.a().a(context);
                if (s != null && !s.equals(""))
                {
                    try
                    {
                        context = new File((new StringBuilder()).append(s).append("/test.0").toString());
                        if (context.exists())
                        {
                            context.delete();
                        }
                        context.createNewFile();
                        if (context.exists())
                        {
                            context.delete();
                        }
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        s.printStackTrace();
                        throw new IllegalArgumentException("provided sdcard path can not used.");
                    }
                    b.a(s);
                }
                a = true;
            }
            return;
        }
        throw new RuntimeException("context must be an Application Context");
    }
}
