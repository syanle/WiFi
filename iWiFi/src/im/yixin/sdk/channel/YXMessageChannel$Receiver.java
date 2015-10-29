// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.channel;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package im.yixin.sdk.channel:
//            YXMessageChannel

public static final class defaultCallback extends BroadcastReceiver
{

    public static final Map callbacks = new HashMap();
    private final handleMessage defaultCallback;

    public static void registerCallBack(String s, defaultCallback defaultcallback)
    {
        callbacks.put(s, defaultcallback);
    }

    public static void unregisterCallBack(String s)
    {
        callbacks.remove(s);
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (defaultCallback != null)
        {
            defaultCallback.handleMessage(intent);
        } else
        {
            context = (handleMessage)callbacks.get(intent.getAction());
            if (context != null)
            {
                context.handleMessage(intent);
                return;
            }
        }
    }


    public ()
    {
        this(null);
    }

    public <init>(<init> <init>1)
    {
        defaultCallback = <init>1;
    }
}
