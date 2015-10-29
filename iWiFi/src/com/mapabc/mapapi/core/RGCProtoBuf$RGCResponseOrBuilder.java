// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            RGCProtoBuf

public static interface 
    extends MessageOrBuilder
{

    public abstract  getRgcItem(int i);

    public abstract int getRgcItemCount();

    public abstract List getRgcItemList();

    public abstract  getRgcItemOrBuilder(int i);

    public abstract List getRgcItemOrBuilderList();
}
