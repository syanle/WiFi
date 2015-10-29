// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

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

// Referenced classes of package com.mapabc.mapapi.core:
//            ReverseGeocodingProtoBuf, z

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements ReverseGeocodingProtoBuf.ReverseGeocodingRequestOrBuilder
    {

        private int bitField0_;
        private SingleFieldBuilder commonBuilder_;
        private CommonProtoBuf.Common common_;
        private Object spatialXml_;

        private ReverseGeocodingProtoBuf.ReverseGeocodingRequest buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingProtoBuf.ReverseGeocodingRequest reversegeocodingrequest = buildPartial();
            if (!reversegeocodingrequest.isInitialized())
            {
                throw newUninitializedMessageException(reversegeocodingrequest).asInvalidProtocolBufferException();
            } else
            {
                return reversegeocodingrequest;
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
            return ReverseGeocodingProtoBuf.access$000();
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

        public ReverseGeocodingProtoBuf.ReverseGeocodingRequest build()
        {
            ReverseGeocodingProtoBuf.ReverseGeocodingRequest reversegeocodingrequest = buildPartial();
            if (!reversegeocodingrequest.isInitialized())
            {
                throw newUninitializedMessageException(reversegeocodingrequest);
            } else
            {
                return reversegeocodingrequest;
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

        public ReverseGeocodingProtoBuf.ReverseGeocodingRequest buildPartial()
        {
            ReverseGeocodingProtoBuf.ReverseGeocodingRequest reversegeocodingrequest = new ReverseGeocodingRequest(this, null);
            int k = bitField0_;
            int i = 0;
            if ((k & 1) == 1)
            {
                i = 1;
            }
            int j;
            if (commonBuilder_ == null)
            {
                reversegeocodingrequest.common_ = common_;
            } else
            {
                reversegeocodingrequest.common_ = (CommonProtoBuf.Common)commonBuilder_.build();
            }
            j = i;
            if ((k & 2) == 2)
            {
                j = i | 2;
            }
            reversegeocodingrequest.spatialXml_ = spatialXml_;
            reversegeocodingrequest.bitField0_ = j;
            onBuilt();
            return reversegeocodingrequest;
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
                common_ = CommonProtoBuf.Common.getDefaultInstance();
            } else
            {
                commonBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            spatialXml_ = "";
            bitField0_ = bitField0_ & -3;
            return this;
        }

        public Builder clearCommon()
        {
            if (commonBuilder_ == null)
            {
                common_ = CommonProtoBuf.Common.getDefaultInstance();
                onChanged();
            } else
            {
                commonBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            return this;
        }

        public Builder clearSpatialXml()
        {
            bitField0_ = bitField0_ & -3;
            spatialXml_ = ReverseGeocodingProtoBuf.ReverseGeocodingRequest.getDefaultInstance().getSpatialXml();
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

        public CommonProtoBuf.Common getCommon()
        {
            if (commonBuilder_ == null)
            {
                return common_;
            } else
            {
                return (CommonProtoBuf.Common)commonBuilder_.getMessage();
            }
        }

        public CommonProtoBuf.Common.Builder getCommonBuilder()
        {
            bitField0_ = bitField0_ | 1;
            onChanged();
            return (CommonProtoBuf.Common.Builder)getCommonFieldBuilder().getBuilder();
        }

        public CommonProtoBuf.CommonOrBuilder getCommonOrBuilder()
        {
            if (commonBuilder_ != null)
            {
                return (CommonProtoBuf.CommonOrBuilder)commonBuilder_.getMessageOrBuilder();
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

        public ReverseGeocodingProtoBuf.ReverseGeocodingRequest getDefaultInstanceForType()
        {
            return ReverseGeocodingProtoBuf.ReverseGeocodingRequest.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingProtoBuf.ReverseGeocodingRequest.getDescriptor();
        }

        public String getSpatialXml()
        {
            Object obj = spatialXml_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                spatialXml_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public boolean hasCommon()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasSpatialXml()
        {
            return (bitField0_ & 2) == 2;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.access$100();
        }

        public final boolean isInitialized()
        {
            while (!hasCommon() || !hasSpatialXml() || !getCommon().isInitialized()) 
            {
                return false;
            }
            return true;
        }

        public Builder mergeCommon(CommonProtoBuf.Common common)
        {
            if (commonBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1 && common_ != CommonProtoBuf.Common.getDefaultInstance())
                {
                    common_ = CommonProtoBuf.Common.newBuilder(common_).mergeFrom(common).buildPartial();
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
                    CommonProtoBuf.Common.Builder builder1 = CommonProtoBuf.Common.newBuilder();
                    if (hasCommon())
                    {
                        builder1.mergeFrom(getCommon());
                    }
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    setCommon(builder1.buildPartial());
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 2;
                    spatialXml_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingProtoBuf.ReverseGeocodingRequest)
            {
                return mergeFrom((ReverseGeocodingProtoBuf.ReverseGeocodingRequest)message);
            } else
            {
                mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(ReverseGeocodingProtoBuf.ReverseGeocodingRequest reversegeocodingrequest)
        {
            if (reversegeocodingrequest == ReverseGeocodingProtoBuf.ReverseGeocodingRequest.getDefaultInstance())
            {
                return this;
            }
            if (reversegeocodingrequest.hasCommon())
            {
                mergeCommon(reversegeocodingrequest.getCommon());
            }
            if (reversegeocodingrequest.hasSpatialXml())
            {
                setSpatialXml(reversegeocodingrequest.getSpatialXml());
            }
            mergeUnknownFields(reversegeocodingrequest.getUnknownFields());
            return this;
        }

        public Builder setCommon(CommonProtoBuf.Common.Builder builder)
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

        public Builder setCommon(CommonProtoBuf.Common common)
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

        public Builder setSpatialXml(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                spatialXml_ = s;
                onChanged();
                return this;
            }
        }

        void setSpatialXml(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            spatialXml_ = bytestring;
            onChanged();
        }



        private Builder()
        {
            common_ = CommonProtoBuf.Common.getDefaultInstance();
            spatialXml_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            common_ = CommonProtoBuf.Common.getDefaultInstance();
            spatialXml_ = "";
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z)
        {
            this(builderparent);
        }
    }


    public static final int COMMON_FIELD_NUMBER = 1;
    public static final int SPATIALXML_FIELD_NUMBER = 2;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private initFields common_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private Object spatialXml_;

    public static Builder.onChanged getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.st.defaultInstance getDescriptor()
    {
        return ReverseGeocodingProtoBuf.access$000();
    }

    private ByteString getSpatialXmlBytes()
    {
        Object obj = spatialXml_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            spatialXml_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private void initFields()
    {
        common_ = common_();
        spatialXml_ = "";
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

    public Builder.buildParsed getCommon()
    {
        return common_;
    }

    public common_ getCommonOrBuilder()
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

    public int getSerializedSize()
    {
        int i = memoizedSerializedSize;
        if (i != -1)
        {
            return i;
        }
        i = 0;
        if ((bitField0_ & 1) == 1)
        {
            i = 0 + CodedOutputStream.computeMessageSize(1, common_);
        }
        int j = i;
        if ((bitField0_ & 2) == 2)
        {
            j = i + CodedOutputStream.computeBytesSize(2, getSpatialXmlBytes());
        }
        i = j + getUnknownFields().getSerializedSize();
        memoizedSerializedSize = i;
        return i;
    }

    public String getSpatialXml()
    {
        Object obj = spatialXml_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            spatialXml_ = s;
        }
        return s;
    }

    public boolean hasCommon()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasSpatialXml()
    {
        return (bitField0_ & 2) == 2;
    }

    protected com.google.protobuf.st internalGetFieldAccessorTable()
    {
        return ReverseGeocodingProtoBuf.access$100();
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
        if (!hasSpatialXml())
        {
            memoizedIsInitialized = 0;
            return false;
        }
        if (!getCommon().getCommon())
        {
            memoizedIsInitialized = 0;
            return false;
        } else
        {
            memoizedIsInitialized = 1;
            return true;
        }
    }

    public volatile com.google.protobuf.st newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.st newBuilderForType(com.google.protobuf.st st)
    {
        return newBuilderForType(st);
    }

    public volatile com.google.protobuf.st newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.st st)
    {
        return new Builder(st, null);
    }

    public volatile com.google.protobuf.st toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.st toBuilder()
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
            codedoutputstream.writeBytes(2, getSpatialXmlBytes());
        }
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }



/*
    static Builder access$702(Builder builder, Builder builder1)
    {
        builder.common_ = builder1;
        return builder1;
    }

*/


/*
    static Object access$802(common_ common_1, Object obj)
    {
        common_1.spatialXml_ = obj;
        return obj;
    }

*/


/*
    static int access$902(spatialXml_ spatialxml_, int i)
    {
        spatialxml_.bitField0_ = i;
        return i;
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
