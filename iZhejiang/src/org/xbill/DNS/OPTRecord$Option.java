// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import org.xbill.DNS.utils.base16;

// Referenced classes of package org.xbill.DNS:
//            OPTRecord

public static class data
{

    public final int code;
    public final byte data[];

    public String toString()
    {
        return (new StringBuilder("{")).append(code).append(" <").append(base16.toString(data)).append(">}").toString();
    }

    public (int i, byte abyte0[])
    {
        code = OPTRecord.checkU8("option code", i);
        data = abyte0;
    }
}
