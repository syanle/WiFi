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
//            GeneratedMessage, ByteString, UnknownFieldSet, CodedInputStream, 
//            a, Message, MessageLite, ExtensionRegistryLite

public static final class <init> extends <init>
    implements 
{

    private int bitField0_;
    private uninterpretedOptionBuilder_ ctype_;
    private boolean deprecated_;
    private Object experimentalMapKey_;
    private boolean packed_;
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

    private static dProtocolBufferException create()
    {
        return new <init>();
    }

    private void ensureUninterpretedOptionIsMutable()
    {
        if ((bitField0_ & 0x10) != 16)
        {
            uninterpretedOption_ = new ArrayList(uninterpretedOption_);
            bitField0_ = bitField0_ | 0x10;
        }
    }

    public static final bitField0_ getDescriptor()
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

    public getUninterpretedOptionFieldBuilder addAllUninterpretedOption(Iterable iterable)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            ensureUninterpretedOptionIsMutable();
            All(iterable, uninterpretedOption_);
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.addAllMessages(iterable);
            return this;
        }
    }

    public uilder addUninterpretedOption(int i, uilder uilder)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            ensureUninterpretedOptionIsMutable();
            uninterpretedOption_.add(i, uilder.build());
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.addMessage(i, uilder.build());
            return this;
        }
    }

    public uilder.build addUninterpretedOption(int i, uilder.build build1)
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

    public uilder addUninterpretedOption(uilder uilder)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            ensureUninterpretedOptionIsMutable();
            uninterpretedOption_.add(uilder.build());
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.addMessage(uilder.build());
            return this;
        }
    }

    public uilder.build addUninterpretedOption(uilder.build build1)
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

    public uilder addUninterpretedOptionBuilder()
    {
        return (uilder)getUninterpretedOptionFieldBuilder().addBuilder(etDefaultInstance());
    }

    public uilder addUninterpretedOptionBuilder(int i)
    {
        return (uilder)getUninterpretedOptionFieldBuilder().addBuilder(i, etDefaultInstance());
    }

    public etDefaultInstance build()
    {
        etDefaultInstance etdefaultinstance = buildPartial();
        if (!etdefaultinstance.lized())
        {
            throw newUninitializedMessageException(etdefaultinstance);
        } else
        {
            return etdefaultinstance;
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
        int j = 1;
        build build1 = new build(this, null);
        int k = bitField0_;
        int i;
        if ((k & 1) != 1)
        {
            j = 0;
        }
        _mth3402(build1, ctype_);
        i = j;
        if ((k & 2) == 2)
        {
            i = j | 2;
        }
        _mth3502(build1, packed_);
        j = i;
        if ((k & 4) == 4)
        {
            j = i | 4;
        }
        _mth3602(build1, deprecated_);
        i = j;
        if ((k & 8) == 8)
        {
            i = j | 8;
        }
        _mth3702(build1, experimentalMapKey_);
        if (uninterpretedOptionBuilder_ == null)
        {
            if ((bitField0_ & 0x10) == 16)
            {
                uninterpretedOption_ = Collections.unmodifiableList(uninterpretedOption_);
                bitField0_ = bitField0_ & 0xffffffef;
            }
            _mth3802(build1, uninterpretedOption_);
        } else
        {
            _mth3802(build1, uninterpretedOptionBuilder_.build());
        }
        _mth3902(build1, i);
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
        super.ar();
        ctype_ = RING;
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

    public clear clearCtype()
    {
        bitField0_ = bitField0_ & -2;
        ctype_ = RING;
        onChanged();
        return this;
    }

    public onChanged clearDeprecated()
    {
        bitField0_ = bitField0_ & -5;
        deprecated_ = false;
        onChanged();
        return this;
    }

    public onChanged clearExperimentalMapKey()
    {
        bitField0_ = bitField0_ & -9;
        experimentalMapKey_ = ltInstance().imentalMapKey();
        onChanged();
        return this;
    }

    public onChanged clearPacked()
    {
        bitField0_ = bitField0_ & -3;
        packed_ = false;
        onChanged();
        return this;
    }

    public onChanged clearUninterpretedOption()
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

    public clone getCtype()
    {
        return ctype_;
    }

    public ctype_ getDefaultInstanceForType()
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

    public boolean getDeprecated()
    {
        return deprecated_;
    }

    public deprecated_ getDescriptorForType()
    {
        return iptor();
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

    public packed_ getUninterpretedOption(int i)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            return (uninterpretedOptionBuilder_)uninterpretedOption_.get(i);
        } else
        {
            return (uninterpretedOption_)uninterpretedOptionBuilder_.getMessage(i);
        }
    }

    public uilder getUninterpretedOptionBuilder(int i)
    {
        return (uilder)getUninterpretedOptionFieldBuilder().getBuilder(i);
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

    public Builder getUninterpretedOptionOrBuilder(int i)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            return (Builder)uninterpretedOption_.get(i);
        } else
        {
            return (Builder)uninterpretedOptionBuilder_.getMessageOrBuilder(i);
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

    protected bitField0_ internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$12900();
    }

    public final boolean isInitialized()
    {
        int i = 0;
_L7:
        if (i >= getUninterpretedOptionCount()) goto _L2; else goto _L1
_L1:
        if (getUninterpretedOption(i).sInitialized()) goto _L4; else goto _L3
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
                int j = codedinputstream.readEnum();
                mergeFrom mergefrom1 = lueOf(j);
                if (mergefrom1 == null)
                {
                    mergefrom.ld(1, j);
                } else
                {
                    bitField0_ = bitField0_ | 1;
                    ctype_ = mergefrom1;
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
                uilder uilder = ewBuilder();
                codedinputstream.readMessage(uilder, extensionregistrylite);
                addUninterpretedOption(uilder.buildPartial());
                break;
            }
        } while (true);
    }

    public uilder.buildPartial mergeFrom(uilder.buildPartial buildpartial)
    {
        RepeatedFieldBuilder repeatedfieldbuilder;
        repeatedfieldbuilder = null;
        if (buildpartial == ltInstance())
        {
            return this;
        }
        if (buildpartial.())
        {
            setCtype(buildpartial.());
        }
        if (buildpartial.d())
        {
            setPacked(buildpartial.d());
        }
        if (buildpartial.cated())
        {
            setDeprecated(buildpartial.cated());
        }
        if (buildpartial.imentalMapKey())
        {
            setExperimentalMapKey(buildpartial.imentalMapKey());
        }
        if (uninterpretedOptionBuilder_ != null) goto _L2; else goto _L1
_L1:
        if (!_mth3800(buildpartial).isEmpty())
        {
            if (uninterpretedOption_.isEmpty())
            {
                uninterpretedOption_ = _mth3800(buildpartial);
                bitField0_ = bitField0_ & 0xffffffef;
            } else
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.addAll(_mth3800(buildpartial));
            }
            onChanged();
        }
_L4:
        mergeExtensionFields(buildpartial);
        mergeUnknownFields(buildpartial.wnFields());
        return this;
_L2:
        if (!_mth3800(buildpartial).isEmpty())
        {
            if (uninterpretedOptionBuilder_.isEmpty())
            {
                uninterpretedOptionBuilder_.dispose();
                uninterpretedOptionBuilder_ = null;
                uninterpretedOption_ = _mth3800(buildpartial);
                bitField0_ = bitField0_ & 0xffffffef;
                if (GeneratedMessage.alwaysUseFieldBuilders)
                {
                    repeatedfieldbuilder = getUninterpretedOptionFieldBuilder();
                }
                uninterpretedOptionBuilder_ = repeatedfieldbuilder;
            } else
            {
                uninterpretedOptionBuilder_.addAllMessages(_mth3800(buildpartial));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public _cls3800 mergeFrom(Message message)
    {
        if (message instanceof _cls3800)
        {
            return mergeFrom((mergeFrom)message);
        } else
        {
            super.geFrom(message);
            return this;
        }
    }

    public volatile geFrom mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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

    public uninterpretedOptionBuilder_ setCtype(uninterpretedOptionBuilder_ uninterpretedoptionbuilder_)
    {
        if (uninterpretedoptionbuilder_ == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 1;
            ctype_ = uninterpretedoptionbuilder_;
            onChanged();
            return this;
        }
    }

    public onChanged setDeprecated(boolean flag)
    {
        bitField0_ = bitField0_ | 4;
        deprecated_ = flag;
        onChanged();
        return this;
    }

    public onChanged setExperimentalMapKey(String s)
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

    public onChanged setPacked(boolean flag)
    {
        bitField0_ = bitField0_ | 2;
        packed_ = flag;
        onChanged();
        return this;
    }

    public uilder setUninterpretedOption(int i, uilder uilder)
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            ensureUninterpretedOptionIsMutable();
            uninterpretedOption_.set(i, uilder.build());
            onChanged();
            return this;
        } else
        {
            uninterpretedOptionBuilder_.setMessage(i, uilder.build());
            return this;
        }
    }

    public uilder.build setUninterpretedOption(int i, uilder.build build1)
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



    private uilder()
    {
        ctype_ = RING;
        experimentalMapKey_ = "";
        uninterpretedOption_ = Collections.emptyList();
        maybeForceBuilderInitialization();
    }

    private maybeForceBuilderInitialization(maybeForceBuilderInitialization maybeforcebuilderinitialization)
    {
        super(maybeforcebuilderinitialization);
        ctype_ = RING;
        experimentalMapKey_ = "";
        uninterpretedOption_ = Collections.emptyList();
        maybeForceBuilderInitialization();
    }

    maybeForceBuilderInitialization(maybeForceBuilderInitialization maybeforcebuilderinitialization, a a)
    {
        this(maybeforcebuilderinitialization);
    }
}
