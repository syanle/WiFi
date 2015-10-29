// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            DescriptorProtos, ExtensionRegistry

final class a
    implements Descriptors.FileDescriptor.InternalDescriptorAssigner
{

    a()
    {
    }

    public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor filedescriptor)
    {
        Descriptors.FileDescriptor _tmp = DescriptorProtos.access$20602(filedescriptor);
        Descriptors.Descriptor _tmp1 = DescriptorProtos.access$002((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(0));
        GeneratedMessage.FieldAccessorTable _tmp2 = DescriptorProtos.access$102(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$000(), new String[] {
            "File"
        }, com/google/protobuf/DescriptorProtos$FileDescriptorSet, com/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder));
        Descriptors.Descriptor _tmp3 = DescriptorProtos.access$702((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(1));
        GeneratedMessage.FieldAccessorTable _tmp4 = DescriptorProtos.access$802(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$700(), new String[] {
            "Name", "Package", "Dependency", "MessageType", "EnumType", "Service", "Extension", "Options", "SourceCodeInfo"
        }, com/google/protobuf/DescriptorProtos$FileDescriptorProto, com/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder));
        Descriptors.Descriptor _tmp5 = DescriptorProtos.access$2302((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(2));
        GeneratedMessage.FieldAccessorTable _tmp6 = DescriptorProtos.access$2402(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$2300(), new String[] {
            "Name", "Field", "Extension", "NestedType", "EnumType", "ExtensionRange", "Options"
        }, com/google/protobuf/DescriptorProtos$DescriptorProto, com/google/protobuf/DescriptorProtos$DescriptorProto$Builder));
        Descriptors.Descriptor _tmp7 = DescriptorProtos.access$2502((Descriptors.Descriptor)DescriptorProtos.access$2300().getNestedTypes().get(0));
        GeneratedMessage.FieldAccessorTable _tmp8 = DescriptorProtos.access$2602(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$2500(), new String[] {
            "Start", "End"
        }, com/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange, com/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder));
        Descriptors.Descriptor _tmp9 = DescriptorProtos.access$4602((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(3));
        GeneratedMessage.FieldAccessorTable _tmp10 = DescriptorProtos.access$4702(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$4600(), new String[] {
            "Name", "Number", "Label", "Type", "TypeName", "Extendee", "DefaultValue", "Options"
        }, com/google/protobuf/DescriptorProtos$FieldDescriptorProto, com/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder));
        Descriptors.Descriptor _tmp11 = DescriptorProtos.access$6102((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(4));
        GeneratedMessage.FieldAccessorTable _tmp12 = DescriptorProtos.access$6202(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$6100(), new String[] {
            "Name", "Value", "Options"
        }, com/google/protobuf/DescriptorProtos$EnumDescriptorProto, com/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder));
        Descriptors.Descriptor _tmp13 = DescriptorProtos.access$7102((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(5));
        GeneratedMessage.FieldAccessorTable _tmp14 = DescriptorProtos.access$7202(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$7100(), new String[] {
            "Name", "Number", "Options"
        }, com/google/protobuf/DescriptorProtos$EnumValueDescriptorProto, com/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder));
        Descriptors.Descriptor _tmp15 = DescriptorProtos.access$8102((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(6));
        GeneratedMessage.FieldAccessorTable _tmp16 = DescriptorProtos.access$8202(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$8100(), new String[] {
            "Name", "Method", "Options"
        }, com/google/protobuf/DescriptorProtos$ServiceDescriptorProto, com/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder));
        Descriptors.Descriptor _tmp17 = DescriptorProtos.access$9102((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(7));
        GeneratedMessage.FieldAccessorTable _tmp18 = DescriptorProtos.access$9202(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$9100(), new String[] {
            "Name", "InputType", "OutputType", "Options"
        }, com/google/protobuf/DescriptorProtos$MethodDescriptorProto, com/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder));
        Descriptors.Descriptor _tmp19 = DescriptorProtos.access$10202((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(8));
        GeneratedMessage.FieldAccessorTable _tmp20 = DescriptorProtos.access$10302(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$10200(), new String[] {
            "JavaPackage", "JavaOuterClassname", "JavaMultipleFiles", "JavaGenerateEqualsAndHash", "OptimizeFor", "CcGenericServices", "JavaGenericServices", "PyGenericServices", "UninterpretedOption"
        }, com/google/protobuf/DescriptorProtos$FileOptions, com/google/protobuf/DescriptorProtos$FileOptions$Builder));
        Descriptors.Descriptor _tmp21 = DescriptorProtos.access$11802((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(9));
        GeneratedMessage.FieldAccessorTable _tmp22 = DescriptorProtos.access$11902(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$11800(), new String[] {
            "MessageSetWireFormat", "NoStandardDescriptorAccessor", "UninterpretedOption"
        }, com/google/protobuf/DescriptorProtos$MessageOptions, com/google/protobuf/DescriptorProtos$MessageOptions$Builder));
        Descriptors.Descriptor _tmp23 = DescriptorProtos.access$12802((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(10));
        GeneratedMessage.FieldAccessorTable _tmp24 = DescriptorProtos.access$12902(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$12800(), new String[] {
            "Ctype", "Packed", "Deprecated", "ExperimentalMapKey", "UninterpretedOption"
        }, com/google/protobuf/DescriptorProtos$FieldOptions, com/google/protobuf/DescriptorProtos$FieldOptions$Builder));
        Descriptors.Descriptor _tmp25 = DescriptorProtos.access$14002((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(11));
        GeneratedMessage.FieldAccessorTable _tmp26 = DescriptorProtos.access$14102(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$14000(), new String[] {
            "UninterpretedOption"
        }, com/google/protobuf/DescriptorProtos$EnumOptions, com/google/protobuf/DescriptorProtos$EnumOptions$Builder));
        Descriptors.Descriptor _tmp27 = DescriptorProtos.access$14702((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(12));
        GeneratedMessage.FieldAccessorTable _tmp28 = DescriptorProtos.access$14802(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$14700(), new String[] {
            "UninterpretedOption"
        }, com/google/protobuf/DescriptorProtos$EnumValueOptions, com/google/protobuf/DescriptorProtos$EnumValueOptions$Builder));
        Descriptors.Descriptor _tmp29 = DescriptorProtos.access$15402((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(13));
        GeneratedMessage.FieldAccessorTable _tmp30 = DescriptorProtos.access$15502(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$15400(), new String[] {
            "UninterpretedOption"
        }, com/google/protobuf/DescriptorProtos$ServiceOptions, com/google/protobuf/DescriptorProtos$ServiceOptions$Builder));
        Descriptors.Descriptor _tmp31 = DescriptorProtos.access$16102((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(14));
        GeneratedMessage.FieldAccessorTable _tmp32 = DescriptorProtos.access$16202(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$16100(), new String[] {
            "UninterpretedOption"
        }, com/google/protobuf/DescriptorProtos$MethodOptions, com/google/protobuf/DescriptorProtos$MethodOptions$Builder));
        Descriptors.Descriptor _tmp33 = DescriptorProtos.access$16802((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(15));
        GeneratedMessage.FieldAccessorTable _tmp34 = DescriptorProtos.access$16902(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$16800(), new String[] {
            "Name", "IdentifierValue", "PositiveIntValue", "NegativeIntValue", "DoubleValue", "StringValue", "AggregateValue"
        }, com/google/protobuf/DescriptorProtos$UninterpretedOption, com/google/protobuf/DescriptorProtos$UninterpretedOption$Builder));
        Descriptors.Descriptor _tmp35 = DescriptorProtos.access$17002((Descriptors.Descriptor)DescriptorProtos.access$16800().getNestedTypes().get(0));
        GeneratedMessage.FieldAccessorTable _tmp36 = DescriptorProtos.access$17102(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$17000(), new String[] {
            "NamePart", "IsExtension"
        }, com/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart, com/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder));
        Descriptors.Descriptor _tmp37 = DescriptorProtos.access$19102((Descriptors.Descriptor)DescriptorProtos.getDescriptor().getMessageTypes().get(16));
        GeneratedMessage.FieldAccessorTable _tmp38 = DescriptorProtos.access$19202(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$19100(), new String[] {
            "Location"
        }, com/google/protobuf/DescriptorProtos$SourceCodeInfo, com/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder));
        Descriptors.Descriptor _tmp39 = DescriptorProtos.access$19302((Descriptors.Descriptor)DescriptorProtos.access$19100().getNestedTypes().get(0));
        GeneratedMessage.FieldAccessorTable _tmp40 = DescriptorProtos.access$19402(new GeneratedMessage.FieldAccessorTable(DescriptorProtos.access$19300(), new String[] {
            "Path", "Span"
        }, com/google/protobuf/DescriptorProtos$SourceCodeInfo$Location, com/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder));
        return null;
    }
}
