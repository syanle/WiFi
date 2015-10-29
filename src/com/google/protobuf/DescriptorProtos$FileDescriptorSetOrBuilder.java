// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            MessageOrBuilder, DescriptorProtos

public static interface r
    extends MessageOrBuilder
{

    public abstract r getFile(int i);

    public abstract int getFileCount();

    public abstract List getFileList();

    public abstract r getFileOrBuilder(int i);

    public abstract List getFileOrBuilderList();
}
