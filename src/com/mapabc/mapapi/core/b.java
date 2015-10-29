// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.ExtensionRegistry;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            CommonProtoBuf

final class b
    implements com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
{

    b()
    {
    }

    public ExtensionRegistry assignDescriptors(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
    {
        com.google.protobuf.Descriptors.FileDescriptor _tmp = CommonProtoBuf.access$5002(filedescriptor);
        com.google.protobuf.Descriptors.Descriptor _tmp1 = CommonProtoBuf.access$002((com.google.protobuf.Descriptors.Descriptor)CommonProtoBuf.getDescriptor().getMessageTypes().get(0));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp2 = CommonProtoBuf.access$102(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(CommonProtoBuf.access$000(), new String[] {
            "Config", "AK", "ResType", "Enc"
        }, com/mapabc/mapapi/core/CommonProtoBuf$Common, com/mapabc/mapapi/core/CommonProtoBuf$Common$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp3 = CommonProtoBuf.access$1202((com.google.protobuf.Descriptors.Descriptor)CommonProtoBuf.getDescriptor().getMessageTypes().get(1));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp4 = CommonProtoBuf.access$1302(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(CommonProtoBuf.access$1200(), new String[] {
            "Pguid", "Name", "Type", "X", "Y", "Srctype", "Address", "Timestamp", "Match", "Code", 
            "Newtype", "Citycode", "Typecode", "Gridcode", "Buscode", "Url", "Xml", "Imageid", "Tel", "Linkid", 
            "Distance", "Drivedistance"
        }, com/mapabc/mapapi/core/CommonProtoBuf$POI, com/mapabc/mapapi/core/CommonProtoBuf$POI$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp5 = CommonProtoBuf.access$4202((com.google.protobuf.Descriptors.Descriptor)CommonProtoBuf.getDescriptor().getMessageTypes().get(2));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp6 = CommonProtoBuf.access$4302(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(CommonProtoBuf.access$4200(), new String[] {
            "Data"
        }, com/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect, com/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder));
        return null;
    }
}
