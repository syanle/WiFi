// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


public interface ProtocolMessageEnum
    extends Internal.EnumLite
{

    public abstract Descriptors.EnumDescriptor getDescriptorForType();

    public abstract int getNumber();

    public abstract Descriptors.EnumValueDescriptor getValueDescriptor();
}
