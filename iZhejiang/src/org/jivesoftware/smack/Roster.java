// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.filter.PacketTypeFilter;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.packet.RosterPacket;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack:
//            Connection, ConnectionConfiguration, RosterListener, RosterEntry, 
//            RosterGroup, XMPPException, SmackConfiguration, PacketCollector, 
//            RosterStorage, PacketListener, ConnectionListener

public class Roster
{
    private class PresencePacketListener
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
            s = getPresenceMapKey(s1);
            if (presence.getType() != org.jivesoftware.smack.packet.Presence.Type.available) goto _L2; else goto _L1
_L1:
            if (presenceMap.get(s) == null)
            {
                packet = new ConcurrentHashMap();
                presenceMap.put(s, packet);
            } else
            {
                packet = (Map)presenceMap.get(s);
            }
            packet.remove("");
            packet.put(StringUtils.parseResource(s1), presence);
            if ((RosterEntry)entries.get(s) != null)
            {
                fireRosterPresenceEvent(presence);
            }
_L4:
            return;
_L2:
            if (presence.getType() != org.jivesoftware.smack.packet.Presence.Type.unavailable)
            {
                break; /* Loop/switch isn't completed */
            }
            if ("".equals(StringUtils.parseResource(s1)))
            {
                if (presenceMap.get(s) == null)
                {
                    packet = new ConcurrentHashMap();
                    presenceMap.put(s, packet);
                } else
                {
                    packet = (Map)presenceMap.get(s);
                }
                packet.put("", presence);
            } else
            if (presenceMap.get(s) != null)
            {
                ((Map)presenceMap.get(s)).put(StringUtils.parseResource(s1), presence);
            }
            if ((RosterEntry)entries.get(s) != null)
            {
                fireRosterPresenceEvent(presence);
                return;
            }
            if (true) goto _L4; else goto _L3
_L3:
            if (presence.getType() != org.jivesoftware.smack.packet.Presence.Type.subscribe)
            {
                break; /* Loop/switch isn't completed */
            }
            if (subscriptionMode == SubscriptionMode.accept_all)
            {
                packet = new Presence(org.jivesoftware.smack.packet.Presence.Type.subscribed);
                packet.setTo(presence.getFrom());
                connection.sendPacket(packet);
                return;
            }
            if (subscriptionMode == SubscriptionMode.reject_all)
            {
                packet = new Presence(org.jivesoftware.smack.packet.Presence.Type.unsubscribed);
                packet.setTo(presence.getFrom());
                connection.sendPacket(packet);
                return;
            }
            if (true) goto _L4; else goto _L5
_L5:
            if (presence.getType() != org.jivesoftware.smack.packet.Presence.Type.unsubscribe)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (subscriptionMode != SubscriptionMode.manual)
            {
                packet = new Presence(org.jivesoftware.smack.packet.Presence.Type.unsubscribed);
                packet.setTo(presence.getFrom());
                connection.sendPacket(packet);
                return;
            }
            continue; /* Loop/switch isn't completed */
            if (presence.getType() != org.jivesoftware.smack.packet.Presence.Type.error || !"".equals(StringUtils.parseResource(s1))) goto _L4; else goto _L6
_L6:
            if (!presenceMap.containsKey(s))
            {
                packet = new ConcurrentHashMap();
                presenceMap.put(s, packet);
            } else
            {
                packet = (Map)presenceMap.get(s);
                packet.clear();
            }
            packet.put("", presence);
            if ((RosterEntry)entries.get(s) != null)
            {
                fireRosterPresenceEvent(presence);
                return;
            }
            if (true) goto _L4; else goto _L7
_L7:
        }

        private PresencePacketListener()
        {
            this$0 = Roster.this;
            super();
        }

        PresencePacketListener(PresencePacketListener presencepacketlistener)
        {
            this();
        }
    }

    private class RosterPacketListener
        implements PacketListener
    {

        final Roster this$0;

        public void processPacket(Packet packet)
        {
            Iterator iterator;
            ArrayList arraylist;
            ArrayList arraylist1;
            ArrayList arraylist2;
            RosterPacket rosterpacket;
            ArrayList arraylist3;
            arraylist = new ArrayList();
            arraylist1 = new ArrayList();
            arraylist2 = new ArrayList();
            iterator = null;
            rosterpacket = (RosterPacket)packet;
            arraylist3 = new ArrayList();
            packet = rosterpacket.getRosterItems().iterator();
_L14:
            if (packet.hasNext()) goto _L2; else goto _L1
_L1:
            if (rosterpacket.getVersion() == null)
            {
                persistentStorage = null;
                packet = iterator;
            } else
            {
                packet = rosterpacket.getVersion();
            }
            if (persistentStorage == null || rosterInitialized) goto _L4; else goto _L3
_L3:
            iterator = persistentStorage.getEntries().iterator();
_L10:
            if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
            iterator = arraylist3.iterator();
_L11:
            if (iterator.hasNext()) goto _L7; else goto _L6
_L6:
            if (persistentStorage == null) goto _L9; else goto _L8
_L8:
            iterator = rosterpacket.getRosterItems().iterator();
_L12:
            if (iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_289;
            }
_L9:
            synchronized (Roster.this)
            {
                rosterInitialized = true;
                notifyAll();
            }
            fireRosterChangedEvent(arraylist, arraylist1, arraylist2);
            return;
_L2:
            arraylist3.add((org.jivesoftware.smack.packet.RosterPacket.Item)packet.next());
            continue; /* Loop/switch isn't completed */
_L5:
            arraylist3.add((org.jivesoftware.smack.packet.RosterPacket.Item)iterator.next());
              goto _L10
_L7:
            org.jivesoftware.smack.packet.RosterPacket.Item item1 = (org.jivesoftware.smack.packet.RosterPacket.Item)iterator.next();
            insertRosterItem(item1, arraylist, arraylist1, arraylist2);
              goto _L11
            org.jivesoftware.smack.packet.RosterPacket.Item item = (org.jivesoftware.smack.packet.RosterPacket.Item)iterator.next();
            if (item.getItemType().equals(org.jivesoftware.smack.packet.RosterPacket.ItemType.remove))
            {
                persistentStorage.removeEntry(item.getUser());
            } else
            {
                persistentStorage.addEntry(item, packet);
            }
              goto _L12
            exception;
            packet;
            JVM INSTR monitorexit ;
            throw exception;
            if (true) goto _L14; else goto _L13
_L13:
        }

        private RosterPacketListener()
        {
            this$0 = Roster.this;
            super();
        }

        RosterPacketListener(RosterPacketListener rosterpacketlistener)
        {
            this();
        }
    }

    private class RosterResultListener
        implements PacketListener
    {

        final Roster this$0;

        public void processPacket(Packet packet)
        {
            if (!(packet instanceof IQ)) goto _L2; else goto _L1
_L1:
            packet = (IQ)packet;
            if (!packet.getType().equals(org.jivesoftware.smack.packet.IQ.Type.RESULT) || !packet.getExtensions().isEmpty()) goto _L2; else goto _L3
_L3:
            ArrayList arraylist;
            ArrayList arraylist1;
            packet = new ArrayList();
            arraylist = new ArrayList();
            arraylist1 = new ArrayList();
            if (persistentStorage == null) goto _L2; else goto _L4
_L4:
            obj = persistentStorage.getEntries().iterator();
_L8:
            if (((Iterator) (obj)).hasNext()) goto _L6; else goto _L5
_L5:
            synchronized (Roster.this)
            {
                rosterInitialized = true;
                notifyAll();
            }
            fireRosterChangedEvent(packet, arraylist, arraylist1);
_L2:
            connection.removePacketListener(this);
            return;
_L6:
            org.jivesoftware.smack.packet.RosterPacket.Item item = (org.jivesoftware.smack.packet.RosterPacket.Item)((Iterator) (obj)).next();
            insertRosterItem(item, packet, arraylist, arraylist1);
            if (true) goto _L8; else goto _L7
_L7:
            packet;
            obj;
            JVM INSTR monitorexit ;
            throw packet;
        }

        private RosterResultListener()
        {
            this$0 = Roster.this;
            super();
        }

        RosterResultListener(RosterResultListener rosterresultlistener)
        {
            this();
        }
    }

    public static final class SubscriptionMode extends Enum
    {

        private static final SubscriptionMode ENUM$VALUES[];
        public static final SubscriptionMode accept_all;
        public static final SubscriptionMode manual;
        public static final SubscriptionMode reject_all;

        public static SubscriptionMode valueOf(String s)
        {
            return (SubscriptionMode)Enum.valueOf(org/jivesoftware/smack/Roster$SubscriptionMode, s);
        }

        public static SubscriptionMode[] values()
        {
            SubscriptionMode asubscriptionmode[] = ENUM$VALUES;
            int i = asubscriptionmode.length;
            SubscriptionMode asubscriptionmode1[] = new SubscriptionMode[i];
            System.arraycopy(asubscriptionmode, 0, asubscriptionmode1, 0, i);
            return asubscriptionmode1;
        }

        static 
        {
            accept_all = new SubscriptionMode("accept_all", 0);
            reject_all = new SubscriptionMode("reject_all", 1);
            manual = new SubscriptionMode("manual", 2);
            ENUM$VALUES = (new SubscriptionMode[] {
                accept_all, reject_all, manual
            });
        }

        private SubscriptionMode(String s, int i)
        {
            super(s, i);
        }
    }


    private static SubscriptionMode defaultSubscriptionMode;
    private Connection connection;
    private final Map entries;
    private final Map groups;
    private RosterStorage persistentStorage;
    private Map presenceMap;
    private PresencePacketListener presencePacketListener;
    private String requestPacketId;
    boolean rosterInitialized;
    private final List rosterListeners;
    private SubscriptionMode subscriptionMode;
    private final List unfiledEntries;

    Roster(Connection connection1)
    {
        rosterInitialized = false;
        subscriptionMode = getDefaultSubscriptionMode();
        connection = connection1;
        if (!connection1.getConfiguration().isRosterVersioningAvailable())
        {
            persistentStorage = null;
        }
        groups = new ConcurrentHashMap();
        unfiledEntries = new CopyOnWriteArrayList();
        entries = new ConcurrentHashMap();
        rosterListeners = new CopyOnWriteArrayList();
        presenceMap = new ConcurrentHashMap();
        PacketTypeFilter packettypefilter = new PacketTypeFilter(org/jivesoftware/smack/packet/RosterPacket);
        connection1.addPacketListener(new RosterPacketListener(null), packettypefilter);
        packettypefilter = new PacketTypeFilter(org/jivesoftware/smack/packet/Presence);
        presencePacketListener = new PresencePacketListener(null);
        connection1.addPacketListener(presencePacketListener, packettypefilter);
        connection1.addConnectionListener(new ConnectionListener() {

            final Roster this$0;

            public void connectionClosed()
            {
                setOfflinePresences();
            }

            public void connectionClosedOnError(Exception exception)
            {
                setOfflinePresences();
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
                this$0 = Roster.this;
                super();
            }
        });
    }

    Roster(Connection connection1, RosterStorage rosterstorage)
    {
        this(connection1);
        persistentStorage = rosterstorage;
    }

    private void fireRosterChangedEvent(Collection collection, Collection collection1, Collection collection2)
    {
        Iterator iterator = rosterListeners.iterator();
        do
        {
            RosterListener rosterlistener;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                rosterlistener = (RosterListener)iterator.next();
                if (!collection.isEmpty())
                {
                    rosterlistener.entriesAdded(collection);
                }
                if (!collection1.isEmpty())
                {
                    rosterlistener.entriesUpdated(collection1);
                }
            } while (collection2.isEmpty());
            rosterlistener.entriesDeleted(collection2);
        } while (true);
    }

    private void fireRosterPresenceEvent(Presence presence)
    {
        Iterator iterator = rosterListeners.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((RosterListener)iterator.next()).presenceChanged(presence);
        } while (true);
    }

    public static SubscriptionMode getDefaultSubscriptionMode()
    {
        return defaultSubscriptionMode;
    }

    private String getPresenceMapKey(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1 = s;
        if (!contains(s))
        {
            s1 = StringUtils.parseBareAddress(s);
        }
        return s1.toLowerCase();
    }

    private void insertRosterItem(org.jivesoftware.smack.packet.RosterPacket.Item item, Collection collection, Collection collection1, Collection collection2)
    {
        RosterEntry rosterentry;
        Iterator iterator;
        rosterentry = new RosterEntry(item.getUser(), item.getName(), item.getItemType(), item.getItemStatus(), this, connection);
        if (org.jivesoftware.smack.packet.RosterPacket.ItemType.remove.equals(item.getItemType()))
        {
            if (entries.containsKey(item.getUser()))
            {
                entries.remove(item.getUser());
            }
            if (unfiledEntries.contains(rosterentry))
            {
                unfiledEntries.remove(rosterentry);
            }
            collection = (new StringBuilder(String.valueOf(StringUtils.parseName(item.getUser())))).append("@").append(StringUtils.parseServer(item.getUser())).toString();
            presenceMap.remove(collection);
            if (collection2 != null)
            {
                collection2.add(item.getUser());
            }
        } else
        {
            if (!entries.containsKey(item.getUser()))
            {
                entries.put(item.getUser(), rosterentry);
                if (collection != null)
                {
                    collection.add(item.getUser());
                }
            } else
            {
                entries.put(item.getUser(), rosterentry);
                if (collection1 != null)
                {
                    collection1.add(item.getUser());
                }
            }
            if (!item.getGroupNames().isEmpty())
            {
                unfiledEntries.remove(rosterentry);
            } else
            if (!unfiledEntries.contains(rosterentry))
            {
                unfiledEntries.add(rosterentry);
            }
        }
        collection1 = new ArrayList();
        collection = getGroups().iterator();
_L10:
        if (collection.hasNext()) goto _L2; else goto _L1
_L1:
        if (org.jivesoftware.smack.packet.RosterPacket.ItemType.remove.equals(item.getItemType())) goto _L4; else goto _L3
_L3:
        collection2 = new ArrayList();
        iterator = item.getGroupNames().iterator();
_L11:
        if (iterator.hasNext()) goto _L6; else goto _L5
_L5:
        item = collection2.iterator();
_L12:
        if (item.hasNext()) goto _L7; else goto _L4
_L4:
        item = collection1.iterator();
_L13:
        if (item.hasNext()) goto _L9; else goto _L8
_L8:
        item = getGroups().iterator();
_L14:
        if (!item.hasNext())
        {
            return;
        }
        break MISSING_BLOCK_LABEL_586;
_L2:
        collection2 = (RosterGroup)collection.next();
        if (collection2.contains(rosterentry))
        {
            collection1.add(collection2.getName());
        }
          goto _L10
_L6:
        String s = (String)iterator.next();
        collection2.add(s);
        collection = getGroup(s);
        item = collection;
        if (collection == null)
        {
            item = createGroup(s);
            groups.put(s, item);
        }
        item.addEntryLocal(rosterentry);
          goto _L11
_L7:
        collection1.remove((String)item.next());
          goto _L12
_L9:
        collection = (String)item.next();
        collection1 = getGroup(collection);
        collection1.removeEntryLocal(rosterentry);
        if (collection1.getEntryCount() == 0)
        {
            groups.remove(collection);
        }
          goto _L13
        collection = (RosterGroup)item.next();
        if (collection.getEntryCount() == 0)
        {
            groups.remove(collection.getName());
        }
          goto _L14
    }

    private void insertRosterItems(List list)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                fireRosterChangedEvent(arraylist, arraylist1, arraylist2);
                return;
            }
            insertRosterItem((org.jivesoftware.smack.packet.RosterPacket.Item)list.next(), arraylist, arraylist1, arraylist2);
        } while (true);
    }

    public static void setDefaultSubscriptionMode(SubscriptionMode subscriptionmode)
    {
        defaultSubscriptionMode = subscriptionmode;
    }

    private void setOfflinePresences()
    {
        Iterator iterator = presenceMap.keySet().iterator();
        do
        {
            String s;
            Object obj;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                s = (String)iterator.next();
                obj = (Map)presenceMap.get(s);
            } while (obj == null);
            obj = ((Map) (obj)).keySet().iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                String s1 = (String)((Iterator) (obj)).next();
                Presence presence = new Presence(org.jivesoftware.smack.packet.Presence.Type.unavailable);
                presence.setFrom((new StringBuilder(String.valueOf(s))).append("/").append(s1).toString());
                presencePacketListener.processPacket(presence);
            }
        } while (true);
    }

    public void addRosterListener(RosterListener rosterlistener)
    {
        if (!rosterListeners.contains(rosterlistener))
        {
            rosterListeners.add(rosterlistener);
        }
    }

    void cleanup()
    {
        rosterListeners.clear();
    }

    public boolean contains(String s)
    {
        return getEntry(s) != null;
    }

    public void createEntry(String s, String s1, String as[])
        throws XMPPException
    {
        RosterPacket rosterpacket;
        rosterpacket = new RosterPacket();
        rosterpacket.setType(org.jivesoftware.smack.packet.IQ.Type.SET);
        s1 = new org.jivesoftware.smack.packet.RosterPacket.Item(s, s1);
        if (as == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        j = as.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        rosterpacket.addRosterItem(s1);
        s1 = connection.createPacketCollector(new PacketIDFilter(rosterpacket.getPacketID()));
        connection.sendPacket(rosterpacket);
        as = (IQ)s1.nextResult(SmackConfiguration.getPacketReplyTimeout());
        s1.cancel();
        if (as == null)
        {
            throw new XMPPException("No response from the server.");
        }
        break; /* Loop/switch isn't completed */
_L3:
        String s2 = as[i];
        if (s2 != null && s2.trim().length() > 0)
        {
            s1.addGroupName(s2);
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        if (as.getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(as.getError());
        } else
        {
            s1 = new Presence(org.jivesoftware.smack.packet.Presence.Type.subscribe);
            s1.setTo(s);
            connection.sendPacket(s1);
            return;
        }
    }

    public RosterGroup createGroup(String s)
    {
        if (groups.containsKey(s))
        {
            throw new IllegalArgumentException((new StringBuilder("Group with name ")).append(s).append(" alread exists.").toString());
        } else
        {
            RosterGroup rostergroup = new RosterGroup(s, connection);
            groups.put(s, rostergroup);
            return rostergroup;
        }
    }

    public Collection getEntries()
    {
        HashSet hashset = new HashSet();
        Iterator iterator = getGroups().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                hashset.addAll(unfiledEntries);
                return Collections.unmodifiableCollection(hashset);
            }
            hashset.addAll(((RosterGroup)iterator.next()).getEntries());
        } while (true);
    }

    public RosterEntry getEntry(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return (RosterEntry)entries.get(s.toLowerCase());
        }
    }

    public int getEntryCount()
    {
        return getEntries().size();
    }

    public RosterGroup getGroup(String s)
    {
        return (RosterGroup)groups.get(s);
    }

    public int getGroupCount()
    {
        return groups.size();
    }

    public Collection getGroups()
    {
        return Collections.unmodifiableCollection(groups.values());
    }

    public Presence getPresence(String s)
    {
        Object obj = getPresenceMapKey(StringUtils.parseBareAddress(s));
        Map map = (Map)presenceMap.get(obj);
        if (map == null)
        {
            obj = new Presence(org.jivesoftware.smack.packet.Presence.Type.unavailable);
            ((Presence) (obj)).setFrom(s);
            return ((Presence) (obj));
        }
        obj = null;
        Iterator iterator = map.keySet().iterator();
        do
        {
            do
            {
                Presence presence;
                org.jivesoftware.smack.packet.Presence.Mode mode;
                org.jivesoftware.smack.packet.Presence.Mode mode1;
                org.jivesoftware.smack.packet.Presence.Mode mode2;
                if (!iterator.hasNext())
                {
                    if (obj == null)
                    {
                        obj = new Presence(org.jivesoftware.smack.packet.Presence.Type.unavailable);
                        ((Presence) (obj)).setFrom(s);
                        return ((Presence) (obj));
                    } else
                    {
                        return ((Presence) (obj));
                    }
                }
                presence = (Presence)map.get((String)iterator.next());
            } while (!presence.isAvailable());
            if (obj == null || presence.getPriority() > ((Presence) (obj)).getPriority())
            {
                obj = presence;
            } else
            if (presence.getPriority() == ((Presence) (obj)).getPriority())
            {
                mode1 = presence.getMode();
                mode = mode1;
                if (mode1 == null)
                {
                    mode = org.jivesoftware.smack.packet.Presence.Mode.available;
                }
                mode2 = ((Presence) (obj)).getMode();
                mode1 = mode2;
                if (mode2 == null)
                {
                    mode1 = org.jivesoftware.smack.packet.Presence.Mode.available;
                }
                if (mode.compareTo(mode1) < 0)
                {
                    obj = presence;
                }
            }
        } while (true);
    }

    public Presence getPresenceResource(String s)
    {
        Object obj1 = getPresenceMapKey(s);
        Object obj = StringUtils.parseResource(s);
        obj1 = (Map)presenceMap.get(obj1);
        if (obj1 == null)
        {
            obj = new Presence(org.jivesoftware.smack.packet.Presence.Type.unavailable);
            ((Presence) (obj)).setFrom(s);
            return ((Presence) (obj));
        }
        obj = (Presence)((Map) (obj1)).get(obj);
        if (obj == null)
        {
            obj = new Presence(org.jivesoftware.smack.packet.Presence.Type.unavailable);
            ((Presence) (obj)).setFrom(s);
            return ((Presence) (obj));
        } else
        {
            return ((Presence) (obj));
        }
    }

    public Iterator getPresences(String s)
    {
        Object obj = getPresenceMapKey(s);
        Object obj1 = (Map)presenceMap.get(obj);
        if (obj1 == null)
        {
            obj = new Presence(org.jivesoftware.smack.packet.Presence.Type.unavailable);
            ((Presence) (obj)).setFrom(s);
            return Arrays.asList(new Presence[] {
                obj
            }).iterator();
        }
        obj = new ArrayList();
        obj1 = ((Map) (obj1)).values().iterator();
        do
        {
            do
            {
                Presence presence1;
                if (!((Iterator) (obj1)).hasNext())
                {
                    if (!((Collection) (obj)).isEmpty())
                    {
                        return ((Collection) (obj)).iterator();
                    } else
                    {
                        Presence presence = new Presence(org.jivesoftware.smack.packet.Presence.Type.unavailable);
                        presence.setFrom(s);
                        return Arrays.asList(new Presence[] {
                            presence
                        }).iterator();
                    }
                }
                presence1 = (Presence)((Iterator) (obj1)).next();
            } while (!presence1.isAvailable());
            ((Collection) (obj)).add(presence1);
        } while (true);
    }

    public SubscriptionMode getSubscriptionMode()
    {
        return subscriptionMode;
    }

    public Collection getUnfiledEntries()
    {
        return Collections.unmodifiableList(unfiledEntries);
    }

    public int getUnfiledEntryCount()
    {
        return unfiledEntries.size();
    }

    public void reload()
    {
        RosterPacket rosterpacket = new RosterPacket();
        if (persistentStorage != null)
        {
            rosterpacket.setVersion(persistentStorage.getRosterVersion());
        }
        requestPacketId = rosterpacket.getPacketID();
        PacketIDFilter packetidfilter = new PacketIDFilter(requestPacketId);
        connection.addPacketListener(new RosterResultListener(null), packetidfilter);
        connection.sendPacket(rosterpacket);
    }

    public void removeEntry(RosterEntry rosterentry)
        throws XMPPException
    {
        if (entries.containsKey(rosterentry.getUser()))
        {
            Object obj = new RosterPacket();
            ((RosterPacket) (obj)).setType(org.jivesoftware.smack.packet.IQ.Type.SET);
            rosterentry = RosterEntry.toRosterItem(rosterentry);
            rosterentry.setItemType(org.jivesoftware.smack.packet.RosterPacket.ItemType.remove);
            ((RosterPacket) (obj)).addRosterItem(rosterentry);
            rosterentry = connection.createPacketCollector(new PacketIDFilter(((RosterPacket) (obj)).getPacketID()));
            connection.sendPacket(((Packet) (obj)));
            obj = (IQ)rosterentry.nextResult(SmackConfiguration.getPacketReplyTimeout());
            rosterentry.cancel();
            if (obj == null)
            {
                throw new XMPPException("No response from the server.");
            }
            if (((IQ) (obj)).getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
            {
                throw new XMPPException(((IQ) (obj)).getError());
            }
        }
    }

    public void removeRosterListener(RosterListener rosterlistener)
    {
        rosterListeners.remove(rosterlistener);
    }

    public void setSubscriptionMode(SubscriptionMode subscriptionmode)
    {
        subscriptionMode = subscriptionmode;
    }

    static 
    {
        defaultSubscriptionMode = SubscriptionMode.accept_all;
    }











}
