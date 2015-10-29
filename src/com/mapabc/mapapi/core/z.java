// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.ExtensionRegistry;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            ReverseGeocodingProtoBuf

final class z
    implements com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
{

    z()
    {
    }

    public ExtensionRegistry assignDescriptors(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
    {
        com.google.protobuf.Descriptors.FileDescriptor _tmp = ReverseGeocodingProtoBuf.access$12002(filedescriptor);
        com.google.protobuf.Descriptors.Descriptor _tmp1 = ReverseGeocodingProtoBuf.access$002((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(0));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp2 = ReverseGeocodingProtoBuf.access$102(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$000(), new String[] {
            "Common", "SpatialXml"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp3 = ReverseGeocodingProtoBuf.access$1002((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(1));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp4 = ReverseGeocodingProtoBuf.access$1102(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$1000(), new String[] {
            "Spatial"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp5 = ReverseGeocodingProtoBuf.access$1902((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(2));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp6 = ReverseGeocodingProtoBuf.access$2002(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$1900(), new String[] {
            "Province", "City", "District", "Roads", "Pois", "Crosses"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp7 = ReverseGeocodingProtoBuf.access$3302((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(3));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp8 = ReverseGeocodingProtoBuf.access$3402(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$3300(), new String[] {
            "Name", "Code"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp9 = ReverseGeocodingProtoBuf.access$4302((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(4));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp10 = ReverseGeocodingProtoBuf.access$4402(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$4300(), new String[] {
            "Name", "Code", "Tel"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp11 = ReverseGeocodingProtoBuf.access$5402((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(5));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp12 = ReverseGeocodingProtoBuf.access$5502(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$5400(), new String[] {
            "Name", "Code", "X", "Y", "Bounds"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp13 = ReverseGeocodingProtoBuf.access$6702((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(6));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp14 = ReverseGeocodingProtoBuf.access$6802(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$6700(), new String[] {
            "Road"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp15 = ReverseGeocodingProtoBuf.access$7602((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(7));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp16 = ReverseGeocodingProtoBuf.access$7702(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$7600(), new String[] {
            "Id", "Name", "Ename", "Width", "Level", "Distance", "Direction"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp17 = ReverseGeocodingProtoBuf.access$9102((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(8));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp18 = ReverseGeocodingProtoBuf.access$9202(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$9100(), new String[] {
            "Poi"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp19 = ReverseGeocodingProtoBuf.access$10002((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(9));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp20 = ReverseGeocodingProtoBuf.access$10102(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$10000(), new String[] {
            "Cross"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp21 = ReverseGeocodingProtoBuf.access$10902((com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(10));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp22 = ReverseGeocodingProtoBuf.access$11002(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.access$10900(), new String[] {
            "Name", "X", "Y"
        }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder));
        return null;
    }
}
