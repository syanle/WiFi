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

    public abstract int getPath(int i);

    public abstract int getPathCount();

    public abstract List getPathList();

    public abstract int getSpan(int i);

    public abstract int getSpanCount();

    public abstract List getSpanList();
}
