// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            DescriptorProtos, LazyStringArrayList, InvalidProtocolBufferException, UninitializedMessageException, 
//            RepeatedFieldBuilder, SingleFieldBuilder, GeneratedMessage, LazyStringList, 
//            UnmodifiableLazyStringList, ByteString, UnknownFieldSet, CodedInputStream, 
//            a, Message, MessageLite, ExtensionRegistryLite

public static final class <init> extends <init>
    implements 
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
    private bitField0_ options_;
    private Object package_;
    private RepeatedFieldBuilder serviceBuilder_;
    private List service_;
    private SingleFieldBuilder sourceCodeInfoBuilder_;
    private bitField0_ sourceCodeInfo_;

    private  buildParsed()
        throws InvalidProtocolBufferException
    {
          = buildPartial();
        if (!.lized())
        {
            throw newUninitializedMessageException().asInvalidProtocolBufferException();
        } else
        {
            return ;
        }
    }

    private static olBufferException create()
    {
        return new <init>();
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

    public static final bitField0_ getDescriptor()
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

    public getSourceCodeInfoFieldBuilder addAllDependency(Iterable iterable)
    {
        ensureDependencyIsMutable();
        ensureDependencyIsMutable(iterable, dependency_);
        onChanged();
        return this;
    }

    public onChanged addAllEnumType(Iterable iterable)
    {
        if (enumTypeBuilder_ == null)
        {
            ensureEnumTypeIsMutable();
            ensureEnumTypeIsMutable(iterable, enumType_);
            onChanged();
            return this;
        } else
        {
            enumTypeBuilder_.addAllMessages(iterable);
            return this;
        }
    }

    public enumTypeBuilder_ addAllExtension(Iterable iterable)
    {
        if (extensionBuilder_ == null)
        {
            ensureExtensionIsMutable();
            ensureExtensionIsMutable(iterable, extension_);
            onChanged();
            return this;
        } else
        {
            extensionBuilder_.addAllMessages(iterable);
            return this;
        }
    }

    public extensionBuilder_ addAllMessageType(Iterable iterable)
    {
        if (messageTypeBuilder_ == null)
        {
            ensureMessageTypeIsMutable();
            ensureMessageTypeIsMutable(iterable, messageType_);
            onChanged();
            return this;
        } else
        {
            messageTypeBuilder_.addAllMessages(iterable);
            return this;
        }
    }

    public messageTypeBuilder_ addAllService(Iterable iterable)
    {
        if (serviceBuilder_ == null)
        {
            ensureServiceIsMutable();
            ensureServiceIsMutable(iterable, service_);
            onChanged();
            return this;
        } else
        {
            serviceBuilder_.addAllMessages(iterable);
            return this;
        }
    }

    public serviceBuilder_ addDependency(String s)
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

    public onChanged addEnumType(int i, onChanged onchanged)
    {
        if (enumTypeBuilder_ == null)
        {
            ensureEnumTypeIsMutable();
            enumType_.add(i, onchanged.build());
            onChanged();
            return this;
        } else
        {
            enumTypeBuilder_.addMessage(i, onchanged.build());
            return this;
        }
    }

    public build addEnumType(int i, build build1)
    {
        if (enumTypeBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureEnumTypeIsMutable();
                enumType_.add(i, build1);
                onChanged();
                return this;
            }
        } else
        {
            enumTypeBuilder_.addMessage(i, build1);
            return this;
        }
    }

    public enumTypeBuilder_ addEnumType(enumTypeBuilder_ enumtypebuilder_)
    {
        if (enumTypeBuilder_ == null)
        {
            ensureEnumTypeIsMutable();
            enumType_.add(enumtypebuilder_.build());
            onChanged();
            return this;
        } else
        {
            enumTypeBuilder_.addMessage(enumtypebuilder_.build());
            return this;
        }
    }

    public build addEnumType(build build1)
    {
        if (enumTypeBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureEnumTypeIsMutable();
                enumType_.add(build1);
                onChanged();
                return this;
            }
        } else
        {
            enumTypeBuilder_.addMessage(build1);
            return this;
        }
    }

    public enumTypeBuilder_ addEnumTypeBuilder()
    {
        return (enumTypeBuilder_)getEnumTypeFieldBuilder().addBuilder(ltInstance());
    }

    public ltInstance addEnumTypeBuilder(int i)
    {
        return (ltInstance)getEnumTypeFieldBuilder().addBuilder(i, ltInstance());
    }

    public  addExtension(int i,  )
    {
        if (extensionBuilder_ == null)
        {
            ensureExtensionIsMutable();
            extension_.add(i, .build());
            onChanged();
            return this;
        } else
        {
            extensionBuilder_.addMessage(i, .build());
            return this;
        }
    }

    public .build addExtension(int i, .build build1)
    {
        if (extensionBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureExtensionIsMutable();
                extension_.add(i, build1);
                onChanged();
                return this;
            }
        } else
        {
            extensionBuilder_.addMessage(i, build1);
            return this;
        }
    }

    public  addExtension( )
    {
        if (extensionBuilder_ == null)
        {
            ensureExtensionIsMutable();
            extension_.add(.build());
            onChanged();
            return this;
        } else
        {
            extensionBuilder_.addMessage(.build());
            return this;
        }
    }

    public .build addExtension(.build build1)
    {
        if (extensionBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureExtensionIsMutable();
                extension_.add(build1);
                onChanged();
                return this;
            }
        } else
        {
            extensionBuilder_.addMessage(build1);
            return this;
        }
    }

    public  addExtensionBuilder()
    {
        return ()getExtensionFieldBuilder().addBuilder(ultInstance());
    }

    public  addExtensionBuilder(int i)
    {
        return ()getExtensionFieldBuilder().addBuilder(i, ultInstance());
    }

    public ultInstance addMessageType(int i, ultInstance ultinstance)
    {
        if (messageTypeBuilder_ == null)
        {
            ensureMessageTypeIsMutable();
            messageType_.add(i, ultinstance.d());
            onChanged();
            return this;
        } else
        {
            messageTypeBuilder_.addMessage(i, ultinstance.d());
            return this;
        }
    }

    public d addMessageType(int i, d d)
    {
        if (messageTypeBuilder_ == null)
        {
            if (d == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureMessageTypeIsMutable();
                messageType_.add(i, d);
                onChanged();
                return this;
            }
        } else
        {
            messageTypeBuilder_.addMessage(i, d);
            return this;
        }
    }

    public messageTypeBuilder_ addMessageType(messageTypeBuilder_ messagetypebuilder_)
    {
        if (messageTypeBuilder_ == null)
        {
            ensureMessageTypeIsMutable();
            messageType_.add(messagetypebuilder_.d());
            onChanged();
            return this;
        } else
        {
            messageTypeBuilder_.addMessage(messagetypebuilder_.d());
            return this;
        }
    }

    public d addMessageType(d d)
    {
        if (messageTypeBuilder_ == null)
        {
            if (d == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureMessageTypeIsMutable();
                messageType_.add(d);
                onChanged();
                return this;
            }
        } else
        {
            messageTypeBuilder_.addMessage(d);
            return this;
        }
    }

    public messageTypeBuilder_ addMessageTypeBuilder()
    {
        return (messageTypeBuilder_)getMessageTypeFieldBuilder().addBuilder(stance());
    }

    public stance addMessageTypeBuilder(int i)
    {
        return (stance)getMessageTypeFieldBuilder().addBuilder(i, stance());
    }

    public er addService(int i, er er)
    {
        if (serviceBuilder_ == null)
        {
            ensureServiceIsMutable();
            service_.add(i, er.build());
            onChanged();
            return this;
        } else
        {
            serviceBuilder_.addMessage(i, er.build());
            return this;
        }
    }

    public er.build addService(int i, er.build build1)
    {
        if (serviceBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureServiceIsMutable();
                service_.add(i, build1);
                onChanged();
                return this;
            }
        } else
        {
            serviceBuilder_.addMessage(i, build1);
            return this;
        }
    }

    public er addService(er er)
    {
        if (serviceBuilder_ == null)
        {
            ensureServiceIsMutable();
            service_.add(er.build());
            onChanged();
            return this;
        } else
        {
            serviceBuilder_.addMessage(er.build());
            return this;
        }
    }

    public er.build addService(er.build build1)
    {
        if (serviceBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureServiceIsMutable();
                service_.add(build1);
                onChanged();
                return this;
            }
        } else
        {
            serviceBuilder_.addMessage(build1);
            return this;
        }
    }

    public er addServiceBuilder()
    {
        return (er)getServiceFieldBuilder().addBuilder(faultInstance());
    }

    public er addServiceBuilder(int i)
    {
        return (er)getServiceFieldBuilder().addBuilder(i, faultInstance());
    }

    public faultInstance build()
    {
        faultInstance faultinstance = buildPartial();
        if (!faultinstance.lized())
        {
            throw newUninitializedMessageException(faultinstance);
        } else
        {
            return faultinstance;
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

    public build buildPartial()
    {
        int i = 1;
        build build1 = new build(this, null);
        int k = bitField0_;
        int j;
        if ((k & 1) != 1)
        {
            i = 0;
        }
        _mth302(build1, name_);
        j = i;
        if ((k & 2) == 2)
        {
            j = i | 2;
        }
        _mth402(build1, package_);
        if ((bitField0_ & 4) == 4)
        {
            dependency_ = new UnmodifiableLazyStringList(dependency_);
            bitField0_ = bitField0_ & -5;
        }
        _mth502(build1, dependency_);
        if (messageTypeBuilder_ == null)
        {
            if ((bitField0_ & 8) == 8)
            {
                messageType_ = Collections.unmodifiableList(messageType_);
                bitField0_ = bitField0_ & -9;
            }
            _mth602(build1, messageType_);
        } else
        {
            _mth602(build1, messageTypeBuilder_.build());
        }
        if (enumTypeBuilder_ == null)
        {
            if ((bitField0_ & 0x10) == 16)
            {
                enumType_ = Collections.unmodifiableList(enumType_);
                bitField0_ = bitField0_ & 0xffffffef;
            }
            _mth702(build1, enumType_);
        } else
        {
            _mth702(build1, enumTypeBuilder_.build());
        }
        if (serviceBuilder_ == null)
        {
            if ((bitField0_ & 0x20) == 32)
            {
                service_ = Collections.unmodifiableList(service_);
                bitField0_ = bitField0_ & 0xffffffdf;
            }
            _mth802(build1, service_);
        } else
        {
            _mth802(build1, serviceBuilder_.build());
        }
        if (extensionBuilder_ == null)
        {
            if ((bitField0_ & 0x40) == 64)
            {
                extension_ = Collections.unmodifiableList(extension_);
                bitField0_ = bitField0_ & 0xffffffbf;
            }
            _mth902(build1, extension_);
        } else
        {
            _mth902(build1, extensionBuilder_.build());
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
            _mth002(build1, options_);
        } else
        {
            _mth002(build1, (_cls002)optionsBuilder_.build());
        }
        j = i;
        if ((k & 0x100) == 256)
        {
            j = i | 8;
        }
        if (sourceCodeInfoBuilder_ == null)
        {
            _mth102(build1, sourceCodeInfo_);
        } else
        {
            _mth102(build1, (_cls102)sourceCodeInfoBuilder_.build());
        }
        _mth202(build1, j);
        onBuilt();
        return build1;
    }

    public volatile Message buildPartial()
    {
        return buildPartial();
    }

    public volatile MessageLite buildPartial()
    {
        return buildPartial();
    }

    public volatile buildPartial clear()
    {
        return clear();
    }

    public clear clear()
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
            options_ = ce();
        } else
        {
            optionsBuilder_.clear();
        }
        bitField0_ = bitField0_ & 0xffffff7f;
        if (sourceCodeInfoBuilder_ == null)
        {
            sourceCodeInfo_ = tance();
        } else
        {
            sourceCodeInfoBuilder_.clear();
        }
        bitField0_ = bitField0_ & 0xfffffeff;
        return this;
    }

    public volatile bitField0_ clear()
    {
        return clear();
    }

    public volatile clear clear()
    {
        return clear();
    }

    public volatile clear clear()
    {
        return clear();
    }

    public clear clearDependency()
    {
        dependency_ = LazyStringArrayList.EMPTY;
        bitField0_ = bitField0_ & -5;
        onChanged();
        return this;
    }

    public onChanged clearEnumType()
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

    public enumTypeBuilder_ clearExtension()
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

    public extensionBuilder_ clearMessageType()
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

    public messageTypeBuilder_ clearName()
    {
        bitField0_ = bitField0_ & -2;
        name_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearOptions()
    {
        if (optionsBuilder_ == null)
        {
            options_ = ce();
            onChanged();
        } else
        {
            optionsBuilder_.clear();
        }
        bitField0_ = bitField0_ & 0xffffff7f;
        return this;
    }

    public bitField0_ clearPackage()
    {
        bitField0_ = bitField0_ & -3;
        package_ = ltInstance().ge();
        onChanged();
        return this;
    }

    public onChanged clearService()
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

    public serviceBuilder_ clearSourceCodeInfo()
    {
        if (sourceCodeInfoBuilder_ == null)
        {
            sourceCodeInfo_ = tance();
            onChanged();
        } else
        {
            sourceCodeInfoBuilder_.clear();
        }
        bitField0_ = bitField0_ & 0xfffffeff;
        return this;
    }

    public volatile bitField0_ clone()
    {
        return clone();
    }

    public volatile clone clone()
    {
        return clone();
    }

    public clone clone()
    {
        return create().mergeFrom(buildPartial());
    }

    public volatile buildPartial clone()
    {
        return clone();
    }

    public volatile clone clone()
    {
        return clone();
    }

    public volatile clone clone()
    {
        return clone();
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return clone();
    }

    public clone getDefaultInstanceForType()
    {
        return ltInstance();
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

    public dependency_ getDescriptorForType()
    {
        return iptor();
    }

    public iptor getEnumType(int i)
    {
        if (enumTypeBuilder_ == null)
        {
            return (enumTypeBuilder_)enumType_.get(i);
        } else
        {
            return (enumType_)enumTypeBuilder_.getMessage(i);
        }
    }

    public enumTypeBuilder_ getEnumTypeBuilder(int i)
    {
        return (enumTypeBuilder_)getEnumTypeFieldBuilder().getBuilder(i);
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

    public  getEnumTypeOrBuilder(int i)
    {
        if (enumTypeBuilder_ == null)
        {
            return ()enumType_.get(i);
        } else
        {
            return ()enumTypeBuilder_.getMessageOrBuilder(i);
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

    public enumType_ getExtension(int i)
    {
        if (extensionBuilder_ == null)
        {
            return (extensionBuilder_)extension_.get(i);
        } else
        {
            return (extension_)extensionBuilder_.getMessage(i);
        }
    }

    public  getExtensionBuilder(int i)
    {
        return ()getExtensionFieldBuilder().getBuilder(i);
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

    public r getExtensionOrBuilder(int i)
    {
        if (extensionBuilder_ == null)
        {
            return (r)extension_.get(i);
        } else
        {
            return (r)extensionBuilder_.getMessageOrBuilder(i);
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

    public extension_ getMessageType(int i)
    {
        if (messageTypeBuilder_ == null)
        {
            return (messageTypeBuilder_)messageType_.get(i);
        } else
        {
            return (messageType_)messageTypeBuilder_.getMessage(i);
        }
    }

    public messageTypeBuilder_ getMessageTypeBuilder(int i)
    {
        return (messageTypeBuilder_)getMessageTypeFieldBuilder().getBuilder(i);
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

    public messageTypeBuilder_ getMessageTypeOrBuilder(int i)
    {
        if (messageTypeBuilder_ == null)
        {
            return (messageTypeBuilder_)messageType_.get(i);
        } else
        {
            return (messageType_)messageTypeBuilder_.getMessageOrBuilder(i);
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

    public name_ getOptions()
    {
        if (optionsBuilder_ == null)
        {
            return options_;
        } else
        {
            return (options_)optionsBuilder_.getMessage();
        }
    }

    public optionsBuilder_ getOptionsBuilder()
    {
        bitField0_ = bitField0_ | 0x80;
        onChanged();
        return (onChanged)getOptionsFieldBuilder().getBuilder();
    }

    public getOptionsFieldBuilder getOptionsOrBuilder()
    {
        if (optionsBuilder_ != null)
        {
            return (optionsBuilder_)optionsBuilder_.getMessageOrBuilder();
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

    public package_ getService(int i)
    {
        if (serviceBuilder_ == null)
        {
            return (serviceBuilder_)service_.get(i);
        } else
        {
            return (service_)serviceBuilder_.getMessage(i);
        }
    }

    public er getServiceBuilder(int i)
    {
        return (er)getServiceFieldBuilder().getBuilder(i);
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

    public der getServiceOrBuilder(int i)
    {
        if (serviceBuilder_ == null)
        {
            return (der)service_.get(i);
        } else
        {
            return (der)serviceBuilder_.getMessageOrBuilder(i);
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

    public service_ getSourceCodeInfo()
    {
        if (sourceCodeInfoBuilder_ == null)
        {
            return sourceCodeInfo_;
        } else
        {
            return (sourceCodeInfo_)sourceCodeInfoBuilder_.getMessage();
        }
    }

    public sourceCodeInfoBuilder_ getSourceCodeInfoBuilder()
    {
        bitField0_ = bitField0_ | 0x100;
        onChanged();
        return (onChanged)getSourceCodeInfoFieldBuilder().getBuilder();
    }

    public getSourceCodeInfoFieldBuilder getSourceCodeInfoOrBuilder()
    {
        if (sourceCodeInfoBuilder_ != null)
        {
            return (sourceCodeInfoBuilder_)sourceCodeInfoBuilder_.getMessageOrBuilder();
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

    protected bitField0_ internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$800();
    }

    public final boolean isInitialized()
    {
        int i = 0;
_L13:
        if (i >= getMessageTypeCount()) goto _L2; else goto _L1
_L1:
        if (getMessageType(i).d()) goto _L4; else goto _L3
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
        if (!getEnumType(i).lized()) goto _L3; else goto _L5
_L5:
        i++;
          goto _L6
        i = 0;
_L8:
        if (i >= getServiceCount())
        {
            break MISSING_BLOCK_LABEL_86;
        }
        if (!getService(i).tialized()) goto _L3; else goto _L7
_L7:
        i++;
          goto _L8
        i = 0;
_L10:
        if (i >= getExtensionCount())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!getExtension(i).alized()) goto _L3; else goto _L9
_L9:
        i++;
          goto _L10
        if (hasOptions() && !getOptions().getOptions()) goto _L3; else goto _L11
_L11:
        return true;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public volatile getOptions mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return mergeFrom(codedinputstream, extensionregistrylite);
    }

    public volatile mergeFrom mergeFrom(Message message)
    {
        return mergeFrom(message);
    }

    public volatile mergeFrom mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return mergeFrom(codedinputstream, extensionregistrylite);
    }

    public mergeFrom mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        mergeFrom mergefrom = UnknownFieldSet.newBuilder(getUnknownFields());
        do
        {
            int i = codedinputstream.readTag();
            switch (i)
            {
            default:
                if (!parseUnknownField(codedinputstream, mergefrom, extensionregistrylite, i))
                {
                    setUnknownFields(mergefrom.setUnknownFields());
                    onChanged();
                    return this;
                }
                break;

            case 0: // '\0'
                setUnknownFields(mergefrom.setUnknownFields());
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
                mergeFrom mergefrom1 = dependency_();
                codedinputstream.readMessage(mergefrom1, extensionregistrylite);
                addMessageType(mergefrom1.dPartial());
                break;

            case 42: // '*'
                mergeFrom mergefrom2 = er();
                codedinputstream.readMessage(mergefrom2, extensionregistrylite);
                addEnumType(mergefrom2.buildPartial());
                break;

            case 50: // '2'
                er er = ilder();
                codedinputstream.readMessage(er, extensionregistrylite);
                addService(er.buildPartial());
                break;

            case 58: // ':'
                  = der();
                codedinputstream.readMessage(, extensionregistrylite);
                addExtension(.buildPartial());
                break;

            case 66: // 'B'
                 1 = com.google.protobuf..buildPartial();
                if (hasOptions())
                {
                    1.m(getOptions());
                }
                codedinputstream.readMessage(1, extensionregistrylite);
                setOptions(1.tial());
                break;

            case 74: // 'J'
                 2 = tial();
                if (hasSourceCodeInfo())
                {
                    2.From(getSourceCodeInfo());
                }
                codedinputstream.readMessage(2, extensionregistrylite);
                setSourceCodeInfo(2.Partial());
                break;
            }
        } while (true);
    }

    public Partial mergeFrom(Partial partial)
    {
        Object obj = null;
        if (partial == ltInstance())
        {
            return this;
        }
        if (partial.ltInstance())
        {
            setName(partial.setName());
        }
        if (partial.ge())
        {
            setPackage(partial.ge());
        }
        if (!_mth500(partial).isEmpty())
        {
            if (dependency_.isEmpty())
            {
                dependency_ = _mth500(partial);
                bitField0_ = bitField0_ & -5;
            } else
            {
                ensureDependencyIsMutable();
                dependency_.addAll(_mth500(partial));
            }
            onChanged();
        }
        if (messageTypeBuilder_ == null)
        {
            if (!_mth600(partial).isEmpty())
            {
                if (messageType_.isEmpty())
                {
                    messageType_ = _mth600(partial);
                    bitField0_ = bitField0_ & -9;
                } else
                {
                    ensureMessageTypeIsMutable();
                    messageType_.addAll(_mth600(partial));
                }
                onChanged();
            }
        } else
        if (!_mth600(partial).isEmpty())
        {
            if (messageTypeBuilder_.isEmpty())
            {
                messageTypeBuilder_.dispose();
                messageTypeBuilder_ = null;
                messageType_ = _mth600(partial);
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
                messageTypeBuilder_.addAllMessages(_mth600(partial));
            }
        }
        if (enumTypeBuilder_ == null)
        {
            if (!_mth700(partial).isEmpty())
            {
                if (enumType_.isEmpty())
                {
                    enumType_ = _mth700(partial);
                    bitField0_ = bitField0_ & 0xffffffef;
                } else
                {
                    ensureEnumTypeIsMutable();
                    enumType_.addAll(_mth700(partial));
                }
                onChanged();
            }
        } else
        if (!_mth700(partial).isEmpty())
        {
            if (enumTypeBuilder_.isEmpty())
            {
                enumTypeBuilder_.dispose();
                enumTypeBuilder_ = null;
                enumType_ = _mth700(partial);
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
                enumTypeBuilder_.addAllMessages(_mth700(partial));
            }
        }
        if (serviceBuilder_ == null)
        {
            if (!_mth800(partial).isEmpty())
            {
                if (service_.isEmpty())
                {
                    service_ = _mth800(partial);
                    bitField0_ = bitField0_ & 0xffffffdf;
                } else
                {
                    ensureServiceIsMutable();
                    service_.addAll(_mth800(partial));
                }
                onChanged();
            }
        } else
        if (!_mth800(partial).isEmpty())
        {
            if (serviceBuilder_.isEmpty())
            {
                serviceBuilder_.dispose();
                serviceBuilder_ = null;
                service_ = _mth800(partial);
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
                serviceBuilder_.addAllMessages(_mth800(partial));
            }
        }
        if (extensionBuilder_ == null)
        {
            if (!_mth900(partial).isEmpty())
            {
                if (extension_.isEmpty())
                {
                    extension_ = _mth900(partial);
                    bitField0_ = bitField0_ & 0xffffffbf;
                } else
                {
                    ensureExtensionIsMutable();
                    extension_.addAll(_mth900(partial));
                }
                onChanged();
            }
        } else
        if (!_mth900(partial).isEmpty())
        {
            if (extensionBuilder_.isEmpty())
            {
                extensionBuilder_.dispose();
                extensionBuilder_ = null;
                extension_ = _mth900(partial);
                bitField0_ = bitField0_ & 0xffffffbf;
                RepeatedFieldBuilder repeatedfieldbuilder3 = obj;
                if (GeneratedMessage.alwaysUseFieldBuilders)
                {
                    repeatedfieldbuilder3 = getExtensionFieldBuilder();
                }
                extensionBuilder_ = repeatedfieldbuilder3;
            } else
            {
                extensionBuilder_.addAllMessages(_mth900(partial));
            }
        }
        if (partial.ns())
        {
            mergeOptions(partial.ns());
        }
        if (partial.eCodeInfo())
        {
            mergeSourceCodeInfo(partial.eCodeInfo());
        }
        mergeUnknownFields(partial.wnFields());
        return this;
    }

    public wnFields mergeFrom(Message message)
    {
        if (message instanceof wnFields)
        {
            return mergeFrom((mergeFrom)message);
        } else
        {
            super.mergeFrom(message);
            return this;
        }
    }

    public volatile mergeFrom mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return mergeFrom(codedinputstream, extensionregistrylite);
    }

    public volatile mergeFrom mergeFrom(Message message)
    {
        return mergeFrom(message);
    }

    public volatile mergeFrom mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return mergeFrom(codedinputstream, extensionregistrylite);
    }

    public mergeFrom mergeOptions(mergeFrom mergefrom)
    {
        if (optionsBuilder_ == null)
        {
            if ((bitField0_ & 0x80) == 128 && options_ != ce())
            {
                options_ = options_(options_).m(mergefrom).tial();
            } else
            {
                options_ = mergefrom;
            }
            onChanged();
        } else
        {
            optionsBuilder_.mergeFrom(mergefrom);
        }
        bitField0_ = bitField0_ | 0x80;
        return this;
    }

    public bitField0_ mergeSourceCodeInfo(bitField0_ bitfield0_)
    {
        if (sourceCodeInfoBuilder_ == null)
        {
            if ((bitField0_ & 0x100) == 256 && sourceCodeInfo_ != tance())
            {
                sourceCodeInfo_ = sourceCodeInfo_(sourceCodeInfo_).From(bitfield0_).Partial();
            } else
            {
                sourceCodeInfo_ = bitfield0_;
            }
            onChanged();
        } else
        {
            sourceCodeInfoBuilder_.mergeFrom(bitfield0_);
        }
        bitField0_ = bitField0_ | 0x100;
        return this;
    }

    public bitField0_ removeEnumType(int i)
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

    public enumTypeBuilder_ removeExtension(int i)
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

    public extensionBuilder_ removeMessageType(int i)
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

    public messageTypeBuilder_ removeService(int i)
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

    public serviceBuilder_ setDependency(int i, String s)
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

    public onChanged setEnumType(int i, onChanged onchanged)
    {
        if (enumTypeBuilder_ == null)
        {
            ensureEnumTypeIsMutable();
            enumType_.set(i, onchanged.build());
            onChanged();
            return this;
        } else
        {
            enumTypeBuilder_.setMessage(i, onchanged.build());
            return this;
        }
    }

    public build setEnumType(int i, build build1)
    {
        if (enumTypeBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureEnumTypeIsMutable();
                enumType_.set(i, build1);
                onChanged();
                return this;
            }
        } else
        {
            enumTypeBuilder_.setMessage(i, build1);
            return this;
        }
    }

    public  setExtension(int i,  )
    {
        if (extensionBuilder_ == null)
        {
            ensureExtensionIsMutable();
            extension_.set(i, .build());
            onChanged();
            return this;
        } else
        {
            extensionBuilder_.setMessage(i, .build());
            return this;
        }
    }

    public .build setExtension(int i, .build build1)
    {
        if (extensionBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureExtensionIsMutable();
                extension_.set(i, build1);
                onChanged();
                return this;
            }
        } else
        {
            extensionBuilder_.setMessage(i, build1);
            return this;
        }
    }

    public extensionBuilder_ setMessageType(int i, extensionBuilder_ extensionbuilder_)
    {
        if (messageTypeBuilder_ == null)
        {
            ensureMessageTypeIsMutable();
            messageType_.set(i, extensionbuilder_.d());
            onChanged();
            return this;
        } else
        {
            messageTypeBuilder_.setMessage(i, extensionbuilder_.d());
            return this;
        }
    }

    public d setMessageType(int i, d d)
    {
        if (messageTypeBuilder_ == null)
        {
            if (d == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureMessageTypeIsMutable();
                messageType_.set(i, d);
                onChanged();
                return this;
            }
        } else
        {
            messageTypeBuilder_.setMessage(i, d);
            return this;
        }
    }

    public messageTypeBuilder_ setName(String s)
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

    public onChanged setOptions(onChanged onchanged)
    {
        if (optionsBuilder_ == null)
        {
            options_ = onchanged.options_();
            onChanged();
        } else
        {
            optionsBuilder_.setMessage(onchanged.optionsBuilder_());
        }
        bitField0_ = bitField0_ | 0x80;
        return this;
    }

    public bitField0_ setOptions(bitField0_ bitfield0_)
    {
        if (optionsBuilder_ == null)
        {
            if (bitfield0_ == null)
            {
                throw new NullPointerException();
            }
            options_ = bitfield0_;
            onChanged();
        } else
        {
            optionsBuilder_.setMessage(bitfield0_);
        }
        bitField0_ = bitField0_ | 0x80;
        return this;
    }

    public bitField0_ setPackage(String s)
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

    public er setService(int i, er er)
    {
        if (serviceBuilder_ == null)
        {
            ensureServiceIsMutable();
            service_.set(i, er.build());
            onChanged();
            return this;
        } else
        {
            serviceBuilder_.setMessage(i, er.build());
            return this;
        }
    }

    public er.build setService(int i, er.build build1)
    {
        if (serviceBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureServiceIsMutable();
                service_.set(i, build1);
                onChanged();
                return this;
            }
        } else
        {
            serviceBuilder_.setMessage(i, build1);
            return this;
        }
    }

    public serviceBuilder_ setSourceCodeInfo(serviceBuilder_ servicebuilder_)
    {
        if (sourceCodeInfoBuilder_ == null)
        {
            sourceCodeInfo_ = servicebuilder_.();
            onChanged();
        } else
        {
            sourceCodeInfoBuilder_.setMessage(servicebuilder_.());
        }
        bitField0_ = bitField0_ | 0x100;
        return this;
    }

    public bitField0_ setSourceCodeInfo(bitField0_ bitfield0_)
    {
        if (sourceCodeInfoBuilder_ == null)
        {
            if (bitfield0_ == null)
            {
                throw new NullPointerException();
            }
            sourceCodeInfo_ = bitfield0_;
            onChanged();
        } else
        {
            sourceCodeInfoBuilder_.setMessage(bitfield0_);
        }
        bitField0_ = bitField0_ | 0x100;
        return this;
    }



    private er()
    {
        name_ = "";
        package_ = "";
        dependency_ = LazyStringArrayList.EMPTY;
        messageType_ = Collections.emptyList();
        enumType_ = Collections.emptyList();
        service_ = Collections.emptyList();
        extension_ = Collections.emptyList();
        options_ = ce();
        sourceCodeInfo_ = tance();
        maybeForceBuilderInitialization();
    }

    private maybeForceBuilderInitialization(maybeForceBuilderInitialization maybeforcebuilderinitialization)
    {
        super(maybeforcebuilderinitialization);
        name_ = "";
        package_ = "";
        dependency_ = LazyStringArrayList.EMPTY;
        messageType_ = Collections.emptyList();
        enumType_ = Collections.emptyList();
        service_ = Collections.emptyList();
        extension_ = Collections.emptyList();
        options_ = ce();
        sourceCodeInfo_ = tance();
        maybeForceBuilderInitialization();
    }

    maybeForceBuilderInitialization(maybeForceBuilderInitialization maybeforcebuilderinitialization, a a)
    {
        this(maybeforcebuilderinitialization);
    }
}
