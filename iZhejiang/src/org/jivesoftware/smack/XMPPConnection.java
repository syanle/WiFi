// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import android.util.Log;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyStore;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import java.util.Collection;
import java.util.Iterator;
import javax.net.SocketFactory;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import org.androidpn.client.LogUtil;
import org.androidpn.client.XmppManager;
import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.PasswordCallback;
import org.jivesoftware.smack.debugger.SmackDebugger;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.packet.XMPPError;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack:
//            Connection, ConnectionConfiguration, XMPPException, PacketWriter, 
//            PacketReader, ConnectionCreationListener, SmackConfiguration, Roster, 
//            SASLAuthentication, NonSASLAuthentication, ServerTrustManager, PacketInterceptor, 
//            PacketListener, RosterStorage

public class XMPPConnection extends Connection
{

    private static final String LOG_TAG = LogUtil.makeLogTag(org/jivesoftware/smack/XMPPConnection);
    private boolean anonymous;
    private boolean authenticated;
    private Collection compressionMethods;
    private boolean connected;
    String connectionID;
    PacketReader packetReader;
    PacketWriter packetWriter;
    Roster roster;
    protected Socket socket;
    private String user;
    private boolean usingCompression;
    private boolean usingTLS;
    private boolean wasAuthenticated;

    public XMPPConnection(String s)
    {
        super(new ConnectionConfiguration(s));
        connectionID = null;
        user = null;
        connected = false;
        authenticated = false;
        wasAuthenticated = false;
        anonymous = false;
        usingTLS = false;
        roster = null;
        config.setCompressionEnabled(false);
        config.setSASLAuthenticationEnabled(true);
        config.setDebuggerEnabled(DEBUG_ENABLED);
    }

    public XMPPConnection(String s, CallbackHandler callbackhandler)
    {
        super(new ConnectionConfiguration(s));
        connectionID = null;
        user = null;
        connected = false;
        authenticated = false;
        wasAuthenticated = false;
        anonymous = false;
        usingTLS = false;
        roster = null;
        config.setCompressionEnabled(false);
        config.setSASLAuthenticationEnabled(true);
        config.setDebuggerEnabled(DEBUG_ENABLED);
        config.setCallbackHandler(callbackhandler);
    }

    public XMPPConnection(ConnectionConfiguration connectionconfiguration)
    {
        super(connectionconfiguration);
        connectionID = null;
        user = null;
        connected = false;
        authenticated = false;
        wasAuthenticated = false;
        anonymous = false;
        usingTLS = false;
        roster = null;
    }

    public XMPPConnection(ConnectionConfiguration connectionconfiguration, CallbackHandler callbackhandler)
    {
        super(connectionconfiguration);
        connectionID = null;
        user = null;
        connected = false;
        authenticated = false;
        wasAuthenticated = false;
        anonymous = false;
        usingTLS = false;
        roster = null;
        connectionconfiguration.setCallbackHandler(callbackhandler);
    }

    private void connectUsingConfiguration(ConnectionConfiguration connectionconfiguration)
        throws XMPPException
    {
        String s;
        int i;
        s = connectionconfiguration.getHost();
        i = connectionconfiguration.getPort();
        if (connectionconfiguration.getSocketFactory() != null) goto _L2; else goto _L1
_L1:
        socket = new Socket(s, i);
_L4:
        initConnection();
        return;
_L2:
        try
        {
            socket = connectionconfiguration.getSocketFactory().createSocket(s, i);
        }
        // Misplaced declaration of an exception variable
        catch (ConnectionConfiguration connectionconfiguration)
        {
            s = (new StringBuilder("Could not connect to ")).append(s).append(":").append(i).append(".").toString();
            throw new XMPPException(s, new XMPPError(org.jivesoftware.smack.packet.XMPPError.Condition.remote_server_timeout, s), connectionconfiguration);
        }
        // Misplaced declaration of an exception variable
        catch (ConnectionConfiguration connectionconfiguration)
        {
            s = (new StringBuilder("XMPPError connecting to ")).append(s).append(":").append(i).append(".").toString();
            throw new XMPPException(s, new XMPPError(org.jivesoftware.smack.packet.XMPPError.Condition.remote_server_error, s), connectionconfiguration);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean hasAvailableCompressionMethod(String s)
    {
        return compressionMethods != null && compressionMethods.contains(s);
    }

    private void initConnection()
        throws XMPPException
    {
        boolean flag;
        boolean flag1 = true;
        flag = flag1;
        if (packetReader != null)
        {
            flag = flag1;
            if (packetWriter != null)
            {
                flag = false;
            }
        }
        if (!flag)
        {
            usingCompression = false;
        }
        initReaderAndWriter();
        if (!flag) goto _L2; else goto _L1
_L1:
        packetWriter = new PacketWriter(this);
        packetReader = new PacketReader(this);
        if (config.isDebuggerEnabled())
        {
            addPacketListener(debugger.getReaderListener(), null);
            if (debugger.getWriterListener() != null)
            {
                addPacketSendingListener(debugger.getWriterListener(), null);
            }
        }
_L8:
        packetWriter.startup();
        packetReader.startup();
        connected = true;
        if (!flag) goto _L4; else goto _L3
_L3:
        Object obj = getConnectionCreationListeners().iterator();
_L6:
        if (!((Iterator) (obj)).hasNext())
        {
            return;
        }
          goto _L5
_L2:
        try
        {
            packetWriter.init();
            packetReader.init();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            if (packetWriter != null)
            {
                Object obj1;
                try
                {
                    packetWriter.shutdown();
                }
                catch (Throwable throwable) { }
                packetWriter = null;
            }
            if (packetReader != null)
            {
                try
                {
                    packetReader.shutdown();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj1) { }
                packetReader = null;
            }
            if (reader != null)
            {
                try
                {
                    reader.close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj1) { }
                reader = null;
            }
            if (writer != null)
            {
                try
                {
                    writer.close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj1) { }
                writer = null;
            }
            if (socket != null)
            {
                try
                {
                    socket.close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj1) { }
                socket = null;
            }
            setWasAuthenticated(authenticated);
            authenticated = false;
            connected = false;
            throw obj;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        ((ConnectionCreationListener)((Iterator) (obj)).next()).connectionCreated(this);
          goto _L6
_L4:
        if (!wasAuthenticated)
        {
            packetReader.notifyReconnection();
            return;
        }
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void initReaderAndWriter()
        throws XMPPException
    {
        if (usingCompression) goto _L2; else goto _L1
_L1:
        reader = new BufferedReader(new InputStreamReader(socket.getInputStream(), "UTF-8"));
        writer = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), "UTF-8"));
_L4:
        initDebugger();
        return;
_L2:
        Class class1 = Class.forName("com.jcraft.jzlib.ZOutputStream");
        Object obj = class1.getConstructor(new Class[] {
            java/io/OutputStream, Integer.TYPE
        }).newInstance(new Object[] {
            socket.getOutputStream(), Integer.valueOf(9)
        });
        class1.getMethod("setFlushMode", new Class[] {
            Integer.TYPE
        }).invoke(obj, new Object[] {
            Integer.valueOf(2)
        });
        writer = new BufferedWriter(new OutputStreamWriter((OutputStream)obj, "UTF-8"));
        class1 = Class.forName("com.jcraft.jzlib.ZInputStream");
        obj = class1.getConstructor(new Class[] {
            java/io/InputStream
        }).newInstance(new Object[] {
            socket.getInputStream()
        });
        class1.getMethod("setFlushMode", new Class[] {
            Integer.TYPE
        }).invoke(obj, new Object[] {
            Integer.valueOf(2)
        });
        reader = new BufferedReader(new InputStreamReader((InputStream)obj, "UTF-8"));
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        try
        {
            exception.printStackTrace();
            reader = new BufferedReader(new InputStreamReader(socket.getInputStream(), "UTF-8"));
            writer = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), "UTF-8"));
        }
        catch (IOException ioexception)
        {
            throw new XMPPException("XMPPError establishing connection with server.", new XMPPError(org.jivesoftware.smack.packet.XMPPError.Condition.remote_server_error, "XMPPError establishing connection with server."), ioexception);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void requestStreamCompression()
    {
        try
        {
            writer.write("<compress xmlns='http://jabber.org/protocol/compress'>");
            writer.write("<method>zlib</method></compress>");
            writer.flush();
            return;
        }
        catch (IOException ioexception)
        {
            packetReader.notifyConnectionError(ioexception);
        }
    }

    private void setWasAuthenticated(boolean flag)
    {
        if (!wasAuthenticated)
        {
            wasAuthenticated = flag;
        }
    }

    private boolean useCompression()
    {
        if (authenticated)
        {
            throw new IllegalStateException("Compression should be negotiated before authentication.");
        }
        try
        {
            Class.forName("com.jcraft.jzlib.ZOutputStream");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new IllegalStateException("Cannot use compression. Add smackx.jar to the classpath");
        }
        if (!hasAvailableCompressionMethod("zlib"))
        {
            break MISSING_BLOCK_LABEL_75;
        }
        requestStreamCompression();
        this;
        JVM INSTR monitorenter ;
        Exception exception;
        try
        {
            wait(SmackConfiguration.getPacketReplyTimeout() * 5);
        }
        catch (InterruptedException interruptedexception) { }
        this;
        JVM INSTR monitorexit ;
        return usingCompression;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        return false;
    }

    public void addPacketWriterInterceptor(PacketInterceptor packetinterceptor, PacketFilter packetfilter)
    {
        addPacketInterceptor(packetinterceptor, packetfilter);
    }

    public void addPacketWriterListener(PacketListener packetlistener, PacketFilter packetfilter)
    {
        addPacketSendingListener(packetlistener, packetfilter);
    }

    public void connect()
        throws XMPPException
    {
        connectUsingConfiguration(config);
        if (!connected || !wasAuthenticated)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        if (!isAnonymous())
        {
            break MISSING_BLOCK_LABEL_41;
        }
        loginAnonymously();
_L2:
        packetReader.notifyReconnection();
        return;
        login(config.getUsername(), config.getPassword(), config.getResource());
        if (true) goto _L2; else goto _L1
_L1:
        XMPPException xmppexception;
        xmppexception;
        xmppexception.printStackTrace();
    }

    public void disconnect(Presence presence)
    {
        Log.d(LOG_TAG, "disconnect");
        if (packetReader == null || packetWriter == null)
        {
            return;
        }
        shutdown(presence);
        if (roster != null)
        {
            roster.cleanup();
            roster = null;
        }
        wasAuthenticated = false;
        packetWriter.cleanup();
        packetWriter = null;
        packetReader.cleanup();
        packetReader = null;
    }

    public String getConnectionID()
    {
        if (!isConnected())
        {
            return null;
        } else
        {
            return connectionID;
        }
    }

    public Roster getRoster()
    {
        if (roster == null)
        {
            return null;
        }
        if (roster.rosterInitialized) goto _L2; else goto _L1
_L1:
        Roster roster1 = roster;
        roster1;
        JVM INSTR monitorenter ;
        long l;
        long l1;
        l1 = SmackConfiguration.getPacketReplyTimeout();
        l = System.currentTimeMillis();
        break MISSING_BLOCK_LABEL_36;
_L2:
        return roster;
_L4:
        if (roster.rosterInitialized || l1 <= 0L) goto _L2; else goto _L3
_L3:
        long l2;
        roster.wait(l1);
        l2 = System.currentTimeMillis();
        l1 -= l2 - l;
        l = l2;
          goto _L4
        Exception exception;
        exception;
        roster1;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (InterruptedException interruptedexception) { }
          goto _L2
    }

    public String getUser()
    {
        if (!isAuthenticated())
        {
            return null;
        } else
        {
            return user;
        }
    }

    public boolean isAnonymous()
    {
        return anonymous;
    }

    public boolean isAuthenticated()
    {
        return authenticated;
    }

    public boolean isConnected()
    {
        return connected;
    }

    public boolean isSecureConnection()
    {
        return isUsingTLS();
    }

    public boolean isUsingCompression()
    {
        return usingCompression;
    }

    public boolean isUsingTLS()
    {
        return usingTLS;
    }

    public void login(String s, String s1, String s2)
        throws XMPPException
    {
        this;
        JVM INSTR monitorenter ;
        if (!isConnected())
        {
            throw new IllegalStateException("Not connected to server.");
        }
        break MISSING_BLOCK_LABEL_25;
        s;
        this;
        JVM INSTR monitorexit ;
        throw s;
        String s3;
        if (authenticated)
        {
            throw new IllegalStateException("Already logged in to server.");
        }
        s3 = s.toLowerCase().trim();
        if (!config.isSASLAuthenticationEnabled() || !saslAuthentication.hasNonAnonymousAuthentication()) goto _L2; else goto _L1
_L1:
        if (s1 == null) goto _L4; else goto _L3
_L3:
        s = saslAuthentication.authenticate(s3, s1, s2);
_L7:
        if (s == null) goto _L6; else goto _L5
_L5:
        user = s;
        config.setServiceName(StringUtils.parseServer(s));
_L9:
        if (config.isCompressionEnabled())
        {
            useCompression();
        }
        if (roster == null)
        {
            if (rosterStorage != null)
            {
                break MISSING_BLOCK_LABEL_357;
            }
            roster = new Roster(this);
        }
_L10:
        if (config.isRosterLoadedAtLogin())
        {
            roster.reload();
        }
        if (config.isSendPresence())
        {
            packetWriter.sendPacket(new Presence(org.jivesoftware.smack.packet.Presence.Type.available));
        }
        authenticated = true;
        anonymous = false;
        config.setLoginInfo(s3, s1, s2);
        if (config.isDebuggerEnabled() && debugger != null)
        {
            debugger.userHasLogged(user);
        }
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        s = saslAuthentication.authenticate(s3, s2, config.getCallbackHandler());
          goto _L7
_L2:
        s = (new NonSASLAuthentication(this)).authenticate(s3, s1, s2);
          goto _L7
_L6:
        user = (new StringBuilder(String.valueOf(s3))).append("@").append(getServiceName()).toString();
        if (s2 == null) goto _L9; else goto _L8
_L8:
        user = (new StringBuilder(String.valueOf(user))).append("/").append(s2).toString();
          goto _L9
        roster = new Roster(this, rosterStorage);
          goto _L10
    }

    public void loginAnonymously()
        throws XMPPException
    {
        this;
        JVM INSTR monitorenter ;
        if (!isConnected())
        {
            throw new IllegalStateException("Not connected to server.");
        }
        break MISSING_BLOCK_LABEL_25;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        String s;
        if (authenticated)
        {
            throw new IllegalStateException("Already logged in to server.");
        }
        if (!config.isSASLAuthenticationEnabled() || !saslAuthentication.hasAnonymousAuthentication())
        {
            break MISSING_BLOCK_LABEL_167;
        }
        s = saslAuthentication.authenticateAnonymously();
_L1:
        user = s;
        config.setServiceName(StringUtils.parseServer(s));
        if (config.isCompressionEnabled())
        {
            useCompression();
        }
        roster = null;
        packetWriter.sendPacket(new Presence(org.jivesoftware.smack.packet.Presence.Type.available));
        authenticated = true;
        anonymous = true;
        if (config.isDebuggerEnabled() && debugger != null)
        {
            debugger.userHasLogged(user);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        s = (new NonSASLAuthentication(this)).authenticateAnonymously();
          goto _L1
    }

    void proceedTLSReceived()
        throws Exception
    {
        Object obj;
        Object obj2;
        SSLContext sslcontext;
        sslcontext = SSLContext.getInstance("TLS");
        obj = null;
        obj2 = null;
        if (config.getCallbackHandler() != null) goto _L2; else goto _L1
_L1:
        obj2 = new ServerTrustManager(getServiceName(), config);
        SecureRandom securerandom = new SecureRandom();
        sslcontext.init(((javax.net.ssl.KeyManager []) (obj)), new TrustManager[] {
            obj2
        }, securerandom);
        obj = socket;
        socket = sslcontext.getSocketFactory().createSocket(((Socket) (obj)), ((Socket) (obj)).getInetAddress().getHostName(), ((Socket) (obj)).getPort(), true);
        socket.setSoTimeout(0);
        socket.setKeepAlive(true);
        initReaderAndWriter();
        ((SSLSocket)socket).startHandshake();
        usingTLS = true;
        packetWriter.setWriter(writer);
        packetWriter.openStream();
        return;
_L2:
        if (!config.getKeystoreType().equals("NONE")) goto _L4; else goto _L3
_L3:
        obj = null;
        obj2 = null;
_L9:
        KeyManagerFactory keymanagerfactory = KeyManagerFactory.getInstance("SunX509");
        if (obj2 != null) goto _L6; else goto _L5
_L5:
        keymanagerfactory.init(((KeyStore) (obj)), null);
_L10:
        obj = keymanagerfactory.getKeyManagers();
          goto _L1
_L4:
        if (!config.getKeystoreType().equals("PKCS11")) goto _L8; else goto _L7
_L7:
        obj = (Provider)Class.forName("sun.security.pkcs11.SunPKCS11").getConstructor(new Class[] {
            java/io/InputStream
        }).newInstance(new Object[] {
            new ByteArrayInputStream((new StringBuilder("name = SmartCard\nlibrary = ")).append(config.getPKCS11Library()).toString().getBytes())
        });
        Security.addProvider(((Provider) (obj)));
        obj = KeyStore.getInstance("PKCS11", ((Provider) (obj)));
        obj2 = new PasswordCallback("PKCS11 Password: ", false);
        config.getCallbackHandler().handle(new Callback[] {
            obj2
        });
        ((KeyStore) (obj)).load(null, ((PasswordCallback) (obj2)).getPassword());
          goto _L9
        obj;
_L12:
        obj = null;
        obj2 = null;
          goto _L9
_L8:
label0:
        {
            if (!config.getKeystoreType().equals("Apple"))
            {
                break label0;
            }
            obj = KeyStore.getInstance("KeychainStore", "Apple");
            ((KeyStore) (obj)).load(null, null);
        }
          goto _L9
        obj = KeyStore.getInstance(config.getKeystoreType());
        obj2 = new PasswordCallback("Keystore Password: ", false);
        config.getCallbackHandler().handle(new Callback[] {
            obj2
        });
        ((KeyStore) (obj)).load(new FileInputStream(config.getKeystorePath()), ((PasswordCallback) (obj2)).getPassword());
          goto _L9
        obj;
_L11:
        obj = null;
        obj2 = null;
          goto _L9
_L6:
        keymanagerfactory.init(((KeyStore) (obj)), ((PasswordCallback) (obj2)).getPassword());
        ((PasswordCallback) (obj2)).clearPassword();
          goto _L10
        Object obj1;
        obj1;
        obj1 = null;
          goto _L1
        obj1;
          goto _L11
        obj1;
          goto _L12
    }

    public void removePacketWriterInterceptor(PacketInterceptor packetinterceptor)
    {
        removePacketInterceptor(packetinterceptor);
    }

    public void removePacketWriterListener(PacketListener packetlistener)
    {
        removePacketSendingListener(packetlistener);
    }

    public void sendPacket(Packet packet)
    {
        if (!isConnected())
        {
            throw new IllegalStateException("Not connected to server.");
        }
        if (packet == null)
        {
            throw new NullPointerException("Packet is null.");
        } else
        {
            packetWriter.sendPacket(packet);
            return;
        }
    }

    void setAvailableCompressionMethods(Collection collection)
    {
        compressionMethods = collection;
    }

    public void setRosterStorage(RosterStorage rosterstorage)
        throws IllegalStateException
    {
        if (roster != null)
        {
            throw new IllegalStateException("Roster is already initialized");
        } else
        {
            rosterStorage = rosterstorage;
            return;
        }
    }

    protected void shutdown(Presence presence)
    {
        Log.d(LOG_TAG, "shutdown");
        if (packetWriter != null)
        {
            packetWriter.sendPacket(presence);
        }
        setWasAuthenticated(authenticated);
        authenticated = false;
        connected = false;
        if (packetReader != null)
        {
            packetReader.shutdown();
        }
        if (packetWriter != null)
        {
            packetWriter.shutdown();
        }
        try
        {
            Thread.sleep(150L);
        }
        // Misplaced declaration of an exception variable
        catch (Presence presence) { }
        if (reader != null)
        {
            try
            {
                reader.close();
            }
            // Misplaced declaration of an exception variable
            catch (Presence presence) { }
            reader = null;
        }
        if (writer != null)
        {
            try
            {
                writer.close();
            }
            // Misplaced declaration of an exception variable
            catch (Presence presence) { }
            writer = null;
        }
        try
        {
            socket.close();
        }
        // Misplaced declaration of an exception variable
        catch (Presence presence) { }
        saslAuthentication.init();
    }

    public void startKeepAliveThread(XmppManager xmppmanager)
        throws Exception
    {
        packetWriter.startKeepAliveProcess(xmppmanager);
    }

    void startStreamCompression()
        throws Exception
    {
        usingCompression = true;
        initReaderAndWriter();
        packetWriter.setWriter(writer);
        packetWriter.openStream();
        this;
        JVM INSTR monitorenter ;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void startTLSReceived(boolean flag)
    {
        if (flag && config.getSecurityMode() == ConnectionConfiguration.SecurityMode.disabled)
        {
            packetReader.notifyConnectionError(new IllegalStateException("TLS required by server but not allowed by connection configuration"));
        } else
        if (config.getSecurityMode() != ConnectionConfiguration.SecurityMode.disabled)
        {
            try
            {
                writer.write("<starttls xmlns=\"urn:ietf:params:xml:ns:xmpp-tls\"/>");
                writer.flush();
                return;
            }
            catch (IOException ioexception)
            {
                packetReader.notifyConnectionError(ioexception);
            }
            return;
        }
    }

    void streamCompressionDenied()
    {
        this;
        JVM INSTR monitorenter ;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
