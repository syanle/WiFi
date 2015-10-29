// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.Collection;
import java.util.Iterator;
import org.jivesoftware.smack.packet.StreamError;

// Referenced classes of package org.jivesoftware.smack:
//            ConnectionListener, Connection, XMPPException, ConnectionCreationListener

public class ReconnectionManager
    implements ConnectionListener
{

    private Connection connection;
    boolean done;

    private ReconnectionManager(Connection connection1)
    {
        done = false;
        connection = connection1;
    }

    ReconnectionManager(Connection connection1, ReconnectionManager reconnectionmanager)
    {
        this(connection1);
    }

    private boolean isReconnectionAllowed()
    {
        return !done && !connection.isConnected() && connection.isReconnectionAllowed();
    }

    public void connectionClosed()
    {
        done = true;
    }

    public void connectionClosedOnError(Exception exception)
    {
        done = false;
        if (!(exception instanceof XMPPException)) goto _L2; else goto _L1
_L1:
        exception = ((XMPPException)exception).getStreamError();
        if (exception == null || !"conflict".equals(exception.getCode())) goto _L2; else goto _L3
_L3:
        return;
_L2:
        if (isReconnectionAllowed())
        {
            reconnect();
            return;
        }
        if (true) goto _L3; else goto _L4
_L4:
    }

    protected void notifyAttemptToReconnectIn(int i)
    {
        if (!isReconnectionAllowed()) goto _L2; else goto _L1
_L1:
        Iterator iterator = connection.connectionListeners.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ((ConnectionListener)iterator.next()).reconnectingIn(i);
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void notifyReconnectionFailed(Exception exception)
    {
        if (!isReconnectionAllowed()) goto _L2; else goto _L1
_L1:
        Iterator iterator = connection.connectionListeners.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ((ConnectionListener)iterator.next()).reconnectionFailed(exception);
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void reconnect()
    {
        if (isReconnectionAllowed())
        {
            Thread thread = new Thread() {

                private int attempts;
                final ReconnectionManager this$0;

                private int timeDelay()
                {
                    if (attempts > 13)
                    {
                        return 300;
                    }
                    return attempts <= 7 ? 10 : 60;
                }

                public void run()
                {
_L2:
                    int i;
                    if (!isReconnectionAllowed())
                    {
                        return;
                    }
                    i = timeDelay();
_L3:
                    if (isReconnectionAllowed() && i > 0)
                    {
                        break MISSING_BLOCK_LABEL_65;
                    }
                    if (!isReconnectionAllowed()) goto _L2; else goto _L1
_L1:
                    connection.connect();
                      goto _L2
                    Exception exception;
                    exception;
                    notifyReconnectionFailed(exception);
                      goto _L2
                    int j = i;
                    Thread.sleep(1000L);
                    i--;
                    j = i;
                    try
                    {
                        notifyAttemptToReconnectIn(i);
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        interruptedexception.printStackTrace();
                        notifyReconnectionFailed(interruptedexception);
                        i = j;
                    }
                      goto _L3
                }

            
            {
                this$0 = ReconnectionManager.this;
                super();
                attempts = 0;
            }
            };
            thread.setName("Smack Reconnection Manager");
            thread.setDaemon(true);
            thread.start();
        }
    }

    public void reconnectingIn(int i)
    {
    }

    public void reconnectionFailed(Exception exception)
    {
    }

    public void reconnectionSuccessful()
    {
    }

    static 
    {
        Connection.addConnectionCreationListener(new ConnectionCreationListener() {

            public void connectionCreated(Connection connection1)
            {
                connection1.addConnectionListener(new ReconnectionManager(connection1, null));
            }

        });
    }


}
