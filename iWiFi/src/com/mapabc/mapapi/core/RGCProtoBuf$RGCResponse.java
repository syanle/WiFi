// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            RGCProtoBuf, v

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements RGCProtoBuf.RGCResponseOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder rgcItemBuilder_;
        private List rgcItem_;

        private RGCProtoBuf.RGCResponse buildParsed()
            throws InvalidProtocolBufferException
        {
            RGCProtoBuf.RGCResponse rgcresponse = buildPartial();
            if (!rgcresponse.isInitialized())
            {
                throw newUninitializedMessageException(rgcresponse).asInvalidProtocolBufferException();
            } else
            {
                return rgcresponse;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureRgcItemIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                rgcItem_ = new ArrayList(rgcItem_);
                bitField0_ = bitField0_ | 1;
            }
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return RGCProtoBuf.access$1900();
        }

        private RepeatedFieldBuilder getRgcItemFieldBuilder()
        {
            boolean flag = true;
            if (rgcItemBuilder_ == null)
            {
                List list = rgcItem_;
                if ((bitField0_ & 1) != 1)
                {
                    flag = false;
                }
                rgcItemBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                rgcItem_ = null;
            }
            return rgcItemBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (buildPartial)
            {
                getRgcItemFieldBuilder();
            }
        }

        public Builder addAllRgcItem(Iterable iterable)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, rgcItem_);
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addRgcItem(int i, RGCProtoBuf.RGCItem.Builder builder)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                rgcItem_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addRgcItem(int i, RGCProtoBuf.RGCItem rgcitem)
        {
            if (rgcItemBuilder_ == null)
            {
                if (rgcitem == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureRgcItemIsMutable();
                    rgcItem_.add(i, rgcitem);
                    onChanged();
                    return this;
                }
            } else
            {
                rgcItemBuilder_.addMessage(i, rgcitem);
                return this;
            }
        }

        public Builder addRgcItem(RGCProtoBuf.RGCItem.Builder builder)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                rgcItem_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addRgcItem(RGCProtoBuf.RGCItem rgcitem)
        {
            if (rgcItemBuilder_ == null)
            {
                if (rgcitem == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureRgcItemIsMutable();
                    rgcItem_.add(rgcitem);
                    onChanged();
                    return this;
                }
            } else
            {
                rgcItemBuilder_.addMessage(rgcitem);
                return this;
            }
        }

        public RGCProtoBuf.RGCItem.Builder addRgcItemBuilder()
        {
            return (RGCProtoBuf.RGCItem.Builder)getRgcItemFieldBuilder().addBuilder(RGCProtoBuf.RGCItem.getDefaultInstance());
        }

        public RGCProtoBuf.RGCItem.Builder addRgcItemBuilder(int i)
        {
            return (RGCProtoBuf.RGCItem.Builder)getRgcItemFieldBuilder().addBuilder(i, RGCProtoBuf.RGCItem.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public RGCProtoBuf.RGCResponse build()
        {
            RGCProtoBuf.RGCResponse rgcresponse = buildPartial();
            if (!rgcresponse.isInitialized())
            {
                throw newUninitializedMessageException(rgcresponse);
            } else
            {
                return rgcresponse;
            }
        }

        public volatile Message buildPartial()
        {
            return buildPartial();
        }

        public volatile MessageLite buildPartial()
        {
            return buildPartial();
        }

        public RGCProtoBuf.RGCResponse buildPartial()
        {
            RGCProtoBuf.RGCResponse rgcresponse = new RGCProtoBuf.RGCResponse(this, null);
            int i = bitField0_;
            if (rgcItemBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    rgcItem_ = Collections.unmodifiableList(rgcItem_);
                    bitField0_ = bitField0_ & -2;
                }
                rgcresponse.rgcItem_ = rgcItem_;
            } else
            {
                rgcresponse.rgcItem_ = rgcItemBuilder_.build();
            }
            onBuilt();
            return rgcresponse;
        }

        public volatile com.google.protobuf.AbstractMessage.Builder clear()
        {
            return clear();
        }

        public volatile com.google.protobuf.GeneratedMessage.Builder clear()
        {
            return clear();
        }

        public volatile com.google.protobuf.Message.Builder clear()
        {
            return clear();
        }

        public volatile com.google.protobuf.MessageLite.Builder clear()
        {
            return clear();
        }

        public Builder clear()
        {
            super.clear();
            if (rgcItemBuilder_ == null)
            {
                rgcItem_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                return this;
            } else
            {
                rgcItemBuilder_.clear();
                return this;
            }
        }

        public Builder clearRgcItem()
        {
            if (rgcItemBuilder_ == null)
            {
                rgcItem_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.clear();
                return this;
            }
        }

        public volatile com.google.protobuf.AbstractMessage.Builder clone()
        {
            return clone();
        }

        public volatile com.google.protobuf.AbstractMessageLite.Builder clone()
        {
            return clone();
        }

        public volatile com.google.protobuf.GeneratedMessage.Builder clone()
        {
            return clone();
        }

        public volatile com.google.protobuf.Message.Builder clone()
        {
            return clone();
        }

        public volatile com.google.protobuf.MessageLite.Builder clone()
        {
            return clone();
        }

        public Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public RGCProtoBuf.RGCResponse getDefaultInstanceForType()
        {
            return RGCProtoBuf.RGCResponse.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return RGCProtoBuf.RGCResponse.getDescriptor();
        }

        public RGCProtoBuf.RGCItem getRgcItem(int i)
        {
            if (rgcItemBuilder_ == null)
            {
                return (RGCProtoBuf.RGCItem)rgcItem_.get(i);
            } else
            {
                return (RGCProtoBuf.RGCItem)rgcItemBuilder_.getMessage(i);
            }
        }

        public RGCProtoBuf.RGCItem.Builder getRgcItemBuilder(int i)
        {
            return (RGCProtoBuf.RGCItem.Builder)getRgcItemFieldBuilder().getBuilder(i);
        }

        public List getRgcItemBuilderList()
        {
            return getRgcItemFieldBuilder().getBuilderList();
        }

        public int getRgcItemCount()
        {
            if (rgcItemBuilder_ == null)
            {
                return rgcItem_.size();
            } else
            {
                return rgcItemBuilder_.getCount();
            }
        }

        public List getRgcItemList()
        {
            if (rgcItemBuilder_ == null)
            {
                return Collections.unmodifiableList(rgcItem_);
            } else
            {
                return rgcItemBuilder_.getMessageList();
            }
        }

        public RGCProtoBuf.RGCItemOrBuilder getRgcItemOrBuilder(int i)
        {
            if (rgcItemBuilder_ == null)
            {
                return (RGCProtoBuf.RGCItemOrBuilder)rgcItem_.get(i);
            } else
            {
                return (RGCProtoBuf.RGCItemOrBuilder)rgcItemBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getRgcItemOrBuilderList()
        {
            if (rgcItemBuilder_ != null)
            {
                return rgcItemBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(rgcItem_);
            }
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return RGCProtoBuf.access$2000();
        }

        public final boolean isInitialized()
        {
            for (int i = 0; i < getRgcItemCount(); i++)
            {
                if (!getRgcItem(i).isInitialized())
                {
                    return false;
                }
            }

            return true;
        }

        public volatile com.google.protobuf.AbstractMessage.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile com.google.protobuf.AbstractMessage.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public volatile com.google.protobuf.AbstractMessageLite.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile com.google.protobuf.Message.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile com.google.protobuf.Message.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public volatile com.google.protobuf.MessageLite.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            com.google.protobuf.UnknownFieldSet.Builder builder = UnknownFieldSet.newBuilder(getUnknownFields());
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
                    RGCProtoBuf.RGCItem.Builder builder1 = RGCProtoBuf.RGCItem.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addRgcItem(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof RGCProtoBuf.RGCResponse)
            {
                return mergeFrom((RGCProtoBuf.RGCResponse)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(RGCProtoBuf.RGCResponse rgcresponse)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (rgcresponse == RGCProtoBuf.RGCResponse.getDefaultInstance())
            {
                return this;
            }
            if (rgcItemBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!rgcresponse.rgcItem_.isEmpty())
            {
                if (rgcItem_.isEmpty())
                {
                    rgcItem_ = rgcresponse.rgcItem_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureRgcItemIsMutable();
                    rgcItem_.addAll(rgcresponse.rgcItem_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(rgcresponse.getUnknownFields());
            return this;
_L2:
            if (!rgcresponse.rgcItem_.isEmpty())
            {
                if (rgcItemBuilder_.isEmpty())
                {
                    rgcItemBuilder_.dispose();
                    rgcItemBuilder_ = null;
                    rgcItem_ = rgcresponse.rgcItem_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getRgcItemFieldBuilder();
                    }
                    rgcItemBuilder_ = repeatedfieldbuilder;
                } else
                {
                    rgcItemBuilder_.addAllMessages(rgcresponse.rgcItem_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Builder removeRgcItem(int i)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                rgcItem_.remove(i);
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.remove(i);
                return this;
            }
        }

        public Builder setRgcItem(int i, RGCProtoBuf.RGCItem.Builder builder)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                rgcItem_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setRgcItem(int i, RGCProtoBuf.RGCItem rgcitem)
        {
            if (rgcItemBuilder_ == null)
            {
                if (rgcitem == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureRgcItemIsMutable();
                    rgcItem_.set(i, rgcitem);
                    onChanged();
                    return this;
                }
            } else
            {
                rgcItemBuilder_.setMessage(i, rgcitem);
                return this;
            }
        }



        private Builder()
        {
            rgcItem_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            rgcItem_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, v v)
        {
            this(builderparent);
        }
    }


    public static final int RGCITEM_FIELD_NUMBER = 1;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List rgcItem_;

    public static sage getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.se.defaultInstance getDescriptor()
    {
        return RGCProtoBuf.access$1900();
    }

    private void initFields()
    {
        rgcItem_ = Collections.emptyList();
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

    public volatile Message getDefaultInstanceForType()
    {
        return getDefaultInstanceForType();
    }

    public volatile MessageLite getDefaultInstanceForType()
    {
        return getDefaultInstanceForType();
    }

    public getDefaultInstanceForType getDefaultInstanceForType()
    {
        return defaultInstance;
    }

    public defaultInstance getRgcItem(int i)
    {
        return (defaultInstance)rgcItem_.get(i);
    }

    public int getRgcItemCount()
    {
        return rgcItem_.size();
    }

    public List getRgcItemList()
    {
        return rgcItem_;
    }

    public lder getRgcItemOrBuilder(int i)
    {
        return (lder)rgcItem_.get(i);
    }

    public List getRgcItemOrBuilderList()
    {
        return rgcItem_;
    }

    public int getSerializedSize()
    {
        int i = memoizedSerializedSize;
        if (i != -1)
        {
            return i;
        }
        i = 0;
        int j = 0;
        for (; i < rgcItem_.size(); i++)
        {
            j += CodedOutputStream.computeMessageSize(1, (MessageLite)rgcItem_.get(i));
        }

        i = getUnknownFields().getSerializedSize() + j;
        memoizedSerializedSize = i;
        return i;
    }

    protected com.google.protobuf.cessorTable internalGetFieldAccessorTable()
    {
        return RGCProtoBuf.access$2000();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        for (int i = 0; i < getRgcItemCount(); i++)
        {
            if (!getRgcItem(i).itialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
        }

        memoizedIsInitialized = 1;
        return true;
    }

    public volatile com.google.protobuf.se newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.Parent newBuilderForType(com.google.protobuf.Parent parent)
    {
        return newBuilderForType(parent);
    }

    public volatile com.google.protobuf.se newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.Parent parent)
    {
        return new Builder(parent, null);
    }

    public volatile com.google.protobuf.se toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.se toBuilder()
    {
        return toBuilder();
    }

    public Builder toBuilder()
    {
        return newBuilder(this);
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
        for (int i = 0; i < rgcItem_.size(); i++)
        {
            codedoutputstream.writeMessage(1, (MessageLite)rgcItem_.get(i));
        }

        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }




/*
    static List access$2602(Builder builder, List list)
    {
        builder.rgcItem_ = list;
        return list;
    }

*/


    private Builder(Builder builder)
    {
        super(builder);
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    Builder(Builder builder, v v)
    {
        this(builder);
    }

    private Builder(boolean flag)
    {
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }
}
