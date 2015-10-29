// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.utils;

import android.os.Handler;
import android.os.Message;

public class UIHandler
{

    private static Handler handler;

    public UIHandler()
    {
    }

    private static Message getShellMessage(int i, android.os.Handler.Callback callback)
    {
        Message message = new Message();
        message.what = i;
        return getShellMessage(message, callback);
    }

    private static Message getShellMessage(Message message, android.os.Handler.Callback callback)
    {
        Message message1 = new Message();
        message1.obj = ((Object) (new Object[] {
            message, callback
        }));
        return message1;
    }

    private static void handleMessage(Message message)
    {
        Object aobj[] = (Object[])message.obj;
        message = (Message)aobj[0];
        android.os.Handler.Callback callback = (android.os.Handler.Callback)aobj[1];
        if (callback != null)
        {
            callback.handleMessage(message);
        }
    }

    public static void prepare()
    {
        if (handler == null)
        {
            handler = new Handler(new android.os.Handler.Callback() {

                public boolean handleMessage(Message message)
                {
                    UIHandler.handleMessage(message);
                    return false;
                }

            });
        }
    }

    public static boolean sendEmptyMessage(int i, android.os.Handler.Callback callback)
    {
        return handler.sendMessage(getShellMessage(i, callback));
    }

    public static boolean sendEmptyMessageAtTime(int i, long l, android.os.Handler.Callback callback)
    {
        return handler.sendMessageAtTime(getShellMessage(i, callback), l);
    }

    public static boolean sendEmptyMessageDelayed(int i, long l, android.os.Handler.Callback callback)
    {
        return handler.sendMessageDelayed(getShellMessage(i, callback), l);
    }

    public static boolean sendMessage(Message message, android.os.Handler.Callback callback)
    {
        return handler.sendMessage(getShellMessage(message, callback));
    }

    public static boolean sendMessageAtFrontOfQueue(Message message, android.os.Handler.Callback callback)
    {
        return handler.sendMessageAtFrontOfQueue(getShellMessage(message, callback));
    }

    public static boolean sendMessageAtTime(Message message, long l, android.os.Handler.Callback callback)
    {
        return handler.sendMessageAtTime(getShellMessage(message, callback), l);
    }

    public static boolean sendMessageDelayed(Message message, long l, android.os.Handler.Callback callback)
    {
        return handler.sendMessageDelayed(getShellMessage(message, callback), l);
    }

}
