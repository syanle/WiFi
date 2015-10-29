// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            MessageOrBuilder, DescriptorProtos

public static interface er
    extends MessageOrBuilder
{

    public abstract String getDependency(int i);

    public abstract int getDependencyCount();

    public abstract List getDependencyList();

    public abstract er getEnumType(int i);

    public abstract int getEnumTypeCount();

    public abstract List getEnumTypeList();

    public abstract er getEnumTypeOrBuilder(int i);

    public abstract List getEnumTypeOrBuilderList();

    public abstract er getExtension(int i);

    public abstract int getExtensionCount();

    public abstract List getExtensionList();

    public abstract  getExtensionOrBuilder(int i);

    public abstract List getExtensionOrBuilderList();

    public abstract  getMessageType(int i);

    public abstract int getMessageTypeCount();

    public abstract List getMessageTypeList();

    public abstract  getMessageTypeOrBuilder(int i);

    public abstract List getMessageTypeOrBuilderList();

    public abstract String getName();

    public abstract  getOptions();

    public abstract  getOptionsOrBuilder();

    public abstract String getPackage();

    public abstract  getService(int i);

    public abstract int getServiceCount();

    public abstract List getServiceList();

    public abstract er getServiceOrBuilder(int i);

    public abstract List getServiceOrBuilderList();

    public abstract er getSourceCodeInfo();

    public abstract er getSourceCodeInfoOrBuilder();

    public abstract boolean hasName();

    public abstract boolean hasOptions();

    public abstract boolean hasPackage();

    public abstract boolean hasSourceCodeInfo();
}
