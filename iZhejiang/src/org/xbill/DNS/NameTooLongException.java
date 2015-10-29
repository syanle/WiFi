// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            WireParseException

public class NameTooLongException extends WireParseException
{

    public NameTooLongException()
    {
    }

    public NameTooLongException(String s)
    {
        super(s);
    }
}
