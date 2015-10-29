// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            MessageOrBuilder, DescriptorProtos, ByteString

public static interface rBuilder
    extends MessageOrBuilder
{

    public abstract String getAggregateValue();

    public abstract double getDoubleValue();

    public abstract String getIdentifierValue();

    public abstract rBuilder getName(int i);

    public abstract int getNameCount();

    public abstract List getNameList();

    public abstract rBuilder getNameOrBuilder(int i);

    public abstract List getNameOrBuilderList();

    public abstract long getNegativeIntValue();

    public abstract long getPositiveIntValue();

    public abstract ByteString getStringValue();

    public abstract boolean hasAggregateValue();

    public abstract boolean hasDoubleValue();

    public abstract boolean hasIdentifierValue();

    public abstract boolean hasNegativeIntValue();

    public abstract boolean hasPositiveIntValue();

    public abstract boolean hasStringValue();
}
