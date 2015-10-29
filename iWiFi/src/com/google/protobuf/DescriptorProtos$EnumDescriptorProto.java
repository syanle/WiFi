// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage, DescriptorProtos, ByteString, InvalidProtocolBufferException, 
//            Internal, CodedOutputStream, MessageLite, UnknownFieldSet, 
//            a, ExtensionRegistryLite, CodedInputStream, Message, 
//            UninitializedMessageException, SingleFieldBuilder, RepeatedFieldBuilder

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends GeneratedMessage.Builder
        implements DescriptorProtos.EnumDescriptorProtoOrBuilder
    {

        private int bitField0_;
        private Object name_;
        private SingleFieldBuilder optionsBuilder_;
        private DescriptorProtos.EnumOptions options_;
        private RepeatedFieldBuilder valueBuilder_;
        private List value_;

        private DescriptorProtos.EnumDescriptorProto buildParsed()
            throws InvalidProtocolBufferException
        {
            DescriptorProtos.EnumDescriptorProto enumdescriptorproto = buildPartial();
            if (!enumdescriptorproto.isInitialized())
            {
                throw newUninitializedMessageException(enumdescriptorproto).asInvalidProtocolBufferException();
            } else
            {
                return enumdescriptorproto;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureValueIsMutable()
        {
            if ((bitField0_ & 2) != 2)
            {
                value_ = new ArrayList(value_);
                bitField0_ = bitField0_ | 2;
            }
        }

        public static final Descriptors.Descriptor getDescriptor()
        {
            return DescriptorProtos.access$6100();
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

        private RepeatedFieldBuilder getValueFieldBuilder()
        {
            if (valueBuilder_ == null)
            {
                List list = value_;
                boolean flag;
                if ((bitField0_ & 2) == 2)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                valueBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                value_ = null;
            }
            return valueBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (GeneratedMessage.alwaysUseFieldBuilders)
            {
                getValueFieldBuilder();
                getOptionsFieldBuilder();
            }
        }

        public Builder addAllValue(Iterable iterable)
        {
            if (valueBuilder_ == null)
            {
                ensureValueIsMutable();
                GeneratedMessage.Builder.addAll(iterable, value_);
                onChanged();
                return this;
            } else
            {
                valueBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addValue(int i, DescriptorProtos.EnumValueDescriptorProto.Builder builder)
        {
            if (valueBuilder_ == null)
            {
                ensureValueIsMutable();
                value_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                valueBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addValue(int i, DescriptorProtos.EnumValueDescriptorProto enumvaluedescriptorproto)
        {
            if (valueBuilder_ == null)
            {
                if (enumvaluedescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureValueIsMutable();
                    value_.add(i, enumvaluedescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                valueBuilder_.addMessage(i, enumvaluedescriptorproto);
                return this;
            }
        }

        public Builder addValue(DescriptorProtos.EnumValueDescriptorProto.Builder builder)
        {
            if (valueBuilder_ == null)
            {
                ensureValueIsMutable();
                value_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                valueBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addValue(DescriptorProtos.EnumValueDescriptorProto enumvaluedescriptorproto)
        {
            if (valueBuilder_ == null)
            {
                if (enumvaluedescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureValueIsMutable();
                    value_.add(enumvaluedescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                valueBuilder_.addMessage(enumvaluedescriptorproto);
                return this;
            }
        }

        public DescriptorProtos.EnumValueDescriptorProto.Builder addValueBuilder()
        {
            return (DescriptorProtos.EnumValueDescriptorProto.Builder)getValueFieldBuilder().addBuilder(DescriptorProtos.EnumValueDescriptorProto.getDefaultInstance());
        }

        public DescriptorProtos.EnumValueDescriptorProto.Builder addValueBuilder(int i)
        {
            return (DescriptorProtos.EnumValueDescriptorProto.Builder)getValueFieldBuilder().addBuilder(i, DescriptorProtos.EnumValueDescriptorProto.getDefaultInstance());
        }

        public DescriptorProtos.EnumDescriptorProto build()
        {
            DescriptorProtos.EnumDescriptorProto enumdescriptorproto = buildPartial();
            if (!enumdescriptorproto.isInitialized())
            {
                throw newUninitializedMessageException(enumdescriptorproto);
            } else
            {
                return enumdescriptorproto;
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

        public DescriptorProtos.EnumDescriptorProto buildPartial()
        {
            int i = 1;
            DescriptorProtos.EnumDescriptorProto enumdescriptorproto = new DescriptorProtos.EnumDescriptorProto(this, null);
            int j = bitField0_;
            if ((j & 1) != 1)
            {
                i = 0;
            }
            enumdescriptorproto.name_ = name_;
            if (valueBuilder_ == null)
            {
                if ((bitField0_ & 2) == 2)
                {
                    value_ = Collections.unmodifiableList(value_);
                    bitField0_ = bitField0_ & -3;
                }
                enumdescriptorproto.value_ = value_;
            } else
            {
                enumdescriptorproto.value_ = valueBuilder_.build();
            }
            if ((j & 4) == 4)
            {
                i |= 2;
            }
            if (optionsBuilder_ == null)
            {
                enumdescriptorproto.options_ = options_;
            } else
            {
                enumdescriptorproto.options_ = (DescriptorProtos.EnumOptions)optionsBuilder_.build();
            }
            enumdescriptorproto.bitField0_ = i;
            onBuilt();
            return enumdescriptorproto;
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
            if (valueBuilder_ == null)
            {
                value_ = Collections.emptyList();
                bitField0_ = bitField0_ & -3;
            } else
            {
                valueBuilder_.clear();
            }
            if (optionsBuilder_ == null)
            {
                options_ = DescriptorProtos.EnumOptions.getDefaultInstance();
            } else
            {
                optionsBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
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

        public Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = DescriptorProtos.EnumDescriptorProto.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder clearOptions()
        {
            if (optionsBuilder_ == null)
            {
                options_ = DescriptorProtos.EnumOptions.getDefaultInstance();
                onChanged();
            } else
            {
                optionsBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
            return this;
        }

        public Builder clearValue()
        {
            if (valueBuilder_ == null)
            {
                value_ = Collections.emptyList();
                bitField0_ = bitField0_ & -3;
                onChanged();
                return this;
            } else
            {
                valueBuilder_.clear();
                return this;
            }
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

        public DescriptorProtos.EnumDescriptorProto getDefaultInstanceForType()
        {
            return DescriptorProtos.EnumDescriptorProto.getDefaultInstance();
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public Descriptors.Descriptor getDescriptorForType()
        {
            return DescriptorProtos.EnumDescriptorProto.getDescriptor();
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

        public DescriptorProtos.EnumOptions getOptions()
        {
            if (optionsBuilder_ == null)
            {
                return options_;
            } else
            {
                return (DescriptorProtos.EnumOptions)optionsBuilder_.getMessage();
            }
        }

        public DescriptorProtos.EnumOptions.Builder getOptionsBuilder()
        {
            bitField0_ = bitField0_ | 4;
            onChanged();
            return (DescriptorProtos.EnumOptions.Builder)getOptionsFieldBuilder().getBuilder();
        }

        public DescriptorProtos.EnumOptionsOrBuilder getOptionsOrBuilder()
        {
            if (optionsBuilder_ != null)
            {
                return (DescriptorProtos.EnumOptionsOrBuilder)optionsBuilder_.getMessageOrBuilder();
            } else
            {
                return options_;
            }
        }

        public DescriptorProtos.EnumValueDescriptorProto getValue(int i)
        {
            if (valueBuilder_ == null)
            {
                return (DescriptorProtos.EnumValueDescriptorProto)value_.get(i);
            } else
            {
                return (DescriptorProtos.EnumValueDescriptorProto)valueBuilder_.getMessage(i);
            }
        }

        public DescriptorProtos.EnumValueDescriptorProto.Builder getValueBuilder(int i)
        {
            return (DescriptorProtos.EnumValueDescriptorProto.Builder)getValueFieldBuilder().getBuilder(i);
        }

        public List getValueBuilderList()
        {
            return getValueFieldBuilder().getBuilderList();
        }

        public int getValueCount()
        {
            if (valueBuilder_ == null)
            {
                return value_.size();
            } else
            {
                return valueBuilder_.getCount();
            }
        }

        public List getValueList()
        {
            if (valueBuilder_ == null)
            {
                return Collections.unmodifiableList(value_);
            } else
            {
                return valueBuilder_.getMessageList();
            }
        }

        public DescriptorProtos.EnumValueDescriptorProtoOrBuilder getValueOrBuilder(int i)
        {
            if (valueBuilder_ == null)
            {
                return (DescriptorProtos.EnumValueDescriptorProtoOrBuilder)value_.get(i);
            } else
            {
                return (DescriptorProtos.EnumValueDescriptorProtoOrBuilder)valueBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getValueOrBuilderList()
        {
            if (valueBuilder_ != null)
            {
                return valueBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(value_);
            }
        }

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasOptions()
        {
            return (bitField0_ & 4) == 4;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return DescriptorProtos.access$6200();
        }

        public final boolean isInitialized()
        {
            int i = 0;
_L7:
            if (i >= getValueCount()) goto _L2; else goto _L1
_L1:
            if (getValue(i).isInitialized()) goto _L4; else goto _L3
_L3:
            return false;
_L4:
            i++;
            continue; /* Loop/switch isn't completed */
_L2:
            if (hasOptions() && !getOptions().isInitialized()) goto _L3; else goto _L5
_L5:
            return true;
            if (true) goto _L7; else goto _L6
_L6:
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
                    DescriptorProtos.EnumValueDescriptorProto.Builder builder1 = DescriptorProtos.EnumValueDescriptorProto.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addValue(builder1.buildPartial());
                    break;

                case 26: // '\032'
                    DescriptorProtos.EnumOptions.Builder builder2 = DescriptorProtos.EnumOptions.newBuilder();
                    if (hasOptions())
                    {
                        builder2.mergeFrom(getOptions());
                    }
                    codedinputstream.readMessage(builder2, extensionregistrylite);
                    setOptions(builder2.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(DescriptorProtos.EnumDescriptorProto enumdescriptorproto)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (enumdescriptorproto == DescriptorProtos.EnumDescriptorProto.getDefaultInstance())
            {
                return this;
            }
            if (enumdescriptorproto.hasName())
            {
                setName(enumdescriptorproto.getName());
            }
            if (valueBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!enumdescriptorproto.value_.isEmpty())
            {
                if (value_.isEmpty())
                {
                    value_ = enumdescriptorproto.value_;
                    bitField0_ = bitField0_ & -3;
                } else
                {
                    ensureValueIsMutable();
                    value_.addAll(enumdescriptorproto.value_);
                }
                onChanged();
            }
_L4:
            if (enumdescriptorproto.hasOptions())
            {
                mergeOptions(enumdescriptorproto.getOptions());
            }
            mergeUnknownFields(enumdescriptorproto.getUnknownFields());
            return this;
_L2:
            if (!enumdescriptorproto.value_.isEmpty())
            {
                if (valueBuilder_.isEmpty())
                {
                    valueBuilder_.dispose();
                    valueBuilder_ = null;
                    value_ = enumdescriptorproto.value_;
                    bitField0_ = bitField0_ & -3;
                    if (GeneratedMessage.alwaysUseFieldBuilders)
                    {
                        repeatedfieldbuilder = getValueFieldBuilder();
                    }
                    valueBuilder_ = repeatedfieldbuilder;
                } else
                {
                    valueBuilder_.addAllMessages(enumdescriptorproto.value_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof DescriptorProtos.EnumDescriptorProto)
            {
                return mergeFrom((DescriptorProtos.EnumDescriptorProto)message);
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

        public Builder mergeOptions(DescriptorProtos.EnumOptions enumoptions)
        {
            if (optionsBuilder_ == null)
            {
                if ((bitField0_ & 4) == 4 && options_ != DescriptorProtos.EnumOptions.getDefaultInstance())
                {
                    options_ = DescriptorProtos.EnumOptions.newBuilder(options_).mergeFrom(enumoptions).buildPartial();
                } else
                {
                    options_ = enumoptions;
                }
                onChanged();
            } else
            {
                optionsBuilder_.mergeFrom(enumoptions);
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }

        public Builder removeValue(int i)
        {
            if (valueBuilder_ == null)
            {
                ensureValueIsMutable();
                value_.remove(i);
                onChanged();
                return this;
            } else
            {
                valueBuilder_.remove(i);
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

        public Builder setOptions(DescriptorProtos.EnumOptions.Builder builder)
        {
            if (optionsBuilder_ == null)
            {
                options_ = builder.build();
                onChanged();
            } else
            {
                optionsBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }

        public Builder setOptions(DescriptorProtos.EnumOptions enumoptions)
        {
            if (optionsBuilder_ == null)
            {
                if (enumoptions == null)
                {
                    throw new NullPointerException();
                }
                options_ = enumoptions;
                onChanged();
            } else
            {
                optionsBuilder_.setMessage(enumoptions);
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }

        public Builder setValue(int i, DescriptorProtos.EnumValueDescriptorProto.Builder builder)
        {
            if (valueBuilder_ == null)
            {
                ensureValueIsMutable();
                value_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                valueBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setValue(int i, DescriptorProtos.EnumValueDescriptorProto enumvaluedescriptorproto)
        {
            if (valueBuilder_ == null)
            {
                if (enumvaluedescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureValueIsMutable();
                    value_.set(i, enumvaluedescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                valueBuilder_.setMessage(i, enumvaluedescriptorproto);
                return this;
            }
        }



        private Builder()
        {
            name_ = "";
            value_ = Collections.emptyList();
            options_ = DescriptorProtos.EnumOptions.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            value_ = Collections.emptyList();
            options_ = DescriptorProtos.EnumOptions.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        Builder(GeneratedMessage.BuilderParent builderparent, a a)
        {
            this(builderparent);
        }
    }


    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    public static final int VALUE_FIELD_NUMBER = 2;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private Object name_;
    private initFields options_;
    private List value_;

    public static Builder.valueBuilder_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final defaultInstance getDescriptor()
    {
        return DescriptorProtos.access$6100();
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

    private void initFields()
    {
        name_ = "";
        value_ = Collections.emptyList();
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

    public name_ getOptions()
    {
        return options_;
    }

    public  getOptionsOrBuilder()
    {
        return options_;
    }

    public int getSerializedSize()
    {
        int j = 0;
        int i = memoizedSerializedSize;
        if (i != -1)
        {
            return i;
        }
        if ((bitField0_ & 1) == 1)
        {
            i = CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0;
        } else
        {
            i = 0;
        }
        while (j < value_.size()) 
        {
            int k = CodedOutputStream.computeMessageSize(2, (MessageLite)value_.get(j));
            j++;
            i = k + i;
        }
        j = i;
        if ((bitField0_ & 2) == 2)
        {
            j = i + CodedOutputStream.computeMessageSize(3, options_);
        }
        i = getUnknownFields().getSerializedSize() + j;
        memoizedSerializedSize = i;
        return i;
    }

    public roto getValue(int i)
    {
        return (roto)value_.get(i);
    }

    public int getValueCount()
    {
        return value_.size();
    }

    public List getValueList()
    {
        return value_;
    }

    public rotoOrBuilder getValueOrBuilder(int i)
    {
        return (rotoOrBuilder)value_.get(i);
    }

    public List getValueOrBuilderList()
    {
        return value_;
    }

    public boolean hasName()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasOptions()
    {
        return (bitField0_ & 2) == 2;
    }

    protected bitField0_ internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$6200();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        for (int i = 0; i < getValueCount(); i++)
        {
            if (!getValue(i).isInitialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
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
        for (int i = 0; i < value_.size(); i++)
        {
            codedoutputstream.writeMessage(2, (MessageLite)value_.get(i));
        }

        if ((bitField0_ & 2) == 2)
        {
            codedoutputstream.writeMessage(3, options_);
        }
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }


/*
    static Object access$6702(Builder builder, Object obj)
    {
        builder.name_ = obj;
        return obj;
    }

*/



/*
    static List access$6802(name_ name_1, List list)
    {
        name_1.value_ = list;
        return list;
    }

*/


/*
    static value_ access$6902(value_ value_1, value_ value_2)
    {
        value_1.options_ = value_2;
        return value_2;
    }

*/


/*
    static int access$7002(options_ options_1, int i)
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
}
