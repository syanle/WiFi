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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            GeocodingProtoBuf, c

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements GeocodingProtoBuf.GeocodingResponseOrBuilder
    {

        private int bitField0_;
        private int count_;
        private SingleFieldBuilder geocodingBuilder_;
        private GeocodingProtoBuf.Geocoding geocoding_;
        private SingleFieldBuilder spellcorrectBuilder_;
        private com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect spellcorrect_;

        private GeocodingProtoBuf.GeocodingResponse buildParsed()
            throws InvalidProtocolBufferException
        {
            GeocodingProtoBuf.GeocodingResponse geocodingresponse = buildPartial();
            if (!geocodingresponse.isInitialized())
            {
                throw newUninitializedMessageException(geocodingresponse).asInvalidProtocolBufferException();
            } else
            {
                return geocodingresponse;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.access$1200();
        }

        private SingleFieldBuilder getGeocodingFieldBuilder()
        {
            if (geocodingBuilder_ == null)
            {
                geocodingBuilder_ = new SingleFieldBuilder(geocoding_, getParentForChildren(), isClean());
                geocoding_ = null;
            }
            return geocodingBuilder_;
        }

        private SingleFieldBuilder getSpellcorrectFieldBuilder()
        {
            if (spellcorrectBuilder_ == null)
            {
                spellcorrectBuilder_ = new SingleFieldBuilder(spellcorrect_, getParentForChildren(), isClean());
                spellcorrect_ = null;
            }
            return spellcorrectBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (
// JavaClassFileOutputException: get_constant: invalid tag

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public GeocodingProtoBuf.GeocodingResponse build()
        {
            GeocodingProtoBuf.GeocodingResponse geocodingresponse = buildPartial();
            if (!geocodingresponse.isInitialized())
            {
                throw newUninitializedMessageException(geocodingresponse);
            } else
            {
                return geocodingresponse;
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

        public GeocodingProtoBuf.GeocodingResponse buildPartial()
        {
            int i = 1;
            GeocodingProtoBuf.GeocodingResponse geocodingresponse = new GeocodingResponse(this, null);
            int k = bitField0_;
            int j;
            if ((k & 1) != 1)
            {
                i = 0;
            }
            geocodingresponse.count_ = count_;
            if ((k & 2) == 2)
            {
                i |= 2;
            }
            if (geocodingBuilder_ == null)
            {
                geocodingresponse.geocoding_ = geocoding_;
            } else
            {
                geocodingresponse.geocoding_ = (GeocodingProtoBuf.Geocoding)geocodingBuilder_.build();
            }
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            if (spellcorrectBuilder_ == null)
            {
                geocodingresponse.spellcorrect_ = spellcorrect_;
            } else
            {
                geocodingresponse.spellcorrect_ = (com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect)spellcorrectBuilder_.build();
            }
            geocodingresponse.bitField0_ = j;
            onBuilt();
            return geocodingresponse;
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
            clear();
            count_ = 0;
            bitField0_ = bitField0_ & -2;
            if (geocodingBuilder_ == null)
            {
                geocoding_ = GeocodingProtoBuf.Geocoding.getDefaultInstance();
            } else
            {
                geocodingBuilder_.clear();
            }
            bitField0_ = bitField0_ & -3;
            if (spellcorrectBuilder_ == null)
            {
                spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance();
            } else
            {
                spellcorrectBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
            return this;
        }

        public Builder clearCount()
        {
            bitField0_ = bitField0_ & -2;
            count_ = 0;
            onChanged();
            return this;
        }

        public Builder clearGeocoding()
        {
            if (geocodingBuilder_ == null)
            {
                geocoding_ = GeocodingProtoBuf.Geocoding.getDefaultInstance();
                onChanged();
            } else
            {
                geocodingBuilder_.clear();
            }
            bitField0_ = bitField0_ & -3;
            return this;
        }

        public Builder clearSpellcorrect()
        {
            if (spellcorrectBuilder_ == null)
            {
                spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance();
                onChanged();
            } else
            {
                spellcorrectBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
            return this;
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

        public int getCount()
        {
            return count_;
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public GeocodingProtoBuf.GeocodingResponse getDefaultInstanceForType()
        {
            return GeocodingProtoBuf.GeocodingResponse.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return GeocodingProtoBuf.GeocodingResponse.getDescriptor();
        }

        public GeocodingProtoBuf.Geocoding getGeocoding()
        {
            if (geocodingBuilder_ == null)
            {
                return geocoding_;
            } else
            {
                return (GeocodingProtoBuf.Geocoding)geocodingBuilder_.getMessage();
            }
        }

        public GeocodingProtoBuf.Geocoding.Builder getGeocodingBuilder()
        {
            bitField0_ = bitField0_ | 2;
            onChanged();
            return (GeocodingProtoBuf.Geocoding.Builder)getGeocodingFieldBuilder().getBuilder();
        }

        public GeocodingProtoBuf.GeocodingOrBuilder getGeocodingOrBuilder()
        {
            if (geocodingBuilder_ != null)
            {
                return (GeocodingProtoBuf.GeocodingOrBuilder)geocodingBuilder_.getMessageOrBuilder();
            } else
            {
                return geocoding_;
            }
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect getSpellcorrect()
        {
            if (spellcorrectBuilder_ == null)
            {
                return spellcorrect_;
            } else
            {
                return (com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect)spellcorrectBuilder_.getMessage();
            }
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.Builder getSpellcorrectBuilder()
        {
            bitField0_ = bitField0_ | 4;
            onChanged();
            return (com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.Builder)getSpellcorrectFieldBuilder().getBuilder();
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.SpellcorrectOrBuilder getSpellcorrectOrBuilder()
        {
            if (spellcorrectBuilder_ != null)
            {
                return (com.mapabc.mapapi.core.CommonProtoBuf.SpellcorrectOrBuilder)spellcorrectBuilder_.getMessageOrBuilder();
            } else
            {
                return spellcorrect_;
            }
        }

        public boolean hasCount()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasGeocoding()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasSpellcorrect()
        {
            return (bitField0_ & 4) == 4;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.access$1300();
        }

        public final boolean isInitialized()
        {
            return !hasGeocoding() || getGeocoding().isInitialized();
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

                case 8: // '\b'
                    bitField0_ = bitField0_ | 1;
                    count_ = codedinputstream.readInt32();
                    break;

                case 18: // '\022'
                    GeocodingProtoBuf.Geocoding.Builder builder1 = GeocodingProtoBuf.Geocoding.newBuilder();
                    if (hasGeocoding())
                    {
                        builder1.mergeFrom(getGeocoding());
                    }
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    setGeocoding(builder1.buildPartial());
                    break;

                case 26: // '\032'
                    com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.Builder builder2 = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.newBuilder();
                    if (hasSpellcorrect())
                    {
                        builder2.mergeFrom(getSpellcorrect());
                    }
                    codedinputstream.readMessage(builder2, extensionregistrylite);
                    setSpellcorrect(builder2.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof GeocodingProtoBuf.GeocodingResponse)
            {
                return mergeFrom((GeocodingProtoBuf.GeocodingResponse)message);
            } else
            {
                mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(GeocodingProtoBuf.GeocodingResponse geocodingresponse)
        {
            if (geocodingresponse == GeocodingProtoBuf.GeocodingResponse.getDefaultInstance())
            {
                return this;
            }
            if (geocodingresponse.hasCount())
            {
                setCount(geocodingresponse.getCount());
            }
            if (geocodingresponse.hasGeocoding())
            {
                mergeGeocoding(geocodingresponse.getGeocoding());
            }
            if (geocodingresponse.hasSpellcorrect())
            {
                mergeSpellcorrect(geocodingresponse.getSpellcorrect());
            }
            mergeUnknownFields(geocodingresponse.getUnknownFields());
            return this;
        }

        public Builder mergeGeocoding(GeocodingProtoBuf.Geocoding geocoding)
        {
            if (geocodingBuilder_ == null)
            {
                if ((bitField0_ & 2) == 2 && geocoding_ != GeocodingProtoBuf.Geocoding.getDefaultInstance())
                {
                    geocoding_ = GeocodingProtoBuf.Geocoding.newBuilder(geocoding_).mergeFrom(geocoding).buildPartial();
                } else
                {
                    geocoding_ = geocoding;
                }
                onChanged();
            } else
            {
                geocodingBuilder_.mergeFrom(geocoding);
            }
            bitField0_ = bitField0_ | 2;
            return this;
        }

        public Builder mergeSpellcorrect(com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect spellcorrect)
        {
            if (spellcorrectBuilder_ == null)
            {
                if ((bitField0_ & 4) == 4 && spellcorrect_ != com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance())
                {
                    spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.newBuilder(spellcorrect_).mergeFrom(spellcorrect).buildPartial();
                } else
                {
                    spellcorrect_ = spellcorrect;
                }
                onChanged();
            } else
            {
                spellcorrectBuilder_.mergeFrom(spellcorrect);
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }

        public Builder setCount(int i)
        {
            bitField0_ = bitField0_ | 1;
            count_ = i;
            onChanged();
            return this;
        }

        public Builder setGeocoding(GeocodingProtoBuf.Geocoding.Builder builder)
        {
            if (geocodingBuilder_ == null)
            {
                geocoding_ = builder.build();
                onChanged();
            } else
            {
                geocodingBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 2;
            return this;
        }

        public Builder setGeocoding(GeocodingProtoBuf.Geocoding geocoding)
        {
            if (geocodingBuilder_ == null)
            {
                if (geocoding == null)
                {
                    throw new NullPointerException();
                }
                geocoding_ = geocoding;
                onChanged();
            } else
            {
                geocodingBuilder_.setMessage(geocoding);
            }
            bitField0_ = bitField0_ | 2;
            return this;
        }

        public Builder setSpellcorrect(com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.Builder builder)
        {
            if (spellcorrectBuilder_ == null)
            {
                spellcorrect_ = builder.build();
                onChanged();
            } else
            {
                spellcorrectBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }

        public Builder setSpellcorrect(com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect spellcorrect)
        {
            if (spellcorrectBuilder_ == null)
            {
                if (spellcorrect == null)
                {
                    throw new NullPointerException();
                }
                spellcorrect_ = spellcorrect;
                onChanged();
            } else
            {
                spellcorrectBuilder_.setMessage(spellcorrect);
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }



        private Builder()
        {
            geocoding_ = GeocodingProtoBuf.Geocoding.getDefaultInstance();
            spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            geocoding_ = GeocodingProtoBuf.Geocoding.getDefaultInstance();
            spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c)
        {
            this(builderparent);
        }
    }


    public static final int COUNT_FIELD_NUMBER = 1;
    public static final int GEOCODING_FIELD_NUMBER = 2;
    public static final int SPELLCORRECT_FIELD_NUMBER = 3;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int count_;
    private initFields geocoding_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private com.mapabc.mapapi.core.nse spellcorrect_;

    public static Builder.bitField0_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.sponse.defaultInstance getDescriptor()
    {
        return GeocodingProtoBuf.access$1200();
    }

    private void initFields()
    {
        count_ = 0;
        geocoding_ = ltInstance();
        spellcorrect_ = com.mapabc.mapapi.core.ltInstance();
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

    public int getCount()
    {
        return count_;
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

    public defaultInstance getGeocoding()
    {
        return geocoding_;
    }

    public  getGeocodingOrBuilder()
    {
        return geocoding_;
    }

    public int getSerializedSize()
    {
        int i = memoizedSerializedSize;
        if (i != -1)
        {
            return i;
        }
        int j = 0;
        if ((bitField0_ & 1) == 1)
        {
            j = 0 + CodedOutputStream.computeInt32Size(1, count_);
        }
        i = j;
        if ((bitField0_ & 2) == 2)
        {
            i = j + CodedOutputStream.computeMessageSize(2, geocoding_);
        }
        j = i;
        if ((bitField0_ & 4) == 4)
        {
            j = i + CodedOutputStream.computeMessageSize(3, spellcorrect_);
        }
        i = j + getUnknownFields().getSerializedSize();
        memoizedSerializedSize = i;
        return i;
    }

    public com.mapabc.mapapi.core.nse getSpellcorrect()
    {
        return spellcorrect_;
    }

    public com.mapabc.mapapi.core. getSpellcorrectOrBuilder()
    {
        return spellcorrect_;
    }

    public boolean hasCount()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasGeocoding()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasSpellcorrect()
    {
        return (bitField0_ & 4) == 4;
    }

    protected com.google.protobuf.sponse internalGetFieldAccessorTable()
    {
        return GeocodingProtoBuf.access$1300();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        if (hasGeocoding() && !getGeocoding().lized())
        {
            memoizedIsInitialized = 0;
            return false;
        } else
        {
            memoizedIsInitialized = 1;
            return true;
        }
    }

    public volatile com.google.protobuf.sponse newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.sponse newBuilderForType(com.google.protobuf.sponse sponse)
    {
        return newBuilderForType(sponse);
    }

    public volatile com.google.protobuf.sponse newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.sponse sponse)
    {
        return new Builder(sponse, null);
    }

    public volatile com.google.protobuf.sponse toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.sponse toBuilder()
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
        if ((bitField0_ & 1) == 1)
        {
            codedoutputstream.writeInt32(1, count_);
        }
        if ((bitField0_ & 2) == 2)
        {
            codedoutputstream.writeMessage(2, geocoding_);
        }
        if ((bitField0_ & 4) == 4)
        {
            codedoutputstream.writeMessage(3, spellcorrect_);
        }
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }



/*
    static int access$1902(Builder builder, int i)
    {
        builder.count_ = i;
        return i;
    }

*/


/*
    static count_ access$2002(count_ count_1, count_ count_2)
    {
        count_1.geocoding_ = count_2;
        return count_2;
    }

*/


/*
    static com.mapabc.mapapi.core.nse access$2102(geocoding_ geocoding_1, com.mapabc.mapapi.core.nse nse)
    {
        geocoding_1.spellcorrect_ = nse;
        return nse;
    }

*/


/*
    static int access$2202(spellcorrect_ spellcorrect_1, int i)
    {
        spellcorrect_1.bitField0_ = i;
        return i;
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
