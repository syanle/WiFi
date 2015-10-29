// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            Cache, SOARecord, Type, Name

private static class expire
    implements expire
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

    public (Name name1, int i, SOARecord soarecord, int j, long l)
    {
        name = name1;
        type = i;
        long l1 = 0L;
        if (soarecord != null)
        {
            l1 = soarecord.getMinimum();
        }
        credibility = j;
        expire = Cache.access$0(l1, l);
    }
}
