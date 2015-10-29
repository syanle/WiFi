// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.util.Log;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

// Referenced classes of package com.pubinfo.wifi_core.core.util:
//            PTZInfoClass

class val.msg
    implements Runnable
{

    final PTZInfoClass this$0;
    private final String val$msg;

    public void run()
    {
        Log.d("_PTZ_", "send PTZ commond.....");
        Object obj = new int[4];
        int i;
        int j;
        j = 0;
        i = 0;
_L2:
        if (i >= 3)
        {
            int k;
            try
            {
                obj[3] = Integer.parseInt(PTZInfoClass.access$0(PTZInfoClass.this).substring(j, PTZInfoClass.access$0(PTZInfoClass.this).length()));
                obj = InetAddress.getByAddress(new byte[] {
                    (byte)obj[0], (byte)obj[1], (byte)obj[2], (byte)obj[3]
                });
                byte abyte0[] = val$msg.getBytes();
                obj = new DatagramPacket(abyte0, abyte0.length, ((InetAddress) (obj)), PTZInfoClass.access$1(PTZInfoClass.this));
                getPTZSocketSingletInstance().send(((DatagramPacket) (obj)));
                return;
            }
            catch (Exception exception)
            {
                Log.e("ptzcontrol", exception.getMessage(), exception);
            }
            break; /* Loop/switch isn't completed */
        }
        k = PTZInfoClass.access$0(PTZInfoClass.this).indexOf(".", j);
        obj[i] = Integer.parseInt(PTZInfoClass.access$0(PTZInfoClass.this).substring(j, k));
        j = k + 1;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    ()
    {
        this$0 = final_ptzinfoclass;
        val$msg = String.this;
        super();
    }
}
