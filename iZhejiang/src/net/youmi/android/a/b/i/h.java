// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import android.content.Context;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import org.json.JSONObject;

public class h
{

    public static void a(Context context, JSONObject jsonobject, String s, int i)
    {
        try
        {
            context = new DatagramSocket(i);
            s = InetAddress.getByName(s);
            jsonobject = jsonobject.toString().getBytes();
            context.send(new DatagramPacket(jsonobject, jsonobject.length, s, i));
            context.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }
}
