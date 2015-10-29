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

    public abstract int getCount();

    public abstract  getGeocoding();

    public abstract  getGeocodingOrBuilder();

    public abstract com.mapabc.mapapi.core.der getSpellcorrect();

    public abstract com.mapabc.mapapi.core.der getSpellcorrectOrBuilder();

    public abstract boolean hasCount();

    public abstract boolean hasGeocoding();

    public abstract boolean hasSpellcorrect();
}
