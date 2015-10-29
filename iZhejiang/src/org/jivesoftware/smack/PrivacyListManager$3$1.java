// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Privacy;

// Referenced classes of package org.jivesoftware.smack:
//            PacketListener, PrivacyListManager, Connection, PrivacyListListener

class this._cls1 extends IQ
{

    final this._cls1 this$1;

    public String getChildElementXML()
    {
        return "";
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class org/jivesoftware/smack/PrivacyListManager$3

/* anonymous class */
    class PrivacyListManager._cls3
        implements PacketListener
    {

        final PrivacyListManager this$0;

        public void processPacket(Packet packet)
        {
            Privacy privacy;
            if (packet == null || packet.getError() != null)
            {
                return;
            }
            privacy = (Privacy)packet;
            Object obj = PrivacyListManager.access$3(PrivacyListManager.this);
            obj;
            JVM INSTR monitorenter ;
            Iterator iterator = PrivacyListManager.access$3(PrivacyListManager.this).iterator();
_L4:
            if (!iterator.hasNext())
            {
                obj = new PrivacyListManager._cls3._cls1();
                ((IQ) (obj)).setType(org.jivesoftware.smack.packet.IQ.Type.RESULT);
                ((IQ) (obj)).setFrom(packet.getFrom());
                ((IQ) (obj)).setPacketID(packet.getPacketID());
                PrivacyListManager.access$2(PrivacyListManager.this).sendPacket(((Packet) (obj)));
                return;
            }
            PrivacyListListener privacylistlistener;
            Iterator iterator1;
            privacylistlistener = (PrivacyListListener)iterator.next();
            iterator1 = privacy.getItemLists().entrySet().iterator();
_L2:
            String s;
            Object obj1;
            while (iterator1.hasNext()) 
            {
                obj1 = (java.util.Map.Entry)iterator1.next();
                s = (String)((java.util.Map.Entry) (obj1)).getKey();
                obj1 = (List)((java.util.Map.Entry) (obj1)).getValue();
                if (!((List) (obj1)).isEmpty())
                {
                    break MISSING_BLOCK_LABEL_198;
                }
                privacylistlistener.updatedPrivacyList(s);
            }
            continue; /* Loop/switch isn't completed */
            packet;
            obj;
            JVM INSTR monitorexit ;
            throw packet;
            privacylistlistener.setPrivacyList(s, ((List) (obj1)));
            if (true) goto _L2; else goto _L1
_L1:
            if (true) goto _L4; else goto _L3
_L3:
        }

            
            {
                this$0 = PrivacyListManager.this;
                super();
            }
    }

}
