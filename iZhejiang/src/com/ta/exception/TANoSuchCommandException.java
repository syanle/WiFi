// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.exception;


// Referenced classes of package com.ta.exception:
//            TAException

public class TANoSuchCommandException extends TAException
{

    private static final long serialVersionUID = 1L;

    public TANoSuchCommandException()
    {
    }

    public TANoSuchCommandException(String s)
    {
        super(s);
    }
}
