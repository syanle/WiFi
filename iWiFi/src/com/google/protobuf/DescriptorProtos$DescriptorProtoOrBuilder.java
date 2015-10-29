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

    public abstract lder getEnumType(int i);

    public abstract int getEnumTypeCount();

    public abstract List getEnumTypeList();

    public abstract der getEnumTypeOrBuilder(int i);

    public abstract List getEnumTypeOrBuilderList();

    public abstract der getExtension(int i);

    public abstract int getExtensionCount();

    public abstract List getExtensionList();

    public abstract lder getExtensionOrBuilder(int i);

    public abstract List getExtensionOrBuilderList();

    public abstract Range getExtensionRange(int i);

    public abstract int getExtensionRangeCount();

    public abstract List getExtensionRangeList();

    public abstract RangeOrBuilder getExtensionRangeOrBuilder(int i);

    public abstract List getExtensionRangeOrBuilderList();

    public abstract RangeOrBuilder getField(int i);

    public abstract int getFieldCount();

    public abstract List getFieldList();

    public abstract lder getFieldOrBuilder(int i);

    public abstract List getFieldOrBuilderList();

    public abstract String getName();

    public abstract lder getNestedType(int i);

    public abstract int getNestedTypeCount();

    public abstract List getNestedTypeList();

    public abstract lder getNestedTypeOrBuilder(int i);

    public abstract List getNestedTypeOrBuilderList();

    public abstract lder getOptions();

    public abstract lder getOptionsOrBuilder();

    public abstract boolean hasName();

    public abstract boolean hasOptions();
}
