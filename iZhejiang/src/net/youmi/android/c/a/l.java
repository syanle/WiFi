// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;

// Referenced classes of package net.youmi.android.c.a:
//            k

class l extends Handler
{

    final k a;

    l(k k1)
    {
        a = k1;
        super();
    }

    public void handleMessage(Message message)
    {
        if (k.a(a) != null)
        {
            k.a(a).setBackgroundDrawable(new BitmapDrawable(k.b(a)));
            return;
        }
        try
        {
            k.c(a);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            Log.e("GifView", message.toString());
        }
        return;
    }
}
