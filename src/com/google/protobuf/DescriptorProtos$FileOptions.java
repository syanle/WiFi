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
//            DescriptorProtos, e, ByteString, InvalidProtocolBufferException, 
//            Internal, CodedOutputStream, MessageLite, UnknownFieldSet, 
//            a, ExtensionRegistryLite, CodedInputStream, Message, 
//            UninitializedMessageException, RepeatedFieldBuilder, GeneratedMessage, ProtocolMessageEnum

public static final class memoizedSerializedSize extends ssage
    implements rBuilder
{
    public static final class Builder extends GeneratedMessage.ExtendableBuilder
        implements DescriptorProtos.FileOptionsOrBuilder
    {

        private int bitField0_;
        private boolean ccGenericServices_;
        private boolean javaGenerateEqualsAndHash_;
        private boolean javaGenericServices_;
        private boolean javaMultipleFiles_;
        private Object javaOuterClassname_;
        private Object javaPackage_;
        private OptimizeMode optimizeFor_;
        private boolean pyGenericServices_;
        private RepeatedFieldBuilder uninterpretedOptionBuilder_;
        private List uninterpretedOption_;

        private DescriptorProtos.FileOptions buildParsed()
            throws InvalidProtocolBufferException
        {
            DescriptorProtos.FileOptions fileoptions = buildPartial();
            if (!fileoptions.isInitialized())
            {
                throw newUninitializedMessageException(fileoptions).asInvalidProtocolBufferException();
            } else
            {
                return fileoptions;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureUninterpretedOptionIsMutable()
        {
            if ((bitField0_ & 0x100) != 256)
            {
                uninterpretedOption_ = new ArrayList(uninterpretedOption_);
                bitField0_ = bitField0_ | 0x100;
            }
        }

        public static final Descriptors.Descriptor getDescriptor()
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

        public DescriptorProtos.FileOptions build()
        {
            DescriptorProtos.FileOptions fileoptions = buildPartial();
            if (!fileoptions.isInitialized())
            {
                throw newUninitializedMessageException(fileoptions);
            } else
            {
                return fileoptions;
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

        public DescriptorProtos.FileOptions buildPartial()
        {
            int j = 1;
            DescriptorProtos.FileOptions fileoptions = new DescriptorProtos.FileOptions(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            fileoptions.javaPackage_ = javaPackage_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            fileoptions.javaOuterClassname_ = javaOuterClassname_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            fileoptions.javaMultipleFiles_ = javaMultipleFiles_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            fileoptions.javaGenerateEqualsAndHash_ = javaGenerateEqualsAndHash_;
            j = i;
            if ((k & 0x10) == 16)
            {
                j = i | 0x10;
            }
            fileoptions.optimizeFor_ = optimizeFor_;
            i = j;
            if ((k & 0x20) == 32)
            {
                i = j | 0x20;
            }
            fileoptions.ccGenericServices_ = ccGenericServices_;
            j = i;
            if ((k & 0x40) == 64)
            {
                j = i | 0x40;
            }
            fileoptions.javaGenericServices_ = javaGenericServices_;
            i = j;
            if ((k & 0x80) == 128)
            {
                i = j | 0x80;
            }
            fileoptions.pyGenericServices_ = pyGenericServices_;
            if (uninterpretedOptionBuilder_ == null)
            {
                if ((bitField0_ & 0x100) == 256)
                {
                    uninterpretedOption_ = Collections.unmodifiableList(uninterpretedOption_);
                    bitField0_ = bitField0_ & 0xfffffeff;
                }
                fileoptions.uninterpretedOption_ = uninterpretedOption_;
            } else
            {
                fileoptions.uninterpretedOption_ = uninterpretedOptionBuilder_.build();
            }
            fileoptions.bitField0_ = i;
            onBuilt();
            return fileoptions;
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
            javaPackage_ = "";
            bitField0_ = bitField0_ & -2;
            javaOuterClassname_ = "";
            bitField0_ = bitField0_ & -3;
            javaMultipleFiles_ = false;
            bitField0_ = bitField0_ & -5;
            javaGenerateEqualsAndHash_ = false;
            bitField0_ = bitField0_ & -9;
            optimizeFor_ = OptimizeMode.SPEED;
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

        public Builder clearCcGenericServices()
        {
            bitField0_ = bitField0_ & 0xffffffdf;
            ccGenericServices_ = false;
            onChanged();
            return this;
        }

        public Builder clearJavaGenerateEqualsAndHash()
        {
            bitField0_ = bitField0_ & -9;
            javaGenerateEqualsAndHash_ = false;
            onChanged();
            return this;
        }

        public Builder clearJavaGenericServices()
        {
            bitField0_ = bitField0_ & 0xffffffbf;
            javaGenericServices_ = false;
            onChanged();
            return this;
        }

        public Builder clearJavaMultipleFiles()
        {
            bitField0_ = bitField0_ & -5;
            javaMultipleFiles_ = false;
            onChanged();
            return this;
        }

        public Builder clearJavaOuterClassname()
        {
            bitField0_ = bitField0_ & -3;
            javaOuterClassname_ = DescriptorProtos.FileOptions.getDefaultInstance().getJavaOuterClassname();
            onChanged();
            return this;
        }

        public Builder clearJavaPackage()
        {
            bitField0_ = bitField0_ & -2;
            javaPackage_ = DescriptorProtos.FileOptions.getDefaultInstance().getJavaPackage();
            onChanged();
            return this;
        }

        public Builder clearOptimizeFor()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            optimizeFor_ = OptimizeMode.SPEED;
            onChanged();
            return this;
        }

        public Builder clearPyGenericServices()
        {
            bitField0_ = bitField0_ & 0xffffff7f;
            pyGenericServices_ = false;
            onChanged();
            return this;
        }

        public Builder clearUninterpretedOption()
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

        public boolean getCcGenericServices()
        {
            return ccGenericServices_;
        }

        public DescriptorProtos.FileOptions getDefaultInstanceForType()
        {
            return DescriptorProtos.FileOptions.getDefaultInstance();
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
            return DescriptorProtos.FileOptions.getDescriptor();
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

        public OptimizeMode getOptimizeFor()
        {
            return optimizeFor_;
        }

        public boolean getPyGenericServices()
        {
            return pyGenericServices_;
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

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
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
                    javaPackage_ = codedinputstream.readBytes();
                    break;

                case 66: // 'B'
                    bitField0_ = bitField0_ | 2;
                    javaOuterClassname_ = codedinputstream.readBytes();
                    break;

                case 72: // 'H'
                    int j = codedinputstream.readEnum();
                    OptimizeMode optimizemode = OptimizeMode.valueOf(j);
                    if (optimizemode == null)
                    {
                        builder.mergeVarintField(9, j);
                    } else
                    {
                        bitField0_ = bitField0_ | 0x10;
                        optimizeFor_ = optimizemode;
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
                    DescriptorProtos.UninterpretedOption.Builder builder1 = DescriptorProtos.UninterpretedOption.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addUninterpretedOption(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(DescriptorProtos.FileOptions fileoptions)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (fileoptions == DescriptorProtos.FileOptions.getDefaultInstance())
            {
                return this;
            }
            if (fileoptions.hasJavaPackage())
            {
                setJavaPackage(fileoptions.getJavaPackage());
            }
            if (fileoptions.hasJavaOuterClassname())
            {
                setJavaOuterClassname(fileoptions.getJavaOuterClassname());
            }
            if (fileoptions.hasJavaMultipleFiles())
            {
                setJavaMultipleFiles(fileoptions.getJavaMultipleFiles());
            }
            if (fileoptions.hasJavaGenerateEqualsAndHash())
            {
                setJavaGenerateEqualsAndHash(fileoptions.getJavaGenerateEqualsAndHash());
            }
            if (fileoptions.hasOptimizeFor())
            {
                setOptimizeFor(fileoptions.getOptimizeFor());
            }
            if (fileoptions.hasCcGenericServices())
            {
                setCcGenericServices(fileoptions.getCcGenericServices());
            }
            if (fileoptions.hasJavaGenericServices())
            {
                setJavaGenericServices(fileoptions.getJavaGenericServices());
            }
            if (fileoptions.hasPyGenericServices())
            {
                setPyGenericServices(fileoptions.getPyGenericServices());
            }
            if (uninterpretedOptionBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!fileoptions.uninterpretedOption_.isEmpty())
            {
                if (uninterpretedOption_.isEmpty())
                {
                    uninterpretedOption_ = fileoptions.uninterpretedOption_;
                    bitField0_ = bitField0_ & 0xfffffeff;
                } else
                {
                    ensureUninterpretedOptionIsMutable();
                    uninterpretedOption_.addAll(fileoptions.uninterpretedOption_);
                }
                onChanged();
            }
_L4:
            mergeExtensionFields(fileoptions);
            mergeUnknownFields(fileoptions.getUnknownFields());
            return this;
_L2:
            if (!fileoptions.uninterpretedOption_.isEmpty())
            {
                if (uninterpretedOptionBuilder_.isEmpty())
                {
                    uninterpretedOptionBuilder_.dispose();
                    uninterpretedOptionBuilder_ = null;
                    uninterpretedOption_ = fileoptions.uninterpretedOption_;
                    bitField0_ = bitField0_ & 0xfffffeff;
                    if (GeneratedMessage.alwaysUseFieldBuilders)
                    {
                        repeatedfieldbuilder = getUninterpretedOptionFieldBuilder();
                    }
                    uninterpretedOptionBuilder_ = repeatedfieldbuilder;
                } else
                {
                    uninterpretedOptionBuilder_.addAllMessages(fileoptions.uninterpretedOption_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof DescriptorProtos.FileOptions)
            {
                return mergeFrom((DescriptorProtos.FileOptions)message);
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

        public Builder setCcGenericServices(boolean flag)
        {
            bitField0_ = bitField0_ | 0x20;
            ccGenericServices_ = flag;
            onChanged();
            return this;
        }

        public Builder setJavaGenerateEqualsAndHash(boolean flag)
        {
            bitField0_ = bitField0_ | 8;
            javaGenerateEqualsAndHash_ = flag;
            onChanged();
            return this;
        }

        public Builder setJavaGenericServices(boolean flag)
        {
            bitField0_ = bitField0_ | 0x40;
            javaGenericServices_ = flag;
            onChanged();
            return this;
        }

        public Builder setJavaMultipleFiles(boolean flag)
        {
            bitField0_ = bitField0_ | 4;
            javaMultipleFiles_ = flag;
            onChanged();
            return this;
        }

        public Builder setJavaOuterClassname(String s)
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

        public Builder setJavaPackage(String s)
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

        public Builder setOptimizeFor(OptimizeMode optimizemode)
        {
            if (optimizemode == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x10;
                optimizeFor_ = optimizemode;
                onChanged();
                return this;
            }
        }

        public Builder setPyGenericServices(boolean flag)
        {
            bitField0_ = bitField0_ | 0x80;
            pyGenericServices_ = flag;
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
            javaPackage_ = "";
            javaOuterClassname_ = "";
            optimizeFor_ = OptimizeMode.SPEED;
            uninterpretedOption_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            javaPackage_ = "";
            javaOuterClassname_ = "";
            optimizeFor_ = OptimizeMode.SPEED;
            uninterpretedOption_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(GeneratedMessage.BuilderParent builderparent, a a)
        {
            this(builderparent);
        }
    }

    public static final class OptimizeMode extends Enum
        implements ProtocolMessageEnum
    {

        private static final OptimizeMode $VALUES[];
        public static final OptimizeMode CODE_SIZE;
        public static final int CODE_SIZE_VALUE = 2;
        public static final OptimizeMode LITE_RUNTIME;
        public static final int LITE_RUNTIME_VALUE = 3;
        public static final OptimizeMode SPEED;
        public static final int SPEED_VALUE = 1;
        private static final OptimizeMode VALUES[];
        private static Internal.EnumLiteMap internalValueMap = new e();
        private final int index;
        private final int value;

        public static final Descriptors.EnumDescriptor getDescriptor()
        {
            return (Descriptors.EnumDescriptor)DescriptorProtos.FileOptions.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap internalGetValueMap()
        {
            return internalValueMap;
        }

        public static OptimizeMode valueOf(int i)
        {
            switch (i)
            {
            default:
                return null;

            case 1: // '\001'
                return SPEED;

            case 2: // '\002'
                return CODE_SIZE;

            case 3: // '\003'
                return LITE_RUNTIME;
            }
        }

        public static OptimizeMode valueOf(Descriptors.EnumValueDescriptor enumvaluedescriptor)
        {
            if (enumvaluedescriptor.getType() != getDescriptor())
            {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            } else
            {
                return VALUES[enumvaluedescriptor.getIndex()];
            }
        }

        public static OptimizeMode valueOf(String s)
        {
            return (OptimizeMode)Enum.valueOf(com/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode, s);
        }

        public static OptimizeMode[] values()
        {
            return (OptimizeMode[])$VALUES.clone();
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
            SPEED = new OptimizeMode("SPEED", 0, 0, 1);
            CODE_SIZE = new OptimizeMode("CODE_SIZE", 1, 1, 2);
            LITE_RUNTIME = new OptimizeMode("LITE_RUNTIME", 2, 2, 3);
            $VALUES = (new OptimizeMode[] {
                SPEED, CODE_SIZE, LITE_RUNTIME
            });
            VALUES = (new OptimizeMode[] {
                SPEED, CODE_SIZE, LITE_RUNTIME
            });
        }

        private OptimizeMode(String s, int i, int j, int k)
        {
            super(s, i);
            index = j;
            value = k;
        }
    }


    public static final int CC_GENERIC_SERVICES_FIELD_NUMBER = 16;
    public static final int JAVA_GENERATE_EQUALS_AND_HASH_FIELD_NUMBER = 20;
    public static final int JAVA_GENERIC_SERVICES_FIELD_NUMBER = 17;
    public static final int JAVA_MULTIPLE_FILES_FIELD_NUMBER = 10;
    public static final int JAVA_OUTER_CLASSNAME_FIELD_NUMBER = 8;
    public static final int JAVA_PACKAGE_FIELD_NUMBER = 1;
    public static final int OPTIMIZE_FOR_FIELD_NUMBER = 9;
    public static final int PY_GENERIC_SERVICES_FIELD_NUMBER = 18;
    public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private boolean ccGenericServices_;
    private boolean javaGenerateEqualsAndHash_;
    private boolean javaGenericServices_;
    private boolean javaMultipleFiles_;
    private Object javaOuterClassname_;
    private Object javaPackage_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private OptimizeMode optimizeFor_;
    private boolean pyGenericServices_;
    private List uninterpretedOption_;

    public static OptimizeMode getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final defaultInstance getDescriptor()
    {
        return DescriptorProtos.access$10200();
    }

    private ByteString getJavaOuterClassnameBytes()
    {
        Object obj = javaOuterClassname_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            javaOuterClassname_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getJavaPackageBytes()
    {
        Object obj = javaPackage_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            javaPackage_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private void initFields()
    {
        javaPackage_ = "";
        javaOuterClassname_ = "";
        javaMultipleFiles_ = false;
        javaGenerateEqualsAndHash_ = false;
        optimizeFor_ = OptimizeMode.SPEED;
        ccGenericServices_ = false;
        javaGenericServices_ = false;
        pyGenericServices_ = false;
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

    public boolean getCcGenericServices()
    {
        return ccGenericServices_;
    }

    public ccGenericServices_ getDefaultInstanceForType()
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
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            javaOuterClassname_ = s;
        }
        return s;
    }

    public String getJavaPackage()
    {
        Object obj = javaPackage_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            javaPackage_ = s;
        }
        return s;
    }

    public OptimizeMode getOptimizeFor()
    {
        return optimizeFor_;
    }

    public boolean getPyGenericServices()
    {
        return pyGenericServices_;
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
            j = CodedOutputStream.computeBytesSize(1, getJavaPackageBytes()) + 0;
        } else
        {
            j = 0;
        }
        i = j;
        if ((bitField0_ & 2) == 2)
        {
            i = j + CodedOutputStream.computeBytesSize(8, getJavaOuterClassnameBytes());
        }
        j = i;
        if ((bitField0_ & 0x10) == 16)
        {
            j = i + CodedOutputStream.computeEnumSize(9, optimizeFor_.getNumber());
        }
        i = j;
        if ((bitField0_ & 4) == 4)
        {
            i = j + CodedOutputStream.computeBoolSize(10, javaMultipleFiles_);
        }
        j = i;
        if ((bitField0_ & 0x20) == 32)
        {
            j = i + CodedOutputStream.computeBoolSize(16, ccGenericServices_);
        }
        i = j;
        if ((bitField0_ & 0x40) == 64)
        {
            i = j + CodedOutputStream.computeBoolSize(17, javaGenericServices_);
        }
        j = i;
        if ((bitField0_ & 0x80) == 128)
        {
            j = i + CodedOutputStream.computeBoolSize(18, pyGenericServices_);
        }
        i = j;
        if ((bitField0_ & 8) == 8)
        {
            i = j + CodedOutputStream.computeBoolSize(20, javaGenerateEqualsAndHash_);
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

    public dOption getUninterpretedOption(int i)
    {
        return (dOption)uninterpretedOption_.get(i);
    }

    public int getUninterpretedOptionCount()
    {
        return uninterpretedOption_.size();
    }

    public List getUninterpretedOptionList()
    {
        return uninterpretedOption_;
    }

    public dOptionOrBuilder getUninterpretedOptionOrBuilder(int i)
    {
        return (dOptionOrBuilder)uninterpretedOption_.get(i);
    }

    public List getUninterpretedOptionOrBuilderList()
    {
        return uninterpretedOption_;
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

    protected rTable internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$10300();
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

    protected Builder newBuilderForType(t t)
    {
        return new Builder(t, null);
    }

    public volatile t newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile t newBuilderForType(t t)
    {
        return newBuilderForType(t);
    }

    public volatile t newBuilderForType()
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
        ssage.ExtensionWriter extensionwriter = newExtensionWriter();
        if ((bitField0_ & 1) == 1)
        {
            codedoutputstream.writeBytes(1, getJavaPackageBytes());
        }
        if ((bitField0_ & 2) == 2)
        {
            codedoutputstream.writeBytes(8, getJavaOuterClassnameBytes());
        }
        if ((bitField0_ & 0x10) == 16)
        {
            codedoutputstream.writeEnum(9, optimizeFor_.getNumber());
        }
        if ((bitField0_ & 4) == 4)
        {
            codedoutputstream.writeBool(10, javaMultipleFiles_);
        }
        if ((bitField0_ & 0x20) == 32)
        {
            codedoutputstream.writeBool(16, ccGenericServices_);
        }
        if ((bitField0_ & 0x40) == 64)
        {
            codedoutputstream.writeBool(17, javaGenericServices_);
        }
        if ((bitField0_ & 0x80) == 128)
        {
            codedoutputstream.writeBool(18, pyGenericServices_);
        }
        if ((bitField0_ & 8) == 8)
        {
            codedoutputstream.writeBool(20, javaGenerateEqualsAndHash_);
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
    static Object access$10802(Builder builder, Object obj)
    {
        builder.javaPackage_ = obj;
        return obj;
    }

*/


/*
    static Object access$10902(javaPackage_ javapackage_, Object obj)
    {
        javapackage_.javaOuterClassname_ = obj;
        return obj;
    }

*/


/*
    static boolean access$11002(javaOuterClassname_ javaouterclassname_, boolean flag)
    {
        javaouterclassname_.javaMultipleFiles_ = flag;
        return flag;
    }

*/


/*
    static boolean access$11102(javaMultipleFiles_ javamultiplefiles_, boolean flag)
    {
        javamultiplefiles_.javaGenerateEqualsAndHash_ = flag;
        return flag;
    }

*/


/*
    static OptimizeMode access$11202(OptimizeMode optimizemode, OptimizeMode optimizemode1)
    {
        optimizemode.optimizeFor_ = optimizemode1;
        return optimizemode1;
    }

*/


/*
    static boolean access$11302(optimizeFor_ optimizefor_, boolean flag)
    {
        optimizefor_.ccGenericServices_ = flag;
        return flag;
    }

*/


/*
    static boolean access$11402(ccGenericServices_ ccgenericservices_, boolean flag)
    {
        ccgenericservices_.javaGenericServices_ = flag;
        return flag;
    }

*/


/*
    static boolean access$11502(javaGenericServices_ javagenericservices_, boolean flag)
    {
        javagenericservices_.pyGenericServices_ = flag;
        return flag;
    }

*/



/*
    static List access$11602(pyGenericServices_ pygenericservices_, List list)
    {
        pygenericservices_.uninterpretedOption_ = list;
        return list;
    }

*/


/*
    static int access$11702(uninterpretedOption_ uninterpretedoption_, int i)
    {
        uninterpretedoption_.bitField0_ = i;
        return i;
    }

*/

    private ilder(Builder builder)
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

    // Unreferenced inner class com/google/protobuf/e
    static final class e
        implements Internal.EnumLiteMap
    {

        public OptimizeMode a(int i)
        {
            return OptimizeMode.valueOf(i);
        }

        public volatile Internal.EnumLite findValueByNumber(int i)
        {
            return a(i);
        }

            e()
            {
            }
    }

}
