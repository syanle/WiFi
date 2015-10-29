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
        implements ReverseGeocodingProtoBuf.RoadsOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder roadBuilder_;
        private List road_;

        private ReverseGeocodingProtoBuf.Roads buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingProtoBuf.Roads roads = buildPartial();
            if (!roads.isInitialized())
            {
                throw newUninitializedMessageException(roads).asInvalidProtocolBufferException();
            } else
            {
                return roads;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureRoadIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                road_ = new ArrayList(road_);
                bitField0_ = bitField0_ | 1;
            }
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.access$6700();
        }

        private RepeatedFieldBuilder getRoadFieldBuilder()
        {
            boolean flag = true;
            if (roadBuilder_ == null)
            {
                List list = road_;
                if ((bitField0_ & 1) != 1)
                {
                    flag = false;
                }
                roadBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                road_ = null;
            }
            return roadBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (buildPartial)
            {
                getRoadFieldBuilder();
            }
        }

        public Builder addAllRoad(Iterable iterable)
        {
            if (roadBuilder_ == null)
            {
                ensureRoadIsMutable();
                com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, road_);
                onChanged();
                return this;
            } else
            {
                roadBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addRoad(int i, ReverseGeocodingProtoBuf.Road.Builder builder)
        {
            if (roadBuilder_ == null)
            {
                ensureRoadIsMutable();
                road_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                roadBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addRoad(int i, ReverseGeocodingProtoBuf.Road road)
        {
            if (roadBuilder_ == null)
            {
                if (road == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureRoadIsMutable();
                    road_.add(i, road);
                    onChanged();
                    return this;
                }
            } else
            {
                roadBuilder_.addMessage(i, road);
                return this;
            }
        }

        public Builder addRoad(ReverseGeocodingProtoBuf.Road.Builder builder)
        {
            if (roadBuilder_ == null)
            {
                ensureRoadIsMutable();
                road_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                roadBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addRoad(ReverseGeocodingProtoBuf.Road road)
        {
            if (roadBuilder_ == null)
            {
                if (road == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureRoadIsMutable();
                    road_.add(road);
                    onChanged();
                    return this;
                }
            } else
            {
                roadBuilder_.addMessage(road);
                return this;
            }
        }

        public ReverseGeocodingProtoBuf.Road.Builder addRoadBuilder()
        {
            return (ReverseGeocodingProtoBuf.Road.Builder)getRoadFieldBuilder().addBuilder(ReverseGeocodingProtoBuf.Road.getDefaultInstance());
        }

        public ReverseGeocodingProtoBuf.Road.Builder addRoadBuilder(int i)
        {
            return (ReverseGeocodingProtoBuf.Road.Builder)getRoadFieldBuilder().addBuilder(i, ReverseGeocodingProtoBuf.Road.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public ReverseGeocodingProtoBuf.Roads build()
        {
            ReverseGeocodingProtoBuf.Roads roads = buildPartial();
            if (!roads.isInitialized())
            {
                throw newUninitializedMessageException(roads);
            } else
            {
                return roads;
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

        public ReverseGeocodingProtoBuf.Roads buildPartial()
        {
            ReverseGeocodingProtoBuf.Roads roads = new ReverseGeocodingProtoBuf.Roads(this, null);
            int i = bitField0_;
            if (roadBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    road_ = Collections.unmodifiableList(road_);
                    bitField0_ = bitField0_ & -2;
                }
                roads.road_ = road_;
            } else
            {
                roads.road_ = roadBuilder_.build();
            }
            onBuilt();
            return roads;
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
            if (roadBuilder_ == null)
            {
                road_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                return this;
            } else
            {
                roadBuilder_.clear();
                return this;
            }
        }

        public Builder clearRoad()
        {
            if (roadBuilder_ == null)
            {
                road_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                onChanged();
                return this;
            } else
            {
                roadBuilder_.clear();
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

        public ReverseGeocodingProtoBuf.Roads getDefaultInstanceForType()
        {
            return ReverseGeocodingProtoBuf.Roads.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingProtoBuf.Roads.getDescriptor();
        }

        public ReverseGeocodingProtoBuf.Road getRoad(int i)
        {
            if (roadBuilder_ == null)
            {
                return (ReverseGeocodingProtoBuf.Road)road_.get(i);
            } else
            {
                return (ReverseGeocodingProtoBuf.Road)roadBuilder_.getMessage(i);
            }
        }

        public ReverseGeocodingProtoBuf.Road.Builder getRoadBuilder(int i)
        {
            return (ReverseGeocodingProtoBuf.Road.Builder)getRoadFieldBuilder().getBuilder(i);
        }

        public List getRoadBuilderList()
        {
            return getRoadFieldBuilder().getBuilderList();
        }

        public int getRoadCount()
        {
            if (roadBuilder_ == null)
            {
                return road_.size();
            } else
            {
                return roadBuilder_.getCount();
            }
        }

        public List getRoadList()
        {
            if (roadBuilder_ == null)
            {
                return Collections.unmodifiableList(road_);
            } else
            {
                return roadBuilder_.getMessageList();
            }
        }

        public ReverseGeocodingProtoBuf.RoadOrBuilder getRoadOrBuilder(int i)
        {
            if (roadBuilder_ == null)
            {
                return (ReverseGeocodingProtoBuf.RoadOrBuilder)road_.get(i);
            } else
            {
                return (ReverseGeocodingProtoBuf.RoadOrBuilder)roadBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getRoadOrBuilderList()
        {
            if (roadBuilder_ != null)
            {
                return roadBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(road_);
            }
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.access$6800();
        }

        public final boolean isInitialized()
        {
            for (int i = 0; i < getRoadCount(); i++)
            {
                if (!getRoad(i).isInitialized())
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
                    ReverseGeocodingProtoBuf.Road.Builder builder1 = ReverseGeocodingProtoBuf.Road.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addRoad(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingProtoBuf.Roads)
            {
                return mergeFrom((ReverseGeocodingProtoBuf.Roads)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(ReverseGeocodingProtoBuf.Roads roads)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (roads == ReverseGeocodingProtoBuf.Roads.getDefaultInstance())
            {
                return this;
            }
            if (roadBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!roads.road_.isEmpty())
            {
                if (road_.isEmpty())
                {
                    road_ = roads.road_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureRoadIsMutable();
                    road_.addAll(roads.road_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(roads.getUnknownFields());
            return this;
_L2:
            if (!roads.road_.isEmpty())
            {
                if (roadBuilder_.isEmpty())
                {
                    roadBuilder_.dispose();
                    roadBuilder_ = null;
                    road_ = roads.road_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getRoadFieldBuilder();
                    }
                    roadBuilder_ = repeatedfieldbuilder;
                } else
                {
                    roadBuilder_.addAllMessages(roads.road_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Builder removeRoad(int i)
        {
            if (roadBuilder_ == null)
            {
                ensureRoadIsMutable();
                road_.remove(i);
                onChanged();
                return this;
            } else
            {
                roadBuilder_.remove(i);
                return this;
            }
        }

        public Builder setRoad(int i, ReverseGeocodingProtoBuf.Road.Builder builder)
        {
            if (roadBuilder_ == null)
            {
                ensureRoadIsMutable();
                road_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                roadBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setRoad(int i, ReverseGeocodingProtoBuf.Road road)
        {
            if (roadBuilder_ == null)
            {
                if (road == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureRoadIsMutable();
                    road_.set(i, road);
                    onChanged();
                    return this;
                }
            } else
            {
                roadBuilder_.setMessage(i, road);
                return this;
            }
        }



        private Builder()
        {
            road_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            road_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z)
        {
            this(builderparent);
        }
    }


    public static final int ROAD_FIELD_NUMBER = 1;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List road_;

    public static Builder.roadBuilder_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.ds.defaultInstance getDescriptor()
    {
        return ReverseGeocodingProtoBuf.access$6700();
    }

    private void initFields()
    {
        road_ = Collections.emptyList();
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

    public defaultInstance getRoad(int i)
    {
        return (defaultInstance)road_.get(i);
    }

    public int getRoadCount()
    {
        return road_.size();
    }

    public List getRoadList()
    {
        return road_;
    }

    public Builder getRoadOrBuilder(int i)
    {
        return (Builder)road_.get(i);
    }

    public List getRoadOrBuilderList()
    {
        return road_;
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
        for (; i < road_.size(); i++)
        {
            j += CodedOutputStream.computeMessageSize(1, (MessageLite)road_.get(i));
        }

        i = getUnknownFields().getSerializedSize() + j;
        memoizedSerializedSize = i;
        return i;
    }

    protected com.google.protobuf.able internalGetFieldAccessorTable()
    {
        return ReverseGeocodingProtoBuf.access$6800();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        for (int i = 0; i < getRoadCount(); i++)
        {
            if (!getRoad(i).sInitialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
        }

        memoizedIsInitialized = 1;
        return true;
    }

    public volatile com.google.protobuf.ds newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.ds newBuilderForType(com.google.protobuf.ds ds)
    {
        return newBuilderForType(ds);
    }

    public volatile com.google.protobuf.ds newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.ds ds)
    {
        return new Builder(ds, null);
    }

    public volatile com.google.protobuf.ds toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.ds toBuilder()
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
        for (int i = 0; i < road_.size(); i++)
        {
            codedoutputstream.writeMessage(1, (MessageLite)road_.get(i));
        }

        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }




/*
    static List access$7402(Builder builder, List list)
    {
        builder.road_ = list;
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
