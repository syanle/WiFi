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
        implements ReverseGeocodingProtoBuf.ReverseGeocodingResponseOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder spatialBuilder_;
        private List spatial_;

        private ReverseGeocodingProtoBuf.ReverseGeocodingResponse buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingProtoBuf.ReverseGeocodingResponse reversegeocodingresponse = buildPartial();
            if (!reversegeocodingresponse.isInitialized())
            {
                throw newUninitializedMessageException(reversegeocodingresponse).asInvalidProtocolBufferException();
            } else
            {
                return reversegeocodingresponse;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureSpatialIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                spatial_ = new ArrayList(spatial_);
                bitField0_ = bitField0_ | 1;
            }
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.access$1000();
        }

        private RepeatedFieldBuilder getSpatialFieldBuilder()
        {
            boolean flag = true;
            if (spatialBuilder_ == null)
            {
                List list = spatial_;
                if ((bitField0_ & 1) != 1)
                {
                    flag = false;
                }
                spatialBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                spatial_ = null;
            }
            return spatialBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (buildPartial)
            {
                getSpatialFieldBuilder();
            }
        }

        public Builder addAllSpatial(Iterable iterable)
        {
            if (spatialBuilder_ == null)
            {
                ensureSpatialIsMutable();
                com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, spatial_);
                onChanged();
                return this;
            } else
            {
                spatialBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addSpatial(int i, ReverseGeocodingProtoBuf.Spatial.Builder builder)
        {
            if (spatialBuilder_ == null)
            {
                ensureSpatialIsMutable();
                spatial_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                spatialBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addSpatial(int i, ReverseGeocodingProtoBuf.Spatial spatial)
        {
            if (spatialBuilder_ == null)
            {
                if (spatial == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureSpatialIsMutable();
                    spatial_.add(i, spatial);
                    onChanged();
                    return this;
                }
            } else
            {
                spatialBuilder_.addMessage(i, spatial);
                return this;
            }
        }

        public Builder addSpatial(ReverseGeocodingProtoBuf.Spatial.Builder builder)
        {
            if (spatialBuilder_ == null)
            {
                ensureSpatialIsMutable();
                spatial_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                spatialBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addSpatial(ReverseGeocodingProtoBuf.Spatial spatial)
        {
            if (spatialBuilder_ == null)
            {
                if (spatial == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureSpatialIsMutable();
                    spatial_.add(spatial);
                    onChanged();
                    return this;
                }
            } else
            {
                spatialBuilder_.addMessage(spatial);
                return this;
            }
        }

        public ReverseGeocodingProtoBuf.Spatial.Builder addSpatialBuilder()
        {
            return (ReverseGeocodingProtoBuf.Spatial.Builder)getSpatialFieldBuilder().addBuilder(ReverseGeocodingProtoBuf.Spatial.getDefaultInstance());
        }

        public ReverseGeocodingProtoBuf.Spatial.Builder addSpatialBuilder(int i)
        {
            return (ReverseGeocodingProtoBuf.Spatial.Builder)getSpatialFieldBuilder().addBuilder(i, ReverseGeocodingProtoBuf.Spatial.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public ReverseGeocodingProtoBuf.ReverseGeocodingResponse build()
        {
            ReverseGeocodingProtoBuf.ReverseGeocodingResponse reversegeocodingresponse = buildPartial();
            if (!reversegeocodingresponse.isInitialized())
            {
                throw newUninitializedMessageException(reversegeocodingresponse);
            } else
            {
                return reversegeocodingresponse;
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

        public ReverseGeocodingProtoBuf.ReverseGeocodingResponse buildPartial()
        {
            ReverseGeocodingProtoBuf.ReverseGeocodingResponse reversegeocodingresponse = new ReverseGeocodingProtoBuf.ReverseGeocodingResponse(this, null);
            int i = bitField0_;
            if (spatialBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    spatial_ = Collections.unmodifiableList(spatial_);
                    bitField0_ = bitField0_ & -2;
                }
                reversegeocodingresponse.spatial_ = spatial_;
            } else
            {
                reversegeocodingresponse.spatial_ = spatialBuilder_.build();
            }
            onBuilt();
            return reversegeocodingresponse;
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
            if (spatialBuilder_ == null)
            {
                spatial_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                return this;
            } else
            {
                spatialBuilder_.clear();
                return this;
            }
        }

        public Builder clearSpatial()
        {
            if (spatialBuilder_ == null)
            {
                spatial_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                onChanged();
                return this;
            } else
            {
                spatialBuilder_.clear();
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

        public ReverseGeocodingProtoBuf.ReverseGeocodingResponse getDefaultInstanceForType()
        {
            return ReverseGeocodingProtoBuf.ReverseGeocodingResponse.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingProtoBuf.ReverseGeocodingResponse.getDescriptor();
        }

        public ReverseGeocodingProtoBuf.Spatial getSpatial(int i)
        {
            if (spatialBuilder_ == null)
            {
                return (ReverseGeocodingProtoBuf.Spatial)spatial_.get(i);
            } else
            {
                return (ReverseGeocodingProtoBuf.Spatial)spatialBuilder_.getMessage(i);
            }
        }

        public ReverseGeocodingProtoBuf.Spatial.Builder getSpatialBuilder(int i)
        {
            return (ReverseGeocodingProtoBuf.Spatial.Builder)getSpatialFieldBuilder().getBuilder(i);
        }

        public List getSpatialBuilderList()
        {
            return getSpatialFieldBuilder().getBuilderList();
        }

        public int getSpatialCount()
        {
            if (spatialBuilder_ == null)
            {
                return spatial_.size();
            } else
            {
                return spatialBuilder_.getCount();
            }
        }

        public List getSpatialList()
        {
            if (spatialBuilder_ == null)
            {
                return Collections.unmodifiableList(spatial_);
            } else
            {
                return spatialBuilder_.getMessageList();
            }
        }

        public ReverseGeocodingProtoBuf.SpatialOrBuilder getSpatialOrBuilder(int i)
        {
            if (spatialBuilder_ == null)
            {
                return (ReverseGeocodingProtoBuf.SpatialOrBuilder)spatial_.get(i);
            } else
            {
                return (ReverseGeocodingProtoBuf.SpatialOrBuilder)spatialBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getSpatialOrBuilderList()
        {
            if (spatialBuilder_ != null)
            {
                return spatialBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(spatial_);
            }
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.access$1100();
        }

        public final boolean isInitialized()
        {
            for (int i = 0; i < getSpatialCount(); i++)
            {
                if (!getSpatial(i).isInitialized())
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
                    ReverseGeocodingProtoBuf.Spatial.Builder builder1 = ReverseGeocodingProtoBuf.Spatial.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addSpatial(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingProtoBuf.ReverseGeocodingResponse)
            {
                return mergeFrom((ReverseGeocodingProtoBuf.ReverseGeocodingResponse)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(ReverseGeocodingProtoBuf.ReverseGeocodingResponse reversegeocodingresponse)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (reversegeocodingresponse == ReverseGeocodingProtoBuf.ReverseGeocodingResponse.getDefaultInstance())
            {
                return this;
            }
            if (spatialBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!reversegeocodingresponse.spatial_.isEmpty())
            {
                if (spatial_.isEmpty())
                {
                    spatial_ = reversegeocodingresponse.spatial_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureSpatialIsMutable();
                    spatial_.addAll(reversegeocodingresponse.spatial_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(reversegeocodingresponse.getUnknownFields());
            return this;
_L2:
            if (!reversegeocodingresponse.spatial_.isEmpty())
            {
                if (spatialBuilder_.isEmpty())
                {
                    spatialBuilder_.dispose();
                    spatialBuilder_ = null;
                    spatial_ = reversegeocodingresponse.spatial_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getSpatialFieldBuilder();
                    }
                    spatialBuilder_ = repeatedfieldbuilder;
                } else
                {
                    spatialBuilder_.addAllMessages(reversegeocodingresponse.spatial_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Builder removeSpatial(int i)
        {
            if (spatialBuilder_ == null)
            {
                ensureSpatialIsMutable();
                spatial_.remove(i);
                onChanged();
                return this;
            } else
            {
                spatialBuilder_.remove(i);
                return this;
            }
        }

        public Builder setSpatial(int i, ReverseGeocodingProtoBuf.Spatial.Builder builder)
        {
            if (spatialBuilder_ == null)
            {
                ensureSpatialIsMutable();
                spatial_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                spatialBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setSpatial(int i, ReverseGeocodingProtoBuf.Spatial spatial)
        {
            if (spatialBuilder_ == null)
            {
                if (spatial == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureSpatialIsMutable();
                    spatial_.set(i, spatial);
                    onChanged();
                    return this;
                }
            } else
            {
                spatialBuilder_.setMessage(i, spatial);
                return this;
            }
        }



        private Builder()
        {
            spatial_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            spatial_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z)
        {
            this(builderparent);
        }
    }


    public static final int SPATIAL_FIELD_NUMBER = 1;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List spatial_;

    public static Builder.spatialBuilder_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.se.defaultInstance getDescriptor()
    {
        return ReverseGeocodingProtoBuf.access$1000();
    }

    private void initFields()
    {
        spatial_ = Collections.emptyList();
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

    public int getSerializedSize()
    {
        int i = memoizedSerializedSize;
        if (i != -1)
        {
            return i;
        }
        i = 0;
        int j = 0;
        for (; i < spatial_.size(); i++)
        {
            j += CodedOutputStream.computeMessageSize(1, (MessageLite)spatial_.get(i));
        }

        i = getUnknownFields().getSerializedSize() + j;
        memoizedSerializedSize = i;
        return i;
    }

    public memoizedSerializedSize getSpatial(int i)
    {
        return (memoizedSerializedSize)spatial_.get(i);
    }

    public int getSpatialCount()
    {
        return spatial_.size();
    }

    public List getSpatialList()
    {
        return spatial_;
    }

    public spatial_ getSpatialOrBuilder(int i)
    {
        return (spatial_)spatial_.get(i);
    }

    public List getSpatialOrBuilderList()
    {
        return spatial_;
    }

    protected com.google.protobuf.se internalGetFieldAccessorTable()
    {
        return ReverseGeocodingProtoBuf.access$1100();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        for (int i = 0; i < getSpatialCount(); i++)
        {
            if (!getSpatial(i).getSpatial())
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

    protected volatile com.google.protobuf.se newBuilderForType(com.google.protobuf.se se)
    {
        return newBuilderForType(se);
    }

    public volatile com.google.protobuf.se newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.se se)
    {
        return new Builder(se, null);
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
        for (int i = 0; i < spatial_.size(); i++)
        {
            codedoutputstream.writeMessage(1, (MessageLite)spatial_.get(i));
        }

        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }




/*
    static List access$1702(Builder builder, List list)
    {
        builder.spatial_ = list;
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
