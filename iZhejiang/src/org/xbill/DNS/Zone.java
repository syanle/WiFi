// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;

// Referenced classes of package org.xbill.DNS:
//            ZoneTransferException, ZoneTransferIn, Master, Name, 
//            RRset, Record, SetResponse, SOARecord

public class Zone
    implements Serializable
{
    class ZoneIterator
        implements Iterator
    {

        private int count;
        private RRset current[];
        final Zone this$0;
        private boolean wantLastSOA;
        private Iterator zentries;

        public boolean hasNext()
        {
            return current != null || wantLastSOA;
        }

        public Object next()
        {
            if (!hasNext())
            {
                throw new NoSuchElementException();
            }
            if (current != null) goto _L2; else goto _L1
_L1:
            Object obj;
            wantLastSOA = false;
            obj = oneRRset(originNode, 6);
_L4:
            return obj;
_L2:
            obj = current;
            int i = count;
            count = i + 1;
            RRset rrset = obj[i];
            obj = rrset;
            if (count != current.length)
            {
                continue; /* Loop/switch isn't completed */
            }
            current = null;
            do
            {
                obj = rrset;
                if (!zentries.hasNext())
                {
                    continue; /* Loop/switch isn't completed */
                }
                obj = (java.util.Map.Entry)zentries.next();
                if (!((java.util.Map.Entry) (obj)).getKey().equals(origin))
                {
                    RRset arrset[] = allRRsets(((java.util.Map.Entry) (obj)).getValue());
                    if (arrset.length != 0)
                    {
                        current = arrset;
                        count = 0;
                        return rrset;
                    }
                }
            } while (true);
            if (true) goto _L4; else goto _L3
_L3:
        }

        public void remove()
        {
            throw new UnsupportedOperationException();
        }

        ZoneIterator(boolean flag)
        {
            this$0 = Zone.this;
            super();
            Zone.this;
            JVM INSTR monitorenter ;
            zentries = data.entrySet().iterator();
            Zone.this;
            JVM INSTR monitorexit ;
            int i;
            int j;
            wantLastSOA = flag;
            zone = allRRsets(originNode);
            current = new RRset[Zone.this.length];
            i = 0;
            j = 2;
_L2:
            if (i >= Zone.this.length)
            {
                return;
            }
            break MISSING_BLOCK_LABEL_73;
            Exception exception;
            exception;
            Zone.this;
            JVM INSTR monitorexit ;
            throw exception;
            int k;
            k = Zone.this[i].getType();
            if (k != 6)
            {
                break; /* Loop/switch isn't completed */
            }
            current[0] = Zone.this[i];
_L4:
            i++;
            if (true) goto _L2; else goto _L1
_L1:
            if (k == 2)
            {
                current[1] = Zone.this[i];
            } else
            {
                current[j] = Zone.this[i];
                j++;
            }
            if (true) goto _L4; else goto _L3
_L3:
            if (true) goto _L2; else goto _L5
_L5:
        }
    }


    public static final int PRIMARY = 1;
    public static final int SECONDARY = 2;
    private static final long serialVersionUID = 0x800a2a3263075ce2L;
    private RRset NS;
    private SOARecord SOA;
    private Map data;
    private int dclass;
    private boolean hasWild;
    private Name origin;
    private Object originNode;

    public Zone(Name name, int i, String s)
        throws IOException, ZoneTransferException
    {
        dclass = 1;
        name = ZoneTransferIn.newAXFR(name, s, null);
        name.setDClass(i);
        fromXFR(name);
    }

    public Zone(Name name, String s)
        throws IOException
    {
        dclass = 1;
        data = new TreeMap();
        if (name == null)
        {
            throw new IllegalArgumentException("no zone name specified");
        }
        s = new Master(s, name);
        origin = name;
        do
        {
            name = s.nextRecord();
            if (name == null)
            {
                validate();
                return;
            }
            maybeAddRecord(name);
        } while (true);
    }

    public Zone(Name name, Record arecord[])
        throws IOException
    {
        dclass = 1;
        data = new TreeMap();
        if (name == null)
        {
            throw new IllegalArgumentException("no zone name specified");
        }
        origin = name;
        int i = 0;
        do
        {
            if (i >= arecord.length)
            {
                validate();
                return;
            }
            maybeAddRecord(arecord[i]);
            i++;
        } while (true);
    }

    public Zone(ZoneTransferIn zonetransferin)
        throws IOException, ZoneTransferException
    {
        dclass = 1;
        fromXFR(zonetransferin);
    }

    private void addRRset(Name name, RRset rrset)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        if (!hasWild && name.isWild())
        {
            hasWild = true;
        }
        obj = data.get(name);
        if (obj != null) goto _L2; else goto _L1
_L1:
        data.put(name, rrset);
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        int j = rrset.getType();
        if (!(obj instanceof List)) goto _L4; else goto _L3
_L3:
        name = (List)obj;
        int i = 0;
_L6:
        if (i < name.size())
        {
            break MISSING_BLOCK_LABEL_99;
        }
        name.add(rrset);
          goto _L5
        name;
        throw name;
        if (((RRset)name.get(i)).getType() != j)
        {
            break MISSING_BLOCK_LABEL_199;
        }
        name.set(i, rrset);
          goto _L5
_L4:
label0:
        {
            obj = (RRset)obj;
            if (((RRset) (obj)).getType() != j)
            {
                break label0;
            }
            data.put(name, rrset);
        }
          goto _L5
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(obj);
        linkedlist.add(rrset);
        data.put(name, linkedlist);
          goto _L5
        i++;
          goto _L6
    }

    private RRset[] allRRsets(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        obj = (List)obj;
        obj = (RRset[])((List) (obj)).toArray(new RRset[((List) (obj)).size()]);
_L4:
        this;
        JVM INSTR monitorexit ;
        return ((RRset []) (obj));
_L2:
        RRset rrset;
        rrset = (RRset)obj;
        obj = new RRset[1];
        obj[0] = rrset;
        if (true) goto _L4; else goto _L3
_L3:
        obj;
        throw obj;
    }

    private Object exactName(Name name)
    {
        this;
        JVM INSTR monitorenter ;
        name = ((Name) (data.get(name)));
        this;
        JVM INSTR monitorexit ;
        return name;
        name;
        throw name;
    }

    private RRset findRRset(Name name, int i)
    {
        this;
        JVM INSTR monitorenter ;
        name = ((Name) (exactName(name)));
        if (name != null) goto _L2; else goto _L1
_L1:
        name = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return name;
_L2:
        name = oneRRset(name, i);
        if (true) goto _L4; else goto _L3
_L3:
        name;
        throw name;
    }

    private void fromXFR(ZoneTransferIn zonetransferin)
        throws IOException, ZoneTransferException
    {
        data = new TreeMap();
        origin = zonetransferin.getName();
        Iterator iterator1 = zonetransferin.run().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                if (!zonetransferin.isAXFR())
                {
                    throw new IllegalArgumentException("zones can only be created from AXFRs");
                } else
                {
                    validate();
                    return;
                }
            }
            maybeAddRecord((Record)iterator1.next());
        } while (true);
    }

    private SetResponse lookup(Name name, int i)
    {
        this;
        JVM INSTR monitorenter ;
        if (name.subdomain(origin)) goto _L2; else goto _L1
_L1:
        name = SetResponse.ofType(1);
_L8:
        this;
        JVM INSTR monitorexit ;
        return name;
_L2:
        int k;
        int l;
        l = name.labels();
        k = origin.labels();
        int j = k;
_L19:
        if (j <= l) goto _L4; else goto _L3
_L3:
        if (!hasWild) goto _L6; else goto _L5
_L5:
        j = 0;
          goto _L7
_L6:
        name = SetResponse.ofType(1);
          goto _L8
_L18:
        boolean flag;
        if (!flag) goto _L10; else goto _L9
_L9:
        Object obj = origin;
_L13:
        Object obj1 = exactName(((Name) (obj)));
        if (obj1 != null) goto _L12; else goto _L11
_L21:
        obj = new Name(name, l - j);
          goto _L13
_L12:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_146;
        }
        obj = oneRRset(obj1, 2);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_146;
        }
        name = new SetResponse(3, ((RRset) (obj)));
          goto _L8
        name;
        throw name;
        boolean flag1;
        if (!flag1 || i != 255)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        obj = new SetResponse(6);
        obj1 = allRRsets(obj1);
        i = 0;
_L15:
        name = ((Name) (obj));
        if (i >= obj1.length) goto _L8; else goto _L14
_L14:
        ((SetResponse) (obj)).addRRset(obj1[i]);
        i++;
          goto _L15
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_262;
        }
        obj = oneRRset(obj1, i);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_237;
        }
        name = new SetResponse(6);
        name.addRRset(((RRset) (obj)));
          goto _L8
        obj = oneRRset(obj1, 5);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_288;
        }
        name = new SetResponse(4, ((RRset) (obj)));
          goto _L8
        obj = oneRRset(obj1, 39);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_288;
        }
        name = new SetResponse(5, ((RRset) (obj)));
          goto _L8
        if (!flag1) goto _L11; else goto _L16
_L16:
        name = SetResponse.ofType(2);
          goto _L8
_L17:
        obj = exactName(name.wild(j + 1));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_417;
        }
        obj = oneRRset(obj, i);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_417;
        }
        name = new SetResponse(6);
        name.addRRset(((RRset) (obj)));
          goto _L8
_L7:
        if (j < l - k) goto _L17; else goto _L6
_L4:
        if (j == k)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (j == l)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
          goto _L18
_L11:
        j++;
          goto _L19
_L10:
        if (!flag1) goto _L21; else goto _L20
_L20:
        obj = name;
          goto _L13
        j++;
          goto _L7
    }

    private final void maybeAddRecord(Record record)
        throws IOException
    {
        int i = record.getType();
        Name name = record.getName();
        if (i == 6 && !name.equals(origin))
        {
            throw new IOException((new StringBuilder("SOA owner ")).append(name).append(" does not match zone origin ").append(origin).toString());
        }
        if (name.subdomain(origin))
        {
            addRecord(record);
        }
    }

    private void nodeToString(StringBuffer stringbuffer, Object obj)
    {
        obj = allRRsets(obj);
        int i = 0;
        do
        {
label0:
            {
                if (i >= obj.length)
                {
                    return;
                }
                Object obj1 = obj[i];
                for (Iterator iterator1 = ((RRset) (obj1)).rrs(); iterator1.hasNext(); stringbuffer.append((new StringBuilder()).append(iterator1.next()).append("\n").toString()))
                {
                    break label0;
                }

                for (obj1 = ((RRset) (obj1)).sigs(); ((Iterator) (obj1)).hasNext(); stringbuffer.append((new StringBuilder()).append(((Iterator) (obj1)).next()).append("\n").toString()))
                {
                    break MISSING_BLOCK_LABEL_95;
                }

                i++;
            }
        } while (true);
    }

    private RRset oneRRset(Object obj, int i)
    {
        this;
        JVM INSTR monitorenter ;
        if (i != 255)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        throw new IllegalArgumentException("oneRRset(ANY)");
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        List list = (List)obj;
        int j = 0;
_L7:
        int k = list.size();
        if (j < k) goto _L4; else goto _L3
_L3:
        obj = null;
_L6:
        this;
        JVM INSTR monitorexit ;
        return ((RRset) (obj));
_L4:
        RRset rrset = (RRset)list.get(j);
        obj = rrset;
        if (rrset.getType() == i) goto _L6; else goto _L5
_L5:
        j++;
          goto _L7
_L2:
        obj = (RRset)obj;
        j = ((RRset) (obj)).getType();
        if (j != i) goto _L3; else goto _L6
    }

    private void removeRRset(Name name, int i)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = data.get(name);
        if (obj != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!(obj instanceof List)) goto _L4; else goto _L3
_L3:
        obj = (List)obj;
        int j = 0;
_L6:
        if (j >= ((List) (obj)).size()) goto _L1; else goto _L5
_L5:
        if (((RRset)((List) (obj)).get(j)).getType() != i)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        ((List) (obj)).remove(j);
        if (((List) (obj)).size() == 0)
        {
            data.remove(name);
        }
          goto _L1
        name;
        throw name;
        j++;
          goto _L6
_L4:
        if (((RRset)obj).getType() != i) goto _L1; else goto _L7
_L7:
        data.remove(name);
          goto _L1
    }

    private void validate()
        throws IOException
    {
        originNode = exactName(origin);
        if (originNode == null)
        {
            throw new IOException((new StringBuilder()).append(origin).append(": no data specified").toString());
        }
        RRset rrset = oneRRset(originNode, 6);
        if (rrset == null || rrset.size() != 1)
        {
            throw new IOException((new StringBuilder()).append(origin).append(": exactly 1 SOA must be specified").toString());
        }
        SOA = (SOARecord)rrset.rrs().next();
        NS = oneRRset(originNode, 2);
        if (NS == null)
        {
            throw new IOException((new StringBuilder()).append(origin).append(": no NS set specified").toString());
        } else
        {
            return;
        }
    }

    public Iterator AXFR()
    {
        return new ZoneIterator(true);
    }

    public void addRRset(RRset rrset)
    {
        addRRset(rrset.getName(), rrset);
    }

    public void addRecord(Record record)
    {
        Name name = record.getName();
        int i = record.getRRsetType();
        this;
        JVM INSTR monitorenter ;
        RRset rrset = findRRset(name, i);
        if (rrset != null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        addRRset(name, new RRset(record));
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        rrset.addRR(record);
        if (true) goto _L2; else goto _L1
_L1:
        record;
        this;
        JVM INSTR monitorexit ;
        throw record;
    }

    public RRset findExactMatch(Name name, int i)
    {
        name = ((Name) (exactName(name)));
        if (name == null)
        {
            return null;
        } else
        {
            return oneRRset(name, i);
        }
    }

    public SetResponse findRecords(Name name, int i)
    {
        return lookup(name, i);
    }

    public int getDClass()
    {
        return dclass;
    }

    public RRset getNS()
    {
        return NS;
    }

    public Name getOrigin()
    {
        return origin;
    }

    public SOARecord getSOA()
    {
        return SOA;
    }

    public Iterator iterator()
    {
        return new ZoneIterator(false);
    }

    public void removeRecord(Record record)
    {
        Name name = record.getName();
        int i = record.getRRsetType();
        this;
        JVM INSTR monitorenter ;
        RRset rrset = findRRset(name, i);
        if (rrset != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        if (rrset.size() != 1 || !rrset.first().equals(record))
        {
            break MISSING_BLOCK_LABEL_62;
        }
        removeRRset(name, i);
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        record;
        this;
        JVM INSTR monitorexit ;
        throw record;
        rrset.deleteRR(record);
          goto _L1
    }

    public String toMasterFile()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        StringBuffer stringbuffer;
        obj = data.entrySet().iterator();
        stringbuffer = new StringBuffer();
        nodeToString(stringbuffer, originNode);
_L1:
        if (((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_52;
        }
        obj = stringbuffer.toString();
        this;
        JVM INSTR monitorexit ;
        return ((String) (obj));
        java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj)).next();
        if (!origin.equals(entry.getKey()))
        {
            nodeToString(stringbuffer, entry.getValue());
        }
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public String toString()
    {
        return toMasterFile();
    }





}
