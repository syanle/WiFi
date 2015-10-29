// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack:
//            PacketListener, Roster, RosterEntry, Connection

private class <init>
    implements PacketListener
{

    final Roster this$0;

    public void processPacket(Packet packet)
    {
        Presence presence;
        String s;
        String s1;
        presence = (Presence)packet;
        s1 = presence.getFrom();
        s = Roster.access$0(Roster.this, s1);
        if (presence.getType() != org.jivesoftware.smack.packet.A) goto _L2; else goto _L1
_L1:
        if (Roster.access$1(Roster.this).get(s) == null)
        {
            packet = new ConcurrentHashMap();
            Roster.access$1(Roster.this).put(s, packet);
        } else
        {
            packet = (Map)Roster.access$1(Roster.this).get(s);
        }
        packet.remove("");
        packet.put(StringUtils.parseResource(s1), presence);
        if ((RosterEntry)Roster.access$2(Roster.this).get(s) != null)
        {
            Roster.access$3(Roster.this, presence);
        }
_L4:
        return;
_L2:
        if (presence.getType() != org.jivesoftware.smack.packet.A)
        {
            break; /* Loop/switch isn't completed */
        }
        if ("".equals(StringUtils.parseResource(s1)))
        {
            if (Roster.access$1(Roster.this).get(s) == null)
            {
                packet = new ConcurrentHashMap();
                Roster.access$1(Roster.this).put(s, packet);
            } else
            {
                packet = (Map)Roster.access$1(Roster.this).get(s);
            }
            packet.put("", presence);
        } else
        if (Roster.access$1(Roster.this).get(s) != null)
        {
            ((Map)Roster.access$1(Roster.this).get(s)).put(StringUtils.parseResource(s1), presence);
        }
        if ((RosterEntry)Roster.access$2(Roster.this).get(s) != null)
        {
            Roster.access$3(Roster.this, presence);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (presence.getType() != org.jivesoftware.smack.packet.A)
        {
            break; /* Loop/switch isn't completed */
        }
        if (Roster.access$4(Roster.this) == _all)
        {
            packet = new Presence(org.jivesoftware.smack.packet.A);
            packet.setTo(presence.getFrom());
            Roster.access$5(Roster.this).sendPacket(packet);
            return;
        }
        if (Roster.access$4(Roster.this) == _all)
        {
            packet = new Presence(org.jivesoftware.smack.packet.A);
            packet.setTo(presence.getFrom());
            Roster.access$5(Roster.this).sendPacket(packet);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (presence.getType() != org.jivesoftware.smack.packet.A)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (Roster.access$4(Roster.this) != )
        {
            packet = new Presence(org.jivesoftware.smack.packet.A);
            packet.setTo(presence.getFrom());
            Roster.access$5(Roster.this).sendPacket(packet);
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (presence.getType() != org.jivesoftware.smack.packet.A || !"".equals(StringUtils.parseResource(s1))) goto _L4; else goto _L6
_L6:
        if (!Roster.access$1(Roster.this).containsKey(s))
        {
            packet = new ConcurrentHashMap();
            Roster.access$1(Roster.this).put(s, packet);
        } else
        {
            packet = (Map)Roster.access$1(Roster.this).get(s);
            packet.clear();
        }
        packet.put("", presence);
        if ((RosterEntry)Roster.access$2(Roster.this).get(s) != null)
        {
            Roster.access$3(Roster.this, presence);
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
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
