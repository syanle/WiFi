// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage, DescriptorProtos, b, c, 
//            ByteString, InvalidProtocolBufferException, Internal, CodedOutputStream, 
//            UnknownFieldSet, a, ExtensionRegistryLite, CodedInputStream, 
//            Message, MessageLite, UninitializedMessageException, SingleFieldBuilder, 
//            ProtocolMessageEnum

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends GeneratedMessage.Builder
        implements DescriptorProtos.FieldDescriptorProtoOrBuilder
    {

        private int bitField0_;
        private Object defaultValue_;
        private Object extendee_;
        private Label label_;
        private Object name_;
        private int number_;
        private SingleFieldBuilder optionsBuilder_;
        private DescriptorProtos.FieldOptions options_;
        private Object typeName_;
        private Type type_;

        private DescriptorProtos.FieldDescriptorProto buildParsed()
            throws InvalidProtocolBufferException
        {
            DescriptorProtos.FieldDescriptorProto fielddescriptorproto = buildPartial();
            if (!fielddescriptorproto.isInitialized())
            {
                throw newUninitializedMessageException(fielddescriptorproto).asInvalidProtocolBufferException();
            } else
            {
                return fielddescriptorproto;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        public static final Descriptors.Descriptor getDescriptor()
        {
            return DescriptorProtos.access$4600();
        }

        private SingleFieldBuilder getOptionsFieldBuilder()
        {
            if (optionsBuilder_ == null)
            {
                optionsBuilder_ = new SingleFieldBuilder(options_, getParentForChildren(), isClean());
                options_ = null;
            }
            return optionsBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (GeneratedMessage.alwaysUseFieldBuilders)
            {
                getOptionsFieldBuilder();
            }
        }

        public DescriptorProtos.FieldDescriptorProto build()
        {
            DescriptorProtos.FieldDescriptorProto fielddescriptorproto = buildPartial();
            if (!fielddescriptorproto.isInitialized())
            {
                throw newUninitializedMessageException(fielddescriptorproto);
            } else
            {
                return fielddescriptorproto;
            }
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public DescriptorProtos.FieldDescriptorProto buildPartial()
        {
            int j = 1;
            DescriptorProtos.FieldDescriptorProto fielddescriptorproto = new DescriptorProtos.FieldDescriptorProto(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            fielddescriptorproto.name_ = name_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            fielddescriptorproto.number_ = number_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            fielddescriptorproto.label_ = label_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            fielddescriptorproto.type_ = type_;
            j = i;
            if ((k & 0x10) == 16)
            {
                j = i | 0x10;
            }
            fielddescriptorproto.typeName_ = typeName_;
            i = j;
            if ((k & 0x20) == 32)
            {
                i = j | 0x20;
            }
            fielddescriptorproto.extendee_ = extendee_;
            j = i;
            if ((k & 0x40) == 64)
            {
                j = i | 0x40;
            }
            fielddescriptorproto.defaultValue_ = defaultValue_;
            if ((k & 0x80) == 128)
            {
                i = j | 0x80;
            } else
            {
                i = j;
            }
            if (optionsBuilder_ == null)
            {
                fielddescriptorproto.options_ = options_;
            } else
            {
                fielddescriptorproto.options_ = (DescriptorProtos.FieldOptions)optionsBuilder_.build();
            }
            fielddescriptorproto.bitField0_ = i;
            onBuilt();
            return fielddescriptorproto;
        }

        public volatile Message buildPartial()
        {
            return buildPartial();
        }

        public volatile MessageLite buildPartial()
        {
            return buildPartial();
        }

        public volatile AbstractMessage.Builder clear()
        {
            return clear();
        }

        public Builder clear()
        {
            super.clear();
            name_ = "";
            bitField0_ = bitField0_ & -2;
            number_ = 0;
            bitField0_ = bitField0_ & -3;
            label_ = Label.LABEL_OPTIONAL;
            bitField0_ = bitField0_ & -5;
            type_ = Type.TYPE_DOUBLE;
            bitField0_ = bitField0_ & -9;
            typeName_ = "";
            bitField0_ = bitField0_ & 0xffffffef;
            extendee_ = "";
            bitField0_ = bitField0_ & 0xffffffdf;
            defaultValue_ = "";
            bitField0_ = bitField0_ & 0xffffffbf;
            if (optionsBuilder_ == null)
            {
                options_ = DescriptorProtos.FieldOptions.getDefaultInstance();
            } else
            {
                optionsBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffff7f;
            return this;
        }

        public volatile GeneratedMessage.Builder clear()
        {
            return clear();
        }

        public volatile Message.Builder clear()
        {
            return clear();
        }

        public volatile MessageLite.Builder clear()
        {
            return clear();
        }

        public Builder clearDefaultValue()
        {
            bitField0_ = bitField0_ & 0xffffffbf;
            defaultValue_ = DescriptorProtos.FieldDescriptorProto.getDefaultInstance().getDefaultValue();
            onChanged();
            return this;
        }

        public Builder clearExtendee()
        {
            bitField0_ = bitField0_ & 0xffffffdf;
            extendee_ = DescriptorProtos.FieldDescriptorProto.getDefaultInstance().getExtendee();
            onChanged();
            return this;
        }

        public Builder clearLabel()
        {
            bitField0_ = bitField0_ & -5;
            label_ = Label.LABEL_OPTIONAL;
            onChanged();
            return this;
        }

        public Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = DescriptorProtos.FieldDescriptorProto.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder clearNumber()
        {
            bitField0_ = bitField0_ & -3;
            number_ = 0;
            onChanged();
            return this;
        }

        public Builder clearOptions()
        {
            if (optionsBuilder_ == null)
            {
                options_ = DescriptorProtos.FieldOptions.getDefaultInstance();
                onChanged();
            } else
            {
                optionsBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffff7f;
            return this;
        }

        public Builder clearType()
        {
            bitField0_ = bitField0_ & -9;
            type_ = Type.TYPE_DOUBLE;
            onChanged();
            return this;
        }

        public Builder clearTypeName()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            typeName_ = DescriptorProtos.FieldDescriptorProto.getDefaultInstance().getTypeName();
            onChanged();
            return this;
        }

        public volatile AbstractMessage.Builder clone()
        {
            return clone();
        }

        public volatile AbstractMessageLite.Builder clone()
        {
            return clone();
        }

        public Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile GeneratedMessage.Builder clone()
        {
            return clone();
        }

        public volatile Message.Builder clone()
        {
            return clone();
        }

        public volatile MessageLite.Builder clone()
        {
            return clone();
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public DescriptorProtos.FieldDescriptorProto getDefaultInstanceForType()
        {
            return DescriptorProtos.FieldDescriptorProto.getDefaultInstance();
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public String getDefaultValue()
        {
            Object obj = defaultValue_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                defaultValue_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public Descriptors.Descriptor getDescriptorForType()
        {
            return DescriptorProtos.FieldDescriptorProto.getDescriptor();
        }

        public String getExtendee()
        {
            Object obj = extendee_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                extendee_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public Label getLabel()
        {
            return label_;
        }

        public String getName()
        {
            Object obj = name_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                name_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public int getNumber()
        {
            return number_;
        }

        public DescriptorProtos.FieldOptions getOptions()
        {
            if (optionsBuilder_ == null)
            {
                return options_;
            } else
            {
                return (DescriptorProtos.FieldOptions)optionsBuilder_.getMessage();
            }
        }

        public DescriptorProtos.FieldOptions.Builder getOptionsBuilder()
        {
            bitField0_ = bitField0_ | 0x80;
            onChanged();
            return (DescriptorProtos.FieldOptions.Builder)getOptionsFieldBuilder().getBuilder();
        }

        public DescriptorProtos.FieldOptionsOrBuilder getOptionsOrBuilder()
        {
            if (optionsBuilder_ != null)
            {
                return (DescriptorProtos.FieldOptionsOrBuilder)optionsBuilder_.getMessageOrBuilder();
            } else
            {
                return options_;
            }
        }

        public Type getType()
        {
            return type_;
        }

        public String getTypeName()
        {
            Object obj = typeName_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                typeName_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public boolean hasDefaultValue()
        {
            return (bitField0_ & 0x40) == 64;
        }

        public boolean hasExtendee()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasLabel()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasNumber()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasOptions()
        {
            return (bitField0_ & 0x80) == 128;
        }

        public boolean hasType()
        {
            return (bitField0_ & 8) == 8;
        }

        public boolean hasTypeName()
        {
            return (bitField0_ & 0x10) == 16;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return DescriptorProtos.access$4700();
        }

        public final boolean isInitialized()
        {
            return !hasOptions() || getOptions().isInitialized();
        }

        public volatile AbstractMessage.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile AbstractMessage.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public volatile AbstractMessageLite.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            UnknownFieldSet.Builder builder = UnknownFieldSet.newBuilder(getUnknownFields());
            do
            {
                int i = codedinputstream.readTag();
                switch (i)
                {
                default:
                    if (!parseUnknownField(codedinputstream, builder, extensionregistrylite, i))
                    {
                        setUnknownFields(builder.build());
                        onChanged();
                        return this;
                    }
                    break;

                case 0: // '\0'
                    setUnknownFields(builder.build());
                    onChanged();
                    return this;

                case 10: // '\n'
                    bitField0_ = bitField0_ | 1;
                    name_ = codedinputstream.readBytes();
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 0x20;
                    extendee_ = codedinputstream.readBytes();
                    break;

                case 24: // '\030'
                    bitField0_ = bitField0_ | 2;
                    number_ = codedinputstream.readInt32();
                    break;

                case 32: // ' '
                    int j = codedinputstream.readEnum();
                    Label label = Label.valueOf(j);
                    if (label == null)
                    {
                        builder.mergeVarintField(4, j);
                    } else
                    {
                        bitField0_ = bitField0_ | 4;
                        label_ = label;
                    }
                    break;

                case 40: // '('
                    int k = codedinputstream.readEnum();
                    Type type = Type.valueOf(k);
                    if (type == null)
                    {
                        builder.mergeVarintField(5, k);
                    } else
                    {
                        bitField0_ = bitField0_ | 8;
                        type_ = type;
                    }
                    break;

                case 50: // '2'
                    bitField0_ = bitField0_ | 0x10;
                    typeName_ = codedinputstream.readBytes();
                    break;

                case 58: // ':'
                    bitField0_ = bitField0_ | 0x40;
                    defaultValue_ = codedinputstream.readBytes();
                    break;

                case 66: // 'B'
                    DescriptorProtos.FieldOptions.Builder builder1 = DescriptorProtos.FieldOptions.newBuilder();
                    if (hasOptions())
                    {
                        builder1.mergeFrom(getOptions());
                    }
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    setOptions(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(DescriptorProtos.FieldDescriptorProto fielddescriptorproto)
        {
            if (fielddescriptorproto == DescriptorProtos.FieldDescriptorProto.getDefaultInstance())
            {
                return this;
            }
            if (fielddescriptorproto.hasName())
            {
                setName(fielddescriptorproto.getName());
            }
            if (fielddescriptorproto.hasNumber())
            {
                setNumber(fielddescriptorproto.getNumber());
            }
            if (fielddescriptorproto.hasLabel())
            {
                setLabel(fielddescriptorproto.getLabel());
            }
            if (fielddescriptorproto.hasType())
            {
                setType(fielddescriptorproto.getType());
            }
            if (fielddescriptorproto.hasTypeName())
            {
                setTypeName(fielddescriptorproto.getTypeName());
            }
            if (fielddescriptorproto.hasExtendee())
            {
                setExtendee(fielddescriptorproto.getExtendee());
            }
            if (fielddescriptorproto.hasDefaultValue())
            {
                setDefaultValue(fielddescriptorproto.getDefaultValue());
            }
            if (fielddescriptorproto.hasOptions())
            {
                mergeOptions(fielddescriptorproto.getOptions());
            }
            mergeUnknownFields(fielddescriptorproto.getUnknownFields());
            return this;
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof DescriptorProtos.FieldDescriptorProto)
            {
                return mergeFrom((DescriptorProtos.FieldDescriptorProto)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public volatile Message.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile Message.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public volatile MessageLite.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public Builder mergeOptions(DescriptorProtos.FieldOptions fieldoptions)
        {
            if (optionsBuilder_ == null)
            {
                if ((bitField0_ & 0x80) == 128 && options_ != DescriptorProtos.FieldOptions.getDefaultInstance())
                {
                    options_ = DescriptorProtos.FieldOptions.newBuilder(options_).mergeFrom(fieldoptions).buildPartial();
                } else
                {
                    options_ = fieldoptions;
                }
                onChanged();
            } else
            {
                optionsBuilder_.mergeFrom(fieldoptions);
            }
            bitField0_ = bitField0_ | 0x80;
            return this;
        }

        public Builder setDefaultValue(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x40;
                defaultValue_ = s;
                onChanged();
                return this;
            }
        }

        void setDefaultValue(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x40;
            defaultValue_ = bytestring;
            onChanged();
        }

        public Builder setExtendee(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x20;
                extendee_ = s;
                onChanged();
                return this;
            }
        }

        void setExtendee(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x20;
            extendee_ = bytestring;
            onChanged();
        }

        public Builder setLabel(Label label)
        {
            if (label == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                label_ = label;
                onChanged();
                return this;
            }
        }

        public Builder setName(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 1;
                name_ = s;
                onChanged();
                return this;
            }
        }

        void setName(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 1;
            name_ = bytestring;
            onChanged();
        }

        public Builder setNumber(int i)
        {
            bitField0_ = bitField0_ | 2;
            number_ = i;
            onChanged();
            return this;
        }

        public Builder setOptions(DescriptorProtos.FieldOptions.Builder builder)
        {
            if (optionsBuilder_ == null)
            {
                options_ = builder.build();
                onChanged();
            } else
            {
                optionsBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 0x80;
            return this;
        }

        public Builder setOptions(DescriptorProtos.FieldOptions fieldoptions)
        {
            if (optionsBuilder_ == null)
            {
                if (fieldoptions == null)
                {
                    throw new NullPointerException();
                }
                options_ = fieldoptions;
                onChanged();
            } else
            {
                optionsBuilder_.setMessage(fieldoptions);
            }
            bitField0_ = bitField0_ | 0x80;
            return this;
        }

        public Builder setType(Type type)
        {
            if (type == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 8;
                type_ = type;
                onChanged();
                return this;
            }
        }

        public Builder setTypeName(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x10;
                typeName_ = s;
                onChanged();
                return this;
            }
        }

        void setTypeName(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x10;
            typeName_ = bytestring;
            onChanged();
        }



        private Builder()
        {
            name_ = "";
            label_ = Label.LABEL_OPTIONAL;
            type_ = Type.TYPE_DOUBLE;
            typeName_ = "";
            extendee_ = "";
            defaultValue_ = "";
            options_ = DescriptorProtos.FieldOptions.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            label_ = Label.LABEL_OPTIONAL;
            type_ = Type.TYPE_DOUBLE;
            typeName_ = "";
            extendee_ = "";
            defaultValue_ = "";
            options_ = DescriptorProtos.FieldOptions.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        Builder(GeneratedMessage.BuilderParent builderparent, a a)
        {
            this(builderparent);
        }
    }

    public static final class Label extends Enum
        implements ProtocolMessageEnum
    {

        private static final Label $VALUES[];
        public static final Label LABEL_OPTIONAL;
        public static final int LABEL_OPTIONAL_VALUE = 1;
        public static final Label LABEL_REPEATED;
        public static final int LABEL_REPEATED_VALUE = 3;
        public static final Label LABEL_REQUIRED;
        public static final int LABEL_REQUIRED_VALUE = 2;
        private static final Label VALUES[];
        private static Internal.EnumLiteMap internalValueMap = new b();
        private final int index;
        private final int value;

        public static final Descriptors.EnumDescriptor getDescriptor()
        {
            return (Descriptors.EnumDescriptor)DescriptorProtos.FieldDescriptorProto.getDescriptor().getEnumTypes().get(1);
        }

        public static Internal.EnumLiteMap internalGetValueMap()
        {
            return internalValueMap;
        }

        public static Label valueOf(int i)
        {
            switch (i)
            {
            default:
                return null;

            case 1: // '\001'
                return LABEL_OPTIONAL;

            case 2: // '\002'
                return LABEL_REQUIRED;

            case 3: // '\003'
                return LABEL_REPEATED;
            }
        }

        public static Label valueOf(Descriptors.EnumValueDescriptor enumvaluedescriptor)
        {
            if (enumvaluedescriptor.getType() != getDescriptor())
            {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            } else
            {
                return VALUES[enumvaluedescriptor.getIndex()];
            }
        }

        public static Label valueOf(String s)
        {
            return (Label)Enum.valueOf(com/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label, s);
        }

        public static Label[] values()
        {
            return (Label[])$VALUES.clone();
        }

        public final Descriptors.EnumDescriptor getDescriptorForType()
        {
            return getDescriptor();
        }

        public final int getNumber()
        {
            return value;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor()
        {
            return (Descriptors.EnumValueDescriptor)getDescriptor().getValues().get(index);
        }

        static 
        {
            LABEL_OPTIONAL = new Label("LABEL_OPTIONAL", 0, 0, 1);
            LABEL_REQUIRED = new Label("LABEL_REQUIRED", 1, 1, 2);
            LABEL_REPEATED = new Label("LABEL_REPEATED", 2, 2, 3);
            $VALUES = (new Label[] {
                LABEL_OPTIONAL, LABEL_REQUIRED, LABEL_REPEATED
            });
            VALUES = (new Label[] {
                LABEL_OPTIONAL, LABEL_REQUIRED, LABEL_REPEATED
            });
        }

        private Label(String s, int i, int j, int k)
        {
            super(s, i);
            index = j;
            value = k;
        }
    }

    public static final class Type extends Enum
        implements ProtocolMessageEnum
    {

        private static final Type $VALUES[];
        public static final Type TYPE_BOOL;
        public static final int TYPE_BOOL_VALUE = 8;
        public static final Type TYPE_BYTES;
        public static final int TYPE_BYTES_VALUE = 12;
        public static final Type TYPE_DOUBLE;
        public static final int TYPE_DOUBLE_VALUE = 1;
        public static final Type TYPE_ENUM;
        public static final int TYPE_ENUM_VALUE = 14;
        public static final Type TYPE_FIXED32;
        public static final int TYPE_FIXED32_VALUE = 7;
        public static final Type TYPE_FIXED64;
        public static final int TYPE_FIXED64_VALUE = 6;
        public static final Type TYPE_FLOAT;
        public static final int TYPE_FLOAT_VALUE = 2;
        public static final Type TYPE_GROUP;
        public static final int TYPE_GROUP_VALUE = 10;
        public static final Type TYPE_INT32;
        public static final int TYPE_INT32_VALUE = 5;
        public static final Type TYPE_INT64;
        public static final int TYPE_INT64_VALUE = 3;
        public static final Type TYPE_MESSAGE;
        public static final int TYPE_MESSAGE_VALUE = 11;
        public static final Type TYPE_SFIXED32;
        public static final int TYPE_SFIXED32_VALUE = 15;
        public static final Type TYPE_SFIXED64;
        public static final int TYPE_SFIXED64_VALUE = 16;
        public static final Type TYPE_SINT32;
        public static final int TYPE_SINT32_VALUE = 17;
        public static final Type TYPE_SINT64;
        public static final int TYPE_SINT64_VALUE = 18;
        public static final Type TYPE_STRING;
        public static final int TYPE_STRING_VALUE = 9;
        public static final Type TYPE_UINT32;
        public static final int TYPE_UINT32_VALUE = 13;
        public static final Type TYPE_UINT64;
        public static final int TYPE_UINT64_VALUE = 4;
        private static final Type VALUES[];
        private static Internal.EnumLiteMap internalValueMap = new c();
        private final int index;
        private final int value;

        public static final Descriptors.EnumDescriptor getDescriptor()
        {
            return (Descriptors.EnumDescriptor)DescriptorProtos.FieldDescriptorProto.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap internalGetValueMap()
        {
            return internalValueMap;
        }

        public static Type valueOf(int i)
        {
            switch (i)
            {
            default:
                return null;

            case 1: // '\001'
                return TYPE_DOUBLE;

            case 2: // '\002'
                return TYPE_FLOAT;

            case 3: // '\003'
                return TYPE_INT64;

            case 4: // '\004'
                return TYPE_UINT64;

            case 5: // '\005'
                return TYPE_INT32;

            case 6: // '\006'
                return TYPE_FIXED64;

            case 7: // '\007'
                return TYPE_FIXED32;

            case 8: // '\b'
                return TYPE_BOOL;

            case 9: // '\t'
                return TYPE_STRING;

            case 10: // '\n'
                return TYPE_GROUP;

            case 11: // '\013'
                return TYPE_MESSAGE;

            case 12: // '\f'
                return TYPE_BYTES;

            case 13: // '\r'
                return TYPE_UINT32;

            case 14: // '\016'
                return TYPE_ENUM;

            case 15: // '\017'
                return TYPE_SFIXED32;

            case 16: // '\020'
                return TYPE_SFIXED64;

            case 17: // '\021'
                return TYPE_SINT32;

            case 18: // '\022'
                return TYPE_SINT64;
            }
        }

        public static Type valueOf(Descriptors.EnumValueDescriptor enumvaluedescriptor)
        {
            if (enumvaluedescriptor.getType() != getDescriptor())
            {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            } else
            {
                return VALUES[enumvaluedescriptor.getIndex()];
            }
        }

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        public final Descriptors.EnumDescriptor getDescriptorForType()
        {
            return getDescriptor();
        }

        public final int getNumber()
        {
            return value;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor()
        {
            return (Descriptors.EnumValueDescriptor)getDescriptor().getValues().get(index);
        }

        static 
        {
            TYPE_DOUBLE = new Type("TYPE_DOUBLE", 0, 0, 1);
            TYPE_FLOAT = new Type("TYPE_FLOAT", 1, 1, 2);
            TYPE_INT64 = new Type("TYPE_INT64", 2, 2, 3);
            TYPE_UINT64 = new Type("TYPE_UINT64", 3, 3, 4);
            TYPE_INT32 = new Type("TYPE_INT32", 4, 4, 5);
            TYPE_FIXED64 = new Type("TYPE_FIXED64", 5, 5, 6);
            TYPE_FIXED32 = new Type("TYPE_FIXED32", 6, 6, 7);
            TYPE_BOOL = new Type("TYPE_BOOL", 7, 7, 8);
            TYPE_STRING = new Type("TYPE_STRING", 8, 8, 9);
            TYPE_GROUP = new Type("TYPE_GROUP", 9, 9, 10);
            TYPE_MESSAGE = new Type("TYPE_MESSAGE", 10, 10, 11);
            TYPE_BYTES = new Type("TYPE_BYTES", 11, 11, 12);
            TYPE_UINT32 = new Type("TYPE_UINT32", 12, 12, 13);
            TYPE_ENUM = new Type("TYPE_ENUM", 13, 13, 14);
            TYPE_SFIXED32 = new Type("TYPE_SFIXED32", 14, 14, 15);
            TYPE_SFIXED64 = new Type("TYPE_SFIXED64", 15, 15, 16);
            TYPE_SINT32 = new Type("TYPE_SINT32", 16, 16, 17);
            TYPE_SINT64 = new Type("TYPE_SINT64", 17, 17, 18);
            $VALUES = (new Type[] {
                TYPE_DOUBLE, TYPE_FLOAT, TYPE_INT64, TYPE_UINT64, TYPE_INT32, TYPE_FIXED64, TYPE_FIXED32, TYPE_BOOL, TYPE_STRING, TYPE_GROUP, 
                TYPE_MESSAGE, TYPE_BYTES, TYPE_UINT32, TYPE_ENUM, TYPE_SFIXED32, TYPE_SFIXED64, TYPE_SINT32, TYPE_SINT64
            });
            VALUES = (new Type[] {
                TYPE_DOUBLE, TYPE_FLOAT, TYPE_INT64, TYPE_UINT64, TYPE_INT32, TYPE_FIXED64, TYPE_FIXED32, TYPE_BOOL, TYPE_STRING, TYPE_GROUP, 
                TYPE_MESSAGE, TYPE_BYTES, TYPE_UINT32, TYPE_ENUM, TYPE_SFIXED32, TYPE_SFIXED64, TYPE_SINT32, TYPE_SINT64
            });
        }

        private Type(String s, int i, int j, int k)
        {
            super(s, i);
            index = j;
            value = k;
        }
    }


    public static final int DEFAULT_VALUE_FIELD_NUMBER = 7;
    public static final int EXTENDEE_FIELD_NUMBER = 2;
    public static final int LABEL_FIELD_NUMBER = 4;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int NUMBER_FIELD_NUMBER = 3;
    public static final int OPTIONS_FIELD_NUMBER = 8;
    public static final int TYPE_FIELD_NUMBER = 5;
    public static final int TYPE_NAME_FIELD_NUMBER = 6;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object defaultValue_;
    private Object extendee_;
    private Label label_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private Object name_;
    private int number_;
    private Label options_;
    private Object typeName_;
    private Type type_;

    public static Type getDefaultInstance()
    {
        return defaultInstance;
    }

    private ByteString getDefaultValueBytes()
    {
        Object obj = defaultValue_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            defaultValue_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    public static final defaultValue_ getDescriptor()
    {
        return DescriptorProtos.access$4600();
    }

    private ByteString getExtendeeBytes()
    {
        Object obj = extendee_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            extendee_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getNameBytes()
    {
        Object obj = name_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            name_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getTypeNameBytes()
    {
        Object obj = typeName_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            typeName_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private void initFields()
    {
        name_ = "";
        number_ = 0;
        label_ = Label.LABEL_OPTIONAL;
        type_ = Type.TYPE_DOUBLE;
        typeName_ = "";
        extendee_ = "";
        defaultValue_ = "";
        options_ = ltInstance();
    }

    public static Builder newBuilder()
    {
        return Builder.create();
    }

    public static Builder newBuilder(Builder.create create)
    {
        return newBuilder().mergeFrom(create);
    }

    public static Builder.mergeFrom parseDelimitedFrom(InputStream inputstream)
        throws IOException
    {
        Builder builder = newBuilder();
        if (builder.mergeDelimitedFrom(inputstream))
        {
            return builder.buildParsed();
        } else
        {
            return null;
        }
    }

    public static Builder.buildParsed parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        Builder builder = newBuilder();
        if (builder.mergeDelimitedFrom(inputstream, extensionregistrylite))
        {
            return builder.buildParsed();
        } else
        {
            return null;
        }
    }

    public static Builder.buildParsed parseFrom(ByteString bytestring)
        throws InvalidProtocolBufferException
    {
        return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
    }

    public static Builder.buildParsed parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
        throws InvalidProtocolBufferException
    {
        return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
    }

    public static Builder.buildParsed parseFrom(CodedInputStream codedinputstream)
        throws IOException
    {
        return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
    }

    public static Builder.buildParsed parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
    }

    public static Builder.buildParsed parseFrom(InputStream inputstream)
        throws IOException
    {
        return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
    }

    public static Builder.buildParsed parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
    }

    public static Builder.buildParsed parseFrom(byte abyte0[])
        throws InvalidProtocolBufferException
    {
        return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
    }

    public static Builder.buildParsed parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
        throws InvalidProtocolBufferException
    {
        return ((Builder)newBuilder().mergeFrom(abyte0, extensionregistrylite)).buildParsed();
    }

    public Builder.buildParsed getDefaultInstanceForType()
    {
        return defaultInstance;
    }

    public volatile Message getDefaultInstanceForType()
    {
        return getDefaultInstanceForType();
    }

    public volatile MessageLite getDefaultInstanceForType()
    {
        return getDefaultInstanceForType();
    }

    public String getDefaultValue()
    {
        Object obj = defaultValue_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            defaultValue_ = s;
        }
        return s;
    }

    public String getExtendee()
    {
        Object obj = extendee_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            extendee_ = s;
        }
        return s;
    }

    public Label getLabel()
    {
        return label_;
    }

    public String getName()
    {
        Object obj = name_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            name_ = s;
        }
        return s;
    }

    public int getNumber()
    {
        return number_;
    }

    public number_ getOptions()
    {
        return options_;
    }

    public  getOptionsOrBuilder()
    {
        return options_;
    }

    public int getSerializedSize()
    {
        int i = memoizedSerializedSize;
        if (i != -1)
        {
            return i;
        }
        int j = 0;
        if ((bitField0_ & 1) == 1)
        {
            j = 0 + CodedOutputStream.computeBytesSize(1, getNameBytes());
        }
        i = j;
        if ((bitField0_ & 0x20) == 32)
        {
            i = j + CodedOutputStream.computeBytesSize(2, getExtendeeBytes());
        }
        j = i;
        if ((bitField0_ & 2) == 2)
        {
            j = i + CodedOutputStream.computeInt32Size(3, number_);
        }
        i = j;
        if ((bitField0_ & 4) == 4)
        {
            i = j + CodedOutputStream.computeEnumSize(4, label_.getNumber());
        }
        j = i;
        if ((bitField0_ & 8) == 8)
        {
            j = i + CodedOutputStream.computeEnumSize(5, type_.getNumber());
        }
        i = j;
        if ((bitField0_ & 0x10) == 16)
        {
            i = j + CodedOutputStream.computeBytesSize(6, getTypeNameBytes());
        }
        j = i;
        if ((bitField0_ & 0x40) == 64)
        {
            j = i + CodedOutputStream.computeBytesSize(7, getDefaultValueBytes());
        }
        i = j;
        if ((bitField0_ & 0x80) == 128)
        {
            i = j + CodedOutputStream.computeMessageSize(8, options_);
        }
        i += getUnknownFields().getSerializedSize();
        memoizedSerializedSize = i;
        return i;
    }

    public Type getType()
    {
        return type_;
    }

    public String getTypeName()
    {
        Object obj = typeName_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            typeName_ = s;
        }
        return s;
    }

    public boolean hasDefaultValue()
    {
        return (bitField0_ & 0x40) == 64;
    }

    public boolean hasExtendee()
    {
        return (bitField0_ & 0x20) == 32;
    }

    public boolean hasLabel()
    {
        return (bitField0_ & 4) == 4;
    }

    public boolean hasName()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasNumber()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasOptions()
    {
        return (bitField0_ & 0x80) == 128;
    }

    public boolean hasType()
    {
        return (bitField0_ & 8) == 8;
    }

    public boolean hasTypeName()
    {
        return (bitField0_ & 0x10) == 16;
    }

    protected bitField0_ internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$4700();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        if (hasOptions() && !getOptions().lized())
        {
            memoizedIsInitialized = 0;
            return false;
        } else
        {
            memoizedIsInitialized = 1;
            return true;
        }
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(newBuilder newbuilder)
    {
        return new Builder(newbuilder, null);
    }

    public volatile Builder newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile newBuilderForType newBuilderForType(newBuilderForType newbuilderfortype)
    {
        return newBuilderForType(newbuilderfortype);
    }

    public volatile newBuilderForType newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder toBuilder()
    {
        return newBuilder(this);
    }

    public volatile newBuilder toBuilder()
    {
        return toBuilder();
    }

    public volatile toBuilder toBuilder()
    {
        return toBuilder();
    }

    protected Object writeReplace()
        throws ObjectStreamException
    {
        return super.writeReplace();
    }

    public void writeTo(CodedOutputStream codedoutputstream)
        throws IOException
    {
        getSerializedSize();
        if ((bitField0_ & 1) == 1)
        {
            codedoutputstream.writeBytes(1, getNameBytes());
        }
        if ((bitField0_ & 0x20) == 32)
        {
            codedoutputstream.writeBytes(2, getExtendeeBytes());
        }
        if ((bitField0_ & 2) == 2)
        {
            codedoutputstream.writeInt32(3, number_);
        }
        if ((bitField0_ & 4) == 4)
        {
            codedoutputstream.writeEnum(4, label_.getNumber());
        }
        if ((bitField0_ & 8) == 8)
        {
            codedoutputstream.writeEnum(5, type_.getNumber());
        }
        if ((bitField0_ & 0x10) == 16)
        {
            codedoutputstream.writeBytes(6, getTypeNameBytes());
        }
        if ((bitField0_ & 0x40) == 64)
        {
            codedoutputstream.writeBytes(7, getDefaultValueBytes());
        }
        if ((bitField0_ & 0x80) == 128)
        {
            codedoutputstream.writeMessage(8, options_);
        }
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }


/*
    static Object access$5202(Builder builder, Object obj)
    {
        builder.name_ = obj;
        return obj;
    }

*/


/*
    static int access$5302(name_ name_1, int i)
    {
        name_1.number_ = i;
        return i;
    }

*/


/*
    static Label access$5402(Label label, Label label1)
    {
        label.label_ = label1;
        return label1;
    }

*/


/*
    static Type access$5502(Type type, Type type1)
    {
        type.type_ = type1;
        return type1;
    }

*/


/*
    static Object access$5602(type_ type_1, Object obj)
    {
        type_1.typeName_ = obj;
        return obj;
    }

*/


/*
    static Object access$5702(typeName_ typename_, Object obj)
    {
        typename_.extendee_ = obj;
        return obj;
    }

*/


/*
    static Object access$5802(extendee_ extendee_1, Object obj)
    {
        extendee_1.defaultValue_ = obj;
        return obj;
    }

*/


/*
    static defaultValue_ access$5902(defaultValue_ defaultvalue_, defaultValue_ defaultvalue_1)
    {
        defaultvalue_.options_ = defaultvalue_1;
        return defaultvalue_1;
    }

*/


/*
    static int access$6002(options_ options_1, int i)
    {
        options_1.bitField0_ = i;
        return i;
    }

*/

    private Builder(Builder builder)
    {
        super(builder);
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    Builder(Builder builder, a a)
    {
        this(builder);
    }

    private Builder(boolean flag)
    {
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    // Unreferenced inner class com/google/protobuf/b
    static final class b
        implements Internal.EnumLiteMap
    {

        public Label a(int i)
        {
            return Label.valueOf(i);
        }

        public volatile Internal.EnumLite findValueByNumber(int i)
        {
            return a(i);
        }

            b()
            {
            }
    }


    // Unreferenced inner class com/google/protobuf/c
    static final class c
        implements Internal.EnumLiteMap
    {

        public Type a(int i)
        {
            return Type.valueOf(i);
        }

        public volatile Internal.EnumLite findValueByNumber(int i)
        {
            return a(i);
        }

            c()
            {
            }
    }

}
