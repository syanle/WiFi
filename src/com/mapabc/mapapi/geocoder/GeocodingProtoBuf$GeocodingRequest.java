// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Internal;
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
        implements GeocodingProtoBuf.GeocodingRequestOrBuilder
    {

        private Object address_;
        private int bitField0_;
        private SingleFieldBuilder commonBuilder_;
        private com.mapabc.mapapi.core.CommonProtoBuf.Common common_;
        private Object poiNumber_;
        private Object ver_;

        private GeocodingProtoBuf.GeocodingRequest buildParsed()
            throws InvalidProtocolBufferException
        {
            GeocodingProtoBuf.GeocodingRequest geocodingrequest = buildPartial();
            if (!geocodingrequest.isInitialized())
            {
                throw newUninitializedMessageException(geocodingrequest).asInvalidProtocolBufferException();
            } else
            {
                return geocodingrequest;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private SingleFieldBuilder getCommonFieldBuilder()
        {
            if (commonBuilder_ == null)
            {
                commonBuilder_ = new SingleFieldBuilder(common_, getParentForChildren(), isClean());
                common_ = null;
            }
            return commonBuilder_;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.access$000();
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

        public GeocodingProtoBuf.GeocodingRequest build()
        {
            GeocodingProtoBuf.GeocodingRequest geocodingrequest = buildPartial();
            if (!geocodingrequest.isInitialized())
            {
                throw newUninitializedMessageException(geocodingrequest);
            } else
            {
                return geocodingrequest;
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

        public GeocodingProtoBuf.GeocodingRequest buildPartial()
        {
            GeocodingProtoBuf.GeocodingRequest geocodingrequest = new GeocodingRequest(this, null);
            int k = bitField0_;
            int j = 0;
            if ((k & 1) == 1)
            {
                j = 1;
            }
            int i;
            if (commonBuilder_ == null)
            {
                geocodingrequest.common_ = common_;
            } else
            {
                geocodingrequest.common_ = (com.mapabc.mapapi.core.CommonProtoBuf.Common)commonBuilder_.build();
            }
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            geocodingrequest.address_ = address_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            geocodingrequest.poiNumber_ = poiNumber_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            geocodingrequest.ver_ = ver_;
            geocodingrequest.bitField0_ = i;
            onBuilt();
            return geocodingrequest;
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
            if (commonBuilder_ == null)
            {
                common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance();
            } else
            {
                commonBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            address_ = "";
            bitField0_ = bitField0_ & -3;
            poiNumber_ = "";
            bitField0_ = bitField0_ & -5;
            ver_ = "";
            bitField0_ = bitField0_ & -9;
            return this;
        }

        public Builder clearAddress()
        {
            bitField0_ = bitField0_ & -3;
            address_ = GeocodingProtoBuf.GeocodingRequest.getDefaultInstance().getAddress();
            onChanged();
            return this;
        }

        public Builder clearCommon()
        {
            if (commonBuilder_ == null)
            {
                common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance();
                onChanged();
            } else
            {
                commonBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            return this;
        }

        public Builder clearPoiNumber()
        {
            bitField0_ = bitField0_ & -5;
            poiNumber_ = GeocodingProtoBuf.GeocodingRequest.getDefaultInstance().getPoiNumber();
            onChanged();
            return this;
        }

        public Builder clearVer()
        {
            bitField0_ = bitField0_ & -9;
            ver_ = GeocodingProtoBuf.GeocodingRequest.getDefaultInstance().getVer();
            onChanged();
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

        public String getAddress()
        {
            Object obj = address_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                address_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.Common getCommon()
        {
            if (commonBuilder_ == null)
            {
                return common_;
            } else
            {
                return (com.mapabc.mapapi.core.CommonProtoBuf.Common)commonBuilder_.getMessage();
            }
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder getCommonBuilder()
        {
            bitField0_ = bitField0_ | 1;
            onChanged();
            return (com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder)getCommonFieldBuilder().getBuilder();
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.CommonOrBuilder getCommonOrBuilder()
        {
            if (commonBuilder_ != null)
            {
                return (com.mapabc.mapapi.core.CommonProtoBuf.CommonOrBuilder)commonBuilder_.getMessageOrBuilder();
            } else
            {
                return common_;
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

        public GeocodingProtoBuf.GeocodingRequest getDefaultInstanceForType()
        {
            return GeocodingProtoBuf.GeocodingRequest.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return GeocodingProtoBuf.GeocodingRequest.getDescriptor();
        }

        public String getPoiNumber()
        {
            Object obj = poiNumber_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                poiNumber_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getVer()
        {
            Object obj = ver_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                ver_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public boolean hasAddress()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasCommon()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasPoiNumber()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasVer()
        {
            return (bitField0_ & 8) == 8;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.access$100();
        }

        public final boolean isInitialized()
        {
            while (!hasCommon() || !hasAddress() || !getCommon().isInitialized()) 
            {
                return false;
            }
            return true;
        }

        public Builder mergeCommon(com.mapabc.mapapi.core.CommonProtoBuf.Common common)
        {
            if (commonBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1 && common_ != com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance())
                {
                    common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.newBuilder(common_).mergeFrom(common).buildPartial();
                } else
                {
                    common_ = common;
                }
                onChanged();
            } else
            {
                commonBuilder_.mergeFrom(common);
            }
            bitField0_ = bitField0_ | 1;
            return this;
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
                    com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder builder1 = com.mapabc.mapapi.core.CommonProtoBuf.Common.newBuilder();
                    if (hasCommon())
                    {
                        builder1.mergeFrom(getCommon());
                    }
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    setCommon(builder1.buildPartial());
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 2;
                    address_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    poiNumber_ = codedinputstream.readBytes();
                    break;

                case 34: // '"'
                    bitField0_ = bitField0_ | 8;
                    ver_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof GeocodingProtoBuf.GeocodingRequest)
            {
                return mergeFrom((GeocodingProtoBuf.GeocodingRequest)message);
            } else
            {
                mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(GeocodingProtoBuf.GeocodingRequest geocodingrequest)
        {
            if (geocodingrequest == GeocodingProtoBuf.GeocodingRequest.getDefaultInstance())
            {
                return this;
            }
            if (geocodingrequest.hasCommon())
            {
                mergeCommon(geocodingrequest.getCommon());
            }
            if (geocodingrequest.hasAddress())
            {
                setAddress(geocodingrequest.getAddress());
            }
            if (geocodingrequest.hasPoiNumber())
            {
                setPoiNumber(geocodingrequest.getPoiNumber());
            }
            if (geocodingrequest.hasVer())
            {
                setVer(geocodingrequest.getVer());
            }
            mergeUnknownFields(geocodingrequest.getUnknownFields());
            return this;
        }

        public Builder setAddress(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                address_ = s;
                onChanged();
                return this;
            }
        }

        void setAddress(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            address_ = bytestring;
            onChanged();
        }

        public Builder setCommon(com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder builder)
        {
            if (commonBuilder_ == null)
            {
                common_ = builder.build();
                onChanged();
            } else
            {
                commonBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 1;
            return this;
        }

        public Builder setCommon(com.mapabc.mapapi.core.CommonProtoBuf.Common common)
        {
            if (commonBuilder_ == null)
            {
                if (common == null)
                {
                    throw new NullPointerException();
                }
                common_ = common;
                onChanged();
            } else
            {
                commonBuilder_.setMessage(common);
            }
            bitField0_ = bitField0_ | 1;
            return this;
        }

        public Builder setPoiNumber(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                poiNumber_ = s;
                onChanged();
                return this;
            }
        }

        void setPoiNumber(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            poiNumber_ = bytestring;
            onChanged();
        }

        public Builder setVer(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 8;
                ver_ = s;
                onChanged();
                return this;
            }
        }

        void setVer(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 8;
            ver_ = bytestring;
            onChanged();
        }



        private Builder()
        {
            common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance();
            address_ = "";
            poiNumber_ = "";
            ver_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance();
            address_ = "";
            poiNumber_ = "";
            ver_ = "";
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c)
        {
            this(builderparent);
        }
    }


    public static final int ADDRESS_FIELD_NUMBER = 2;
    public static final int COMMON_FIELD_NUMBER = 1;
    public static final int POINUMBER_FIELD_NUMBER = 3;
    public static final int VER_FIELD_NUMBER = 4;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object address_;
    private int bitField0_;
    private com.mapabc.mapapi.core.est common_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private Object poiNumber_;
    private Object ver_;

    private ByteString getAddressBytes()
    {
        Object obj = address_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            address_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    public static address_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.equest.defaultInstance getDescriptor()
    {
        return GeocodingProtoBuf.access$000();
    }

    private ByteString getPoiNumberBytes()
    {
        Object obj = poiNumber_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            poiNumber_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getVerBytes()
    {
        Object obj = ver_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            ver_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private void initFields()
    {
        common_ = com.mapabc.mapapi.core.tance();
        address_ = "";
        poiNumber_ = "";
        ver_ = "";
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

    public String getAddress()
    {
        Object obj = address_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            address_ = s;
        }
        return s;
    }

    public com.mapabc.mapapi.core.est getCommon()
    {
        return common_;
    }

    public com.mapabc.mapapi.core.est getCommonOrBuilder()
    {
        return common_;
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

    public String getPoiNumber()
    {
        Object obj = poiNumber_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            poiNumber_ = s;
        }
        return s;
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
            j = 0 + CodedOutputStream.computeMessageSize(1, common_);
        }
        i = j;
        if ((bitField0_ & 2) == 2)
        {
            i = j + CodedOutputStream.computeBytesSize(2, getAddressBytes());
        }
        j = i;
        if ((bitField0_ & 4) == 4)
        {
            j = i + CodedOutputStream.computeBytesSize(3, getPoiNumberBytes());
        }
        i = j;
        if ((bitField0_ & 8) == 8)
        {
            i = j + CodedOutputStream.computeBytesSize(4, getVerBytes());
        }
        i += getUnknownFields().getSerializedSize();
        memoizedSerializedSize = i;
        return i;
    }

    public String getVer()
    {
        Object obj = ver_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            ver_ = s;
        }
        return s;
    }

    public boolean hasAddress()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasCommon()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasPoiNumber()
    {
        return (bitField0_ & 4) == 4;
    }

    public boolean hasVer()
    {
        return (bitField0_ & 8) == 8;
    }

    protected com.google.protobuf. internalGetFieldAccessorTable()
    {
        return GeocodingProtoBuf.access$100();
    }

    public final boolean isInitialized()
    {
        boolean flag = true;
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            if (byte0 != 1)
            {
                flag = false;
            }
            return flag;
        }
        if (!hasCommon())
        {
            memoizedIsInitialized = 0;
            return false;
        }
        if (!hasAddress())
        {
            memoizedIsInitialized = 0;
            return false;
        }
        if (!getCommon().())
        {
            memoizedIsInitialized = 0;
            return false;
        } else
        {
            memoizedIsInitialized = 1;
            return true;
        }
    }

    public volatile com.google.protobuf.equest newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.equest newBuilderForType(com.google.protobuf.equest equest)
    {
        return newBuilderForType(equest);
    }

    public volatile com.google.protobuf.equest newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.equest equest)
    {
        return new Builder(equest, null);
    }

    public volatile com.google.protobuf.equest toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.equest toBuilder()
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
            codedoutputstream.writeMessage(1, common_);
        }
        if ((bitField0_ & 2) == 2)
        {
            codedoutputstream.writeBytes(2, getAddressBytes());
        }
        if ((bitField0_ & 4) == 4)
        {
            codedoutputstream.writeBytes(3, getPoiNumberBytes());
        }
        if ((bitField0_ & 8) == 8)
        {
            codedoutputstream.writeBytes(4, getVerBytes());
        }
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }


/*
    static Object access$1002(Builder builder, Object obj)
    {
        builder.ver_ = obj;
        return obj;
    }

*/


/*
    static int access$1102(ver_ ver_1, int i)
    {
        ver_1.bitField0_ = i;
        return i;
    }

*/



/*
    static com.mapabc.mapapi.core.est access$702(bitField0_ bitfield0_, com.mapabc.mapapi.core.est est)
    {
        bitfield0_.common_ = est;
        return est;
    }

*/


/*
    static Object access$802(common_ common_1, Object obj)
    {
        common_1.address_ = obj;
        return obj;
    }

*/


/*
    static Object access$902(address_ address_1, Object obj)
    {
        address_1.poiNumber_ = obj;
        return obj;
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
