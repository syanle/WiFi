// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            ReverseGeocodingProtoBuf

public static interface 
    extends MessageOrBuilder
{

    public abstract  getCross(int i);

    public abstract int getCrossCount();

    public abstract List getCrossList();

    public abstract  getCrossOrBuilder(int i);

    public abstract List getCrossOrBuilderList();
}
