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
//            GeneratedMessage, DescriptorProtos, ByteString, LazyStringArrayList, 
//            InvalidProtocolBufferException, LazyStringList, Internal, CodedOutputStream, 
//            MessageLite, UnknownFieldSet, a, ExtensionRegistryLite, 
//            CodedInputStream, Message, UninitializedMessageException, RepeatedFieldBuilder, 
//            SingleFieldBuilder, UnmodifiableLazyStringList

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends GeneratedMessage.Builder
        implements DescriptorProtos.FileDescriptorProtoOrBuilder
    {

        private int bitField0_;
        private LazyStringList dependency_;
        private RepeatedFieldBuilder enumTypeBuilder_;
        private List enumType_;
        private RepeatedFieldBuilder extensionBuilder_;
        private List extension_;
        private RepeatedFieldBuilder messageTypeBuilder_;
        private List messageType_;
        private Object name_;
        private SingleFieldBuilder optionsBuilder_;
        private DescriptorProtos.FileOptions options_;
        private Object package_;
        private RepeatedFieldBuilder serviceBuilder_;
        private List service_;
        private SingleFieldBuilder sourceCodeInfoBuilder_;
        private DescriptorProtos.SourceCodeInfo sourceCodeInfo_;

        private DescriptorProtos.FileDescriptorProto buildParsed()
            throws InvalidProtocolBufferException
        {
            DescriptorProtos.FileDescriptorProto filedescriptorproto = buildPartial();
            if (!filedescriptorproto.isInitialized())
            {
                throw newUninitializedMessageException(filedescriptorproto).asInvalidProtocolBufferException();
            } else
            {
                return filedescriptorproto;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureDependencyIsMutable()
        {
            if ((bitField0_ & 4) != 4)
            {
                dependency_ = new LazyStringArrayList(dependency_);
                bitField0_ = bitField0_ | 4;
            }
        }

        private void ensureEnumTypeIsMutable()
        {
            if ((bitField0_ & 0x10) != 16)
            {
                enumType_ = new ArrayList(enumType_);
                bitField0_ = bitField0_ | 0x10;
            }
        }

        private void ensureExtensionIsMutable()
        {
            if ((bitField0_ & 0x40) != 64)
            {
                extension_ = new ArrayList(extension_);
                bitField0_ = bitField0_ | 0x40;
            }
        }

        private void ensureMessageTypeIsMutable()
        {
            if ((bitField0_ & 8) != 8)
            {
                messageType_ = new ArrayList(messageType_);
                bitField0_ = bitField0_ | 8;
            }
        }

        private void ensureServiceIsMutable()
        {
            if ((bitField0_ & 0x20) != 32)
            {
                service_ = new ArrayList(service_);
                bitField0_ = bitField0_ | 0x20;
            }
        }

        public static final Descriptors.Descriptor getDescriptor()
        {
            return DescriptorProtos.access$700();
        }

        private RepeatedFieldBuilder getEnumTypeFieldBuilder()
        {
            if (enumTypeBuilder_ == null)
            {
                List list = enumType_;
                boolean flag;
                if ((bitField0_ & 0x10) == 16)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                enumTypeBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                enumType_ = null;
            }
            return enumTypeBuilder_;
        }

        private RepeatedFieldBuilder getExtensionFieldBuilder()
        {
            if (extensionBuilder_ == null)
            {
                List list = extension_;
                boolean flag;
                if ((bitField0_ & 0x40) == 64)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                extensionBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                extension_ = null;
            }
            return extensionBuilder_;
        }

        private RepeatedFieldBuilder getMessageTypeFieldBuilder()
        {
            if (messageTypeBuilder_ == null)
            {
                List list = messageType_;
                boolean flag;
                if ((bitField0_ & 8) == 8)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                messageTypeBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                messageType_ = null;
            }
            return messageTypeBuilder_;
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

        private RepeatedFieldBuilder getServiceFieldBuilder()
        {
            if (serviceBuilder_ == null)
            {
                List list = service_;
                boolean flag;
                if ((bitField0_ & 0x20) == 32)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                serviceBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                service_ = null;
            }
            return serviceBuilder_;
        }

        private SingleFieldBuilder getSourceCodeInfoFieldBuilder()
        {
            if (sourceCodeInfoBuilder_ == null)
            {
                sourceCodeInfoBuilder_ = new SingleFieldBuilder(sourceCodeInfo_, getParentForChildren(), isClean());
                sourceCodeInfo_ = null;
            }
            return sourceCodeInfoBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (GeneratedMessage.alwaysUseFieldBuilders)
            {
                getMessageTypeFieldBuilder();
                getEnumTypeFieldBuilder();
                getServiceFieldBuilder();
                getExtensionFieldBuilder();
                getOptionsFieldBuilder();
                getSourceCodeInfoFieldBuilder();
            }
        }

        public Builder addAllDependency(Iterable iterable)
        {
            ensureDependencyIsMutable();
            GeneratedMessage.Builder.addAll(iterable, dependency_);
            onChanged();
            return this;
        }

        public Builder addAllEnumType(Iterable iterable)
        {
            if (enumTypeBuilder_ == null)
            {
                ensureEnumTypeIsMutable();
                GeneratedMessage.Builder.addAll(iterable, enumType_);
                onChanged();
                return this;
            } else
            {
                enumTypeBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addAllExtension(Iterable iterable)
        {
            if (extensionBuilder_ == null)
            {
                ensureExtensionIsMutable();
                GeneratedMessage.Builder.addAll(iterable, extension_);
                onChanged();
                return this;
            } else
            {
                extensionBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addAllMessageType(Iterable iterable)
        {
            if (messageTypeBuilder_ == null)
            {
                ensureMessageTypeIsMutable();
                GeneratedMessage.Builder.addAll(iterable, messageType_);
                onChanged();
                return this;
            } else
            {
                messageTypeBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addAllService(Iterable iterable)
        {
            if (serviceBuilder_ == null)
            {
                ensureServiceIsMutable();
                GeneratedMessage.Builder.addAll(iterable, service_);
                onChanged();
                return this;
            } else
            {
                serviceBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addDependency(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureDependencyIsMutable();
                dependency_.add(s);
                onChanged();
                return this;
            }
        }

        void addDependency(ByteString bytestring)
        {
            ensureDependencyIsMutable();
            dependency_.add(bytestring);
            onChanged();
        }

        public Builder addEnumType(int i, DescriptorProtos.EnumDescriptorProto.Builder builder)
        {
            if (enumTypeBuilder_ == null)
            {
                ensureEnumTypeIsMutable();
                enumType_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                enumTypeBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addEnumType(int i, DescriptorProtos.EnumDescriptorProto enumdescriptorproto)
        {
            if (enumTypeBuilder_ == null)
            {
                if (enumdescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureEnumTypeIsMutable();
                    enumType_.add(i, enumdescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                enumTypeBuilder_.addMessage(i, enumdescriptorproto);
                return this;
            }
        }

        public Builder addEnumType(DescriptorProtos.EnumDescriptorProto.Builder builder)
        {
            if (enumTypeBuilder_ == null)
            {
                ensureEnumTypeIsMutable();
                enumType_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                enumTypeBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addEnumType(DescriptorProtos.EnumDescriptorProto enumdescriptorproto)
        {
            if (enumTypeBuilder_ == null)
            {
                if (enumdescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureEnumTypeIsMutable();
                    enumType_.add(enumdescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                enumTypeBuilder_.addMessage(enumdescriptorproto);
                return this;
            }
        }

        public DescriptorProtos.EnumDescriptorProto.Builder addEnumTypeBuilder()
        {
            return (DescriptorProtos.EnumDescriptorProto.Builder)getEnumTypeFieldBuilder().addBuilder(DescriptorProtos.EnumDescriptorProto.getDefaultInstance());
        }

        public DescriptorProtos.EnumDescriptorProto.Builder addEnumTypeBuilder(int i)
        {
            return (DescriptorProtos.EnumDescriptorProto.Builder)getEnumTypeFieldBuilder().addBuilder(i, DescriptorProtos.EnumDescriptorProto.getDefaultInstance());
        }

        public Builder addExtension(int i, DescriptorProtos.FieldDescriptorProto.Builder builder)
        {
            if (extensionBuilder_ == null)
            {
                ensureExtensionIsMutable();
                extension_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                extensionBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addExtension(int i, DescriptorProtos.FieldDescriptorProto fielddescriptorproto)
        {
            if (extensionBuilder_ == null)
            {
                if (fielddescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureExtensionIsMutable();
                    extension_.add(i, fielddescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                extensionBuilder_.addMessage(i, fielddescriptorproto);
                return this;
            }
        }

        public Builder addExtension(DescriptorProtos.FieldDescriptorProto.Builder builder)
        {
            if (extensionBuilder_ == null)
            {
                ensureExtensionIsMutable();
                extension_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                extensionBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addExtension(DescriptorProtos.FieldDescriptorProto fielddescriptorproto)
        {
            if (extensionBuilder_ == null)
            {
                if (fielddescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureExtensionIsMutable();
                    extension_.add(fielddescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                extensionBuilder_.addMessage(fielddescriptorproto);
                return this;
            }
        }

        public DescriptorProtos.FieldDescriptorProto.Builder addExtensionBuilder()
        {
            return (DescriptorProtos.FieldDescriptorProto.Builder)getExtensionFieldBuilder().addBuilder(DescriptorProtos.FieldDescriptorProto.getDefaultInstance());
        }

        public DescriptorProtos.FieldDescriptorProto.Builder addExtensionBuilder(int i)
        {
            return (DescriptorProtos.FieldDescriptorProto.Builder)getExtensionFieldBuilder().addBuilder(i, DescriptorProtos.FieldDescriptorProto.getDefaultInstance());
        }

        public Builder addMessageType(int i, DescriptorProtos.DescriptorProto.Builder builder)
        {
            if (messageTypeBuilder_ == null)
            {
                ensureMessageTypeIsMutable();
                messageType_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                messageTypeBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addMessageType(int i, DescriptorProtos.DescriptorProto descriptorproto)
        {
            if (messageTypeBuilder_ == null)
            {
                if (descriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureMessageTypeIsMutable();
                    messageType_.add(i, descriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                messageTypeBuilder_.addMessage(i, descriptorproto);
                return this;
            }
        }

        public Builder addMessageType(DescriptorProtos.DescriptorProto.Builder builder)
        {
            if (messageTypeBuilder_ == null)
            {
                ensureMessageTypeIsMutable();
                messageType_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                messageTypeBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addMessageType(DescriptorProtos.DescriptorProto descriptorproto)
        {
            if (messageTypeBuilder_ == null)
            {
                if (descriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureMessageTypeIsMutable();
                    messageType_.add(descriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                messageTypeBuilder_.addMessage(descriptorproto);
                return this;
            }
        }

        public DescriptorProtos.DescriptorProto.Builder addMessageTypeBuilder()
        {
            return (DescriptorProtos.DescriptorProto.Builder)getMessageTypeFieldBuilder().addBuilder(DescriptorProtos.DescriptorProto.getDefaultInstance());
        }

        public DescriptorProtos.DescriptorProto.Builder addMessageTypeBuilder(int i)
        {
            return (DescriptorProtos.DescriptorProto.Builder)getMessageTypeFieldBuilder().addBuilder(i, DescriptorProtos.DescriptorProto.getDefaultInstance());
        }

        public Builder addService(int i, DescriptorProtos.ServiceDescriptorProto.Builder builder)
        {
            if (serviceBuilder_ == null)
            {
                ensureServiceIsMutable();
                service_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                serviceBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addService(int i, DescriptorProtos.ServiceDescriptorProto servicedescriptorproto)
        {
            if (serviceBuilder_ == null)
            {
                if (servicedescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureServiceIsMutable();
                    service_.add(i, servicedescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                serviceBuilder_.addMessage(i, servicedescriptorproto);
                return this;
            }
        }

        public Builder addService(DescriptorProtos.ServiceDescriptorProto.Builder builder)
        {
            if (serviceBuilder_ == null)
            {
                ensureServiceIsMutable();
                service_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                serviceBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addService(DescriptorProtos.ServiceDescriptorProto servicedescriptorproto)
        {
            if (serviceBuilder_ == null)
            {
                if (servicedescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureServiceIsMutable();
                    service_.add(servicedescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                serviceBuilder_.addMessage(servicedescriptorproto);
                return this;
            }
        }

        public DescriptorProtos.ServiceDescriptorProto.Builder addServiceBuilder()
        {
            return (DescriptorProtos.ServiceDescriptorProto.Builder)getServiceFieldBuilder().addBuilder(DescriptorProtos.ServiceDescriptorProto.getDefaultInstance());
        }

        public DescriptorProtos.ServiceDescriptorProto.Builder addServiceBuilder(int i)
        {
            return (DescriptorProtos.ServiceDescriptorProto.Builder)getServiceFieldBuilder().addBuilder(i, DescriptorProtos.ServiceDescriptorProto.getDefaultInstance());
        }

        public DescriptorProtos.FileDescriptorProto build()
        {
            DescriptorProtos.FileDescriptorProto filedescriptorproto = buildPartial();
            if (!filedescriptorproto.isInitialized())
            {
                throw newUninitializedMessageException(filedescriptorproto);
            } else
            {
                return filedescriptorproto;
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

        public DescriptorProtos.FileDescriptorProto buildPartial()
        {
            int i = 1;
            DescriptorProtos.FileDescriptorProto filedescriptorproto = new DescriptorProtos.FileDescriptorProto(this, null);
            int k = bitField0_;
            int j;
            if ((k & 1) != 1)
            {
                i = 0;
            }
            filedescriptorproto.name_ = name_;
            j = i;
            if ((k & 2) == 2)
            {
                j = i | 2;
            }
            filedescriptorproto.package_ = package_;
            if ((bitField0_ & 4) == 4)
            {
                dependency_ = new UnmodifiableLazyStringList(dependency_);
                bitField0_ = bitField0_ & -5;
            }
            filedescriptorproto.dependency_ = dependency_;
            if (messageTypeBuilder_ == null)
            {
                if ((bitField0_ & 8) == 8)
                {
                    messageType_ = Collections.unmodifiableList(messageType_);
                    bitField0_ = bitField0_ & -9;
                }
                filedescriptorproto.messageType_ = messageType_;
            } else
            {
                filedescriptorproto.messageType_ = messageTypeBuilder_.build();
            }
            if (enumTypeBuilder_ == null)
            {
                if ((bitField0_ & 0x10) == 16)
                {
                    enumType_ = Collections.unmodifiableList(enumType_);
                    bitField0_ = bitField0_ & 0xffffffef;
                }
                filedescriptorproto.enumType_ = enumType_;
            } else
            {
                filedescriptorproto.enumType_ = enumTypeBuilder_.build();
            }
            if (serviceBuilder_ == null)
            {
                if ((bitField0_ & 0x20) == 32)
                {
                    service_ = Collections.unmodifiableList(service_);
                    bitField0_ = bitField0_ & 0xffffffdf;
                }
                filedescriptorproto.service_ = service_;
            } else
            {
                filedescriptorproto.service_ = serviceBuilder_.build();
            }
            if (extensionBuilder_ == null)
            {
                if ((bitField0_ & 0x40) == 64)
                {
                    extension_ = Collections.unmodifiableList(extension_);
                    bitField0_ = bitField0_ & 0xffffffbf;
                }
                filedescriptorproto.extension_ = extension_;
            } else
            {
                filedescriptorproto.extension_ = extensionBuilder_.build();
            }
            if ((k & 0x80) == 128)
            {
                i = j | 4;
            } else
            {
                i = j;
            }
            if (optionsBuilder_ == null)
            {
                filedescriptorproto.options_ = options_;
            } else
            {
                filedescriptorproto.options_ = (DescriptorProtos.FileOptions)optionsBuilder_.build();
            }
            j = i;
            if ((k & 0x100) == 256)
            {
                j = i | 8;
            }
            if (sourceCodeInfoBuilder_ == null)
            {
                filedescriptorproto.sourceCodeInfo_ = sourceCodeInfo_;
            } else
            {
                filedescriptorproto.sourceCodeInfo_ = (DescriptorProtos.SourceCodeInfo)sourceCodeInfoBuilder_.build();
            }
            filedescriptorproto.bitField0_ = j;
            onBuilt();
            return filedescriptorproto;
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
            package_ = "";
            bitField0_ = bitField0_ & -3;
            dependency_ = LazyStringArrayList.EMPTY;
            bitField0_ = bitField0_ & -5;
            if (messageTypeBuilder_ == null)
            {
                messageType_ = Collections.emptyList();
                bitField0_ = bitField0_ & -9;
            } else
            {
                messageTypeBuilder_.clear();
            }
            if (enumTypeBuilder_ == null)
            {
                enumType_ = Collections.emptyList();
                bitField0_ = bitField0_ & 0xffffffef;
            } else
            {
                enumTypeBuilder_.clear();
            }
            if (serviceBuilder_ == null)
            {
                service_ = Collections.emptyList();
                bitField0_ = bitField0_ & 0xffffffdf;
            } else
            {
                serviceBuilder_.clear();
            }
            if (extensionBuilder_ == null)
            {
                extension_ = Collections.emptyList();
                bitField0_ = bitField0_ & 0xffffffbf;
            } else
            {
                extensionBuilder_.clear();
            }
            if (optionsBuilder_ == null)
            {
                options_ = DescriptorProtos.FileOptions.getDefaultInstance();
            } else
            {
                optionsBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffff7f;
            if (sourceCodeInfoBuilder_ == null)
            {
                sourceCodeInfo_ = DescriptorProtos.SourceCodeInfo.getDefaultInstance();
            } else
            {
                sourceCodeInfoBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xfffffeff;
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

        public Builder clearDependency()
        {
            dependency_ = LazyStringArrayList.EMPTY;
            bitField0_ = bitField0_ & -5;
            onChanged();
            return this;
        }

        public Builder clearEnumType()
        {
            if (enumTypeBuilder_ == null)
            {
                enumType_ = Collections.emptyList();
                bitField0_ = bitField0_ & 0xffffffef;
                onChanged();
                return this;
            } else
            {
                enumTypeBuilder_.clear();
                return this;
            }
        }

        public Builder clearExtension()
        {
            if (extensionBuilder_ == null)
            {
                extension_ = Collections.emptyList();
                bitField0_ = bitField0_ & 0xffffffbf;
                onChanged();
                return this;
            } else
            {
                extensionBuilder_.clear();
                return this;
            }
        }

        public Builder clearMessageType()
        {
            if (messageTypeBuilder_ == null)
            {
                messageType_ = Collections.emptyList();
                bitField0_ = bitField0_ & -9;
                onChanged();
                return this;
            } else
            {
                messageTypeBuilder_.clear();
                return this;
            }
        }

        public Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = DescriptorProtos.FileDescriptorProto.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder clearOptions()
        {
            if (optionsBuilder_ == null)
            {
                options_ = DescriptorProtos.FileOptions.getDefaultInstance();
                onChanged();
            } else
            {
                optionsBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffff7f;
            return this;
        }

        public Builder clearPackage()
        {
            bitField0_ = bitField0_ & -3;
            package_ = DescriptorProtos.FileDescriptorProto.getDefaultInstance().getPackage();
            onChanged();
            return this;
        }

        public Builder clearService()
        {
            if (serviceBuilder_ == null)
            {
                service_ = Collections.emptyList();
                bitField0_ = bitField0_ & 0xffffffdf;
                onChanged();
                return this;
            } else
            {
                serviceBuilder_.clear();
                return this;
            }
        }

        public Builder clearSourceCodeInfo()
        {
            if (sourceCodeInfoBuilder_ == null)
            {
                sourceCodeInfo_ = DescriptorProtos.SourceCodeInfo.getDefaultInstance();
                onChanged();
            } else
            {
                sourceCodeInfoBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xfffffeff;
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

        public DescriptorProtos.FileDescriptorProto getDefaultInstanceForType()
        {
            return DescriptorProtos.FileDescriptorProto.getDefaultInstance();
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public String getDependency(int i)
        {
            return (String)dependency_.get(i);
        }

        public int getDependencyCount()
        {
            return dependency_.size();
        }

        public List getDependencyList()
        {
            return Collections.unmodifiableList(dependency_);
        }

        public Descriptors.Descriptor getDescriptorForType()
        {
            return DescriptorProtos.FileDescriptorProto.getDescriptor();
        }

        public DescriptorProtos.EnumDescriptorProto getEnumType(int i)
        {
            if (enumTypeBuilder_ == null)
            {
                return (DescriptorProtos.EnumDescriptorProto)enumType_.get(i);
            } else
            {
                return (DescriptorProtos.EnumDescriptorProto)enumTypeBuilder_.getMessage(i);
            }
        }

        public DescriptorProtos.EnumDescriptorProto.Builder getEnumTypeBuilder(int i)
        {
            return (DescriptorProtos.EnumDescriptorProto.Builder)getEnumTypeFieldBuilder().getBuilder(i);
        }

        public List getEnumTypeBuilderList()
        {
            return getEnumTypeFieldBuilder().getBuilderList();
        }

        public int getEnumTypeCount()
        {
            if (enumTypeBuilder_ == null)
            {
                return enumType_.size();
            } else
            {
                return enumTypeBuilder_.getCount();
            }
        }

        public List getEnumTypeList()
        {
            if (enumTypeBuilder_ == null)
            {
                return Collections.unmodifiableList(enumType_);
            } else
            {
                return enumTypeBuilder_.getMessageList();
            }
        }

        public DescriptorProtos.EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i)
        {
            if (enumTypeBuilder_ == null)
            {
                return (DescriptorProtos.EnumDescriptorProtoOrBuilder)enumType_.get(i);
            } else
            {
                return (DescriptorProtos.EnumDescriptorProtoOrBuilder)enumTypeBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getEnumTypeOrBuilderList()
        {
            if (enumTypeBuilder_ != null)
            {
                return enumTypeBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(enumType_);
            }
        }

        public DescriptorProtos.FieldDescriptorProto getExtension(int i)
        {
            if (extensionBuilder_ == null)
            {
                return (DescriptorProtos.FieldDescriptorProto)extension_.get(i);
            } else
            {
                return (DescriptorProtos.FieldDescriptorProto)extensionBuilder_.getMessage(i);
            }
        }

        public DescriptorProtos.FieldDescriptorProto.Builder getExtensionBuilder(int i)
        {
            return (DescriptorProtos.FieldDescriptorProto.Builder)getExtensionFieldBuilder().getBuilder(i);
        }

        public List getExtensionBuilderList()
        {
            return getExtensionFieldBuilder().getBuilderList();
        }

        public int getExtensionCount()
        {
            if (extensionBuilder_ == null)
            {
                return extension_.size();
            } else
            {
                return extensionBuilder_.getCount();
            }
        }

        public List getExtensionList()
        {
            if (extensionBuilder_ == null)
            {
                return Collections.unmodifiableList(extension_);
            } else
            {
                return extensionBuilder_.getMessageList();
            }
        }

        public DescriptorProtos.FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i)
        {
            if (extensionBuilder_ == null)
            {
                return (DescriptorProtos.FieldDescriptorProtoOrBuilder)extension_.get(i);
            } else
            {
                return (DescriptorProtos.FieldDescriptorProtoOrBuilder)extensionBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getExtensionOrBuilderList()
        {
            if (extensionBuilder_ != null)
            {
                return extensionBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(extension_);
            }
        }

        public DescriptorProtos.DescriptorProto getMessageType(int i)
        {
            if (messageTypeBuilder_ == null)
            {
                return (DescriptorProtos.DescriptorProto)messageType_.get(i);
            } else
            {
                return (DescriptorProtos.DescriptorProto)messageTypeBuilder_.getMessage(i);
            }
        }

        public DescriptorProtos.DescriptorProto.Builder getMessageTypeBuilder(int i)
        {
            return (DescriptorProtos.DescriptorProto.Builder)getMessageTypeFieldBuilder().getBuilder(i);
        }

        public List getMessageTypeBuilderList()
        {
            return getMessageTypeFieldBuilder().getBuilderList();
        }

        public int getMessageTypeCount()
        {
            if (messageTypeBuilder_ == null)
            {
                return messageType_.size();
            } else
            {
                return messageTypeBuilder_.getCount();
            }
        }

        public List getMessageTypeList()
        {
            if (messageTypeBuilder_ == null)
            {
                return Collections.unmodifiableList(messageType_);
            } else
            {
                return messageTypeBuilder_.getMessageList();
            }
        }

        public DescriptorProtos.DescriptorProtoOrBuilder getMessageTypeOrBuilder(int i)
        {
            if (messageTypeBuilder_ == null)
            {
                return (DescriptorProtos.DescriptorProtoOrBuilder)messageType_.get(i);
            } else
            {
                return (DescriptorProtos.DescriptorProtoOrBuilder)messageTypeBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getMessageTypeOrBuilderList()
        {
            if (messageTypeBuilder_ != null)
            {
                return messageTypeBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(messageType_);
            }
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

        public DescriptorProtos.FileOptions getOptions()
        {
            if (optionsBuilder_ == null)
            {
                return options_;
            } else
            {
                return (DescriptorProtos.FileOptions)optionsBuilder_.getMessage();
            }
        }

        public DescriptorProtos.FileOptions.Builder getOptionsBuilder()
        {
            bitField0_ = bitField0_ | 0x80;
            onChanged();
            return (DescriptorProtos.FileOptions.Builder)getOptionsFieldBuilder().getBuilder();
        }

        public DescriptorProtos.FileOptionsOrBuilder getOptionsOrBuilder()
        {
            if (optionsBuilder_ != null)
            {
                return (DescriptorProtos.FileOptionsOrBuilder)optionsBuilder_.getMessageOrBuilder();
            } else
            {
                return options_;
            }
        }

        public String getPackage()
        {
            Object obj = package_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                package_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public DescriptorProtos.ServiceDescriptorProto getService(int i)
        {
            if (serviceBuilder_ == null)
            {
                return (DescriptorProtos.ServiceDescriptorProto)service_.get(i);
            } else
            {
                return (DescriptorProtos.ServiceDescriptorProto)serviceBuilder_.getMessage(i);
            }
        }

        public DescriptorProtos.ServiceDescriptorProto.Builder getServiceBuilder(int i)
        {
            return (DescriptorProtos.ServiceDescriptorProto.Builder)getServiceFieldBuilder().getBuilder(i);
        }

        public List getServiceBuilderList()
        {
            return getServiceFieldBuilder().getBuilderList();
        }

        public int getServiceCount()
        {
            if (serviceBuilder_ == null)
            {
                return service_.size();
            } else
            {
                return serviceBuilder_.getCount();
            }
        }

        public List getServiceList()
        {
            if (serviceBuilder_ == null)
            {
                return Collections.unmodifiableList(service_);
            } else
            {
                return serviceBuilder_.getMessageList();
            }
        }

        public DescriptorProtos.ServiceDescriptorProtoOrBuilder getServiceOrBuilder(int i)
        {
            if (serviceBuilder_ == null)
            {
                return (DescriptorProtos.ServiceDescriptorProtoOrBuilder)service_.get(i);
            } else
            {
                return (DescriptorProtos.ServiceDescriptorProtoOrBuilder)serviceBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getServiceOrBuilderList()
        {
            if (serviceBuilder_ != null)
            {
                return serviceBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(service_);
            }
        }

        public DescriptorProtos.SourceCodeInfo getSourceCodeInfo()
        {
            if (sourceCodeInfoBuilder_ == null)
            {
                return sourceCodeInfo_;
            } else
            {
                return (DescriptorProtos.SourceCodeInfo)sourceCodeInfoBuilder_.getMessage();
            }
        }

        public DescriptorProtos.SourceCodeInfo.Builder getSourceCodeInfoBuilder()
        {
            bitField0_ = bitField0_ | 0x100;
            onChanged();
            return (DescriptorProtos.SourceCodeInfo.Builder)getSourceCodeInfoFieldBuilder().getBuilder();
        }

        public DescriptorProtos.SourceCodeInfoOrBuilder getSourceCodeInfoOrBuilder()
        {
            if (sourceCodeInfoBuilder_ != null)
            {
                return (DescriptorProtos.SourceCodeInfoOrBuilder)sourceCodeInfoBuilder_.getMessageOrBuilder();
            } else
            {
                return sourceCodeInfo_;
            }
        }

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasOptions()
        {
            return (bitField0_ & 0x80) == 128;
        }

        public boolean hasPackage()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasSourceCodeInfo()
        {
            return (bitField0_ & 0x100) == 256;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return DescriptorProtos.access$800();
        }

        public final boolean isInitialized()
        {
            int i = 0;
_L13:
            if (i >= getMessageTypeCount()) goto _L2; else goto _L1
_L1:
            if (getMessageType(i).isInitialized()) goto _L4; else goto _L3
_L3:
            return false;
_L4:
            i++;
            continue; /* Loop/switch isn't completed */
_L2:
            i = 0;
_L6:
            if (i >= getEnumTypeCount())
            {
                break MISSING_BLOCK_LABEL_58;
            }
            if (!getEnumType(i).isInitialized()) goto _L3; else goto _L5
_L5:
            i++;
              goto _L6
            i = 0;
_L8:
            if (i >= getServiceCount())
            {
                break MISSING_BLOCK_LABEL_86;
            }
            if (!getService(i).isInitialized()) goto _L3; else goto _L7
_L7:
            i++;
              goto _L8
            i = 0;
_L10:
            if (i >= getExtensionCount())
            {
                continue; /* Loop/switch isn't completed */
            }
            if (!getExtension(i).isInitialized()) goto _L3; else goto _L9
_L9:
            i++;
              goto _L10
            if (hasOptions() && !getOptions().isInitialized()) goto _L3; else goto _L11
_L11:
            return true;
            if (true) goto _L13; else goto _L12
_L12:
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
                    bitField0_ = bitField0_ | 2;
                    package_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    ensureDependencyIsMutable();
                    dependency_.add(codedinputstream.readBytes());
                    break;

                case 34: // '"'
                    DescriptorProtos.DescriptorProto.Builder builder1 = DescriptorProtos.DescriptorProto.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addMessageType(builder1.buildPartial());
                    break;

                case 42: // '*'
                    DescriptorProtos.EnumDescriptorProto.Builder builder2 = DescriptorProtos.EnumDescriptorProto.newBuilder();
                    codedinputstream.readMessage(builder2, extensionregistrylite);
                    addEnumType(builder2.buildPartial());
                    break;

                case 50: // '2'
                    DescriptorProtos.ServiceDescriptorProto.Builder builder3 = DescriptorProtos.ServiceDescriptorProto.newBuilder();
                    codedinputstream.readMessage(builder3, extensionregistrylite);
                    addService(builder3.buildPartial());
                    break;

                case 58: // ':'
                    DescriptorProtos.FieldDescriptorProto.Builder builder4 = DescriptorProtos.FieldDescriptorProto.newBuilder();
                    codedinputstream.readMessage(builder4, extensionregistrylite);
                    addExtension(builder4.buildPartial());
                    break;

                case 66: // 'B'
                    DescriptorProtos.FileOptions.Builder builder5 = DescriptorProtos.FileOptions.newBuilder();
                    if (hasOptions())
                    {
                        builder5.mergeFrom(getOptions());
                    }
                    codedinputstream.readMessage(builder5, extensionregistrylite);
                    setOptions(builder5.buildPartial());
                    break;

                case 74: // 'J'
                    DescriptorProtos.SourceCodeInfo.Builder builder6 = DescriptorProtos.SourceCodeInfo.newBuilder();
                    if (hasSourceCodeInfo())
                    {
                        builder6.mergeFrom(getSourceCodeInfo());
                    }
                    codedinputstream.readMessage(builder6, extensionregistrylite);
                    setSourceCodeInfo(builder6.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(DescriptorProtos.FileDescriptorProto filedescriptorproto)
        {
            Object obj = null;
            if (filedescriptorproto == DescriptorProtos.FileDescriptorProto.getDefaultInstance())
            {
                return this;
            }
            if (filedescriptorproto.hasName())
            {
                setName(filedescriptorproto.getName());
            }
            if (filedescriptorproto.hasPackage())
            {
                setPackage(filedescriptorproto.getPackage());
            }
            if (!filedescriptorproto.dependency_.isEmpty())
            {
                if (dependency_.isEmpty())
                {
                    dependency_ = filedescriptorproto.dependency_;
                    bitField0_ = bitField0_ & -5;
                } else
                {
                    ensureDependencyIsMutable();
                    dependency_.addAll(filedescriptorproto.dependency_);
                }
                onChanged();
            }
            if (messageTypeBuilder_ == null)
            {
                if (!filedescriptorproto.messageType_.isEmpty())
                {
                    if (messageType_.isEmpty())
                    {
                        messageType_ = filedescriptorproto.messageType_;
                        bitField0_ = bitField0_ & -9;
                    } else
                    {
                        ensureMessageTypeIsMutable();
                        messageType_.addAll(filedescriptorproto.messageType_);
                    }
                    onChanged();
                }
            } else
            if (!filedescriptorproto.messageType_.isEmpty())
            {
                if (messageTypeBuilder_.isEmpty())
                {
                    messageTypeBuilder_.dispose();
                    messageTypeBuilder_ = null;
                    messageType_ = filedescriptorproto.messageType_;
                    bitField0_ = bitField0_ & -9;
                    RepeatedFieldBuilder repeatedfieldbuilder;
                    if (GeneratedMessage.alwaysUseFieldBuilders)
                    {
                        repeatedfieldbuilder = getMessageTypeFieldBuilder();
                    } else
                    {
                        repeatedfieldbuilder = null;
                    }
                    messageTypeBuilder_ = repeatedfieldbuilder;
                } else
                {
                    messageTypeBuilder_.addAllMessages(filedescriptorproto.messageType_);
                }
            }
            if (enumTypeBuilder_ == null)
            {
                if (!filedescriptorproto.enumType_.isEmpty())
                {
                    if (enumType_.isEmpty())
                    {
                        enumType_ = filedescriptorproto.enumType_;
                        bitField0_ = bitField0_ & 0xffffffef;
                    } else
                    {
                        ensureEnumTypeIsMutable();
                        enumType_.addAll(filedescriptorproto.enumType_);
                    }
                    onChanged();
                }
            } else
            if (!filedescriptorproto.enumType_.isEmpty())
            {
                if (enumTypeBuilder_.isEmpty())
                {
                    enumTypeBuilder_.dispose();
                    enumTypeBuilder_ = null;
                    enumType_ = filedescriptorproto.enumType_;
                    bitField0_ = bitField0_ & 0xffffffef;
                    RepeatedFieldBuilder repeatedfieldbuilder1;
                    if (GeneratedMessage.alwaysUseFieldBuilders)
                    {
                        repeatedfieldbuilder1 = getEnumTypeFieldBuilder();
                    } else
                    {
                        repeatedfieldbuilder1 = null;
                    }
                    enumTypeBuilder_ = repeatedfieldbuilder1;
                } else
                {
                    enumTypeBuilder_.addAllMessages(filedescriptorproto.enumType_);
                }
            }
            if (serviceBuilder_ == null)
            {
                if (!filedescriptorproto.service_.isEmpty())
                {
                    if (service_.isEmpty())
                    {
                        service_ = filedescriptorproto.service_;
                        bitField0_ = bitField0_ & 0xffffffdf;
                    } else
                    {
                        ensureServiceIsMutable();
                        service_.addAll(filedescriptorproto.service_);
                    }
                    onChanged();
                }
            } else
            if (!filedescriptorproto.service_.isEmpty())
            {
                if (serviceBuilder_.isEmpty())
                {
                    serviceBuilder_.dispose();
                    serviceBuilder_ = null;
                    service_ = filedescriptorproto.service_;
                    bitField0_ = bitField0_ & 0xffffffdf;
                    RepeatedFieldBuilder repeatedfieldbuilder2;
                    if (GeneratedMessage.alwaysUseFieldBuilders)
                    {
                        repeatedfieldbuilder2 = getServiceFieldBuilder();
                    } else
                    {
                        repeatedfieldbuilder2 = null;
                    }
                    serviceBuilder_ = repeatedfieldbuilder2;
                } else
                {
                    serviceBuilder_.addAllMessages(filedescriptorproto.service_);
                }
            }
            if (extensionBuilder_ == null)
            {
                if (!filedescriptorproto.extension_.isEmpty())
                {
                    if (extension_.isEmpty())
                    {
                        extension_ = filedescriptorproto.extension_;
                        bitField0_ = bitField0_ & 0xffffffbf;
                    } else
                    {
                        ensureExtensionIsMutable();
                        extension_.addAll(filedescriptorproto.extension_);
                    }
                    onChanged();
                }
            } else
            if (!filedescriptorproto.extension_.isEmpty())
            {
                if (extensionBuilder_.isEmpty())
                {
                    extensionBuilder_.dispose();
                    extensionBuilder_ = null;
                    extension_ = filedescriptorproto.extension_;
                    bitField0_ = bitField0_ & 0xffffffbf;
                    RepeatedFieldBuilder repeatedfieldbuilder3 = obj;
                    if (GeneratedMessage.alwaysUseFieldBuilders)
                    {
                        repeatedfieldbuilder3 = getExtensionFieldBuilder();
                    }
                    extensionBuilder_ = repeatedfieldbuilder3;
                } else
                {
                    extensionBuilder_.addAllMessages(filedescriptorproto.extension_);
                }
            }
            if (filedescriptorproto.hasOptions())
            {
                mergeOptions(filedescriptorproto.getOptions());
            }
            if (filedescriptorproto.hasSourceCodeInfo())
            {
                mergeSourceCodeInfo(filedescriptorproto.getSourceCodeInfo());
            }
            mergeUnknownFields(filedescriptorproto.getUnknownFields());
            return this;
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof DescriptorProtos.FileDescriptorProto)
            {
                return mergeFrom((DescriptorProtos.FileDescriptorProto)message);
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

        public Builder mergeOptions(DescriptorProtos.FileOptions fileoptions)
        {
            if (optionsBuilder_ == null)
            {
                if ((bitField0_ & 0x80) == 128 && options_ != DescriptorProtos.FileOptions.getDefaultInstance())
                {
                    options_ = DescriptorProtos.FileOptions.newBuilder(options_).mergeFrom(fileoptions).buildPartial();
                } else
                {
                    options_ = fileoptions;
                }
                onChanged();
            } else
            {
                optionsBuilder_.mergeFrom(fileoptions);
            }
            bitField0_ = bitField0_ | 0x80;
            return this;
        }

        public Builder mergeSourceCodeInfo(DescriptorProtos.SourceCodeInfo sourcecodeinfo)
        {
            if (sourceCodeInfoBuilder_ == null)
            {
                if ((bitField0_ & 0x100) == 256 && sourceCodeInfo_ != DescriptorProtos.SourceCodeInfo.getDefaultInstance())
                {
                    sourceCodeInfo_ = DescriptorProtos.SourceCodeInfo.newBuilder(sourceCodeInfo_).mergeFrom(sourcecodeinfo).buildPartial();
                } else
                {
                    sourceCodeInfo_ = sourcecodeinfo;
                }
                onChanged();
            } else
            {
                sourceCodeInfoBuilder_.mergeFrom(sourcecodeinfo);
            }
            bitField0_ = bitField0_ | 0x100;
            return this;
        }

        public Builder removeEnumType(int i)
        {
            if (enumTypeBuilder_ == null)
            {
                ensureEnumTypeIsMutable();
                enumType_.remove(i);
                onChanged();
                return this;
            } else
            {
                enumTypeBuilder_.remove(i);
                return this;
            }
        }

        public Builder removeExtension(int i)
        {
            if (extensionBuilder_ == null)
            {
                ensureExtensionIsMutable();
                extension_.remove(i);
                onChanged();
                return this;
            } else
            {
                extensionBuilder_.remove(i);
                return this;
            }
        }

        public Builder removeMessageType(int i)
        {
            if (messageTypeBuilder_ == null)
            {
                ensureMessageTypeIsMutable();
                messageType_.remove(i);
                onChanged();
                return this;
            } else
            {
                messageTypeBuilder_.remove(i);
                return this;
            }
        }

        public Builder removeService(int i)
        {
            if (serviceBuilder_ == null)
            {
                ensureServiceIsMutable();
                service_.remove(i);
                onChanged();
                return this;
            } else
            {
                serviceBuilder_.remove(i);
                return this;
            }
        }

        public Builder setDependency(int i, String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureDependencyIsMutable();
                dependency_.set(i, s);
                onChanged();
                return this;
            }
        }

        public Builder setEnumType(int i, DescriptorProtos.EnumDescriptorProto.Builder builder)
        {
            if (enumTypeBuilder_ == null)
            {
                ensureEnumTypeIsMutable();
                enumType_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                enumTypeBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setEnumType(int i, DescriptorProtos.EnumDescriptorProto enumdescriptorproto)
        {
            if (enumTypeBuilder_ == null)
            {
                if (enumdescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureEnumTypeIsMutable();
                    enumType_.set(i, enumdescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                enumTypeBuilder_.setMessage(i, enumdescriptorproto);
                return this;
            }
        }

        public Builder setExtension(int i, DescriptorProtos.FieldDescriptorProto.Builder builder)
        {
            if (extensionBuilder_ == null)
            {
                ensureExtensionIsMutable();
                extension_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                extensionBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setExtension(int i, DescriptorProtos.FieldDescriptorProto fielddescriptorproto)
        {
            if (extensionBuilder_ == null)
            {
                if (fielddescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureExtensionIsMutable();
                    extension_.set(i, fielddescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                extensionBuilder_.setMessage(i, fielddescriptorproto);
                return this;
            }
        }

        public Builder setMessageType(int i, DescriptorProtos.DescriptorProto.Builder builder)
        {
            if (messageTypeBuilder_ == null)
            {
                ensureMessageTypeIsMutable();
                messageType_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                messageTypeBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setMessageType(int i, DescriptorProtos.DescriptorProto descriptorproto)
        {
            if (messageTypeBuilder_ == null)
            {
                if (descriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureMessageTypeIsMutable();
                    messageType_.set(i, descriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                messageTypeBuilder_.setMessage(i, descriptorproto);
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

        public Builder setOptions(DescriptorProtos.FileOptions.Builder builder)
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

        public Builder setOptions(DescriptorProtos.FileOptions fileoptions)
        {
            if (optionsBuilder_ == null)
            {
                if (fileoptions == null)
                {
                    throw new NullPointerException();
                }
                options_ = fileoptions;
                onChanged();
            } else
            {
                optionsBuilder_.setMessage(fileoptions);
            }
            bitField0_ = bitField0_ | 0x80;
            return this;
        }

        public Builder setPackage(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                package_ = s;
                onChanged();
                return this;
            }
        }

        void setPackage(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            package_ = bytestring;
            onChanged();
        }

        public Builder setService(int i, DescriptorProtos.ServiceDescriptorProto.Builder builder)
        {
            if (serviceBuilder_ == null)
            {
                ensureServiceIsMutable();
                service_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                serviceBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setService(int i, DescriptorProtos.ServiceDescriptorProto servicedescriptorproto)
        {
            if (serviceBuilder_ == null)
            {
                if (servicedescriptorproto == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureServiceIsMutable();
                    service_.set(i, servicedescriptorproto);
                    onChanged();
                    return this;
                }
            } else
            {
                serviceBuilder_.setMessage(i, servicedescriptorproto);
                return this;
            }
        }

        public Builder setSourceCodeInfo(DescriptorProtos.SourceCodeInfo.Builder builder)
        {
            if (sourceCodeInfoBuilder_ == null)
            {
                sourceCodeInfo_ = builder.build();
                onChanged();
            } else
            {
                sourceCodeInfoBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 0x100;
            return this;
        }

        public Builder setSourceCodeInfo(DescriptorProtos.SourceCodeInfo sourcecodeinfo)
        {
            if (sourceCodeInfoBuilder_ == null)
            {
                if (sourcecodeinfo == null)
                {
                    throw new NullPointerException();
                }
                sourceCodeInfo_ = sourcecodeinfo;
                onChanged();
            } else
            {
                sourceCodeInfoBuilder_.setMessage(sourcecodeinfo);
            }
            bitField0_ = bitField0_ | 0x100;
            return this;
        }



        private Builder()
        {
            name_ = "";
            package_ = "";
            dependency_ = LazyStringArrayList.EMPTY;
            messageType_ = Collections.emptyList();
            enumType_ = Collections.emptyList();
            service_ = Collections.emptyList();
            extension_ = Collections.emptyList();
            options_ = DescriptorProtos.FileOptions.getDefaultInstance();
            sourceCodeInfo_ = DescriptorProtos.SourceCodeInfo.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            package_ = "";
            dependency_ = LazyStringArrayList.EMPTY;
            messageType_ = Collections.emptyList();
            enumType_ = Collections.emptyList();
            service_ = Collections.emptyList();
            extension_ = Collections.emptyList();
            options_ = DescriptorProtos.FileOptions.getDefaultInstance();
            sourceCodeInfo_ = DescriptorProtos.SourceCodeInfo.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        Builder(GeneratedMessage.BuilderParent builderparent, a a)
        {
            this(builderparent);
        }
    }


    public static final int DEPENDENCY_FIELD_NUMBER = 3;
    public static final int ENUM_TYPE_FIELD_NUMBER = 5;
    public static final int EXTENSION_FIELD_NUMBER = 7;
    public static final int MESSAGE_TYPE_FIELD_NUMBER = 4;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 8;
    public static final int PACKAGE_FIELD_NUMBER = 2;
    public static final int SERVICE_FIELD_NUMBER = 6;
    public static final int SOURCE_CODE_INFO_FIELD_NUMBER = 9;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private LazyStringList dependency_;
    private List enumType_;
    private List extension_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List messageType_;
    private Object name_;
    private initFields options_;
    private Object package_;
    private List service_;
    private initFields sourceCodeInfo_;

    public static Builder.bitField0_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final defaultInstance getDescriptor()
    {
        return DescriptorProtos.access$700();
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

    private ByteString getPackageBytes()
    {
        Object obj = package_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            package_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private void initFields()
    {
        name_ = "";
        package_ = "";
        dependency_ = LazyStringArrayList.EMPTY;
        messageType_ = Collections.emptyList();
        enumType_ = Collections.emptyList();
        service_ = Collections.emptyList();
        extension_ = Collections.emptyList();
        options_ = ltInstance();
        sourceCodeInfo_ = faultInstance();
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

    public String getDependency(int i)
    {
        return (String)dependency_.get(i);
    }

    public int getDependencyCount()
    {
        return dependency_.size();
    }

    public List getDependencyList()
    {
        return dependency_;
    }

    public dependency_ getEnumType(int i)
    {
        return (dependency_)enumType_.get(i);
    }

    public int getEnumTypeCount()
    {
        return enumType_.size();
    }

    public List getEnumTypeList()
    {
        return enumType_;
    }

    public rBuilder getEnumTypeOrBuilder(int i)
    {
        return (rBuilder)enumType_.get(i);
    }

    public List getEnumTypeOrBuilderList()
    {
        return enumType_;
    }

    public  getExtension(int i)
    {
        return ()extension_.get(i);
    }

    public int getExtensionCount()
    {
        return extension_.size();
    }

    public List getExtensionList()
    {
        return extension_;
    }

    public OrBuilder getExtensionOrBuilder(int i)
    {
        return (OrBuilder)extension_.get(i);
    }

    public List getExtensionOrBuilderList()
    {
        return extension_;
    }

    public extension_ getMessageType(int i)
    {
        return (extension_)messageType_.get(i);
    }

    public int getMessageTypeCount()
    {
        return messageType_.size();
    }

    public List getMessageTypeList()
    {
        return messageType_;
    }

    public lder getMessageTypeOrBuilder(int i)
    {
        return (lder)messageType_.get(i);
    }

    public List getMessageTypeOrBuilderList()
    {
        return messageType_;
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

    public String getPackage()
    {
        Object obj = package_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            package_ = s;
        }
        return s;
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
        int k;
        int l;
        if ((bitField0_ & 1) == 1)
        {
            i = CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0;
        } else
        {
            i = 0;
        }
        j = i;
        if ((bitField0_ & 2) == 2)
        {
            j = i + CodedOutputStream.computeBytesSize(2, getPackageBytes());
        }
        k = 0;
        i = 0;
        for (; k < dependency_.size(); k++)
        {
            i += CodedOutputStream.computeBytesSizeNoTag(dependency_.getByteString(k));
        }

        l = getDependencyList().size();
        k = 0;
        i = j + i + l * 1;
        for (j = k; j < messageType_.size(); j++)
        {
            i += CodedOutputStream.computeMessageSize(4, (MessageLite)messageType_.get(j));
        }

        for (j = 0; j < enumType_.size(); j++)
        {
            i += CodedOutputStream.computeMessageSize(5, (MessageLite)enumType_.get(j));
        }

        k = 0;
        do
        {
            l = ((flag) ? 1 : 0);
            j = i;
            if (k >= service_.size())
            {
                break;
            }
            i += CodedOutputStream.computeMessageSize(6, (MessageLite)service_.get(k));
            k++;
        } while (true);
        for (; l < extension_.size(); l++)
        {
            j += CodedOutputStream.computeMessageSize(7, (MessageLite)extension_.get(l));
        }

        i = j;
        if ((bitField0_ & 4) == 4)
        {
            i = j + CodedOutputStream.computeMessageSize(8, options_);
        }
        j = i;
        if ((bitField0_ & 8) == 8)
        {
            j = i + CodedOutputStream.computeMessageSize(9, sourceCodeInfo_);
        }
        i = getUnknownFields().getSerializedSize() + j;
        memoizedSerializedSize = i;
        return i;
    }

    public to getService(int i)
    {
        return (to)service_.get(i);
    }

    public int getServiceCount()
    {
        return service_.size();
    }

    public List getServiceList()
    {
        return service_;
    }

    public toOrBuilder getServiceOrBuilder(int i)
    {
        return (toOrBuilder)service_.get(i);
    }

    public List getServiceOrBuilderList()
    {
        return service_;
    }

    public service_ getSourceCodeInfo()
    {
        return sourceCodeInfo_;
    }

    public der getSourceCodeInfoOrBuilder()
    {
        return sourceCodeInfo_;
    }

    public boolean hasName()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasOptions()
    {
        return (bitField0_ & 4) == 4;
    }

    public boolean hasPackage()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasSourceCodeInfo()
    {
        return (bitField0_ & 8) == 8;
    }

    protected bitField0_ internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$800();
    }

    public final boolean isInitialized()
    {
        boolean flag = true;
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            if (byte0 != 1)
            {
                flag = false;
            }
            return flag;
        }
        for (int i = 0; i < getMessageTypeCount(); i++)
        {
            if (!getMessageType(i).itialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
        }

        for (int j = 0; j < getEnumTypeCount(); j++)
        {
            if (!getEnumType(j).isInitialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
        }

        for (int k = 0; k < getServiceCount(); k++)
        {
            if (!getService(k).isInitialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
        }

        for (int l = 0; l < getExtensionCount(); l++)
        {
            if (!getExtension(l).isInitialized())
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
        boolean flag = false;
        getSerializedSize();
        if ((bitField0_ & 1) == 1)
        {
            codedoutputstream.writeBytes(1, getNameBytes());
        }
        if ((bitField0_ & 2) == 2)
        {
            codedoutputstream.writeBytes(2, getPackageBytes());
        }
        for (int i = 0; i < dependency_.size(); i++)
        {
            codedoutputstream.writeBytes(3, dependency_.getByteString(i));
        }

        for (int j = 0; j < messageType_.size(); j++)
        {
            codedoutputstream.writeMessage(4, (MessageLite)messageType_.get(j));
        }

        for (int k = 0; k < enumType_.size(); k++)
        {
            codedoutputstream.writeMessage(5, (MessageLite)enumType_.get(k));
        }

        int l = 0;
        int i1;
        do
        {
            i1 = ((flag) ? 1 : 0);
            if (l >= service_.size())
            {
                break;
            }
            codedoutputstream.writeMessage(6, (MessageLite)service_.get(l));
            l++;
        } while (true);
        for (; i1 < extension_.size(); i1++)
        {
            codedoutputstream.writeMessage(7, (MessageLite)extension_.get(i1));
        }

        if ((bitField0_ & 4) == 4)
        {
            codedoutputstream.writeMessage(8, options_);
        }
        if ((bitField0_ & 8) == 8)
        {
            codedoutputstream.writeMessage(9, sourceCodeInfo_);
        }
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }


/*
    static Object access$1302(Builder builder, Object obj)
    {
        builder.name_ = obj;
        return obj;
    }

*/


/*
    static Object access$1402(name_ name_1, Object obj)
    {
        name_1.package_ = obj;
        return obj;
    }

*/



/*
    static LazyStringList access$1502(package_ package_1, LazyStringList lazystringlist)
    {
        package_1.dependency_ = lazystringlist;
        return lazystringlist;
    }

*/



/*
    static List access$1602(dependency_ dependency_1, List list)
    {
        dependency_1.messageType_ = list;
        return list;
    }

*/



/*
    static List access$1702(messageType_ messagetype_, List list)
    {
        messagetype_.enumType_ = list;
        return list;
    }

*/



/*
    static List access$1802(enumType_ enumtype_, List list)
    {
        enumtype_.service_ = list;
        return list;
    }

*/



/*
    static List access$1902(service_ service_1, List list)
    {
        service_1.extension_ = list;
        return list;
    }

*/


/*
    static extension_ access$2002(extension_ extension_1, extension_ extension_2)
    {
        extension_1.options_ = extension_2;
        return extension_2;
    }

*/


/*
    static options_ access$2102(options_ options_1, options_ options_2)
    {
        options_1.sourceCodeInfo_ = options_2;
        return options_2;
    }

*/


/*
    static int access$2202(sourceCodeInfo_ sourcecodeinfo_, int i)
    {
        sourcecodeinfo_.bitField0_ = i;
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
