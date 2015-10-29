// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.ExtensionRegistry;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            RGCProtoBuf

final class v
    implements com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
{

    v()
    {
    }

    public ExtensionRegistry assignDescriptors(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
    {
        com.google.protobuf.Descriptors.FileDescriptor _tmp = RGCProtoBuf.access$3902(filedescriptor);
        com.google.protobuf.Descriptors.Descriptor _tmp1 = RGCProtoBuf.access$002((com.google.protobuf.Descriptors.Descriptor)RGCProtoBuf.getDescriptor().getMessageTypes().get(0));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp2 = RGCProtoBuf.access$102(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(RGCProtoBuf.access$000(), new String[] {
            "Common", "X1", "Y1", "X2", "Y2", "Coors", "Cr", "Flag", "Type", "Z", 
            "Ts"
        }, com/mapabc/mapapi/core/RGCProtoBuf$RGCRequest, com/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp3 = RGCProtoBuf.access$1902((com.google.protobuf.Descriptors.Descriptor)RGCProtoBuf.getDescriptor().getMessageTypes().get(1));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp4 = RGCProtoBuf.access$2002(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(RGCProtoBuf.access$1900(), new String[] {
            "RgcItem"
        }, com/mapabc/mapapi/core/RGCProtoBuf$RGCResponse, com/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder));
        com.google.protobuf.Descriptors.Descriptor _tmp5 = RGCProtoBuf.access$2802((com.google.protobuf.Descriptors.Descriptor)RGCProtoBuf.getDescriptor().getMessageTypes().get(2));
        com.google.protobuf.GeneratedMessage.FieldAccessorTable _tmp6 = RGCProtoBuf.access$2902(new com.google.protobuf.GeneratedMessage.FieldAccessorTable(RGCProtoBuf.access$2800(), new String[] {
            "X", "Y", "Gridcode"
        }, com/mapabc/mapapi/core/RGCProtoBuf$RGCItem, com/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder));
        return null;
    }
}
