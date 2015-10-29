// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            ServiceException, RpcController, Message

public interface BlockingRpcChannel
{

    public abstract Message callBlockingMethod(Descriptors.MethodDescriptor methoddescriptor, RpcController rpccontroller, Message message, Message message1)
        throws ServiceException;
}
