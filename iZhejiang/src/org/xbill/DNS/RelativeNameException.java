// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            Name

public class RelativeNameException extends IllegalArgumentException
{

    public RelativeNameException(String s)
    {
        super(s);
    }

    public RelativeNameException(Name name)
    {
        super((new StringBuilder("'")).append(name).append("' is not an absolute name").toString());
    }
}
