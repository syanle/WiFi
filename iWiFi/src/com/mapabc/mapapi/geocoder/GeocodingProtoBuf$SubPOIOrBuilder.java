// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

import com.google.protobuf.MessageOrBuilder;

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            GeocodingProtoBuf

public static interface 
    extends MessageOrBuilder
{

    public abstract String getEname();

    public abstract String getName();

    public abstract String getX();

    public abstract String getY();

    public abstract boolean hasEname();

    public abstract boolean hasName();

    public abstract boolean hasX();

    public abstract boolean hasY();
}
