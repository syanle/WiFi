// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            RpcUtil

public static final class  extends RuntimeException
{

    private static final long serialVersionUID = 0x4be86cb6ba5b1c4aL;

    public ()
    {
        super("This RpcCallback was already called and cannot be called multiple times.");
    }
}
