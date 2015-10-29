// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.MessageOrBuilder;

// Referenced classes of package com.mapabc.mapapi.core:
//            ReverseGeocodingProtoBuf

public static interface 
    extends MessageOrBuilder
{

    public abstract String getDirection();

    public abstract String getDistance();

    public abstract String getEname();

    public abstract String getId();

    public abstract String getLevel();

    public abstract String getName();

    public abstract String getWidth();

    public abstract boolean hasDirection();

    public abstract boolean hasDistance();

    public abstract boolean hasEname();

    public abstract boolean hasId();

    public abstract boolean hasLevel();

    public abstract boolean hasName();

    public abstract boolean hasWidth();
}
