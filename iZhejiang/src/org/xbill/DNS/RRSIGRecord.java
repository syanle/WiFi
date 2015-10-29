// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.util.Date;

// Referenced classes of package org.xbill.DNS:
//            SIGBase, Name, Record

public class RRSIGRecord extends SIGBase
{

    private static final long serialVersionUID = 0xdbca6f494a57a9b3L;

    RRSIGRecord()
    {
    }

    public RRSIGRecord(Name name, int i, long l, int j, int k, long l1, Date date, Date date1, int i1, Name name1, byte abyte0[])
    {
        super(name, 46, i, l, j, k, l1, date, date1, i1, name1, abyte0);
    }

    public volatile int getAlgorithm()
    {
        return super.getAlgorithm();
    }

    public volatile Date getExpire()
    {
        return super.getExpire();
    }

    public volatile int getFootprint()
    {
        return super.getFootprint();
    }

    public volatile int getLabels()
    {
        return super.getLabels();
    }

    Record getObject()
    {
        return new RRSIGRecord();
    }

    public volatile long getOrigTTL()
    {
        return super.getOrigTTL();
    }

    public volatile byte[] getSignature()
    {
        return super.getSignature();
    }

    public volatile Name getSigner()
    {
        return super.getSigner();
    }

    public volatile Date getTimeSigned()
    {
        return super.getTimeSigned();
    }

    public volatile int getTypeCovered()
    {
        return super.getTypeCovered();
    }
}
