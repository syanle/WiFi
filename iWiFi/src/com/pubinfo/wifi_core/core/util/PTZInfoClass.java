// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.util.Log;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class PTZInfoClass
{

    static DatagramSocket m_PTZDgSkt = null;
    private int m_FstPosition;
    private int m_HdPosition;
    private int m_LstPosition;
    private String m_UserID;
    private String m_VAUAdd;
    private int m_VAUPort;
    private String m_pu;
    private Lock ptzLock;

    public PTZInfoClass(String s, String s1, String s2, int i)
    {
        m_pu = s;
        m_UserID = s1;
        m_VAUAdd = s2;
        m_VAUPort = i;
        ptzLock = new ReentrantLock();
        m_PTZDgSkt = null;
        m_FstPosition = 0;
        m_HdPosition = 0;
        m_LstPosition = 0;
    }

    public String MakePTZMsg(String s, String s1, String s2)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        stringbuilder.append("\r\n");
        stringbuilder.append("<Message Verison=\"1.0\">");
        stringbuilder.append("\r\n");
        stringbuilder.append("<IE_HEADER MessageType=\"MSG_PTZ_SET_REQ\"");
        stringbuilder.append("\r\n");
        stringbuilder.append("UserID=\"");
        stringbuilder.append(m_UserID);
        stringbuilder.append("\"");
        stringbuilder.append("\r\n");
        stringbuilder.append("DestID=\"");
        stringbuilder.append(m_pu);
        stringbuilder.append("\"");
        stringbuilder.append("/>");
        stringbuilder.append("\r\n");
        stringbuilder.append("<IE_PTZ OpId=\"");
        stringbuilder.append(s);
        stringbuilder.append("\"");
        stringbuilder.append(" ");
        stringbuilder.append("Param1=\"");
        stringbuilder.append(s1);
        stringbuilder.append("\"");
        stringbuilder.append(" ");
        stringbuilder.append("Param2=\"");
        stringbuilder.append(s2);
        stringbuilder.append("\"");
        stringbuilder.append("/>");
        stringbuilder.append("\r\n");
        stringbuilder.append("</Message>");
        int i = stringbuilder.length();
        s = new StringBuilder();
        s.append("INFO sip:gebroadcast@x SIP/2.0");
        s.append("\r\n");
        s.append("Content-Type: application/global_eye_v10+xml");
        s.append("\r\n");
        s.append("Content-Length: ");
        s.append(Integer.toString(i));
        s.append("\r\n");
        s.append("To: <sip:gebroadcast@x>");
        s.append("\r\n");
        s.append("From: <sip:test@y>");
        s.append("\r\n");
        s.append("CSeq: 1234 INFO");
        s.append("\r\n");
        s.append("Call-ID: 01234567890abcdef");
        s.append("\r\n");
        s.append("Max-Forwards: 70");
        s.append("\r\n");
        s.append("Via: SIP/2.0/UDP 127.0.0.1;branch=z9hG4bK776asdhds");
        s.append("\r\n");
        s.append("\r\n");
        s.append(stringbuilder);
        return s.toString();
    }

    public void PTZ(String s, String s1, String s2)
        throws IOException
    {
        SendPTZ(MakePTZMsg(s, s1, s2));
    }

    public void SendPTZ(final String msg)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        (new Thread(new Runnable() {

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
                        obj[3] = Integer.parseInt(m_VAUAdd.substring(j, m_VAUAdd.length()));
                        obj = InetAddress.getByAddress(new byte[] {
                            (byte)obj[0], (byte)obj[1], (byte)obj[2], (byte)obj[3]
                        });
                        byte abyte0[] = msg.getBytes();
                        obj = new DatagramPacket(abyte0, abyte0.length, ((InetAddress) (obj)), m_VAUPort);
                        getPTZSocketSingletInstance().send(((DatagramPacket) (obj)));
                        return;
                    }
                    catch (Exception exception)
                    {
                        Log.e("ptzcontrol", exception.getMessage(), exception);
                    }
                    break; /* Loop/switch isn't completed */
                }
                k = m_VAUAdd.indexOf(".", j);
                obj[i] = Integer.parseInt(m_VAUAdd.substring(j, k));
                j = k + 1;
                i++;
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                this$0 = PTZInfoClass.this;
                msg = s;
                super();
            }
        })).start();
        this;
        JVM INSTR monitorexit ;
        return;
        msg;
        throw msg;
    }

    public DatagramSocket getPTZSocketSingletInstance()
    {
        if (m_PTZDgSkt != null) goto _L2; else goto _L1
_L1:
        com/pubinfo/wifi_core/core/util/PTZInfoClass;
        JVM INSTR monitorenter ;
        DatagramSocket datagramsocket = m_PTZDgSkt;
        if (datagramsocket != null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        m_PTZDgSkt = new DatagramSocket();
_L3:
        com/pubinfo/wifi_core/core/util/PTZInfoClass;
        JVM INSTR monitorexit ;
_L2:
        return m_PTZDgSkt;
        Object obj;
        obj;
        Log.d("_m_PTZDgSkt_", "PTZ socket \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uCCE3....");
          goto _L3
        obj;
        com/pubinfo/wifi_core/core/util/PTZInfoClass;
        JVM INSTR monitorexit ;
        throw obj;
    }

    static 
    {
        try
        {
            m_PTZDgSkt = new DatagramSocket();
        }
        catch (SocketException socketexception)
        {
            Log.d("_m_PTZDgSkt_", "PTZ socket \u5EFA\u7ACB\u8FDE\u63A5\u5F02\u5E38....");
        }
    }


}
