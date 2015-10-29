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
//            DescriptorProtos, d, ByteString, InvalidProtocolBufferException, 
//            Internal, CodedOutputStream, MessageLite, UnknownFieldSet, 
//            a, ExtensionRegistryLite, CodedInputStream, Message, 
//            UninitializedMessageException, RepeatedFieldBuilder, GeneratedMessage, ProtocolMessageEnum

public static final class memoizedSerializedSize extends sage
    implements rBuilder
{
    public static final class Builder extends GeneratedMessage.ExtendableBuilder
        implements DescriptorProtos.FieldOptionsOrBuilder
    {

        private int bitField0_;
        private CType ctype_;
        private boolean deprecated_;
        private Object experimentalMapKey_;
        private boolean packed_;
        private RepeatedFieldBuilder uninterpretedOptionBuilder_;
        private List uninterpretedOption_;

        private DescriptorProtos.FieldOptions buildParsed()
            throws InvalidProtocolBufferException
        {
            DescriptorProtos.FieldOptions fieldoptions = buildPartial();
            if (!fieldoptions.isInitialized())
            {
                throw newUninitializedMessageException(fieldoptions).asInvalidProtocolBufferException();
            } else
            {
                return fieldoptions;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureUninterpretedOptionIsMutable()
        {
            if ((bitField0_ & 0x10) != 16)
            {
                uninterpretedOption_ = new ArrayList(uninterpretedOption_);
                bitField0_ = bitField0_ | 0x10;
            }
        }

        public static final Descriptors.Descriptor getDescriptor()
        {
            return DescriptorProtos.access$12800();
        }

        private RepeatedFieldBuilder getUninterpretedOptionFieldBuilder()
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                List list = uninterpretedOption_;
                boolean flag;
                if ((bitField0_ & 0x10) == 16)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                uninterpretedOptionBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                uninterpretedOption_ = null;
            }
            return uninterpretedOptionBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (GeneratedMessage.alwaysUseFieldBuilders)
            {
                getUninterpretedOptionFieldBuilder();
            }
        }

        public Builder addAllUninterpretedOption(Iterable iterable)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                ensureUninterpretedOptionIsMutable();
                GeneratedMessage.ExtendableBuilder.addAll(iterable, uninterpretedOption_);
                onChanged();
                return this;
            } else
            {
                uninterpretedOptionBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addUninterpretedOption(int i, DescriptorProtos.UninterpretedOption.Builder builder)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                uninterpretedOptionBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addUninterpretedOption(int i, DescriptorProtos.UninterpretedOption uninterpretedoption)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                if (uninterpretedoption == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureUninterpretedOptionIsMutable();
                    uninterpretedOption_.add(i, uninterpretedoption);
                    onChanged();
                    return this;
                }
            } else
            {
                uninterpretedOptionBuilder_.addMessage(i, uninterpretedoption);
                return this;
            }
        }

        public Builder addUninterpretedOption(DescriptorProtos.UninterpretedOption.Builder builder)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                uninterpretedOptionBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addUninterpretedOption(DescriptorProtos.UninterpretedOption uninterpretedoption)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                if (uninterpretedoption == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureUninterpretedOptionIsMutable();
                    uninterpretedOption_.add(uninterpretedoption);
                    onChanged();
                    return this;
                }
            } else
            {
                uninterpretedOptionBuilder_.addMessage(uninterpretedoption);
                return this;
            }
        }

        public DescriptorProtos.UninterpretedOption.Builder addUninterpretedOptionBuilder()
        {
            return (DescriptorProtos.UninterpretedOption.Builder)getUninterpretedOptionFieldBuilder().addBuilder(DescriptorProtos.UninterpretedOption.getDefaultInstance());
        }

        public DescriptorProtos.UninterpretedOption.Builder addUninterpretedOptionBuilder(int i)
        {
            return (DescriptorProtos.UninterpretedOption.Builder)getUninterpretedOptionFieldBuilder().addBuilder(i, DescriptorProtos.UninterpretedOption.getDefaultInstance());
        }

        public DescriptorProtos.FieldOptions build()
        {
            DescriptorProtos.FieldOptions fieldoptions = buildPartial();
            if (!fieldoptions.isInitialized())
            {
                throw newUninitializedMessageException(fieldoptions);
            } else
            {
                return fieldoptions;
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

        public DescriptorProtos.FieldOptions buildPartial()
        {
            int j = 1;
            DescriptorProtos.FieldOptions fieldoptions = new DescriptorProtos.FieldOptions(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            fieldoptions.ctype_ = ctype_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            fieldoptions.packed_ = packed_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            fieldoptions.deprecated_ = deprecated_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            fieldoptions.experimentalMapKey_ = experimentalMapKey_;
            if (uninterpretedOptionBuilder_ == null)
            {
                if ((bitField0_ & 0x10) == 16)
                {
                    uninterpretedOption_ = Collections.unmodifiableList(uninterpretedOption_);
                    bitField0_ = bitField0_ & 0xffffffef;
                }
                fieldoptions.uninterpretedOption_ = uninterpretedOption_;
            } else
            {
                fieldoptions.uninterpretedOption_ = uninterpretedOptionBuilder_.build();
            }
            fieldoptions.bitField0_ = i;
            onBuilt();
            return fieldoptions;
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
            ctype_ = CType.STRING;
            bitField0_ = bitField0_ & -2;
            packed_ = false;
            bitField0_ = bitField0_ & -3;
            deprecated_ = false;
            bitField0_ = bitField0_ & -5;
            experimentalMapKey_ = "";
            bitField0_ = bitField0_ & -9;
            if (uninterpretedOptionBuilder_ == null)
            {
                uninterpretedOption_ = Collections.emptyList();
                bitField0_ = bitField0_ & 0xffffffef;
                return this;
            } else
            {
                uninterpretedOptionBuilder_.clear();
                return this;
            }
        }

        public volatile GeneratedMessage.Builder clear()
        {
            return clear();
        }

        public volatile GeneratedMessage.ExtendableBuilder clear()
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

        public Builder clearCtype()
        {
            bitField0_ = bitField0_ & -2;
            ctype_ = CType.STRING;
            onChanged();
            return this;
        }

        public Builder clearDeprecated()
        {
            bitField0_ = bitField0_ & -5;
            deprecated_ = false;
            onChanged();
            return this;
        }

        public Builder clearExperimentalMapKey()
        {
            bitField0_ = bitField0_ & -9;
            experimentalMapKey_ = DescriptorProtos.FieldOptions.getDefaultInstance().getExperimentalMapKey();
            onChanged();
            return this;
        }

        public Builder clearPacked()
        {
            bitField0_ = bitField0_ & -3;
            packed_ = false;
            onChanged();
            return this;
        }

        public Builder clearUninterpretedOption()
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                uninterpretedOption_ = Collections.emptyList();
                bitField0_ = bitField0_ & 0xffffffef;
                onChanged();
                return this;
            } else
            {
                uninterpretedOptionBuilder_.clear();
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

        public volatile GeneratedMessage.ExtendableBuilder clone()
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

        public CType getCtype()
        {
            return ctype_;
        }

        public DescriptorProtos.FieldOptions getDefaultInstanceForType()
        {
            return DescriptorProtos.FieldOptions.getDefaultInstance();
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public boolean getDeprecated()
        {
            return deprecated_;
        }

        public Descriptors.Descriptor getDescriptorForType()
        {
            return DescriptorProtos.FieldOptions.getDescriptor();
        }

        public String getExperimentalMapKey()
        {
            Object obj = experimentalMapKey_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                experimentalMapKey_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public boolean getPacked()
        {
            return packed_;
        }

        public DescriptorProtos.UninterpretedOption getUninterpretedOption(int i)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                return (DescriptorProtos.UninterpretedOption)uninterpretedOption_.get(i);
            } else
            {
                return (DescriptorProtos.UninterpretedOption)uninterpretedOptionBuilder_.getMessage(i);
            }
        }

        public DescriptorProtos.UninterpretedOption.Builder getUninterpretedOptionBuilder(int i)
        {
            return (DescriptorProtos.UninterpretedOption.Builder)getUninterpretedOptionFieldBuilder().getBuilder(i);
        }

        public List getUninterpretedOptionBuilderList()
        {
            return getUninterpretedOptionFieldBuilder().getBuilderList();
        }

        public int getUninterpretedOptionCount()
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                return uninterpretedOption_.size();
            } else
            {
                return uninterpretedOptionBuilder_.getCount();
            }
        }

        public List getUninterpretedOptionList()
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                return Collections.unmodifiableList(uninterpretedOption_);
            } else
            {
                return uninterpretedOptionBuilder_.getMessageList();
            }
        }

        public DescriptorProtos.UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                return (DescriptorProtos.UninterpretedOptionOrBuilder)uninterpretedOption_.get(i);
            } else
            {
                return (DescriptorProtos.UninterpretedOptionOrBuilder)uninterpretedOptionBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getUninterpretedOptionOrBuilderList()
        {
            if (uninterpretedOptionBuilder_ != null)
            {
                return uninterpretedOptionBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(uninterpretedOption_);
            }
        }

        public boolean hasCtype()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasDeprecated()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasExperimentalMapKey()
        {
            return (bitField0_ & 8) == 8;
        }

        public boolean hasPacked()
        {
            return (bitField0_ & 2) == 2;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return DescriptorProtos.access$12900();
        }

        public final boolean isInitialized()
        {
            int i = 0;
_L7:
            if (i >= getUninterpretedOptionCount()) goto _L2; else goto _L1
_L1:
            if (getUninterpretedOption(i).isInitialized()) goto _L4; else goto _L3
_L3:
            return false;
_L4:
            i++;
            continue; /* Loop/switch isn't completed */
_L2:
            if (!extensionsAreInitialized()) goto _L3; else goto _L5
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

                case 8: // '\b'
                    int j = codedinputstream.readEnum();
                    CType ctype = CType.valueOf(j);
                    if (ctype == null)
                    {
                        builder.mergeVarintField(1, j);
                    } else
                    {
                        bitField0_ = bitField0_ | 1;
                        ctype_ = ctype;
                    }
                    break;

                case 16: // '\020'
                    bitField0_ = bitField0_ | 2;
                    packed_ = codedinputstream.readBool();
                    break;

                case 24: // '\030'
                    bitField0_ = bitField0_ | 4;
                    deprecated_ = codedinputstream.readBool();
                    break;

                case 74: // 'J'
                    bitField0_ = bitField0_ | 8;
                    experimentalMapKey_ = codedinputstream.readBytes();
                    break;

                case 7994: 
                    DescriptorProtos.UninterpretedOption.Builder builder1 = DescriptorProtos.UninterpretedOption.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addUninterpretedOption(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(DescriptorProtos.FieldOptions fieldoptions)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (fieldoptions == DescriptorProtos.FieldOptions.getDefaultInstance())
            {
                return this;
            }
            if (fieldoptions.hasCtype())
            {
                setCtype(fieldoptions.getCtype());
            }
            if (fieldoptions.hasPacked())
            {
                setPacked(fieldoptions.getPacked());
            }
            if (fieldoptions.hasDeprecated())
            {
                setDeprecated(fieldoptions.getDeprecated());
            }
            if (fieldoptions.hasExperimentalMapKey())
            {
                setExperimentalMapKey(fieldoptions.getExperimentalMapKey());
            }
            if (uninterpretedOptionBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!fieldoptions.uninterpretedOption_.isEmpty())
            {
                if (uninterpretedOption_.isEmpty())
                {
                    uninterpretedOption_ = fieldoptions.uninterpretedOption_;
                    bitField0_ = bitField0_ & 0xffffffef;
                } else
                {
                    ensureUninterpretedOptionIsMutable();
                    uninterpretedOption_.addAll(fieldoptions.uninterpretedOption_);
                }
                onChanged();
            }
_L4:
            mergeExtensionFields(fieldoptions);
            mergeUnknownFields(fieldoptions.getUnknownFields());
            return this;
_L2:
            if (!fieldoptions.uninterpretedOption_.isEmpty())
            {
                if (uninterpretedOptionBuilder_.isEmpty())
                {
                    uninterpretedOptionBuilder_.dispose();
                    uninterpretedOptionBuilder_ = null;
                    uninterpretedOption_ = fieldoptions.uninterpretedOption_;
                    bitField0_ = bitField0_ & 0xffffffef;
                    if (GeneratedMessage.alwaysUseFieldBuilders)
                    {
                        repeatedfieldbuilder = getUninterpretedOptionFieldBuilder();
                    }
                    uninterpretedOptionBuilder_ = repeatedfieldbuilder;
                } else
                {
                    uninterpretedOptionBuilder_.addAllMessages(fieldoptions.uninterpretedOption_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof DescriptorProtos.FieldOptions)
            {
                return mergeFrom((DescriptorProtos.FieldOptions)message);
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

        public Builder removeUninterpretedOption(int i)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.remove(i);
                onChanged();
                return this;
            } else
            {
                uninterpretedOptionBuilder_.remove(i);
                return this;
            }
        }

        public Builder setCtype(CType ctype)
        {
            if (ctype == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 1;
                ctype_ = ctype;
                onChanged();
                return this;
            }
        }

        public Builder setDeprecated(boolean flag)
        {
            bitField0_ = bitField0_ | 4;
            deprecated_ = flag;
            onChanged();
            return this;
        }

        public Builder setExperimentalMapKey(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 8;
                experimentalMapKey_ = s;
                onChanged();
                return this;
            }
        }

        void setExperimentalMapKey(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 8;
            experimentalMapKey_ = bytestring;
            onChanged();
        }

        public Builder setPacked(boolean flag)
        {
            bitField0_ = bitField0_ | 2;
            packed_ = flag;
            onChanged();
            return this;
        }

        public Builder setUninterpretedOption(int i, DescriptorProtos.UninterpretedOption.Builder builder)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                uninterpretedOptionBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setUninterpretedOption(int i, DescriptorProtos.UninterpretedOption uninterpretedoption)
        {
            if (uninterpretedOptionBuilder_ == null)
            {
                if (uninterpretedoption == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureUninterpretedOptionIsMutable();
                    uninterpretedOption_.set(i, uninterpretedoption);
                    onChanged();
                    return this;
                }
            } else
            {
                uninterpretedOptionBuilder_.setMessage(i, uninterpretedoption);
                return this;
            }
        }



        private Builder()
        {
            ctype_ = CType.STRING;
            experimentalMapKey_ = "";
            uninterpretedOption_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            ctype_ = CType.STRING;
            experimentalMapKey_ = "";
            uninterpretedOption_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(GeneratedMessage.BuilderParent builderparent, a a)
        {
            this(builderparent);
        }
    }

    public static final class CType extends Enum
        implements ProtocolMessageEnum
    {

        private static final CType $VALUES[];
        public static final CType CORD;
        public static final int CORD_VALUE = 1;
        public static final CType STRING;
        public static final CType STRING_PIECE;
        public static final int STRING_PIECE_VALUE = 2;
        public static final int STRING_VALUE = 0;
        private static final CType VALUES[];
        private static Internal.EnumLiteMap internalValueMap = new d();
        private final int index;
        private final int value;

        public static final Descriptors.EnumDescriptor getDescriptor()
        {
            return (Descriptors.EnumDescriptor)DescriptorProtos.FieldOptions.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap internalGetValueMap()
        {
            return internalValueMap;
        }

        public static CType valueOf(int i)
        {
            switch (i)
            {
            default:
                return null;

            case 0: // '\0'
                return STRING;

            case 1: // '\001'
                return CORD;

            case 2: // '\002'
                return STRING_PIECE;
            }
        }

        public static CType valueOf(Descriptors.EnumValueDescriptor enumvaluedescriptor)
        {
            if (enumvaluedescriptor.getType() != getDescriptor())
            {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            } else
            {
                return VALUES[enumvaluedescriptor.getIndex()];
            }
        }

        public static CType valueOf(String s)
        {
            return (CType)Enum.valueOf(com/google/protobuf/DescriptorProtos$FieldOptions$CType, s);
        }

        public static CType[] values()
        {
            return (CType[])$VALUES.clone();
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
            STRING = new CType("STRING", 0, 0, 0);
            CORD = new CType("CORD", 1, 1, 1);
            STRING_PIECE = new CType("STRING_PIECE", 2, 2, 2);
            $VALUES = (new CType[] {
                STRING, CORD, STRING_PIECE
            });
            VALUES = (new CType[] {
                STRING, CORD, STRING_PIECE
            });
        }

        private CType(String s, int i, int j, int k)
        {
            super(s, i);
            index = j;
            value = k;
        }
    }


    public static final int CTYPE_FIELD_NUMBER = 1;
    public static final int DEPRECATED_FIELD_NUMBER = 3;
    public static final int EXPERIMENTAL_MAP_KEY_FIELD_NUMBER = 9;
    public static final int PACKED_FIELD_NUMBER = 2;
    public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private CType ctype_;
    private boolean deprecated_;
    private Object experimentalMapKey_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private boolean packed_;
    private List uninterpretedOption_;

    public static CType getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final defaultInstance getDescriptor()
    {
        return DescriptorProtos.access$12800();
    }

    private ByteString getExperimentalMapKeyBytes()
    {
        Object obj = experimentalMapKey_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            experimentalMapKey_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private void initFields()
    {
        ctype_ = CType.STRING;
        packed_ = false;
        deprecated_ = false;
        experimentalMapKey_ = "";
        uninterpretedOption_ = Collections.emptyList();
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

    public CType getCtype()
    {
        return ctype_;
    }

    public ctype_ getDefaultInstanceForType()
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

    public boolean getDeprecated()
    {
        return deprecated_;
    }

    public String getExperimentalMapKey()
    {
        Object obj = experimentalMapKey_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            experimentalMapKey_ = s;
        }
        return s;
    }

    public boolean getPacked()
    {
        return packed_;
    }

    public int getSerializedSize()
    {
        boolean flag = false;
        int i = memoizedSerializedSize;
        if (i != -1)
        {
            return i;
        }
        int j;
        if ((bitField0_ & 1) == 1)
        {
            j = CodedOutputStream.computeEnumSize(1, ctype_.getNumber()) + 0;
        } else
        {
            j = 0;
        }
        i = j;
        if ((bitField0_ & 2) == 2)
        {
            i = j + CodedOutputStream.computeBoolSize(2, packed_);
        }
        j = i;
        if ((bitField0_ & 4) == 4)
        {
            j = i + CodedOutputStream.computeBoolSize(3, deprecated_);
        }
        i = j;
        if ((bitField0_ & 8) == 8)
        {
            i = j + CodedOutputStream.computeBytesSize(9, getExperimentalMapKeyBytes());
        }
        for (j = ((flag) ? 1 : 0); j < uninterpretedOption_.size();)
        {
            int k = CodedOutputStream.computeMessageSize(999, (MessageLite)uninterpretedOption_.get(j));
            j++;
            i = k + i;
        }

        i = extensionsSerializedSize() + i + getUnknownFields().getSerializedSize();
        memoizedSerializedSize = i;
        return i;
    }

    public Option getUninterpretedOption(int i)
    {
        return (Option)uninterpretedOption_.get(i);
    }

    public int getUninterpretedOptionCount()
    {
        return uninterpretedOption_.size();
    }

    public List getUninterpretedOptionList()
    {
        return uninterpretedOption_;
    }

    public OptionOrBuilder getUninterpretedOptionOrBuilder(int i)
    {
        return (OptionOrBuilder)uninterpretedOption_.get(i);
    }

    public List getUninterpretedOptionOrBuilderList()
    {
        return uninterpretedOption_;
    }

    public boolean hasCtype()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasDeprecated()
    {
        return (bitField0_ & 4) == 4;
    }

    public boolean hasExperimentalMapKey()
    {
        return (bitField0_ & 8) == 8;
    }

    public boolean hasPacked()
    {
        return (bitField0_ & 2) == 2;
    }

    protected Table internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$12900();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        for (int i = 0; i < getUninterpretedOptionCount(); i++)
        {
            if (!getUninterpretedOption(i).isInitialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
        }

        if (!extensionsAreInitialized())
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

    protected Builder newBuilderForType( )
    {
        return new Builder(, null);
    }

    public volatile  newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile  newBuilderForType( )
    {
        return newBuilderForType();
    }

    public volatile  newBuilderForType()
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
        sage.ExtensionWriter extensionwriter = newExtensionWriter();
        if ((bitField0_ & 1) == 1)
        {
            codedoutputstream.writeEnum(1, ctype_.getNumber());
        }
        if ((bitField0_ & 2) == 2)
        {
            codedoutputstream.writeBool(2, packed_);
        }
        if ((bitField0_ & 4) == 4)
        {
            codedoutputstream.writeBool(3, deprecated_);
        }
        if ((bitField0_ & 8) == 8)
        {
            codedoutputstream.writeBytes(9, getExperimentalMapKeyBytes());
        }
        for (int i = 0; i < uninterpretedOption_.size(); i++)
        {
            codedoutputstream.writeMessage(999, (MessageLite)uninterpretedOption_.get(i));
        }

        extensionwriter.writeUntil(0x20000000, codedoutputstream);
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }


/*
    static CType access$13402(CType ctype, CType ctype1)
    {
        ctype.ctype_ = ctype1;
        return ctype1;
    }

*/


/*
    static boolean access$13502(ctype_ ctype_1, boolean flag)
    {
        ctype_1.packed_ = flag;
        return flag;
    }

*/


/*
    static boolean access$13602(packed_ packed_1, boolean flag)
    {
        packed_1.deprecated_ = flag;
        return flag;
    }

*/


/*
    static Object access$13702(deprecated_ deprecated_1, Object obj)
    {
        deprecated_1.experimentalMapKey_ = obj;
        return obj;
    }

*/



/*
    static List access$13802(experimentalMapKey_ experimentalmapkey_, List list)
    {
        experimentalmapkey_.uninterpretedOption_ = list;
        return list;
    }

*/


/*
    static int access$13902(uninterpretedOption_ uninterpretedoption_, int i)
    {
        uninterpretedoption_.bitField0_ = i;
        return i;
    }

*/

    private lder(Builder builder)
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

    // Unreferenced inner class com/google/protobuf/d
    static final class d
        implements Internal.EnumLiteMap
    {

        public CType a(int i)
        {
            return CType.valueOf(i);
        }

        public volatile Internal.EnumLite findValueByNumber(int i)
        {
            return a(i);
        }

            d()
            {
            }
    }

}
