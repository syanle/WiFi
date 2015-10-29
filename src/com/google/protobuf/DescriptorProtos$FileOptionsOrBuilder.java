// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            DescriptorProtos

public static interface Builder
    extends ilder
{

    public abstract boolean getCcGenericServices();

    public abstract boolean getJavaGenerateEqualsAndHash();

    public abstract boolean getJavaGenericServices();

    public abstract boolean getJavaMultipleFiles();

    public abstract String getJavaOuterClassname();

    public abstract String getJavaPackage();

    public abstract ode getOptimizeFor();

    public abstract boolean getPyGenericServices();

    public abstract ode getUninterpretedOption(int i);

    public abstract int getUninterpretedOptionCount();

    public abstract List getUninterpretedOptionList();

    public abstract Builder getUninterpretedOptionOrBuilder(int i);

    public abstract List getUninterpretedOptionOrBuilderList();

    public abstract boolean hasCcGenericServices();

    public abstract boolean hasJavaGenerateEqualsAndHash();

    public abstract boolean hasJavaGenericServices();

    public abstract boolean hasJavaMultipleFiles();

    public abstract boolean hasJavaOuterClassname();

    public abstract boolean hasJavaPackage();

    public abstract boolean hasOptimizeFor();

    public abstract boolean hasPyGenericServices();
}
