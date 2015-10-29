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

    public abstract String getAddress();

    public abstract com.mapabc.mapapi.core.der getCommon();

    public abstract com.mapabc.mapapi.core.der getCommonOrBuilder();

    public abstract String getPoiNumber();

    public abstract String getVer();

    public abstract boolean hasAddress();

    public abstract boolean hasCommon();

    public abstract boolean hasPoiNumber();

    public abstract boolean hasVer();
}
