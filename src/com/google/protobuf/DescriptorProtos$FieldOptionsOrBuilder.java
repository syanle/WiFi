// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            DescriptorProtos

public static interface uilder
    extends lder
{

    public abstract lder getCtype();

    public abstract boolean getDeprecated();

    public abstract String getExperimentalMapKey();

    public abstract boolean getPacked();

    public abstract lder getUninterpretedOption(int i);

    public abstract int getUninterpretedOptionCount();

    public abstract List getUninterpretedOptionList();

    public abstract uilder getUninterpretedOptionOrBuilder(int i);

    public abstract List getUninterpretedOptionOrBuilderList();

    public abstract boolean hasCtype();

    public abstract boolean hasDeprecated();

    public abstract boolean hasExperimentalMapKey();

    public abstract boolean hasPacked();
}
