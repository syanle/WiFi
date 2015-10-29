// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

import com.google.protobuf.ExtensionRegistry;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            GeocodingProtoBuf

final class c
    implements com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
{

    c()
    {
    }

    public ExtensionRegistry assignDescriptors(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
    {
        com.google.protobuf.Descriptors.FileDescriptor _tmp = GeocodingProtoBuf.access$8102(filedescriptor);
        com.google.protobuf.Descriptors.Descriptor _tmp1 = GeocodingProtoBuf.access$002((com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(0));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp2 = GeocodingProtoBuf.access$102(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.access$000(), new String[] {
            "Common", "Address", "PoiNumber", "Ver"
        }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp3 = GeocodingProtoBuf.access$1202((com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(1));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp4 = GeocodingProtoBuf.access$1302(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.access$1200(), new String[] {
            "Count", "Geocoding", "Spellcorrect"
        }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp5 = GeocodingProtoBuf.access$2302((com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(2));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp6 = GeocodingProtoBuf.access$2402(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.access$2300(), new String[] {
            "Poi"
        }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp7 = GeocodingProtoBuf.access$3202((com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(3));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp8 = GeocodingProtoBuf.access$3302(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.access$3200(), new String[] {
            "Name", "Level", "X", "Y", "Address", "Province", "City", "Ename", "District", "Range", 
            "Num", "Inum", "Prox", "Score", "Eprovince", "Ecity", "Edistrict", "Eaddress", "Roadpts", "Subpois"
        }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp9 = GeocodingProtoBuf.access$6002((com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(4));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp10 = GeocodingProtoBuf.access$6102(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.access$6000(), new String[] {
            "Subpoi"
        }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp11 = GeocodingProtoBuf.access$6902((com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(5));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp12 = GeocodingProtoBuf.access$7002(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.access$6900(), new String[] {
            "Name", "Ename", "X", "Y"
        }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder));
        return null;
    }
}
