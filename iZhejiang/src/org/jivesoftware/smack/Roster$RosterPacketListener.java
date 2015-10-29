// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.RosterPacket;

// Referenced classes of package org.jivesoftware.smack:
//            PacketListener, Roster, RosterStorage

private class <init>
    implements PacketListener
{

    final Roster this$0;

    public void processPacket(Packet packet)
    {
        Iterator iterator;
        ArrayList arraylist;
        ArrayList arraylist1;
        ArrayList arraylist2;
        RosterPacket rosterpacket;
        ArrayList arraylist3;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        arraylist2 = new ArrayList();
        iterator = null;
        rosterpacket = (RosterPacket)packet;
        arraylist3 = new ArrayList();
        packet = rosterpacket.getRosterItems().iterator();
_L14:
        if (packet.hasNext()) goto _L2; else goto _L1
_L1:
        if (rosterpacket.getVersion() == null)
        {
            Roster.access$9(Roster.this, null);
            packet = iterator;
        } else
        {
            packet = rosterpacket.getVersion();
        }
        if (Roster.access$6(Roster.this) == null || rosterInitialized) goto _L4; else goto _L3
_L3:
        iterator = Roster.access$6(Roster.this).getEntries().iterator();
_L10:
        if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
        iterator = arraylist3.iterator();
_L11:
        if (iterator.hasNext()) goto _L7; else goto _L6
_L6:
        if (Roster.access$6(Roster.this) == null) goto _L9; else goto _L8
_L8:
        iterator = rosterpacket.getRosterItems().iterator();
_L12:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_289;
        }
_L9:
        synchronized (Roster.this)
        {
            rosterInitialized = true;
            notifyAll();
        }
        Roster.access$8(Roster.this, arraylist, arraylist1, arraylist2);
        return;
_L2:
        arraylist3.add((org.jivesoftware.smack.packet.)packet.next());
        continue; /* Loop/switch isn't completed */
_L5:
        arraylist3.add((org.jivesoftware.smack.packet.)iterator.next());
          goto _L10
_L7:
        org.jivesoftware.smack.packet. 1 = (org.jivesoftware.smack.packet.)iterator.next();
        Roster.access$7(Roster.this, 1, arraylist, arraylist1, arraylist2);
          goto _L11
        org.jivesoftware.smack.packet.  = (org.jivesoftware.smack.packet.)iterator.next();
        if (.e().(org.jivesoftware.smack.packet.))
        {
            Roster.access$6(Roster.this).removeEntry(.());
        } else
        {
            Roster.access$6(Roster.this).addEntry(, packet);
        }
          goto _L12
        exception;
        packet;
        JVM INSTR monitorexit ;
        throw exception;
        if (true) goto _L14; else goto _L13
_L13:
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
