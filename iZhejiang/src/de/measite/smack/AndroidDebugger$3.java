// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.measite.smack;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package de.measite.smack:
//            AndroidDebugger

class this._cls0
    implements PacketListener
{

    final AndroidDebugger this$0;

    public void processPacket(Packet packet)
    {
        if (AndroidDebugger.printInterpreted)
        {
            Log.d("SMACK", (new StringBuilder(String.valueOf(AndroidDebugger.access$0(AndroidDebugger.this).format(new Date())))).append(" RCV PKT (").append(AndroidDebugger.access$1(AndroidDebugger.this).hashCode()).append("): ").append(packet.toXML()).toString());
        }
    }

    t()
    {
        this$0 = AndroidDebugger.this;
        super();
    }
}
