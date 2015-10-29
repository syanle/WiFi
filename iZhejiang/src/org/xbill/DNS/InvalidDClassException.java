// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


public class InvalidDClassException extends IllegalArgumentException
{

    public InvalidDClassException(int i)
    {
        super((new StringBuilder("Invalid DNS class: ")).append(i).toString());
    }
}
