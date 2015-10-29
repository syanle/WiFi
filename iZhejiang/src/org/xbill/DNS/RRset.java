// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            Record, RRSIGRecord, DClass, Type, 
//            Name

public class RRset
    implements Serializable
{

    private static final long serialVersionUID = 0xd29dbd98dc5eb2f1L;
    private short nsigs;
    private short position;
    private List rrs;

    public RRset()
    {
        rrs = new ArrayList(1);
        nsigs = 0;
        position = 0;
    }

    public RRset(RRset rrset)
    {
        rrset;
        JVM INSTR monitorenter ;
        rrs = (List)((ArrayList)rrset.rrs).clone();
        nsigs = rrset.nsigs;
        position = rrset.position;
        rrset;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        rrset;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public RRset(Record record)
    {
        this();
        safeAddRR(record);
    }

    private Iterator iterator(boolean flag, boolean flag1)
    {
        this;
        JVM INSTR monitorenter ;
        int k = rrs.size();
        if (!flag) goto _L2; else goto _L1
_L1:
        int j = k - nsigs;
_L5:
        if (j != 0) goto _L4; else goto _L3
_L3:
        Object obj = Collections.EMPTY_LIST.iterator();
_L8:
        this;
        JVM INSTR monitorexit ;
        return ((Iterator) (obj));
_L2:
        j = nsigs;
          goto _L5
_L9:
        obj = new ArrayList(j);
        if (!flag) goto _L7; else goto _L6
_L6:
        int i;
        ((List) (obj)).addAll(rrs.subList(i, j));
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        ((List) (obj)).addAll(rrs.subList(0, i));
_L10:
        obj = ((List) (obj)).iterator();
          goto _L8
_L14:
        if (position >= j)
        {
            position = 0;
        }
        i = position;
        position = (short)(i + 1);
          goto _L9
_L12:
        i = k - nsigs;
          goto _L9
_L7:
        ((List) (obj)).addAll(rrs.subList(i, k));
          goto _L10
        Exception exception;
        exception;
        throw exception;
_L4:
        if (!flag) goto _L12; else goto _L11
_L11:
        if (flag1) goto _L14; else goto _L13
_L13:
        i = 0;
          goto _L9
    }

    private String iteratorToString(Iterator iterator1)
    {
        StringBuffer stringbuffer = new StringBuffer();
        do
        {
            do
            {
                if (!iterator1.hasNext())
                {
                    return stringbuffer.toString();
                }
                Record record = (Record)iterator1.next();
                stringbuffer.append("[");
                stringbuffer.append(record.rdataToString());
                stringbuffer.append("]");
            } while (!iterator1.hasNext());
            stringbuffer.append(" ");
        } while (true);
    }

    private void safeAddRR(Record record)
    {
        if (!(record instanceof RRSIGRecord))
        {
            if (nsigs == 0)
            {
                rrs.add(record);
                return;
            } else
            {
                rrs.add(rrs.size() - nsigs, record);
                return;
            }
        } else
        {
            rrs.add(record);
            nsigs = (short)(nsigs + 1);
            return;
        }
    }

    public void addRR(Record record)
    {
        this;
        JVM INSTR monitorenter ;
        if (rrs.size() != 0) goto _L2; else goto _L1
_L1:
        safeAddRR(record);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Record record3;
        record3 = first();
        if (!record.sameRRset(record3))
        {
            throw new IllegalArgumentException("record does not match rrset");
        }
        break MISSING_BLOCK_LABEL_50;
        record;
        this;
        JVM INSTR monitorexit ;
        throw record;
        Record record1 = record;
        if (record.getTTL() != record3.getTTL())
        {
            if (record.getTTL() <= record3.getTTL())
            {
                break; /* Loop/switch isn't completed */
            }
            record1 = record.cloneRecord();
            record1.setTTL(record3.getTTL());
        }
_L6:
        if (!rrs.contains(record1))
        {
            safeAddRR(record1);
        }
        if (true) goto _L4; else goto _L3
_L7:
        record1 = record;
        int i;
        if (i >= rrs.size()) goto _L6; else goto _L5
_L5:
        Record record2 = ((Record)rrs.get(i)).cloneRecord();
        record2.setTTL(record.getTTL());
        rrs.set(i, record2);
        i++;
          goto _L7
_L3:
        i = 0;
          goto _L7
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        rrs.clear();
        position = 0;
        nsigs = 0;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void deleteRR(Record record)
    {
        this;
        JVM INSTR monitorenter ;
        if (rrs.remove(record) && (record instanceof RRSIGRecord))
        {
            nsigs = (short)(nsigs - 1);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        record;
        throw record;
    }

    public Record first()
    {
        this;
        JVM INSTR monitorenter ;
        if (rrs.size() == 0)
        {
            throw new IllegalStateException("rrset is empty");
        }
        break MISSING_BLOCK_LABEL_29;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Record record = (Record)rrs.get(0);
        this;
        JVM INSTR monitorexit ;
        return record;
    }

    public int getDClass()
    {
        return first().getDClass();
    }

    public Name getName()
    {
        return first().getName();
    }

    public long getTTL()
    {
        this;
        JVM INSTR monitorenter ;
        long l = first().getTTL();
        this;
        JVM INSTR monitorexit ;
        return l;
        Exception exception;
        exception;
        throw exception;
    }

    public int getType()
    {
        return first().getRRsetType();
    }

    public Iterator rrs()
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator1 = iterator(true, true);
        this;
        JVM INSTR monitorexit ;
        return iterator1;
        Exception exception;
        exception;
        throw exception;
    }

    public Iterator rrs(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator1 = iterator(true, flag);
        this;
        JVM INSTR monitorexit ;
        return iterator1;
        Exception exception;
        exception;
        throw exception;
    }

    public Iterator sigs()
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator1 = iterator(false, false);
        this;
        JVM INSTR monitorexit ;
        return iterator1;
        Exception exception;
        exception;
        throw exception;
    }

    public int size()
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        short word0;
        i = rrs.size();
        word0 = nsigs;
        this;
        JVM INSTR monitorexit ;
        return i - word0;
        Exception exception;
        exception;
        throw exception;
    }

    public String toString()
    {
        if (rrs == null)
        {
            return "{empty}";
        }
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("{ ");
        stringbuffer.append((new StringBuilder()).append(getName()).append(" ").toString());
        stringbuffer.append((new StringBuilder(String.valueOf(getTTL()))).append(" ").toString());
        stringbuffer.append((new StringBuilder(String.valueOf(DClass.string(getDClass())))).append(" ").toString());
        stringbuffer.append((new StringBuilder(String.valueOf(Type.string(getType())))).append(" ").toString());
        stringbuffer.append(iteratorToString(iterator(true, false)));
        if (nsigs > 0)
        {
            stringbuffer.append(" sigs: ");
            stringbuffer.append(iteratorToString(iterator(false, false)));
        }
        stringbuffer.append(" }");
        return stringbuffer.toString();
    }
}
