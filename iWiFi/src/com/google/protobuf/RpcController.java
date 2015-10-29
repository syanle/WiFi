// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            RpcCallback

public interface RpcController
{

    public abstract String errorText();

    public abstract boolean failed();

    public abstract boolean isCanceled();

    public abstract void notifyOnCancel(RpcCallback rpccallback);

    public abstract void reset();

    public abstract void setFailed(String s);

    public abstract void startCancel();
}
