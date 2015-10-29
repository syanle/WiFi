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
    private boolean messageSetWireFormat_;
    private boolean noStandardDescriptorAccessor_;
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

    private static rotocolBufferException create()
    {
        return new <init>();
    }

    private void ensureUninterpretedOptionIsMutable()
    {
        if ((bitField0_ & 4) != 4)
        {
            uninterpretedOption_ = new ArrayList(uninterpretedOption_);
            bitField0_ = bitField0_ | 4;
        }
    }

    public static final bitField0_ getDescriptor()
    {
        return DescriptorProtos.access$11800();
    }

    private RepeatedFieldBuilder getUninterpretedOptionFieldBuilder()
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            List list = uninterpretedOption_;
            boolean flag;
            if ((bitField0_ & 4) == 4)
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

    public getUninterpretedOptionFieldBuilder addAllUninterpretedOption(Iterable iterable)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            ensureUninterpretedOptionIsMutable();
            l(iterable, uninterpretedOption_);
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.addAllMessages(iterable);
            return this;
        }
    }

    public lder addUninterpretedOption(int i, lder lder)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            ensureUninterpretedOptionIsMutable();
            uninterpretedOption_.add(i, lder.build());
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.addMessage(i, lder.build());
            return this;
        }
    }

    public lder.build addUninterpretedOption(int i, lder.build build1)
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

    public lder addUninterpretedOption(lder lder)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            ensureUninterpretedOptionIsMutable();
            uninterpretedOption_.add(lder.build());
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.addMessage(lder.build());
            return this;
        }
    }

    public lder.build addUninterpretedOption(lder.build build1)
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

    public lder addUninterpretedOptionBuilder()
    {
        return (lder)getUninterpretedOptionFieldBuilder().addBuilder(DefaultInstance());
    }

    public lder addUninterpretedOptionBuilder(int i)
    {
        return (lder)getUninterpretedOptionFieldBuilder().addBuilder(i, DefaultInstance());
    }

    public DefaultInstance build()
    {
        DefaultInstance defaultinstance = buildPartial();
        if (!defaultinstance.lized())
        {
            throw newUninitializedMessageException(defaultinstance);
        } else
        {
            return defaultinstance;
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
        _mth2402(build1, messageSetWireFormat_);
        j = i;
        if ((k & 2) == 2)
        {
            j = i | 2;
        }
        _mth2502(build1, noStandardDescriptorAccessor_);
        if (uninterpretedOptionBuilder_ == null)
        {
            if ((bitField0_ & 4) == 4)
            {
                uninterpretedOption_ = Collections.unmodifiableList(uninterpretedOption_);
                bitField0_ = bitField0_ & -5;
            }
            _mth2602(build1, uninterpretedOption_);
        } else
        {
            _mth2602(build1, uninterpretedOptionBuilder_.build());
        }
        _mth2702(build1, j);
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
        super.();
        messageSetWireFormat_ = false;
        bitField0_ = bitField0_ & -2;
        noStandardDescriptorAccessor_ = false;
        bitField0_ = bitField0_ & -3;
        if (uninterpretedOptionBuilder_ == null)
        {
            uninterpretedOption_ = Collections.emptyList();
            bitField0_ = bitField0_ & -5;
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

    public clear clearMessageSetWireFormat()
    {
        bitField0_ = bitField0_ & -2;
        messageSetWireFormat_ = false;
        onChanged();
        return this;
    }

    public onChanged clearNoStandardDescriptorAccessor()
    {
        bitField0_ = bitField0_ & -3;
        noStandardDescriptorAccessor_ = false;
        onChanged();
        return this;
    }

    public onChanged clearUninterpretedOption()
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            uninterpretedOption_ = Collections.emptyList();
            bitField0_ = bitField0_ & -5;
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

    public boolean getMessageSetWireFormat()
    {
        return messageSetWireFormat_;
    }

    public boolean getNoStandardDescriptorAccessor()
    {
        return noStandardDescriptorAccessor_;
    }

    public noStandardDescriptorAccessor_ getUninterpretedOption(int i)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            return (uninterpretedOptionBuilder_)uninterpretedOption_.get(i);
        } else
        {
            return (uninterpretedOption_)uninterpretedOptionBuilder_.getMessage(i);
        }
    }

    public lder getUninterpretedOptionBuilder(int i)
    {
        return (lder)getUninterpretedOptionFieldBuilder().getBuilder(i);
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

    public ilder getUninterpretedOptionOrBuilder(int i)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            return (ilder)uninterpretedOption_.get(i);
        } else
        {
            return (ilder)uninterpretedOptionBuilder_.getMessageOrBuilder(i);
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

    public boolean hasMessageSetWireFormat()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasNoStandardDescriptorAccessor()
    {
        return (bitField0_ & 2) == 2;
    }

    protected bitField0_ internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$11900();
    }

    public final boolean isInitialized()
    {
        int i = 0;
_L7:
        if (i >= getUninterpretedOptionCount()) goto _L2; else goto _L1
_L1:
        if (getUninterpretedOption(i).nitialized()) goto _L4; else goto _L3
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

            case 8: // '\b'
                bitField0_ = bitField0_ | 1;
                messageSetWireFormat_ = codedinputstream.readBool();
                break;

            case 16: // '\020'
                bitField0_ = bitField0_ | 2;
                noStandardDescriptorAccessor_ = codedinputstream.readBool();
                break;

            case 7994: 
                lder lder = Builder();
                codedinputstream.readMessage(lder, extensionregistrylite);
                addUninterpretedOption(lder.buildPartial());
                break;
            }
        } while (true);
    }

    public lder.buildPartial mergeFrom(lder.buildPartial buildpartial)
    {
        RepeatedFieldBuilder repeatedfieldbuilder;
        repeatedfieldbuilder = null;
        if (buildpartial == ltInstance())
        {
            return this;
        }
        if (buildpartial.geSetWireFormat())
        {
            setMessageSetWireFormat(buildpartial.geSetWireFormat());
        }
        if (buildpartial.ndardDescriptorAccessor())
        {
            setNoStandardDescriptorAccessor(buildpartial.ndardDescriptorAccessor());
        }
        if (uninterpretedOptionBuilder_ != null) goto _L2; else goto _L1
_L1:
        if (!_mth2600(buildpartial).isEmpty())
        {
            if (uninterpretedOption_.isEmpty())
            {
                uninterpretedOption_ = _mth2600(buildpartial);
                bitField0_ = bitField0_ & -5;
            } else
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.addAll(_mth2600(buildpartial));
            }
            onChanged();
        }
_L4:
        mergeExtensionFields(buildpartial);
        mergeUnknownFields(buildpartial.wnFields());
        return this;
_L2:
        if (!_mth2600(buildpartial).isEmpty())
        {
            if (uninterpretedOptionBuilder_.isEmpty())
            {
                uninterpretedOptionBuilder_.dispose();
                uninterpretedOptionBuilder_ = null;
                uninterpretedOption_ = _mth2600(buildpartial);
                bitField0_ = bitField0_ & -5;
                if (GeneratedMessage.alwaysUseFieldBuilders)
                {
                    repeatedfieldbuilder = getUninterpretedOptionFieldBuilder();
                }
                uninterpretedOptionBuilder_ = repeatedfieldbuilder;
            } else
            {
                uninterpretedOptionBuilder_.addAllMessages(_mth2600(buildpartial));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public _cls2600 mergeFrom(Message message)
    {
        if (message instanceof _cls2600)
        {
            return mergeFrom((mergeFrom)message);
        } else
        {
            super.From(message);
            return this;
        }
    }

    public volatile From mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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

    public uninterpretedOptionBuilder_ setMessageSetWireFormat(boolean flag)
    {
        bitField0_ = bitField0_ | 1;
        messageSetWireFormat_ = flag;
        onChanged();
        return this;
    }

    public onChanged setNoStandardDescriptorAccessor(boolean flag)
    {
        bitField0_ = bitField0_ | 2;
        noStandardDescriptorAccessor_ = flag;
        onChanged();
        return this;
    }

    public lder setUninterpretedOption(int i, lder lder)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            ensureUninterpretedOptionIsMutable();
            uninterpretedOption_.set(i, lder.build());
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.setMessage(i, lder.build());
            return this;
        }
    }

    public lder.build setUninterpretedOption(int i, lder.build build1)
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



    private lder()
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
