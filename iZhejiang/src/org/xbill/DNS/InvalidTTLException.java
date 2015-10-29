// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


public class InvalidTTLException extends IllegalArgumentException
{

    public InvalidTTLException(long l)
    {
        super((new StringBuilder("Invalid DNS TTL: ")).append(l).toString());
    }
}
