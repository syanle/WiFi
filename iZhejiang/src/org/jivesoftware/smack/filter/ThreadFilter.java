// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class ThreadFilter
    implements PacketFilter
{

    private String thread;

    public ThreadFilter(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Thread cannot be null.");
        } else
        {
            thread = s;
            return;
        }
    }

    public boolean accept(Packet packet)
    {
        return (packet instanceof Message) && thread.equals(((Message)packet).getThread());
    }
}
