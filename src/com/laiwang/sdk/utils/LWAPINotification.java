// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

public class LWAPINotification
{

    private static Handler handler = new Handler(Looper.getMainLooper());

    public LWAPINotification()
    {
    }

    public static void showToast(int i, Context context)
    {
        showToast(i, context, 0);
    }

    public static void showToast(final int msg, final Context context, final int tempDuration)
    {
        if ((context instanceof Activity) && !((Activity)context).isFinishing() || (context instanceof Application))
        {
            handler.post(new Runnable() {

                private final Context val$context;
                private final int val$msg;
                private final int val$tempDuration;

                public void run()
                {
                    Toast.makeText(context, msg, tempDuration).show();
                }

            
            {
                context = context1;
                msg = i;
                tempDuration = j;
                super();
            }
            });
        }
    }

    public static void showToast(String s, Context context)
    {
        showToast(s, context, 0);
    }

    public static void showToast(final String msg, final Context context, final int tempDuration)
    {
        if ((context instanceof Activity) && !((Activity)context).isFinishing() || (context instanceof Application))
        {
            handler.post(new Runnable() {

                private final Context val$context;
                private final String val$msg;
                private final int val$tempDuration;

                public void run()
                {
                    Toast.makeText(context, msg, tempDuration).show();
                }

            
            {
                context = context1;
                msg = s;
                tempDuration = i;
                super();
            }
            });
        }
    }

}
