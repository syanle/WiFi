// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            ServiceException, RpcController, Message

public interface BlockingService
{

    public abstract Message callBlockingMethod(Descriptors.MethodDescriptor methoddescriptor, RpcController rpccontroller, Message message)
        throws ServiceException;

    public abstract Descriptors.ServiceDescriptor getDescriptorForType();

    public abstract Message getRequestPrototype(Descriptors.MethodDescriptor methoddescriptor);

    public abstract Message getResponsePrototype(Descriptors.MethodDescriptor methoddescriptor);
}
