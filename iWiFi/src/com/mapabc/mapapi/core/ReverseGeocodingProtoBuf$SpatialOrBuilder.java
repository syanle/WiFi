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

    public abstract  getCity();

    public abstract  getCityOrBuilder();

    public abstract  getCrosses();

    public abstract  getCrossesOrBuilder();

    public abstract  getDistrict();

    public abstract  getDistrictOrBuilder();

    public abstract  getPois();

    public abstract  getPoisOrBuilder();

    public abstract  getProvince();

    public abstract  getProvinceOrBuilder();

    public abstract  getRoads();

    public abstract  getRoadsOrBuilder();

    public abstract boolean hasCity();

    public abstract boolean hasCrosses();

    public abstract boolean hasDistrict();

    public abstract boolean hasPois();

    public abstract boolean hasProvince();

    public abstract boolean hasRoads();
}
