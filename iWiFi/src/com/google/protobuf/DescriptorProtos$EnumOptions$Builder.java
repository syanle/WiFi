// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            DescriptorProtos, InvalidProtocolBufferException, UninitializedMessageException, RepeatedFieldBuilder, 
//            GeneratedMessage, UnknownFieldSet, CodedInputStream, a, 
//            Message, MessageLite, ExtensionRegistryLite

public static final class <init> extends <init>
    implements 
{

    private int bitField0_;
    private RepeatedFieldBuilder uninterpretedOptionBuilder_;
    private List uninterpretedOption_;

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

    private static idProtocolBufferException create()
    {
        return new <init>();
    }

    private void ensureUninterpretedOptionIsMutable()
    {
        if ((bitField0_ & 1) != 1)
        {
            uninterpretedOption_ = new ArrayList(uninterpretedOption_);
            bitField0_ = bitField0_ | 1;
        }
    }

    public static final bitField0_ getDescriptor()
    {
        return DescriptorProtos.access$14000();
    }

    private RepeatedFieldBuilder getUninterpretedOptionFieldBuilder()
    {
        boolean flag = true;
        if (uninterpretedOptionBuilder_ == null)
        {
            List list = uninterpretedOption_;
            if ((bitField0_ & 1) != 1)
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

    public getUninterpretedOptionFieldBuilder addAllUninterpretedOption(Iterable iterable)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            ensureUninterpretedOptionIsMutable();
            dAll(iterable, uninterpretedOption_);
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.addAllMessages(iterable);
            return this;
        }
    }

    public Builder addUninterpretedOption(int i, Builder builder)
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

    public Builder.build addUninterpretedOption(int i, Builder.build build1)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.add(i, build1);
                onChanged();
                return this;
            }
        } else
        {
            uninterpretedOptionBuilder_.addMessage(i, build1);
            return this;
        }
    }

    public Builder addUninterpretedOption(Builder builder)
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

    public Builder.build addUninterpretedOption(Builder.build build1)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.add(build1);
                onChanged();
                return this;
            }
        } else
        {
            uninterpretedOptionBuilder_.addMessage(build1);
            return this;
        }
    }

    public Builder addUninterpretedOptionBuilder()
    {
        return (Builder)getUninterpretedOptionFieldBuilder().addBuilder(getDefaultInstance());
    }

    public Builder addUninterpretedOptionBuilder(int i)
    {
        return (Builder)getUninterpretedOptionFieldBuilder().addBuilder(i, getDefaultInstance());
    }

    public getDefaultInstance build()
    {
        getDefaultInstance getdefaultinstance = buildPartial();
        if (!getdefaultinstance.lized())
        {
            throw newUninitializedMessageException(getdefaultinstance);
        } else
        {
            return getdefaultinstance;
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
        build build1 = new build(this, null);
        int i = bitField0_;
        if (uninterpretedOptionBuilder_ == null)
        {
            if ((bitField0_ & 1) == 1)
            {
                uninterpretedOption_ = Collections.unmodifiableList(uninterpretedOption_);
                bitField0_ = bitField0_ & -2;
            }
            _mth4602(build1, uninterpretedOption_);
        } else
        {
            _mth4602(build1, uninterpretedOptionBuilder_.build());
        }
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
        super.ear();
        if (uninterpretedOptionBuilder_ == null)
        {
            uninterpretedOption_ = Collections.emptyList();
            bitField0_ = bitField0_ & -2;
            return this;
        } else
        {
            uninterpretedOptionBuilder_.clear();
            return this;
        }
    }

    public volatile uninterpretedOptionBuilder_ clear()
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

    public volatile clear clear()
    {
        return clear();
    }

    public clear clearUninterpretedOption()
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            uninterpretedOption_ = Collections.emptyList();
            bitField0_ = bitField0_ & -2;
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.clear();
            return this;
        }
    }

    public volatile uninterpretedOptionBuilder_ clone()
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

    public getDefaultInstanceForType getDescriptorForType()
    {
        return iptor();
    }

    public iptor getUninterpretedOption(int i)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            return (uninterpretedOptionBuilder_)uninterpretedOption_.get(i);
        } else
        {
            return (uninterpretedOption_)uninterpretedOptionBuilder_.getMessage(i);
        }
    }

    public Builder getUninterpretedOptionBuilder(int i)
    {
        return (Builder)getUninterpretedOptionFieldBuilder().getBuilder(i);
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

    public rBuilder getUninterpretedOptionOrBuilder(int i)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            return (rBuilder)uninterpretedOption_.get(i);
        } else
        {
            return (rBuilder)uninterpretedOptionBuilder_.getMessageOrBuilder(i);
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

    protected uninterpretedOption_ internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$14100();
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

    public volatile extensionsAreInitialized mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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

            case 7994: 
                Builder builder = newBuilder();
                codedinputstream.readMessage(builder, extensionregistrylite);
                addUninterpretedOption(builder.buildPartial());
                break;
            }
        } while (true);
    }

    public Builder.buildPartial mergeFrom(Builder.buildPartial buildpartial)
    {
        RepeatedFieldBuilder repeatedfieldbuilder;
        repeatedfieldbuilder = null;
        if (buildpartial == ltInstance())
        {
            return this;
        }
        if (uninterpretedOptionBuilder_ != null) goto _L2; else goto _L1
_L1:
        if (!_mth4600(buildpartial).isEmpty())
        {
            if (uninterpretedOption_.isEmpty())
            {
                uninterpretedOption_ = _mth4600(buildpartial);
                bitField0_ = bitField0_ & -2;
            } else
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.addAll(_mth4600(buildpartial));
            }
            onChanged();
        }
_L4:
        mergeExtensionFields(buildpartial);
        mergeUnknownFields(buildpartial.wnFields());
        return this;
_L2:
        if (!_mth4600(buildpartial).isEmpty())
        {
            if (uninterpretedOptionBuilder_.isEmpty())
            {
                uninterpretedOptionBuilder_.dispose();
                uninterpretedOptionBuilder_ = null;
                uninterpretedOption_ = _mth4600(buildpartial);
                bitField0_ = bitField0_ & -2;
                if (GeneratedMessage.alwaysUseFieldBuilders)
                {
                    repeatedfieldbuilder = getUninterpretedOptionFieldBuilder();
                }
                uninterpretedOptionBuilder_ = repeatedfieldbuilder;
            } else
            {
                uninterpretedOptionBuilder_.addAllMessages(_mth4600(buildpartial));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public _cls4600 mergeFrom(Message message)
    {
        if (message instanceof _cls4600)
        {
            return mergeFrom((mergeFrom)message);
        } else
        {
            super.rgeFrom(message);
            return this;
        }
    }

    public volatile rgeFrom mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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

    public mergeFrom removeUninterpretedOption(int i)
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

    public Builder setUninterpretedOption(int i, Builder builder)
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

    public Builder.build setUninterpretedOption(int i, Builder.build build1)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            if (build1 == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.set(i, build1);
                onChanged();
                return this;
            }
        } else
        {
            uninterpretedOptionBuilder_.setMessage(i, build1);
            return this;
        }
    }



    private Builder()
    {
        uninterpretedOption_ = Collections.emptyList();
        maybeForceBuilderInitialization();
    }

    private maybeForceBuilderInitialization(maybeForceBuilderInitialization maybeforcebuilderinitialization)
    {
        super(maybeforcebuilderinitialization);
        uninterpretedOption_ = Collections.emptyList();
        maybeForceBuilderInitialization();
    }

    maybeForceBuilderInitialization(maybeForceBuilderInitialization maybeforcebuilderinitialization, a a)
    {
        this(maybeforcebuilderinitialization);
    }
}
