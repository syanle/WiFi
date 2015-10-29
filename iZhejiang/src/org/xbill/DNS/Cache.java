// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.PrintStream;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

// Referenced classes of package org.xbill.DNS:
//            Master, SetResponse, RRset, Record, 
//            NameTooLongException, Message, Header, Options, 
//            SOARecord, Name, CNAMERecord, DNAMERecord, 
//            Type

public class Cache
{
    private static class CacheMap extends LinkedHashMap
    {

        private int maxsize;

        int getMaxSize()
        {
            return maxsize;
        }

        protected boolean removeEldestEntry(java.util.Map.Entry entry)
        {
            return maxsize >= 0 && size() > maxsize;
        }

        void setMaxSize(int i)
        {
            maxsize = i;
        }

        CacheMap(int i)
        {
            super(16, 0.75F, true);
            maxsize = -1;
            maxsize = i;
        }
    }

    private static class CacheRRset extends RRset
        implements Element
    {

        private static final long serialVersionUID = 0x52dfefb855793de0L;
        int credibility;
        int expire;

        public final int compareCredibility(int i)
        {
            return credibility - i;
        }

        public final boolean expired()
        {
            return (int)(System.currentTimeMillis() / 1000L) >= expire;
        }

        public String toString()
        {
            StringBuffer stringbuffer = new StringBuffer();
            stringbuffer.append(super.toString());
            stringbuffer.append(" cl = ");
            stringbuffer.append(credibility);
            return stringbuffer.toString();
        }

        public CacheRRset(RRset rrset, int i, long l)
        {
            super(rrset);
            credibility = i;
            expire = Cache.limitExpire(rrset.getTTL(), l);
        }

        public CacheRRset(Record record, int i, long l)
        {
            credibility = i;
            expire = Cache.limitExpire(record.getTTL(), l);
            addRR(record);
        }
    }

    private static interface Element
    {

        public abstract int compareCredibility(int i);

        public abstract boolean expired();

        public abstract int getType();
    }

    private static class NegativeElement
        implements Element
    {

        int credibility;
        int expire;
        Name name;
        int type;

        public final int compareCredibility(int i)
        {
            return credibility - i;
        }

        public final boolean expired()
        {
            return (int)(System.currentTimeMillis() / 1000L) >= expire;
        }

        public int getType()
        {
            return type;
        }

        public String toString()
        {
            StringBuffer stringbuffer = new StringBuffer();
            if (type == 0)
            {
                stringbuffer.append((new StringBuilder("NXDOMAIN ")).append(name).toString());
            } else
            {
                stringbuffer.append((new StringBuilder("NXRRSET ")).append(name).append(" ").append(Type.string(type)).toString());
            }
            stringbuffer.append(" cl = ");
            stringbuffer.append(credibility);
            return stringbuffer.toString();
        }

        public NegativeElement(Name name1, int i, SOARecord soarecord, int j, long l)
        {
            name = name1;
            type = i;
            long l1 = 0L;
            if (soarecord != null)
            {
                l1 = soarecord.getMinimum();
            }
            credibility = j;
            expire = Cache.limitExpire(l1, l);
        }
    }


    private static final int defaultMaxEntries = 50000;
    private CacheMap data;
    private int dclass;
    private int maxcache;
    private int maxncache;

    public Cache()
    {
        this(1);
    }

    public Cache(int i)
    {
        maxncache = -1;
        maxcache = -1;
        dclass = i;
        data = new CacheMap(50000);
    }

    public Cache(String s)
        throws IOException
    {
        maxncache = -1;
        maxcache = -1;
        data = new CacheMap(50000);
        s = new Master(s);
        do
        {
            Record record = s.nextRecord();
            if (record == null)
            {
                return;
            }
            addRecord(record, 0, s);
        } while (true);
    }

    private void addElement(Name name, Element element)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = data.get(name);
        if (obj != null) goto _L2; else goto _L1
_L1:
        data.put(name, element);
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        int j = element.getType();
        if (!(obj instanceof List)) goto _L4; else goto _L3
_L3:
        name = (List)obj;
        int i = 0;
_L6:
        if (i < name.size())
        {
            break MISSING_BLOCK_LABEL_78;
        }
        name.add(element);
          goto _L5
        name;
        throw name;
        if (((Element)name.get(i)).getType() != j)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        name.set(i, element);
          goto _L5
_L4:
label0:
        {
            obj = (Element)obj;
            if (((Element) (obj)).getType() != j)
            {
                break label0;
            }
            data.put(name, element);
        }
          goto _L5
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(obj);
        linkedlist.add(element);
        data.put(name, linkedlist);
          goto _L5
        i++;
          goto _L6
    }

    private Element[] allElements(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        obj = (List)obj;
        obj = (Element[])((List) (obj)).toArray(new Element[((List) (obj)).size()]);
_L4:
        this;
        JVM INSTR monitorexit ;
        return ((Element []) (obj));
_L2:
        Element element;
        element = (Element)obj;
        obj = new Element[1];
        obj[0] = element;
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

    private Element findElement(Name name, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = exactName(name);
        if (obj != null) goto _L2; else goto _L1
_L1:
        name = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return name;
_L2:
        name = oneElement(name, obj, i, j);
        if (true) goto _L4; else goto _L3
_L3:
        name;
        throw name;
    }

    private RRset[] findRecords(Name name, int i, int j)
    {
        name = lookupRecords(name, i, j);
        if (name.isSuccessful())
        {
            return name.answers();
        } else
        {
            return null;
        }
    }

    private final int getCred(int i, boolean flag)
    {
        if (i != 1) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        return 4;
_L4:
        return 3;
_L2:
        if (i == 2)
        {
            if (!flag)
            {
                return 3;
            }
        } else
        if (i == 3)
        {
            return 1;
        } else
        {
            throw new IllegalArgumentException("getCred: invalid section");
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    private static int limitExpire(long l, long l1)
    {
        long l2 = l;
        if (l1 >= 0L)
        {
            l2 = l;
            if (l1 < l)
            {
                l2 = l1;
            }
        }
        l = System.currentTimeMillis() / 1000L + l2;
        if (l < 0L || l > 0x7fffffffL)
        {
            return 0x7fffffff;
        } else
        {
            return (int)l;
        }
    }

    private static void markAdditional(RRset rrset, Set set)
    {
        if (rrset.first().getAdditionalName() != null)
        {
            rrset = rrset.rrs();
            while (rrset.hasNext()) 
            {
                Name name = ((Record)rrset.next()).getAdditionalName();
                if (name != null)
                {
                    set.add(name);
                }
            }
        }
    }

    private Element oneElement(Name name, Object obj, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj1;
        obj1 = null;
        if (i != 255)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        throw new IllegalArgumentException("oneElement(ANY)");
        name;
        this;
        JVM INSTR monitorexit ;
        throw name;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        Object obj2 = (List)obj;
        int k = 0;
_L12:
        int l = ((List) (obj2)).size();
        if (k < l) goto _L4; else goto _L3
_L3:
        obj = obj1;
_L7:
        if (obj != null) goto _L6; else goto _L5
_L5:
        obj = null;
_L10:
        this;
        JVM INSTR monitorexit ;
        return ((Element) (obj));
_L4:
        obj = (Element)((List) (obj2)).get(k);
        if (((Element) (obj)).getType() != i) goto _L8; else goto _L7
_L2:
        obj2 = (Element)obj;
        obj = obj1;
        if (((Element) (obj2)).getType() != i) goto _L7; else goto _L9
_L9:
        obj = obj2;
          goto _L7
_L6:
        if (!((Element) (obj)).expired())
        {
            break MISSING_BLOCK_LABEL_144;
        }
        removeElement(name, i);
        obj = null;
          goto _L10
        i = ((Element) (obj)).compareCredibility(j);
        if (i < 0)
        {
            obj = null;
        }
          goto _L10
_L8:
        k++;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private void removeElement(Name name, int i)
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
        if (((Element)((List) (obj)).get(j)).getType() != i)
        {
            break MISSING_BLOCK_LABEL_99;
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
        if (((Element)obj).getType() != i) goto _L1; else goto _L7
_L7:
        data.remove(name);
          goto _L1
    }

    private void removeName(Name name)
    {
        this;
        JVM INSTR monitorenter ;
        data.remove(name);
        this;
        JVM INSTR monitorexit ;
        return;
        name;
        throw name;
    }

    public SetResponse addMessage(Message message)
    {
        Object obj;
        Object obj3;
        Object obj4;
        RRset arrset[];
        HashSet hashset;
        int i;
        int j;
        int i1;
        int j1;
        int k1;
        boolean flag;
        boolean flag1;
        flag = message.getHeader().getFlag(5);
        Record record = message.getQuestion();
        j1 = message.getHeader().getRcode();
        i = 0;
        obj = null;
        flag1 = Options.check("verbosecache");
        if (j1 != 0 && j1 != 3 || record == null)
        {
            return null;
        }
        obj4 = record.getName();
        i1 = record.getType();
        k1 = record.getDClass();
        obj3 = obj4;
        hashset = new HashSet();
        arrset = message.getSectionRRsets(1);
        j = 0;
_L7:
        if (j < arrset.length) goto _L2; else goto _L1
_L2:
        if (arrset[j].getDClass() != k1)
        {
            obj1 = obj;
            obj2 = obj3;
            l = i;
        } else
        {
            l1 = arrset[j].getType();
            obj6 = arrset[j].getName();
            i2 = getCred(1, flag);
            if ((l1 == i1 || i1 == 255) && ((Name) (obj6)).equals(obj3))
            {
                addRRset(arrset[j], i2);
                l = 1;
                obj1 = obj;
                if (obj3 == obj4)
                {
                    obj1 = obj;
                    if (obj == null)
                    {
                        obj1 = new SetResponse(6);
                    }
                    ((SetResponse) (obj1)).addRRset(arrset[j]);
                }
                markAdditional(arrset[j], hashset);
                obj2 = obj3;
            } else
            {
label0:
                {
                    if (l1 != 5 || !((Name) (obj6)).equals(obj3))
                    {
                        break label0;
                    }
                    addRRset(arrset[j], i2);
                    if (obj3 == obj4)
                    {
                        obj = new SetResponse(4, arrset[j]);
                    }
                    obj2 = ((CNAMERecord)arrset[j].first()).getTarget();
                    l = i;
                    obj1 = obj;
                }
            }
        }
_L4:
        j++;
        i = l;
        obj3 = obj2;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
        l = i;
        obj2 = obj3;
        obj1 = obj;
        if (l1 != 39) goto _L4; else goto _L3
_L3:
        l = i;
        obj2 = obj3;
        obj1 = obj;
        if (!((Name) (obj3)).subdomain(((Name) (obj6)))) goto _L4; else goto _L5
_L5:
        addRRset(arrset[j], i2);
        if (obj3 == obj4)
        {
            obj = new SetResponse(5, arrset[j]);
        }
        obj1 = (DNAMERecord)arrset[j].first();
        obj2 = ((Name) (obj3)).fromDNAME(((DNAMERecord) (obj1)));
        l = i;
        obj1 = obj;
          goto _L4
        obj1;
_L1:
        Object obj6 = message.getSectionRRsets(2);
        Object obj1 = null;
        Object obj2 = null;
        j = 0;
        do
        {
            if (j >= obj6.length)
            {
                if (i == 0)
                {
                    if (j1 == 3)
                    {
                        i = 0;
                    } else
                    {
                        i = i1;
                    }
                    if (j1 == 3 || obj1 != null || obj2 == null)
                    {
                        j = getCred(2, flag);
                        obj2 = null;
                        if (obj1 != null)
                        {
                            obj2 = (SOARecord)((RRset) (obj1)).first();
                        }
                        addNegative(((Name) (obj3)), i, ((SOARecord) (obj2)), j);
                        obj1 = obj;
                        if (obj == null)
                        {
                            Object obj5;
                            int l;
                            int l1;
                            int i2;
                            if (j1 == 3)
                            {
                                i = 1;
                            } else
                            {
                                i = 2;
                            }
                            obj1 = SetResponse.ofType(i);
                        }
                    } else
                    {
                        addRRset(((RRset) (obj2)), getCred(2, flag));
                        markAdditional(((RRset) (obj2)), hashset);
                        obj1 = obj;
                        if (obj == null)
                        {
                            obj1 = new SetResponse(3, ((RRset) (obj2)));
                        }
                    }
                } else
                {
                    obj1 = obj;
                    if (j1 == 0)
                    {
                        obj1 = obj;
                        if (obj2 != null)
                        {
                            addRRset(((RRset) (obj2)), getCred(2, flag));
                            markAdditional(((RRset) (obj2)), hashset);
                            obj1 = obj;
                        }
                    }
                }
                message = message.getSectionRRsets(3);
                i = 0;
                break MISSING_BLOCK_LABEL_221;
            }
            if (obj6[j].getType() == 6 && ((Name) (obj3)).subdomain(obj6[j].getName()))
            {
                obj5 = obj6[j];
                obj4 = obj2;
            } else
            {
                obj4 = obj2;
                obj5 = obj1;
                if (obj6[j].getType() == 2)
                {
                    obj4 = obj2;
                    obj5 = obj1;
                    if (((Name) (obj3)).subdomain(obj6[j].getName()))
                    {
                        obj4 = obj6[j];
                        obj5 = obj1;
                    }
                }
            }
            j++;
            obj2 = obj4;
            obj1 = obj5;
        } while (true);
        do
        {
            if (i >= message.length)
            {
                if (flag1)
                {
                    System.out.println((new StringBuilder("addMessage: ")).append(obj1).toString());
                }
                return ((SetResponse) (obj1));
            }
            j = message[i].getType();
            if ((j == 1 || j == 28 || j == 38) && hashset.contains(message[i].getName()))
            {
                int k = getCred(3, flag);
                addRRset(message[i], k);
            }
            i++;
        } while (true);
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void addNegative(Name name, int i, SOARecord soarecord, int j)
    {
        this;
        JVM INSTR monitorenter ;
        long l;
        l = 0L;
        if (soarecord == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        l = soarecord.getTTL();
        Element element1 = findElement(name, i, 0);
        if (l != 0L) goto _L2; else goto _L1
_L1:
        if (element1 == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        if (element1.compareCredibility(j) <= 0)
        {
            removeElement(name, i);
        }
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Element element;
        element = element1;
        if (element1 == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        element = element1;
        if (element1.compareCredibility(j) <= 0)
        {
            element = null;
        }
        if (element != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        addElement(name, new NegativeElement(name, i, soarecord, j, maxncache));
        if (true) goto _L4; else goto _L3
_L3:
        name;
        throw name;
    }

    public void addRRset(RRset rrset, int i)
    {
        this;
        JVM INSTR monitorenter ;
        Element element1;
        Name name;
        int j;
        long l;
        l = rrset.getTTL();
        name = rrset.getName();
        j = rrset.getType();
        element1 = findElement(name, j, 0);
        if (l != 0L) goto _L2; else goto _L1
_L1:
        if (element1 == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        if (element1.compareCredibility(i) <= 0)
        {
            removeElement(name, j);
        }
_L6:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Element element = element1;
        if (element1 == null) goto _L4; else goto _L3
_L3:
        element = element1;
        if (element1.compareCredibility(i) <= 0)
        {
            element = null;
        }
_L4:
        if (element != null) goto _L6; else goto _L5
_L5:
        if (!(rrset instanceof CacheRRset))
        {
            break MISSING_BLOCK_LABEL_120;
        }
        rrset = (CacheRRset)rrset;
_L7:
        addElement(name, rrset);
          goto _L6
        rrset;
        throw rrset;
        rrset = new CacheRRset(rrset, i, maxcache);
          goto _L7
    }

    public void addRecord(Record record, int i, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        int j;
        boolean flag;
        obj = record.getName();
        j = record.getRRsetType();
        flag = Type.isRR(j);
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        obj = findElement(((Name) (obj)), j, i);
        if (obj != null) goto _L4; else goto _L3
_L3:
        addRRset(new CacheRRset(record, i, maxcache), i);
          goto _L1
        record;
        throw record;
_L4:
        if (((Element) (obj)).compareCredibility(i) != 0 || !(obj instanceof CacheRRset)) goto _L1; else goto _L5
_L5:
        ((CacheRRset)obj).addRR(record);
          goto _L1
    }

    public void clearCache()
    {
        this;
        JVM INSTR monitorenter ;
        data.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public RRset[] findAnyRecords(Name name, int i)
    {
        return findRecords(name, i, 2);
    }

    public RRset[] findRecords(Name name, int i)
    {
        return findRecords(name, i, 3);
    }

    public void flushName(Name name)
    {
        removeName(name);
    }

    public void flushSet(Name name, int i)
    {
        removeElement(name, i);
    }

    public int getDClass()
    {
        return dclass;
    }

    public int getMaxCache()
    {
        return maxcache;
    }

    public int getMaxEntries()
    {
        return data.getMaxSize();
    }

    public int getMaxNCache()
    {
        return maxncache;
    }

    public int getSize()
    {
        return data.size();
    }

    protected SetResponse lookup(Name name, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        int k1 = name.labels();
        int k = k1;
_L25:
        if (k >= 1) goto _L2; else goto _L1
_L1:
        Object obj = SetResponse.ofType(0);
_L12:
        this;
        JVM INSTR monitorexit ;
        return ((SetResponse) (obj));
_L2:
        Name name1;
        boolean flag;
        int l;
        int i1;
        int j1;
        Object obj1;
        Object obj2;
        Element element;
        if (k == 1)
        {
            l = 1;
        } else
        {
            l = 0;
        }
        if (k == k1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (l == 0) goto _L4; else goto _L3
_L3:
        name1 = Name.root;
_L7:
        obj1 = data.get(name1);
        if (obj1 != null) goto _L6; else goto _L5
_L27:
        name1 = new Name(name, k1 - k);
          goto _L7
_L6:
        if (!flag || i != 255) goto _L9; else goto _L8
_L8:
        obj = new SetResponse(6);
        obj2 = allElements(obj1);
        i1 = 0;
        l = 0;
_L28:
        if (l < obj2.length) goto _L11; else goto _L10
_L10:
        if (i1 > 0) goto _L12; else goto _L9
_L9:
        if (!flag) goto _L14; else goto _L13
_L13:
        obj2 = oneElement(name1, obj1, i, j);
        if (obj2 == null) goto _L16; else goto _L15
_L15:
        if (!(obj2 instanceof CacheRRset)) goto _L16; else goto _L17
_L17:
        obj = new SetResponse(6);
        ((SetResponse) (obj)).addRRset((CacheRRset)obj2);
          goto _L12
        name;
        throw name;
_L11:
        element = obj2[l];
        if (!element.expired())
        {
            break MISSING_BLOCK_LABEL_241;
        }
        removeElement(name1, element.getType());
        j1 = i1;
        break MISSING_BLOCK_LABEL_494;
        j1 = i1;
        if (!(element instanceof CacheRRset))
        {
            break MISSING_BLOCK_LABEL_494;
        }
        j1 = i1;
        if (element.compareCredibility(j) < 0)
        {
            break MISSING_BLOCK_LABEL_494;
        }
        ((SetResponse) (obj)).addRRset((CacheRRset)element);
        j1 = i1 + 1;
        break MISSING_BLOCK_LABEL_494;
_L16:
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_305;
        }
        obj = new SetResponse(2);
          goto _L12
        obj = oneElement(name1, obj1, 5, j);
        if (obj == null) goto _L19; else goto _L18
_L18:
        if (!(obj instanceof CacheRRset)) goto _L19; else goto _L20
_L20:
        obj = new SetResponse(4, (CacheRRset)obj);
          goto _L12
_L14:
        obj = oneElement(name1, obj1, 39, j);
        if (obj == null) goto _L19; else goto _L21
_L21:
        if (!(obj instanceof CacheRRset)) goto _L19; else goto _L22
_L22:
        obj = new SetResponse(5, (CacheRRset)obj);
          goto _L12
_L19:
        obj = oneElement(name1, obj1, 2, j);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_435;
        }
        if (!(obj instanceof CacheRRset))
        {
            break MISSING_BLOCK_LABEL_435;
        }
        obj = new SetResponse(3, (CacheRRset)obj);
          goto _L12
        if (!flag) goto _L5; else goto _L23
_L23:
        if (oneElement(name1, obj1, 0, j) == null) goto _L5; else goto _L24
_L24:
        obj = SetResponse.ofType(1);
          goto _L12
_L5:
        k--;
          goto _L25
_L4:
        if (!flag) goto _L27; else goto _L26
_L26:
        name1 = name;
          goto _L7
        l++;
        i1 = j1;
          goto _L28
    }

    public SetResponse lookupRecords(Name name, int i, int j)
    {
        return lookup(name, i, j);
    }

    public void setMaxCache(int i)
    {
        maxcache = i;
    }

    public void setMaxEntries(int i)
    {
        data.setMaxSize(i);
    }

    public void setMaxNCache(int i)
    {
        maxncache = i;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = data.values().iterator();
_L6:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return stringbuffer.toString();
_L2:
        Element aelement[] = allElements(iterator.next());
        int i = 0;
_L4:
        if (i >= aelement.length)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.append(aelement[i]);
        stringbuffer.append("\n");
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
