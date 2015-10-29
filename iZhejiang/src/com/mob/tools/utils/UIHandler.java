// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Base64;
import java.util.Random;

// Referenced classes of package com.mob.tools.utils:
//            Ln

public class UIHandler
{
    private static final class InnerObj
    {

        public final android.os.Handler.Callback callback;
        public final Message msg;

        public InnerObj(Message message, android.os.Handler.Callback callback1)
        {
            msg = message;
            callback = callback1;
        }
    }


    private static Handler handler;
    private static final String prays[] = {
        "ICDilI/ilJPjgIDjgIDjgIDilI/ilJMK4pSP4pSb4pS74pSB4pSB4pSB4pSb4pS74pSTCuKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUgwrilIPjgIDjgIDjgIDilIHjgIDjgIDjgIDilIMK4pSD44CA4pSz4pSb44CA4pSX4pSz44CA4pSDCuKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUgwrilIPjgIDjgIDjgIDilLvjgIDjgIDjgIDilIMK4pSD44CA44CA44CA44CA44CA44CA44CA4pSDCuKUl+KUgeKUk+OAgOOAgOOAgOKUj+KUgeKUmwogICAg4pSD44CA44CA44CA4pSDICAgQ29kZSBpcyBmYXIgYXdheSBmcm9tIGJ1ZyB3aXRoIHRoZSBhbmltYWwgcHJvdGVjdGluZwogICAg4pSD44CA44CA44CA4pSDICAg56We5YW95L+d5L2R77yM5Luj56CB5pegQlVHCiAgICDilIPjgIDjgIDjgIDilJfilIHilIHilIHilJMKICAgIOKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUo+KUkwogICAg4pSD44CA44CA44CA44CA44CA44CA44CA4pSP4pSbCiAgICDilJfilJPilJPilI/ilIHilLPilJPilI/ilJsKICAgICAg4pSD4pSr4pSr44CA4pSD4pSr4pSrCiAgICAgIOKUl+KUu+KUm+OAgOKUl+KUu+KUmwo=", "44CA4pSP4pST44CA44CA44CA4pSP4pSTCuKUj+KUm+KUu+KUgeKUgeKUgeKUm+KUu+KUkwrilIPjgIDjgIDjgIDjgIDjgIDjgIDjgIDilIMK4pSD44CA44CA44CA4pSB44CA44CA44CA4pSDCuKUg+OAgO+8nuOAgOOAgOOAgO+8nOOAgOKUgwrilIPjgIDjgIDjgIDjgIDjgIDjgIDjgIDilIMK4pSDLi4u44CA4oyS44CALi4u44CA4pSDCuKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUgwrilJfilIHilJPjgIDjgIDjgIDilI/ilIHilJsK44CA44CA4pSD44CA44CA44CA4pSDICAgIENvZGUgaXMgZmFyIGF3YXkgZnJvbSBidWcgd2l0aCB0aGUgYW5pbWFsIHByb3RlY3RpbmcK44CA44CA4pSD44CA44CA44CA4pSDICAgIOelnuWFveS/neS9kSzku6PnoIHml6BidWcK44CA44CA4pSD44CA44CA44CA4pSDCuOAgOOAgOKUg+OAgOOAgOOAgOKUgwrjgIDjgIDilIPjgIDjgIDjgIDilIMK44CA44CA4pSD44CA44CA44CA4pSDCuOAgOOAgOKUg+OAgOOAgOOAgOKUl+KUgeKUgeKUgeKUkwrjgIDjgIDilIPjgIDjgIDjgIDjgIDjgIDjgIDjgIDilKPilJMK44CA44CA4pSD44CA44CA44CA44CA44CA44CA44CA4pSP4pSbCuOAgOOAgOKUl+KUk+KUk+KUj+KUgeKUs+KUk+KUj+KUmwrjgIDjgIDjgIDilIPilKvilKvjgIDilIPilKvilKsK44CA44CA44CA4pSX4pS74pSb44CA4pSX4pS74pSbCg==", "44CA44CA4pSP4pST44CA44CA44CA4pSP4pSTKyArCuOAgOKUj+KUm+KUu+KUgeKUgeKUgeKUm+KUu+KUkyArICsK44CA4pSD44CA44CA44CA44CA44CA44CA44CA4pSDCuOAgOKUg+OAgOOAgOOAgOKUgeOAgOOAgOOAgOKUgyArKyArICsgKwrjgIDilIPjgIAg4paI4paI4paI4paI4pSB4paI4paI4paI4paIIOKUgysK44CA4pSD44CA44CA44CA44CA44CA44CA44CA4pSDICsK44CA4pSD44CA44CA44CA4pS744CA44CA44CA4pSDCuOAgOKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUgyArICsgCuOAgOKUl+KUgeKUk+OAgOOAgOOAgOKUj+KUgeKUmwrjgIDjgIDjgIDilIPjgIDjgIDjgIDilIMK44CA44CA44CA4pSD44CA44CA44CA4pSDICsgKyArICsgCuOAgOOAgOOAgOKUg+OAgOOAgOOAgOKUgyAgICAgICAgICAgICAgICAgQ29kZSBpcyBmYXIgYXdheSBmcm9tIGJ1ZyB3aXRoIHRoZSBhbmltYWwgcHJvdGVjdGluZwrjgIDjgIDjgIDilIPjgIDjgIDjgIDilIMgKyAgICAg56We5YW95L+d5L2RLOS7o+eggeaXoGJ1ZwrjgIDjgIDjgIDilIPjgIDjgIDjgIDilIMK44CA44CA44CA4pSD44CA44CA44CA4pSD44CA44CAKwrjgIDjgIDjgIDilIPjgIAg44CA44CA4pSX4pSB4pSB4pSB4pSTICsgKwrjgIDjgIDjgIDilIMg44CA44CA44CA44CA44CA44CA44CA4pSj4pSTIArjgIDjgIDjgIDilIMg44CA44CA44CA44CA44CA44CA44CA4pSP4pSbIArjgIDjgIDjgIDilJfilJPilJPilI/ilIHilLPilJPilI/ilJsgKyArICsgKwrjgIDjgIDjgIDjgIDilIPilKvilKvjgIDilIPilKvilKsK44CA44CA44CA44CA4pSX4pS74pSb44CA4pSX4pS74pSbKyArICsgKwo="
    };

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
        message1.obj = new InnerObj(message, callback);
        return message1;
    }

    private static void handleMessage(Message message)
    {
        Object obj = (InnerObj)message.obj;
        message = ((InnerObj) (obj)).msg;
        obj = ((InnerObj) (obj)).callback;
        if (obj != null)
        {
            ((android.os.Handler.Callback) (obj)).handleMessage(message);
        }
    }

    private static void prepare()
    {
        com/mob/tools/utils/UIHandler;
        JVM INSTR monitorenter ;
        if (handler == null)
        {
            reset();
            printPray();
        }
        com/mob/tools/utils/UIHandler;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static void printPray()
    {
        try
        {
            Random random = new Random();
            byte abyte0[] = Base64.decode(prays[Math.abs(random.nextInt()) % 3], 2);
            Ln.d((new StringBuilder()).append("\n").append(new String(abyte0, "utf-8")).toString(), new Object[0]);
            return;
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
        }
    }

    private static void reset()
    {
        handler = new Handler(Looper.getMainLooper(), new android.os.Handler.Callback() {

            public boolean handleMessage(Message message)
            {
                UIHandler.handleMessage(message);
                return false;
            }

        });
    }

    public static boolean sendEmptyMessage(int i, android.os.Handler.Callback callback)
    {
        prepare();
        return handler.sendMessage(getShellMessage(i, callback));
    }

    public static boolean sendEmptyMessageAtTime(int i, long l, android.os.Handler.Callback callback)
    {
        prepare();
        return handler.sendMessageAtTime(getShellMessage(i, callback), l);
    }

    public static boolean sendEmptyMessageDelayed(int i, long l, android.os.Handler.Callback callback)
    {
        prepare();
        return handler.sendMessageDelayed(getShellMessage(i, callback), l);
    }

    public static boolean sendMessage(Message message, android.os.Handler.Callback callback)
    {
        prepare();
        return handler.sendMessage(getShellMessage(message, callback));
    }

    public static boolean sendMessageAtFrontOfQueue(Message message, android.os.Handler.Callback callback)
    {
        prepare();
        return handler.sendMessageAtFrontOfQueue(getShellMessage(message, callback));
    }

    public static boolean sendMessageAtTime(Message message, long l, android.os.Handler.Callback callback)
    {
        prepare();
        return handler.sendMessageAtTime(getShellMessage(message, callback), l);
    }

    public static boolean sendMessageDelayed(Message message, long l, android.os.Handler.Callback callback)
    {
        prepare();
        return handler.sendMessageDelayed(getShellMessage(message, callback), l);
    }


}
