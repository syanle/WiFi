// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import android.util.Log;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.androidpn.client.LogUtil;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.packet.XMPPError;
import org.jivesoftware.smack.util.PacketParserUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

// Referenced classes of package org.jivesoftware.smack:
//            XMPPConnection, ConnectionConfiguration, XMPPException, SASLAuthentication, 
//            AccountManager, PacketWriter, PacketCollector, ConnectionListener, 
//            SmackConfiguration

class PacketReader
{
    private class ListenerNotification
        implements Runnable
    {

        private Packet packet;
        final PacketReader this$0;

        public void run()
        {
            Iterator iterator = connection.recvListeners.values().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                ((Connection.ListenerWrapper)iterator.next()).notifyListener(packet);
            } while (true);
        }

        public ListenerNotification(Packet packet1)
        {
            this$0 = PacketReader.this;
            super();
            packet = packet1;
        }
    }


    private static final String LOG_TAG = LogUtil.makeLogTag(org/jivesoftware/smack/PacketReader);
    private XMPPConnection connection;
    private String connectionID;
    private Semaphore connectionSemaphore;
    private boolean done;
    private ExecutorService listenerExecutor;
    private XmlPullParser parser;
    private Thread readerThread;

    protected PacketReader(XMPPConnection xmppconnection)
    {
        connectionID = null;
        connection = xmppconnection;
        init();
    }

    private void parseFeatures(XmlPullParser xmlpullparser)
        throws Exception
    {
        boolean flag = false;
        boolean flag2 = false;
        boolean flag1 = false;
        do
        {
            if (flag1)
            {
                if (!connection.isSecureConnection() && !flag && connection.getConfiguration().getSecurityMode() == ConnectionConfiguration.SecurityMode.required)
                {
                    throw new XMPPException("Server does not support security (TLS), but security required by connection configuration.", new XMPPError(org.jivesoftware.smack.packet.XMPPError.Condition.forbidden));
                }
                break;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (xmlpullparser.getName().equals("starttls"))
                {
                    flag = true;
                } else
                if (xmlpullparser.getName().equals("mechanisms"))
                {
                    connection.getSASLAuthentication().setAvailableSASLMethods(PacketParserUtils.parseMechanisms(xmlpullparser));
                } else
                if (xmlpullparser.getName().equals("bind"))
                {
                    connection.getSASLAuthentication().bindingRequired();
                } else
                if (xmlpullparser.getName().equals("ver"))
                {
                    connection.getConfiguration().setRosterVersioningAvailable(true);
                } else
                if (xmlpullparser.getName().equals("c"))
                {
                    String s = xmlpullparser.getAttributeValue(null, "node");
                    String s1 = xmlpullparser.getAttributeValue(null, "ver");
                    s = (new StringBuilder(String.valueOf(s))).append("#").append(s1).toString();
                    connection.getConfiguration().setCapsNode(s);
                } else
                if (xmlpullparser.getName().equals("session"))
                {
                    connection.getSASLAuthentication().sessionsSupported();
                } else
                if (xmlpullparser.getName().equals("compression"))
                {
                    connection.setAvailableCompressionMethods(PacketParserUtils.parseCompressionMethods(xmlpullparser));
                } else
                if (xmlpullparser.getName().equals("register"))
                {
                    connection.getAccountManager().setSupportsAccountCreation(true);
                }
            } else
            if (i == 3)
            {
                if (xmlpullparser.getName().equals("starttls"))
                {
                    connection.startTLSReceived(flag2);
                } else
                if (xmlpullparser.getName().equals("required") && flag)
                {
                    flag2 = true;
                } else
                if (xmlpullparser.getName().equals("features"))
                {
                    flag1 = true;
                }
            }
        } while (true);
        if (!flag || connection.getConfiguration().getSecurityMode() == ConnectionConfiguration.SecurityMode.disabled)
        {
            releaseConnectionIDLock();
        }
    }

    private void parsePackets(Thread thread)
    {
        int i = parser.getEventType();
_L8:
        if (i != 2) goto _L2; else goto _L1
_L1:
        Log.d(LOG_TAG, (new StringBuilder("starttag...parser...")).append(parser.getName()).toString());
        if (!parser.getName().equals("message")) goto _L4; else goto _L3
_L3:
        processPacket(PacketParserUtils.parseMessage(parser));
_L9:
        i = parser.next();
        if (done || i == 1) goto _L6; else goto _L5
_L5:
        if (thread == readerThread) goto _L8; else goto _L7
_L7:
        return;
_L4:
label0:
        {
            if (!parser.getName().equals("iq"))
            {
                break label0;
            }
            processPacket(PacketParserUtils.parseIQ(parser, connection));
        }
          goto _L9
label1:
        {
            if (!parser.getName().equals("presence"))
            {
                break label1;
            }
            processPacket(PacketParserUtils.parsePresence(parser));
        }
          goto _L9
        if (!parser.getName().equals("stream")) goto _L11; else goto _L10
_L10:
        if (!"jabber:client".equals(parser.getNamespace(null))) goto _L9; else goto _L12
_L12:
        i = 0;
_L18:
        if (i >= parser.getAttributeCount()) goto _L9; else goto _L13
_L13:
        if (parser.getAttributeName(i).equals("id"))
        {
            connectionID = parser.getAttributeValue(i);
            if (!"1.0".equals(parser.getAttributeValue("", "version")))
            {
                releaseConnectionIDLock();
            }
            break MISSING_BLOCK_LABEL_738;
        }
        try
        {
            if (parser.getAttributeName(i).equals("from"))
            {
                connection.config.setServiceName(parser.getAttributeValue(i));
            }
            break MISSING_BLOCK_LABEL_738;
        }
        // Misplaced declaration of an exception variable
        catch (Thread thread)
        {
            if (!done)
            {
                notifyConnectionError(thread);
                return;
            }
        }
          goto _L6
_L11:
label2:
        {
            if (parser.getName().equals("error"))
            {
                throw new XMPPException(PacketParserUtils.parseStreamError(parser));
            }
            if (!parser.getName().equals("features"))
            {
                break label2;
            }
            parseFeatures(parser);
        }
          goto _L9
label3:
        {
            if (!parser.getName().equals("proceed"))
            {
                break label3;
            }
            connection.proceedTLSReceived();
            resetParser();
        }
          goto _L9
label4:
        {
            if (!parser.getName().equals("failure"))
            {
                break MISSING_BLOCK_LABEL_530;
            }
            String s = parser.getNamespace(null);
            if ("urn:ietf:params:xml:ns:xmpp-tls".equals(s))
            {
                throw new Exception("TLS negotiation has failed");
            }
            if (!"http://jabber.org/protocol/compress".equals(s))
            {
                break label4;
            }
            connection.streamCompressionDenied();
        }
          goto _L9
        processPacket(PacketParserUtils.parseSASLFailure(parser));
        connection.getSASLAuthentication().authenticationFailed();
          goto _L9
label5:
        {
            if (!parser.getName().equals("challenge"))
            {
                break label5;
            }
            String s1 = parser.nextText();
            processPacket(new org.jivesoftware.smack.sasl.SASLMechanism.Challenge(s1));
            connection.getSASLAuthentication().challengeReceived(s1);
        }
          goto _L9
        if (!parser.getName().equals("success")) goto _L15; else goto _L14
_L14:
        processPacket(new org.jivesoftware.smack.sasl.SASLMechanism.Success(parser.nextText()));
        connection.packetWriter.openStream();
        resetParser();
        connection.getSASLAuthentication().authenticated();
          goto _L9
_L15:
        if (!parser.getName().equals("compressed")) goto _L9; else goto _L16
_L16:
        connection.startStreamCompression();
        resetParser();
          goto _L9
_L2:
        if (i != 3) goto _L9; else goto _L17
_L17:
        Log.d(LOG_TAG, (new StringBuilder("end...tag...parser...")).append(parser.getName()).toString());
        parser.getName().equals("stream");
          goto _L9
_L6:
        return;
        i++;
          goto _L18
    }

    private void processPacket(Packet packet)
    {
        if (packet == null)
        {
            return;
        }
        Iterator iterator = connection.getPacketCollectors().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                listenerExecutor.submit(new ListenerNotification(packet));
                return;
            }
            ((PacketCollector)iterator.next()).processPacket(packet);
        } while (true);
    }

    private void releaseConnectionIDLock()
    {
        connectionSemaphore.release();
    }

    private void resetParser()
    {
        try
        {
            parser = XmlPullParserFactory.newInstance().newPullParser();
            parser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
            parser.setInput(connection.reader);
            return;
        }
        catch (XmlPullParserException xmlpullparserexception)
        {
            xmlpullparserexception.printStackTrace();
        }
    }

    void cleanup()
    {
        connection.recvListeners.clear();
        connection.collectors.clear();
    }

    protected void init()
    {
        done = false;
        connectionID = null;
        readerThread = new Thread() {

            final PacketReader this$0;

            public void run()
            {
                parsePackets(this);
            }

            
            {
                this$0 = PacketReader.this;
                super();
            }
        };
        readerThread.setName((new StringBuilder("Smack Packet Reader (")).append(connection.connectionCounterValue).append(")").toString());
        readerThread.setDaemon(true);
        listenerExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() {

            final PacketReader this$0;

            public Thread newThread(Runnable runnable)
            {
                runnable = new Thread(runnable, (new StringBuilder("Smack Listener Processor (")).append(connection.connectionCounterValue).append(")").toString());
                runnable.setDaemon(true);
                return runnable;
            }

            
            {
                this$0 = PacketReader.this;
                super();
            }
        });
        resetParser();
    }

    void notifyConnectionError(Exception exception)
    {
        Log.d(LOG_TAG, "notifyConnectionError", exception);
        done = true;
        connection.shutdown(new Presence(org.jivesoftware.smack.packet.Presence.Type.unavailable));
        exception.printStackTrace();
        Iterator iterator = connection.getConnectionListeners().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ConnectionListener connectionlistener = (ConnectionListener)iterator.next();
            try
            {
                connectionlistener.connectionClosedOnError(exception);
            }
            catch (Exception exception1)
            {
                exception1.printStackTrace();
            }
        } while (true);
    }

    protected void notifyReconnection()
    {
        Iterator iterator = connection.getConnectionListeners().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ConnectionListener connectionlistener = (ConnectionListener)iterator.next();
            try
            {
                connectionlistener.reconnectionSuccessful();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        } while (true);
    }

    public void shutdown()
    {
        Thread.currentThread();
        Thread.dumpStack();
        Log.d(LOG_TAG, "shutdown");
        if (done) goto _L2; else goto _L1
_L1:
        Iterator iterator = connection.getConnectionListeners().iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        done = true;
        listenerExecutor.shutdown();
        return;
_L3:
        ConnectionListener connectionlistener = (ConnectionListener)iterator.next();
        try
        {
            connectionlistener.connectionClosed();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void startup()
        throws XMPPException
    {
        connectionSemaphore = new Semaphore(1);
        readerThread.start();
        try
        {
            connectionSemaphore.acquire();
            int i = SmackConfiguration.getPacketReplyTimeout();
            connectionSemaphore.tryAcquire(i * 3, TimeUnit.MILLISECONDS);
        }
        catch (InterruptedException interruptedexception) { }
        if (connectionID == null)
        {
            throw new XMPPException("Connection failed. No response from server.");
        } else
        {
            connection.connectionID = connectionID;
            return;
        }
    }



}
