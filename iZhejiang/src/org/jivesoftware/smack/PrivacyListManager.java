// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jivesoftware.smack.filter.AndFilter;
import org.jivesoftware.smack.filter.IQTypeFilter;
import org.jivesoftware.smack.filter.PacketExtensionFilter;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Privacy;

// Referenced classes of package org.jivesoftware.smack:
//            Connection, XMPPException, SmackConfiguration, PacketCollector, 
//            PrivacyList, PrivacyListListener, ConnectionCreationListener, ConnectionListener, 
//            PacketListener

public class PrivacyListManager
{

    private static Map instances = new Hashtable();
    private Connection connection;
    private final List listeners;
    PacketFilter packetFilter;

    private PrivacyListManager(Connection connection1)
    {
        listeners = new ArrayList();
        packetFilter = new AndFilter(new PacketFilter[] {
            new IQTypeFilter(org.jivesoftware.smack.packet.IQ.Type.SET), new PacketExtensionFilter("query", "jabber:iq:privacy")
        });
        connection = connection1;
        init();
    }

    PrivacyListManager(Connection connection1, PrivacyListManager privacylistmanager)
    {
        this(connection1);
    }

    public static PrivacyListManager getInstanceFor(Connection connection1)
    {
        return (PrivacyListManager)instances.get(connection1);
    }

    private List getPrivacyListItems(String s)
        throws XMPPException
    {
        Privacy privacy = new Privacy();
        privacy.setPrivacyList(s, new ArrayList());
        return getRequest(privacy).getPrivacyList(s);
    }

    private Privacy getPrivacyWithListNames()
        throws XMPPException
    {
        return getRequest(new Privacy());
    }

    private Privacy getRequest(Privacy privacy)
        throws XMPPException
    {
        privacy.setType(org.jivesoftware.smack.packet.IQ.Type.GET);
        privacy.setFrom(getUser());
        Object obj = new PacketIDFilter(privacy.getPacketID());
        obj = connection.createPacketCollector(((PacketFilter) (obj)));
        connection.sendPacket(privacy);
        privacy = (Privacy)((PacketCollector) (obj)).nextResult(SmackConfiguration.getPacketReplyTimeout());
        ((PacketCollector) (obj)).cancel();
        if (privacy == null)
        {
            throw new XMPPException("No response from server.");
        }
        if (privacy.getError() != null)
        {
            throw new XMPPException(privacy.getError());
        } else
        {
            return privacy;
        }
    }

    private String getUser()
    {
        return connection.getUser();
    }

    private void init()
    {
        instances.put(connection, this);
        connection.addConnectionListener(new ConnectionListener() {

            final PrivacyListManager this$0;

            public void connectionClosed()
            {
                PrivacyListManager.instances.remove(connection);
            }

            public void connectionClosedOnError(Exception exception)
            {
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

            
            {
                this$0 = PrivacyListManager.this;
                super();
            }
        });
        connection.addPacketListener(new PacketListener() {

            final PrivacyListManager this$0;

            public void processPacket(Packet packet)
            {
                Privacy privacy;
                if (packet == null || packet.getError() != null)
                {
                    return;
                }
                privacy = (Privacy)packet;
                Object obj = listeners;
                obj;
                JVM INSTR monitorenter ;
                Iterator iterator = listeners.iterator();
_L4:
                if (!iterator.hasNext())
                {
                    obj = new IQ() {

                        final _cls3 this$1;

                        public String getChildElementXML()
                        {
                            return "";
                        }

            
            {
                this$1 = _cls3.this;
                super();
            }
                    };
                    ((IQ) (obj)).setType(org.jivesoftware.smack.packet.IQ.Type.RESULT);
                    ((IQ) (obj)).setFrom(packet.getFrom());
                    ((IQ) (obj)).setPacketID(packet.getPacketID());
                    connection.sendPacket(((Packet) (obj)));
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
        }, packetFilter);
    }

    private Packet setRequest(Privacy privacy)
        throws XMPPException
    {
        privacy.setType(org.jivesoftware.smack.packet.IQ.Type.SET);
        privacy.setFrom(getUser());
        Object obj = new PacketIDFilter(privacy.getPacketID());
        obj = connection.createPacketCollector(((PacketFilter) (obj)));
        connection.sendPacket(privacy);
        privacy = ((PacketCollector) (obj)).nextResult(SmackConfiguration.getPacketReplyTimeout());
        ((PacketCollector) (obj)).cancel();
        if (privacy == null)
        {
            throw new XMPPException("No response from server.");
        }
        if (privacy.getError() != null)
        {
            throw new XMPPException(privacy.getError());
        } else
        {
            return privacy;
        }
    }

    public void addListener(PrivacyListListener privacylistlistener)
    {
        synchronized (listeners)
        {
            listeners.add(privacylistlistener);
        }
        return;
        privacylistlistener;
        list;
        JVM INSTR monitorexit ;
        throw privacylistlistener;
    }

    public void createPrivacyList(String s, List list)
        throws XMPPException
    {
        updatePrivacyList(s, list);
    }

    public void declineActiveList()
        throws XMPPException
    {
        Privacy privacy = new Privacy();
        privacy.setDeclineActiveList(true);
        setRequest(privacy);
    }

    public void declineDefaultList()
        throws XMPPException
    {
        Privacy privacy = new Privacy();
        privacy.setDeclineDefaultList(true);
        setRequest(privacy);
    }

    public void deletePrivacyList(String s)
        throws XMPPException
    {
        Privacy privacy = new Privacy();
        privacy.setPrivacyList(s, new ArrayList());
        setRequest(privacy);
    }

    public PrivacyList getActiveList()
        throws XMPPException
    {
        Privacy privacy = getPrivacyWithListNames();
        String s = privacy.getActiveName();
        boolean flag;
        if (privacy.getActiveName() != null && privacy.getDefaultName() != null && privacy.getActiveName().equals(privacy.getDefaultName()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return new PrivacyList(true, flag, s, getPrivacyListItems(s));
    }

    public PrivacyList getDefaultList()
        throws XMPPException
    {
        Privacy privacy = getPrivacyWithListNames();
        String s = privacy.getDefaultName();
        boolean flag;
        if (privacy.getActiveName() != null && privacy.getDefaultName() != null && privacy.getActiveName().equals(privacy.getDefaultName()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return new PrivacyList(flag, true, s, getPrivacyListItems(s));
    }

    public PrivacyList getPrivacyList(String s)
        throws XMPPException
    {
        return new PrivacyList(false, false, s, getPrivacyListItems(s));
    }

    public PrivacyList[] getPrivacyLists()
        throws XMPPException
    {
        Privacy privacy = getPrivacyWithListNames();
        Object obj = privacy.getPrivacyListNames();
        PrivacyList aprivacylist[] = new PrivacyList[((Set) (obj)).size()];
        int i = 0;
        obj = ((Set) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                return aprivacylist;
            }
            String s = (String)((Iterator) (obj)).next();
            aprivacylist[i] = new PrivacyList(s.equals(privacy.getActiveName()), s.equals(privacy.getDefaultName()), s, getPrivacyListItems(s));
            i++;
        } while (true);
    }

    public void setActiveListName(String s)
        throws XMPPException
    {
        Privacy privacy = new Privacy();
        privacy.setActiveName(s);
        setRequest(privacy);
    }

    public void setDefaultListName(String s)
        throws XMPPException
    {
        Privacy privacy = new Privacy();
        privacy.setDefaultName(s);
        setRequest(privacy);
    }

    public void updatePrivacyList(String s, List list)
        throws XMPPException
    {
        Privacy privacy = new Privacy();
        privacy.setPrivacyList(s, list);
        setRequest(privacy);
    }

    static 
    {
        Connection.addConnectionCreationListener(new ConnectionCreationListener() {

            public void connectionCreated(Connection connection1)
            {
                new PrivacyListManager(connection1, null);
            }

        });
    }



}
