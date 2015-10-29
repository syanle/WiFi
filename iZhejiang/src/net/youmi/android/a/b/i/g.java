// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import android.content.Context;
import java.io.OutputStream;
import java.net.Socket;
import org.json.JSONObject;

public class g
{

    public static void a(Context context, JSONObject jsonobject, String s, int i)
    {
        try
        {
            context = new Socket(s, i);
            s = context.getOutputStream();
            s.write(jsonobject.toString().getBytes());
            s.flush();
            s.close();
            context.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }
}
