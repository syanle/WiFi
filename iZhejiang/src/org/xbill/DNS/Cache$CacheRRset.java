// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            RRset, Cache, Record

private static class addRR extends RRset
    implements addRR
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

    public (RRset rrset, int i, long l)
    {
        super(rrset);
        credibility = i;
        expire = Cache.access$0(rrset.getTTL(), l);
    }

    public expire(Record record, int i, long l)
    {
        credibility = i;
        expire = Cache.access$0(record.getTTL(), l);
        addRR(record);
    }
}
