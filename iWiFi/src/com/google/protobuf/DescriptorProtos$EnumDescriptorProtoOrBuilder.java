// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            MessageOrBuilder, DescriptorProtos

public static interface lder
    extends MessageOrBuilder
{

    public abstract String getName();

    public abstract lder getOptions();

    public abstract lder getOptionsOrBuilder();

    public abstract lder getValue(int i);

    public abstract int getValueCount();

    public abstract List getValueList();

    public abstract lder getValueOrBuilder(int i);

    public abstract List getValueOrBuilderList();

    public abstract boolean hasName();

    public abstract boolean hasOptions();
}
