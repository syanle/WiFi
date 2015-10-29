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
    private boolean ccGenericServices_;
    private boolean javaGenerateEqualsAndHash_;
    private boolean javaGenericServices_;
    private boolean javaMultipleFiles_;
    private Object javaOuterClassname_;
    private Object javaPackage_;
    private Mode optimizeFor_;
    private boolean pyGenericServices_;
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
        if ((bitField0_ & 0x100) != 256)
        {
            uninterpretedOption_ = new ArrayList(uninterpretedOption_);
            bitField0_ = bitField0_ | 0x100;
        }
    }

    public static final bitField0_ getDescriptor()
    {
        return DescriptorProtos.access$10200();
    }

    private RepeatedFieldBuilder getUninterpretedOptionFieldBuilder()
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            List list = uninterpretedOption_;
            boolean flag;
            if ((bitField0_ & 0x100) == 256)
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
        int j = 1;
        Mode mode = new Mode(this, null);
        int k = bitField0_;
        int i;
        if ((k & 1) != 1)
        {
            j = 0;
        }
        _mth0802(mode, javaPackage_);
        i = j;
        if ((k & 2) == 2)
        {
            i = j | 2;
        }
        _mth0902(mode, javaOuterClassname_);
        j = i;
        if ((k & 4) == 4)
        {
            j = i | 4;
        }
        _mth1002(mode, javaMultipleFiles_);
        i = j;
        if ((k & 8) == 8)
        {
            i = j | 8;
        }
        _mth1102(mode, javaGenerateEqualsAndHash_);
        j = i;
        if ((k & 0x10) == 16)
        {
            j = i | 0x10;
        }
        _mth1202(mode, optimizeFor_);
        i = j;
        if ((k & 0x20) == 32)
        {
            i = j | 0x20;
        }
        _mth1302(mode, ccGenericServices_);
        j = i;
        if ((k & 0x40) == 64)
        {
            j = i | 0x40;
        }
        _mth1402(mode, javaGenericServices_);
        i = j;
        if ((k & 0x80) == 128)
        {
            i = j | 0x80;
        }
        _mth1502(mode, pyGenericServices_);
        if (uninterpretedOptionBuilder_ == null)
        {
            if ((bitField0_ & 0x100) == 256)
            {
                uninterpretedOption_ = Collections.unmodifiableList(uninterpretedOption_);
                bitField0_ = bitField0_ & 0xfffffeff;
            }
            _mth1602(mode, uninterpretedOption_);
        } else
        {
            _mth1602(mode, uninterpretedOptionBuilder_.build());
        }
        _mth1702(mode, i);
        onBuilt();
        return mode;
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
        javaPackage_ = "";
        bitField0_ = bitField0_ & -2;
        javaOuterClassname_ = "";
        bitField0_ = bitField0_ & -3;
        javaMultipleFiles_ = false;
        bitField0_ = bitField0_ & -5;
        javaGenerateEqualsAndHash_ = false;
        bitField0_ = bitField0_ & -9;
        optimizeFor_ = Mode.SPEED;
        bitField0_ = bitField0_ & 0xffffffef;
        ccGenericServices_ = false;
        bitField0_ = bitField0_ & 0xffffffdf;
        javaGenericServices_ = false;
        bitField0_ = bitField0_ & 0xffffffbf;
        pyGenericServices_ = false;
        bitField0_ = bitField0_ & 0xffffff7f;
        if (uninterpretedOptionBuilder_ == null)
        {
            uninterpretedOption_ = Collections.emptyList();
            bitField0_ = bitField0_ & 0xfffffeff;
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

    public clear clearCcGenericServices()
    {
        bitField0_ = bitField0_ & 0xffffffdf;
        ccGenericServices_ = false;
        onChanged();
        return this;
    }

    public onChanged clearJavaGenerateEqualsAndHash()
    {
        bitField0_ = bitField0_ & -9;
        javaGenerateEqualsAndHash_ = false;
        onChanged();
        return this;
    }

    public onChanged clearJavaGenericServices()
    {
        bitField0_ = bitField0_ & 0xffffffbf;
        javaGenericServices_ = false;
        onChanged();
        return this;
    }

    public onChanged clearJavaMultipleFiles()
    {
        bitField0_ = bitField0_ & -5;
        javaMultipleFiles_ = false;
        onChanged();
        return this;
    }

    public onChanged clearJavaOuterClassname()
    {
        bitField0_ = bitField0_ & -3;
        javaOuterClassname_ = ltInstance().uterClassname();
        onChanged();
        return this;
    }

    public onChanged clearJavaPackage()
    {
        bitField0_ = bitField0_ & -2;
        javaPackage_ = ltInstance().ackage();
        onChanged();
        return this;
    }

    public onChanged clearOptimizeFor()
    {
        bitField0_ = bitField0_ & 0xffffffef;
        optimizeFor_ = Mode.SPEED;
        onChanged();
        return this;
    }

    public onChanged clearPyGenericServices()
    {
        bitField0_ = bitField0_ & 0xffffff7f;
        pyGenericServices_ = false;
        onChanged();
        return this;
    }

    public onChanged clearUninterpretedOption()
    {
        if (uninterpretedOptionBuilder_ == null)
        {
            uninterpretedOption_ = Collections.emptyList();
            bitField0_ = bitField0_ & 0xfffffeff;
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

    public boolean getCcGenericServices()
    {
        return ccGenericServices_;
    }

    public ccGenericServices_ getDefaultInstanceForType()
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

    public boolean getJavaGenerateEqualsAndHash()
    {
        return javaGenerateEqualsAndHash_;
    }

    public boolean getJavaGenericServices()
    {
        return javaGenericServices_;
    }

    public boolean getJavaMultipleFiles()
    {
        return javaMultipleFiles_;
    }

    public String getJavaOuterClassname()
    {
        Object obj = javaOuterClassname_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            javaOuterClassname_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getJavaPackage()
    {
        Object obj = javaPackage_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            javaPackage_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public Mode getOptimizeFor()
    {
        return optimizeFor_;
    }

    public boolean getPyGenericServices()
    {
        return pyGenericServices_;
    }

    public pyGenericServices_ getUninterpretedOption(int i)
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

    public boolean hasCcGenericServices()
    {
        return (bitField0_ & 0x20) == 32;
    }

    public boolean hasJavaGenerateEqualsAndHash()
    {
        return (bitField0_ & 8) == 8;
    }

    public boolean hasJavaGenericServices()
    {
        return (bitField0_ & 0x40) == 64;
    }

    public boolean hasJavaMultipleFiles()
    {
        return (bitField0_ & 4) == 4;
    }

    public boolean hasJavaOuterClassname()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasJavaPackage()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasOptimizeFor()
    {
        return (bitField0_ & 0x10) == 16;
    }

    public boolean hasPyGenericServices()
    {
        return (bitField0_ & 0x80) == 128;
    }

    protected bitField0_ internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$10300();
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

            case 10: // '\n'
                bitField0_ = bitField0_ | 1;
                javaPackage_ = codedinputstream.readBytes();
                break;

            case 66: // 'B'
                bitField0_ = bitField0_ | 2;
                javaOuterClassname_ = codedinputstream.readBytes();
                break;

            case 72: // 'H'
                int j = codedinputstream.readEnum();
                Mode mode = Mode.valueOf(j);
                if (mode == null)
                {
                    mergefrom.eld(9, j);
                } else
                {
                    bitField0_ = bitField0_ | 0x10;
                    optimizeFor_ = mode;
                }
                break;

            case 80: // 'P'
                bitField0_ = bitField0_ | 4;
                javaMultipleFiles_ = codedinputstream.readBool();
                break;

            case 128: 
                bitField0_ = bitField0_ | 0x20;
                ccGenericServices_ = codedinputstream.readBool();
                break;

            case 136: 
                bitField0_ = bitField0_ | 0x40;
                javaGenericServices_ = codedinputstream.readBool();
                break;

            case 144: 
                bitField0_ = bitField0_ | 0x80;
                pyGenericServices_ = codedinputstream.readBool();
                break;

            case 160: 
                bitField0_ = bitField0_ | 8;
                javaGenerateEqualsAndHash_ = codedinputstream.readBool();
                break;

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
        if (buildpartial.ackage())
        {
            setJavaPackage(buildpartial.ackage());
        }
        if (buildpartial.uterClassname())
        {
            setJavaOuterClassname(buildpartial.uterClassname());
        }
        if (buildpartial.ultipleFiles())
        {
            setJavaMultipleFiles(buildpartial.ultipleFiles());
        }
        if (buildpartial.enerateEqualsAndHash())
        {
            setJavaGenerateEqualsAndHash(buildpartial.enerateEqualsAndHash());
        }
        if (buildpartial.izeFor())
        {
            setOptimizeFor(buildpartial.izeFor());
        }
        if (buildpartial.ericServices())
        {
            setCcGenericServices(buildpartial.ericServices());
        }
        if (buildpartial.enericServices())
        {
            setJavaGenericServices(buildpartial.enericServices());
        }
        if (buildpartial.ericServices())
        {
            setPyGenericServices(buildpartial.ericServices());
        }
        if (uninterpretedOptionBuilder_ != null) goto _L2; else goto _L1
_L1:
        if (!_mth1600(buildpartial).isEmpty())
        {
            if (uninterpretedOption_.isEmpty())
            {
                uninterpretedOption_ = _mth1600(buildpartial);
                bitField0_ = bitField0_ & 0xfffffeff;
            } else
            {
                ensureUninterpretedOptionIsMutable();
                uninterpretedOption_.addAll(_mth1600(buildpartial));
            }
            onChanged();
        }
_L4:
        mergeExtensionFields(buildpartial);
        mergeUnknownFields(buildpartial.wnFields());
        return this;
_L2:
        if (!_mth1600(buildpartial).isEmpty())
        {
            if (uninterpretedOptionBuilder_.isEmpty())
            {
                uninterpretedOptionBuilder_.dispose();
                uninterpretedOptionBuilder_ = null;
                uninterpretedOption_ = _mth1600(buildpartial);
                bitField0_ = bitField0_ & 0xfffffeff;
                if (GeneratedMessage.alwaysUseFieldBuilders)
                {
                    repeatedfieldbuilder = getUninterpretedOptionFieldBuilder();
                }
                uninterpretedOptionBuilder_ = repeatedfieldbuilder;
            } else
            {
                uninterpretedOptionBuilder_.addAllMessages(_mth1600(buildpartial));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public _cls1600 mergeFrom(Message message)
    {
        if (message instanceof _cls1600)
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

    public uninterpretedOptionBuilder_ setCcGenericServices(boolean flag)
    {
        bitField0_ = bitField0_ | 0x20;
        ccGenericServices_ = flag;
        onChanged();
        return this;
    }

    public onChanged setJavaGenerateEqualsAndHash(boolean flag)
    {
        bitField0_ = bitField0_ | 8;
        javaGenerateEqualsAndHash_ = flag;
        onChanged();
        return this;
    }

    public onChanged setJavaGenericServices(boolean flag)
    {
        bitField0_ = bitField0_ | 0x40;
        javaGenericServices_ = flag;
        onChanged();
        return this;
    }

    public onChanged setJavaMultipleFiles(boolean flag)
    {
        bitField0_ = bitField0_ | 4;
        javaMultipleFiles_ = flag;
        onChanged();
        return this;
    }

    public onChanged setJavaOuterClassname(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 2;
            javaOuterClassname_ = s;
            onChanged();
            return this;
        }
    }

    void setJavaOuterClassname(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 2;
        javaOuterClassname_ = bytestring;
        onChanged();
    }

    public onChanged setJavaPackage(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 1;
            javaPackage_ = s;
            onChanged();
            return this;
        }
    }

    void setJavaPackage(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 1;
        javaPackage_ = bytestring;
        onChanged();
    }

    public Mode setOptimizeFor(Mode mode)
    {
        if (mode == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 0x10;
            optimizeFor_ = mode;
            onChanged();
            return this;
        }
    }

    public onChanged setPyGenericServices(boolean flag)
    {
        bitField0_ = bitField0_ | 0x80;
        pyGenericServices_ = flag;
        onChanged();
        return this;
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
        javaPackage_ = "";
        javaOuterClassname_ = "";
        optimizeFor_ = Mode.SPEED;
        uninterpretedOption_ = Collections.emptyList();
        maybeForceBuilderInitialization();
    }

    private maybeForceBuilderInitialization(maybeForceBuilderInitialization maybeforcebuilderinitialization)
    {
        super(maybeforcebuilderinitialization);
        javaPackage_ = "";
        javaOuterClassname_ = "";
        optimizeFor_ = Mode.SPEED;
        uninterpretedOption_ = Collections.emptyList();
        maybeForceBuilderInitialization();
    }

    maybeForceBuilderInitialization(maybeForceBuilderInitialization maybeforcebuilderinitialization, a a)
    {
        this(maybeforcebuilderinitialization);
    }
}
