// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack:
//            PacketListener, Roster, RosterStorage, Connection

private class <init>
    implements PacketListener
{

    final Roster this$0;

    public void processPacket(Packet packet)
    {
        if (!(packet instanceof IQ)) goto _L2; else goto _L1
_L1:
        packet = (IQ)packet;
        if (!packet.getType().equals(org.jivesoftware.smack.packet.) || !packet.getExtensions().isEmpty()) goto _L2; else goto _L3
_L3:
        ArrayList arraylist;
        ArrayList arraylist1;
        packet = new ArrayList();
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        if (Roster.access$6(Roster.this) == null) goto _L2; else goto _L4
_L4:
        obj = Roster.access$6(Roster.this).getEntries().iterator();
_L8:
        if (((Iterator) (obj)).hasNext()) goto _L6; else goto _L5
_L5:
        synchronized (Roster.this)
        {
            rosterInitialized = true;
            notifyAll();
        }
        Roster.access$8(Roster.this, packet, arraylist, arraylist1);
_L2:
        Roster.access$5(Roster.this).removePacketListener(this);
        return;
_L6:
        org.jivesoftware.smack.packet.  = (org.jivesoftware.smack.packet.)((Iterator) (obj)).next();
        Roster.access$7(Roster.this, , packet, arraylist, arraylist1);
        if (true) goto _L8; else goto _L7
_L7:
        packet;
        obj;
        JVM INSTR monitorexit ;
        throw packet;
    }

    private ()
    {
        this$0 = Roster.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
