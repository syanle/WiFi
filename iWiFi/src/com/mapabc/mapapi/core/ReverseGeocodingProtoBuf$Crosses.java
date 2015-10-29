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
//            ReverseGeocodingProtoBuf, z

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements ReverseGeocodingProtoBuf.CrossesOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder crossBuilder_;
        private List cross_;

        private ReverseGeocodingProtoBuf.Crosses buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingProtoBuf.Crosses crosses = buildPartial();
            if (!crosses.isInitialized())
            {
                throw newUninitializedMessageException(crosses).asInvalidProtocolBufferException();
            } else
            {
                return crosses;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureCrossIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                cross_ = new ArrayList(cross_);
                bitField0_ = bitField0_ | 1;
            }
        }

        private RepeatedFieldBuilder getCrossFieldBuilder()
        {
            boolean flag = true;
            if (crossBuilder_ == null)
            {
                List list = cross_;
                if ((bitField0_ & 1) != 1)
                {
                    flag = false;
                }
                crossBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                cross_ = null;
            }
            return crossBuilder_;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.access$10000();
        }

        private void maybeForceBuilderInitialization()
        {
            if (buildPartial)
            {
                getCrossFieldBuilder();
            }
        }

        public Builder addAllCross(Iterable iterable)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, cross_);
                onChanged();
                return this;
            } else
            {
                crossBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addCross(int i, ReverseGeocodingProtoBuf.Cross.Builder builder)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                cross_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                crossBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addCross(int i, ReverseGeocodingProtoBuf.Cross cross)
        {
            if (crossBuilder_ == null)
            {
                if (cross == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureCrossIsMutable();
                    cross_.add(i, cross);
                    onChanged();
                    return this;
                }
            } else
            {
                crossBuilder_.addMessage(i, cross);
                return this;
            }
        }

        public Builder addCross(ReverseGeocodingProtoBuf.Cross.Builder builder)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                cross_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                crossBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addCross(ReverseGeocodingProtoBuf.Cross cross)
        {
            if (crossBuilder_ == null)
            {
                if (cross == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureCrossIsMutable();
                    cross_.add(cross);
                    onChanged();
                    return this;
                }
            } else
            {
                crossBuilder_.addMessage(cross);
                return this;
            }
        }

        public ReverseGeocodingProtoBuf.Cross.Builder addCrossBuilder()
        {
            return (ReverseGeocodingProtoBuf.Cross.Builder)getCrossFieldBuilder().addBuilder(ReverseGeocodingProtoBuf.Cross.getDefaultInstance());
        }

        public ReverseGeocodingProtoBuf.Cross.Builder addCrossBuilder(int i)
        {
            return (ReverseGeocodingProtoBuf.Cross.Builder)getCrossFieldBuilder().addBuilder(i, ReverseGeocodingProtoBuf.Cross.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public ReverseGeocodingProtoBuf.Crosses build()
        {
            ReverseGeocodingProtoBuf.Crosses crosses = buildPartial();
            if (!crosses.isInitialized())
            {
                throw newUninitializedMessageException(crosses);
            } else
            {
                return crosses;
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

        public ReverseGeocodingProtoBuf.Crosses buildPartial()
        {
            ReverseGeocodingProtoBuf.Crosses crosses = new ReverseGeocodingProtoBuf.Crosses(this, null);
            int i = bitField0_;
            if (crossBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    cross_ = Collections.unmodifiableList(cross_);
                    bitField0_ = bitField0_ & -2;
                }
                crosses.cross_ = cross_;
            } else
            {
                crosses.cross_ = crossBuilder_.build();
            }
            onBuilt();
            return crosses;
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
            if (crossBuilder_ == null)
            {
                cross_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                return this;
            } else
            {
                crossBuilder_.clear();
                return this;
            }
        }

        public Builder clearCross()
        {
            if (crossBuilder_ == null)
            {
                cross_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                onChanged();
                return this;
            } else
            {
                crossBuilder_.clear();
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

        public ReverseGeocodingProtoBuf.Cross getCross(int i)
        {
            if (crossBuilder_ == null)
            {
                return (ReverseGeocodingProtoBuf.Cross)cross_.get(i);
            } else
            {
                return (ReverseGeocodingProtoBuf.Cross)crossBuilder_.getMessage(i);
            }
        }

        public ReverseGeocodingProtoBuf.Cross.Builder getCrossBuilder(int i)
        {
            return (ReverseGeocodingProtoBuf.Cross.Builder)getCrossFieldBuilder().getBuilder(i);
        }

        public List getCrossBuilderList()
        {
            return getCrossFieldBuilder().getBuilderList();
        }

        public int getCrossCount()
        {
            if (crossBuilder_ == null)
            {
                return cross_.size();
            } else
            {
                return crossBuilder_.getCount();
            }
        }

        public List getCrossList()
        {
            if (crossBuilder_ == null)
            {
                return Collections.unmodifiableList(cross_);
            } else
            {
                return crossBuilder_.getMessageList();
            }
        }

        public ReverseGeocodingProtoBuf.CrossOrBuilder getCrossOrBuilder(int i)
        {
            if (crossBuilder_ == null)
            {
                return (ReverseGeocodingProtoBuf.CrossOrBuilder)cross_.get(i);
            } else
            {
                return (ReverseGeocodingProtoBuf.CrossOrBuilder)crossBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getCrossOrBuilderList()
        {
            if (crossBuilder_ != null)
            {
                return crossBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(cross_);
            }
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public ReverseGeocodingProtoBuf.Crosses getDefaultInstanceForType()
        {
            return ReverseGeocodingProtoBuf.Crosses.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingProtoBuf.Crosses.getDescriptor();
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.access$10100();
        }

        public final boolean isInitialized()
        {
            for (int i = 0; i < getCrossCount(); i++)
            {
                if (!getCross(i).isInitialized())
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
                    ReverseGeocodingProtoBuf.Cross.Builder builder1 = ReverseGeocodingProtoBuf.Cross.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addCross(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingProtoBuf.Crosses)
            {
                return mergeFrom((ReverseGeocodingProtoBuf.Crosses)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(ReverseGeocodingProtoBuf.Crosses crosses)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (crosses == ReverseGeocodingProtoBuf.Crosses.getDefaultInstance())
            {
                return this;
            }
            if (crossBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!crosses.cross_.isEmpty())
            {
                if (cross_.isEmpty())
                {
                    cross_ = crosses.cross_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureCrossIsMutable();
                    cross_.addAll(crosses.cross_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(crosses.getUnknownFields());
            return this;
_L2:
            if (!crosses.cross_.isEmpty())
            {
                if (crossBuilder_.isEmpty())
                {
                    crossBuilder_.dispose();
                    crossBuilder_ = null;
                    cross_ = crosses.cross_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getCrossFieldBuilder();
                    }
                    crossBuilder_ = repeatedfieldbuilder;
                } else
                {
                    crossBuilder_.addAllMessages(crosses.cross_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Builder removeCross(int i)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                cross_.remove(i);
                onChanged();
                return this;
            } else
            {
                crossBuilder_.remove(i);
                return this;
            }
        }

        public Builder setCross(int i, ReverseGeocodingProtoBuf.Cross.Builder builder)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                cross_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                crossBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setCross(int i, ReverseGeocodingProtoBuf.Cross cross)
        {
            if (crossBuilder_ == null)
            {
                if (cross == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureCrossIsMutable();
                    cross_.set(i, cross);
                    onChanged();
                    return this;
                }
            } else
            {
                crossBuilder_.setMessage(i, cross);
                return this;
            }
        }



        private Builder()
        {
            cross_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            cross_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z)
        {
            this(builderparent);
        }
    }


    public static final int CROSS_FIELD_NUMBER = 1;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private List cross_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;

    public static Builder.crossBuilder_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.es.defaultInstance getDescriptor()
    {
        return ReverseGeocodingProtoBuf.access$10000();
    }

    private void initFields()
    {
        cross_ = Collections.emptyList();
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

    public Builder.buildParsed getCross(int i)
    {
        return (Builder.buildParsed)cross_.get(i);
    }

    public int getCrossCount()
    {
        return cross_.size();
    }

    public List getCrossList()
    {
        return cross_;
    }

    public uilder getCrossOrBuilder(int i)
    {
        return (uilder)cross_.get(i);
    }

    public List getCrossOrBuilderList()
    {
        return cross_;
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

    public int getSerializedSize()
    {
        int i = memoizedSerializedSize;
        if (i != -1)
        {
            return i;
        }
        i = 0;
        int j = 0;
        for (; i < cross_.size(); i++)
        {
            j += CodedOutputStream.computeMessageSize(1, (MessageLite)cross_.get(i));
        }

        i = getUnknownFields().getSerializedSize() + j;
        memoizedSerializedSize = i;
        return i;
    }

    protected com.google.protobuf.le internalGetFieldAccessorTable()
    {
        return ReverseGeocodingProtoBuf.access$10100();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        for (int i = 0; i < getCrossCount(); i++)
        {
            if (!getCross(i).Initialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
        }

        memoizedIsInitialized = 1;
        return true;
    }

    public volatile com.google.protobuf.es newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.es newBuilderForType(com.google.protobuf.es es)
    {
        return newBuilderForType(es);
    }

    public volatile com.google.protobuf.es newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.es es)
    {
        return new Builder(es, null);
    }

    public volatile com.google.protobuf.es toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.es toBuilder()
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
        for (int i = 0; i < cross_.size(); i++)
        {
            codedoutputstream.writeMessage(1, (MessageLite)cross_.get(i));
        }

        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }




/*
    static List access$10702(Builder builder, List list)
    {
        builder.cross_ = list;
        return list;
    }

*/


    private Builder(Builder builder)
    {
        super(builder);
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    Builder(Builder builder, z z)
    {
        this(builder);
    }

    private Builder(boolean flag)
    {
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }
}
