// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.util.Date;

// Referenced classes of package org.xbill.DNS:
//            DNSSEC

public static class now extends now
{

    private Date now;
    private Date when;

    public Date getExpiration()
    {
        return when;
    }

    public Date getVerifyTime()
    {
        return now;
    }

    (Date date, Date date1)
    {
        super("signature expired");
        when = date;
        now = date1;
    }
}
