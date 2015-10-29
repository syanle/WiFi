// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

public class WireParseException extends IOException
{

    public WireParseException()
    {
    }

    public WireParseException(String s)
    {
        super(s);
    }
}
