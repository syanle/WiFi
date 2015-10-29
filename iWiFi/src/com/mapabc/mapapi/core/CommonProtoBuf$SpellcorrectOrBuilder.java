// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            CommonProtoBuf

public static interface A
    extends MessageOrBuilder
{

    public abstract String getData(int i);

    public abstract int getDataCount();

    public abstract List getDataList();
}
