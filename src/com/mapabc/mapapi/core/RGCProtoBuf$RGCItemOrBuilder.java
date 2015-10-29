// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.MessageOrBuilder;

// Referenced classes of package com.mapabc.mapapi.core:
//            RGCProtoBuf

public static interface _cls9
    extends MessageOrBuilder
{

    public abstract String getGridcode();

    public abstract String getX();

    public abstract String getY();

    public abstract boolean hasGridcode();

    public abstract boolean hasX();

    public abstract boolean hasY();
}
