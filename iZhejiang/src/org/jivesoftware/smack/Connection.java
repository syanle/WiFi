// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.io.Reader;
import java.io.Writer;
import java.lang.reflect.Constructor;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;
import org.jivesoftware.smack.debugger.SmackDebugger;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Presence;

// Referenced classes of package org.jivesoftware.smack:
//            SmackConfiguration, SASLAuthentication, XMPPException, PacketCollector, 
//            AccountManager, ConnectionConfiguration, RosterStorage, ConnectionCreationListener, 
//            ConnectionListener, PacketInterceptor, PacketListener, Roster

public abstract class Connection
{
    protected static class InterceptorWrapper
    {

        private PacketFilter packetFilter;
        private PacketInterceptor packetInterceptor;

        public boolean equals(Object obj)
        {
            if (obj != null)
            {
                if (obj instanceof InterceptorWrapper)
                {
                    return ((InterceptorWrapper)obj).packetInterceptor.equals(packetInterceptor);
                }
                if (obj instanceof PacketInterceptor)
                {
                    return obj.equals(packetInterceptor);
                }
            }
            return false;
        }

        public void notifyListener(Packet packet)
        {
            if (packetFilter == null || packetFilter.accept(packet))
            {
                packetInterceptor.interceptPacket(packet);
            }
        }

        public InterceptorWrapper(PacketInterceptor packetinterceptor, PacketFilter packetfilter)
        {
            packetInterceptor = packetinterceptor;
            packetFilter = packetfilter;
        }
    }

    protected static class ListenerWrapper
    {

        private PacketFilter packetFilter;
        private PacketListener packetListener;

        public void notifyListener(Packet packet)
        {
            if (packetFilter == null || packetFilter.accept(packet))
            {
                packetListener.processPacket(packet);
            }
        }

        public ListenerWrapper(PacketListener packetlistener, PacketFilter packetfilter)
        {
            packetListener = packetlistener;
            packetFilter = packetfilter;
        }
    }


    public static boolean DEBUG_ENABLED = false;
    private static final AtomicInteger connectionCounter = new AtomicInteger(0);
    private static final Set connectionEstablishedListeners = new CopyOnWriteArraySet();
    private AccountManager accountManager;
    protected final Collection collectors = new ConcurrentLinkedQueue();
    protected final ConnectionConfiguration config;
    protected final int connectionCounterValue;
    protected final Collection connectionListeners = new CopyOnWriteArrayList();
    protected SmackDebugger debugger;
    protected final Map interceptors = new ConcurrentHashMap();
    protected Reader reader;
    protected final Map recvListeners = new ConcurrentHashMap();
    protected RosterStorage rosterStorage;
    protected SASLAuthentication saslAuthentication;
    protected final Map sendListeners = new ConcurrentHashMap();
    protected Writer writer;

    protected Connection(ConnectionConfiguration connectionconfiguration)
    {
        accountManager = null;
        debugger = null;
        saslAuthentication = new SASLAuthentication(this);
        connectionCounterValue = connectionCounter.getAndIncrement();
        config = connectionconfiguration;
    }

    public static void addConnectionCreationListener(ConnectionCreationListener connectioncreationlistener)
    {
        connectionEstablishedListeners.add(connectioncreationlistener);
    }

    protected static Collection getConnectionCreationListeners()
    {
        return Collections.unmodifiableCollection(connectionEstablishedListeners);
    }

    public static void removeConnectionCreationListener(ConnectionCreationListener connectioncreationlistener)
    {
        connectionEstablishedListeners.remove(connectioncreationlistener);
    }

    public void addConnectionListener(ConnectionListener connectionlistener)
    {
        if (!isConnected())
        {
            throw new IllegalStateException("Not connected to server.");
        }
        while (connectionlistener == null || connectionListeners.contains(connectionlistener)) 
        {
            return;
        }
        connectionListeners.add(connectionlistener);
    }

    public void addPacketInterceptor(PacketInterceptor packetinterceptor, PacketFilter packetfilter)
    {
        if (packetinterceptor == null)
        {
            throw new NullPointerException("Packet interceptor is null.");
        } else
        {
            interceptors.put(packetinterceptor, new InterceptorWrapper(packetinterceptor, packetfilter));
            return;
        }
    }

    public void addPacketListener(PacketListener packetlistener, PacketFilter packetfilter)
    {
        if (packetlistener == null)
        {
            throw new NullPointerException("Packet listener is null.");
        } else
        {
            packetfilter = new ListenerWrapper(packetlistener, packetfilter);
            recvListeners.put(packetlistener, packetfilter);
            return;
        }
    }

    public void addPacketSendingListener(PacketListener packetlistener, PacketFilter packetfilter)
    {
        if (packetlistener == null)
        {
            throw new NullPointerException("Packet listener is null.");
        } else
        {
            packetfilter = new ListenerWrapper(packetlistener, packetfilter);
            sendListeners.put(packetlistener, packetfilter);
            return;
        }
    }

    public abstract void connect()
        throws XMPPException, Exception;

    public PacketCollector createPacketCollector(PacketFilter packetfilter)
    {
        packetfilter = new PacketCollector(this, packetfilter);
        collectors.add(packetfilter);
        return packetfilter;
    }

    public void disconnect()
    {
        disconnect(new Presence(org.jivesoftware.smack.packet.Presence.Type.unavailable));
    }

    public abstract void disconnect(Presence presence);

    protected void firePacketInterceptors(Packet packet)
    {
        if (packet == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = interceptors.values().iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ((InterceptorWrapper)iterator.next()).notifyListener(packet);
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void firePacketSendingListeners(Packet packet)
    {
        Iterator iterator = sendListeners.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((ListenerWrapper)iterator.next()).notifyListener(packet);
        } while (true);
    }

    public AccountManager getAccountManager()
    {
        if (accountManager == null)
        {
            accountManager = new AccountManager(this);
        }
        return accountManager;
    }

    public String getCapsNode()
    {
        return config.getCapsNode();
    }

    protected ConnectionConfiguration getConfiguration()
    {
        return config;
    }

    public abstract String getConnectionID();

    protected Collection getConnectionListeners()
    {
        return connectionListeners;
    }

    public String getHost()
    {
        return config.getHost();
    }

    protected Collection getPacketCollectors()
    {
        return collectors;
    }

    protected Map getPacketInterceptors()
    {
        return interceptors;
    }

    protected Map getPacketListeners()
    {
        return recvListeners;
    }

    protected Map getPacketSendingListeners()
    {
        return sendListeners;
    }

    public int getPort()
    {
        return config.getPort();
    }

    public abstract Roster getRoster();

    public SASLAuthentication getSASLAuthentication()
    {
        return saslAuthentication;
    }

    public String getServiceName()
    {
        return config.getServiceName();
    }

    public abstract String getUser();

    protected void initDebugger()
    {
        if (reader == null || writer == null)
        {
            throw new NullPointerException("Reader or writer isn't initialized.");
        }
        if (!config.isDebuggerEnabled()) goto _L2; else goto _L1
_L1:
        if (debugger != null) goto _L4; else goto _L3
_L3:
        Object obj2 = null;
        String s = System.getProperty("smack.debuggerClass");
        obj2 = s;
_L6:
        Object obj3 = null;
        Object obj = obj3;
        if (obj2 != null)
        {
            try
            {
                obj = Class.forName(((String) (obj2)));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((Exception) (obj)).printStackTrace();
                obj = obj3;
            }
        }
        obj2 = obj;
        if (obj == null)
        {
            try
            {
                obj2 = Class.forName("de.measite.smack.AndroidDebugger");
            }
            catch (Exception exception)
            {
                try
                {
                    exception = Class.forName("org.jivesoftware.smack.debugger.ConsoleDebugger");
                }
                catch (Exception exception1)
                {
                    exception1.printStackTrace();
                    exception1 = ((Exception) (obj));
                }
            }
        }
        debugger = (SmackDebugger)((Class) (obj2)).getConstructor(new Class[] {
            org/jivesoftware/smack/Connection, java/io/Writer, java/io/Reader
        }).newInstance(new Object[] {
            this, writer, reader
        });
        reader = debugger.getReader();
        writer = debugger.getWriter();
_L2:
        return;
        Object obj1;
        obj1;
        throw new IllegalArgumentException("Can't initialize the configured debugger!", ((Throwable) (obj1)));
_L4:
        reader = debugger.newConnectionReader(reader);
        writer = debugger.newConnectionWriter(writer);
        return;
        obj1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public abstract boolean isAnonymous();

    public abstract boolean isAuthenticated();

    public abstract boolean isConnected();

    protected boolean isReconnectionAllowed()
    {
        return config.isReconnectionAllowed();
    }

    public abstract boolean isSecureConnection();

    public boolean isSendPresence()
    {
        return config.isSendPresence();
    }

    public abstract boolean isUsingCompression();

    public void login(String s, String s1)
        throws Exception
    {
        login(s, s1, "Smack");
    }

    public abstract void login(String s, String s1, String s2)
        throws Exception;

    public abstract void loginAnonymously()
        throws XMPPException;

    public void removeConnectionListener(ConnectionListener connectionlistener)
    {
        connectionListeners.remove(connectionlistener);
    }

    protected void removePacketCollector(PacketCollector packetcollector)
    {
        collectors.remove(packetcollector);
    }

    public void removePacketInterceptor(PacketInterceptor packetinterceptor)
    {
        interceptors.remove(packetinterceptor);
    }

    public void removePacketListener(PacketListener packetlistener)
    {
        recvListeners.remove(packetlistener);
    }

    public void removePacketSendingListener(PacketListener packetlistener)
    {
        sendListeners.remove(packetlistener);
    }

    public abstract void sendPacket(Packet packet);

    public abstract void setRosterStorage(RosterStorage rosterstorage)
        throws IllegalStateException;

    static 
    {
        try
        {
            DEBUG_ENABLED = Boolean.getBoolean("smack.debugEnabled");
        }
        catch (Exception exception) { }
        SmackConfiguration.getVersion();
    }
}
