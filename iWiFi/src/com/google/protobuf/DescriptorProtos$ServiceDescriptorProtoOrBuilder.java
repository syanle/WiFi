// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            MessageOrBuilder, DescriptorProtos

public static interface 
    extends MessageOrBuilder
{

    public abstract  getMethod(int i);

    public abstract int getMethodCount();

    public abstract List getMethodList();

    public abstract  getMethodOrBuilder(int i);

    public abstract List getMethodOrBuilderList();

    public abstract String getName();

    public abstract  getOptions();

    public abstract  getOptionsOrBuilder();

    public abstract boolean hasName();

    public abstract boolean hasOptions();
}
