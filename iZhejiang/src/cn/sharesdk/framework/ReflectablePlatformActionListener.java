// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.os.Message;
import com.mob.tools.utils.UIHandler;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            PlatformActionListener, Platform

public class ReflectablePlatformActionListener
    implements PlatformActionListener
{

    private int a;
    private android.os.Handler.Callback b;
    private int c;
    private android.os.Handler.Callback d;
    private int e;
    private android.os.Handler.Callback f;

    public ReflectablePlatformActionListener()
    {
    }

    public void onCancel(Platform platform, int i)
    {
        if (f != null)
        {
            Message message = new Message();
            message.what = e;
            message.obj = ((Object) (new Object[] {
                platform, Integer.valueOf(i)
            }));
            UIHandler.sendMessage(message, f);
        }
    }

    public void onComplete(Platform platform, int i, HashMap hashmap)
    {
        if (b != null)
        {
            Message message = new Message();
            message.what = a;
            message.obj = ((Object) (new Object[] {
                platform, Integer.valueOf(i), hashmap
            }));
            UIHandler.sendMessage(message, b);
        }
    }

    public void onError(Platform platform, int i, Throwable throwable)
    {
        if (d != null)
        {
            Message message = new Message();
            message.what = c;
            message.obj = ((Object) (new Object[] {
                platform, Integer.valueOf(i), throwable
            }));
            UIHandler.sendMessage(message, d);
        }
    }

    public void setOnCancelCallback(int i, android.os.Handler.Callback callback)
    {
        e = i;
        f = callback;
    }

    public void setOnCompleteCallback(int i, android.os.Handler.Callback callback)
    {
        a = i;
        b = callback;
    }

    public void setOnErrorCallback(int i, android.os.Handler.Callback callback)
    {
        c = i;
        d = callback;
    }
}
