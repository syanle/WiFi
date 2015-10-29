// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

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

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            GeocodingProtoBuf, c

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements GeocodingProtoBuf.GeocodingOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder poiBuilder_;
        private List poi_;

        private GeocodingProtoBuf.Geocoding buildParsed()
            throws InvalidProtocolBufferException
        {
            GeocodingProtoBuf.Geocoding geocoding = buildPartial();
            if (!geocoding.isInitialized())
            {
                throw newUninitializedMessageException(geocoding).asInvalidProtocolBufferException();
            } else
            {
                return geocoding;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensurePoiIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                poi_ = new ArrayList(poi_);
                bitField0_ = bitField0_ | 1;
            }
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.access$2300();
        }

        private RepeatedFieldBuilder getPoiFieldBuilder()
        {
            boolean flag = true;
            if (poiBuilder_ == null)
            {
                List list = poi_;
                if ((bitField0_ & 1) != 1)
                {
                    flag = false;
                }
                poiBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                poi_ = null;
            }
            return poiBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (buildPartial)
            {
                getPoiFieldBuilder();
            }
        }

        public Builder addAllPoi(Iterable iterable)
        {
            if (poiBuilder_ == null)
            {
                ensurePoiIsMutable();
                com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, poi_);
                onChanged();
                return this;
            } else
            {
                poiBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addPoi(int i, GeocodingProtoBuf.GeoPOI.Builder builder)
        {
            if (poiBuilder_ == null)
            {
                ensurePoiIsMutable();
                poi_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                poiBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addPoi(int i, GeocodingProtoBuf.GeoPOI geopoi)
        {
            if (poiBuilder_ == null)
            {
                if (geopoi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensurePoiIsMutable();
                    poi_.add(i, geopoi);
                    onChanged();
                    return this;
                }
            } else
            {
                poiBuilder_.addMessage(i, geopoi);
                return this;
            }
        }

        public Builder addPoi(GeocodingProtoBuf.GeoPOI.Builder builder)
        {
            if (poiBuilder_ == null)
            {
                ensurePoiIsMutable();
                poi_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                poiBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addPoi(GeocodingProtoBuf.GeoPOI geopoi)
        {
            if (poiBuilder_ == null)
            {
                if (geopoi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensurePoiIsMutable();
                    poi_.add(geopoi);
                    onChanged();
                    return this;
                }
            } else
            {
                poiBuilder_.addMessage(geopoi);
                return this;
            }
        }

        public GeocodingProtoBuf.GeoPOI.Builder addPoiBuilder()
        {
            return (GeocodingProtoBuf.GeoPOI.Builder)getPoiFieldBuilder().addBuilder(GeocodingProtoBuf.GeoPOI.getDefaultInstance());
        }

        public GeocodingProtoBuf.GeoPOI.Builder addPoiBuilder(int i)
        {
            return (GeocodingProtoBuf.GeoPOI.Builder)getPoiFieldBuilder().addBuilder(i, GeocodingProtoBuf.GeoPOI.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public GeocodingProtoBuf.Geocoding build()
        {
            GeocodingProtoBuf.Geocoding geocoding = buildPartial();
            if (!geocoding.isInitialized())
            {
                throw newUninitializedMessageException(geocoding);
            } else
            {
                return geocoding;
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

        public GeocodingProtoBuf.Geocoding buildPartial()
        {
            GeocodingProtoBuf.Geocoding geocoding = new GeocodingProtoBuf.Geocoding(this, null);
            int i = bitField0_;
            if (poiBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    poi_ = Collections.unmodifiableList(poi_);
                    bitField0_ = bitField0_ & -2;
                }
                geocoding.poi_ = poi_;
            } else
            {
                geocoding.poi_ = poiBuilder_.build();
            }
            onBuilt();
            return geocoding;
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
            if (poiBuilder_ == null)
            {
                poi_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                return this;
            } else
            {
                poiBuilder_.clear();
                return this;
            }
        }

        public Builder clearPoi()
        {
            if (poiBuilder_ == null)
            {
                poi_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                onChanged();
                return this;
            } else
            {
                poiBuilder_.clear();
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

        public GeocodingProtoBuf.Geocoding getDefaultInstanceForType()
        {
            return GeocodingProtoBuf.Geocoding.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return GeocodingProtoBuf.Geocoding.getDescriptor();
        }

        public GeocodingProtoBuf.GeoPOI getPoi(int i)
        {
            if (poiBuilder_ == null)
            {
                return (GeocodingProtoBuf.GeoPOI)poi_.get(i);
            } else
            {
                return (GeocodingProtoBuf.GeoPOI)poiBuilder_.getMessage(i);
            }
        }

        public GeocodingProtoBuf.GeoPOI.Builder getPoiBuilder(int i)
        {
            return (GeocodingProtoBuf.GeoPOI.Builder)getPoiFieldBuilder().getBuilder(i);
        }

        public List getPoiBuilderList()
        {
            return getPoiFieldBuilder().getBuilderList();
        }

        public int getPoiCount()
        {
            if (poiBuilder_ == null)
            {
                return poi_.size();
            } else
            {
                return poiBuilder_.getCount();
            }
        }

        public List getPoiList()
        {
            if (poiBuilder_ == null)
            {
                return Collections.unmodifiableList(poi_);
            } else
            {
                return poiBuilder_.getMessageList();
            }
        }

        public GeocodingProtoBuf.GeoPOIOrBuilder getPoiOrBuilder(int i)
        {
            if (poiBuilder_ == null)
            {
                return (GeocodingProtoBuf.GeoPOIOrBuilder)poi_.get(i);
            } else
            {
                return (GeocodingProtoBuf.GeoPOIOrBuilder)poiBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getPoiOrBuilderList()
        {
            if (poiBuilder_ != null)
            {
                return poiBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(poi_);
            }
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.access$2400();
        }

        public final boolean isInitialized()
        {
            for (int i = 0; i < getPoiCount(); i++)
            {
                if (!getPoi(i).isInitialized())
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
                    GeocodingProtoBuf.GeoPOI.Builder builder1 = GeocodingProtoBuf.GeoPOI.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addPoi(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof GeocodingProtoBuf.Geocoding)
            {
                return mergeFrom((GeocodingProtoBuf.Geocoding)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(GeocodingProtoBuf.Geocoding geocoding)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (geocoding == GeocodingProtoBuf.Geocoding.getDefaultInstance())
            {
                return this;
            }
            if (poiBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!geocoding.poi_.isEmpty())
            {
                if (poi_.isEmpty())
                {
                    poi_ = geocoding.poi_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensurePoiIsMutable();
                    poi_.addAll(geocoding.poi_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(geocoding.getUnknownFields());
            return this;
_L2:
            if (!geocoding.poi_.isEmpty())
            {
                if (poiBuilder_.isEmpty())
                {
                    poiBuilder_.dispose();
                    poiBuilder_ = null;
                    poi_ = geocoding.poi_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getPoiFieldBuilder();
                    }
                    poiBuilder_ = repeatedfieldbuilder;
                } else
                {
                    poiBuilder_.addAllMessages(geocoding.poi_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Builder removePoi(int i)
        {
            if (poiBuilder_ == null)
            {
                ensurePoiIsMutable();
                poi_.remove(i);
                onChanged();
                return this;
            } else
            {
                poiBuilder_.remove(i);
                return this;
            }
        }

        public Builder setPoi(int i, GeocodingProtoBuf.GeoPOI.Builder builder)
        {
            if (poiBuilder_ == null)
            {
                ensurePoiIsMutable();
                poi_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                poiBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setPoi(int i, GeocodingProtoBuf.GeoPOI geopoi)
        {
            if (poiBuilder_ == null)
            {
                if (geopoi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensurePoiIsMutable();
                    poi_.set(i, geopoi);
                    onChanged();
                    return this;
                }
            } else
            {
                poiBuilder_.setMessage(i, geopoi);
                return this;
            }
        }



        private Builder()
        {
            poi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            poi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c)
        {
            this(builderparent);
        }
    }


    public static final int POI_FIELD_NUMBER = 1;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List poi_;

    public static Builder.poiBuilder_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.coding.defaultInstance getDescriptor()
    {
        return GeocodingProtoBuf.access$2300();
    }

    private void initFields()
    {
        poi_ = Collections.emptyList();
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

    public defaultInstance getPoi(int i)
    {
        return (defaultInstance)poi_.get(i);
    }

    public int getPoiCount()
    {
        return poi_.size();
    }

    public List getPoiList()
    {
        return poi_;
    }

    public ilder getPoiOrBuilder(int i)
    {
        return (ilder)poi_.get(i);
    }

    public List getPoiOrBuilderList()
    {
        return poi_;
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
        for (; i < poi_.size(); i++)
        {
            j += CodedOutputStream.computeMessageSize(1, (MessageLite)poi_.get(i));
        }

        i = getUnknownFields().getSerializedSize() + j;
        memoizedSerializedSize = i;
        return i;
    }

    protected com.google.protobuf.orTable internalGetFieldAccessorTable()
    {
        return GeocodingProtoBuf.access$2400();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        for (int i = 0; i < getPoiCount(); i++)
        {
            if (!getPoi(i).nitialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
        }

        memoizedIsInitialized = 1;
        return true;
    }

    public volatile com.google.protobuf.coding newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.nt newBuilderForType(com.google.protobuf.nt nt)
    {
        return newBuilderForType(nt);
    }

    public volatile com.google.protobuf.coding newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.nt nt)
    {
        return new Builder(nt, null);
    }

    public volatile com.google.protobuf.coding toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.coding toBuilder()
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
        for (int i = 0; i < poi_.size(); i++)
        {
            codedoutputstream.writeMessage(1, (MessageLite)poi_.get(i));
        }

        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }




/*
    static List access$3002(Builder builder, List list)
    {
        builder.poi_ = list;
        return list;
    }

*/


    private Builder(Builder builder)
    {
        super(builder);
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    Builder(Builder builder, c c)
    {
        this(builder);
    }

    private Builder(boolean flag)
    {
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }
}
