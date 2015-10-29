// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            MessageOrBuilder, DescriptorProtos

public static interface I
    extends MessageOrBuilder
{

    public abstract String getInputType();

    public abstract String getName();

    public abstract I getOptions();

    public abstract I getOptionsOrBuilder();

    public abstract String getOutputType();

    public abstract boolean hasInputType();

    public abstract boolean hasName();

    public abstract boolean hasOptions();

    public abstract boolean hasOutputType();
}
