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
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

// Referenced classes of package com.mapabc.mapapi.core:
//            CommonProtoBuf, b

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements CommonProtoBuf.CommonOrBuilder
    {

        private Object aK_;
        private int bitField0_;
        private Object config_;
        private Object enc_;
        private Object resType_;

        private CommonProtoBuf.Common buildParsed()
            throws InvalidProtocolBufferException
        {
            CommonProtoBuf.Common common = buildPartial();
            if (!common.isInitialized())
            {
                throw newUninitializedMessageException(common).asInvalidProtocolBufferException();
            } else
            {
                return common;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return CommonProtoBuf.access$000();
        }

        private void maybeForceBuilderInitialization()
        {
            if (!Builder);
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public CommonProtoBuf.Common build()
        {
            CommonProtoBuf.Common common = buildPartial();
            if (!common.isInitialized())
            {
                throw newUninitializedMessageException(common);
            } else
            {
                return common;
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

        public CommonProtoBuf.Common buildPartial()
        {
            int j = 1;
            CommonProtoBuf.Common common = new CommonProtoBuf.Common(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            common.config_ = config_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            common.aK_ = aK_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            common.resType_ = resType_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            common.enc_ = enc_;
            common.bitField0_ = i;
            onBuilt();
            return common;
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
            config_ = "";
            bitField0_ = bitField0_ & -2;
            aK_ = "";
            bitField0_ = bitField0_ & -3;
            resType_ = "";
            bitField0_ = bitField0_ & -5;
            enc_ = "";
            bitField0_ = bitField0_ & -9;
            return this;
        }

        public Builder clearAK()
        {
            bitField0_ = bitField0_ & -3;
            aK_ = CommonProtoBuf.Common.getDefaultInstance().getAK();
            onChanged();
            return this;
        }

        public Builder clearConfig()
        {
            bitField0_ = bitField0_ & -2;
            config_ = CommonProtoBuf.Common.getDefaultInstance().getConfig();
            onChanged();
            return this;
        }

        public Builder clearEnc()
        {
            bitField0_ = bitField0_ & -9;
            enc_ = CommonProtoBuf.Common.getDefaultInstance().getEnc();
            onChanged();
            return this;
        }

        public Builder clearResType()
        {
            bitField0_ = bitField0_ & -5;
            resType_ = CommonProtoBuf.Common.getDefaultInstance().getResType();
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

        public String getAK()
        {
            Object obj = aK_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                aK_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getConfig()
        {
            Object obj = config_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                config_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
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

        public CommonProtoBuf.Common getDefaultInstanceForType()
        {
            return CommonProtoBuf.Common.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return CommonProtoBuf.Common.getDescriptor();
        }

        public String getEnc()
        {
            Object obj = enc_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                enc_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getResType()
        {
            Object obj = resType_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                resType_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public boolean hasAK()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasConfig()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasEnc()
        {
            return (bitField0_ & 8) == 8;
        }

        public boolean hasResType()
        {
            return (bitField0_ & 4) == 4;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return CommonProtoBuf.access$100();
        }

        public final boolean isInitialized()
        {
            while (!hasConfig() || !hasAK()) 
            {
                return false;
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
                    bitField0_ = bitField0_ | 1;
                    config_ = codedinputstream.readBytes();
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 2;
                    aK_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    resType_ = codedinputstream.readBytes();
                    break;

                case 34: // '"'
                    bitField0_ = bitField0_ | 8;
                    enc_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof CommonProtoBuf.Common)
            {
                return mergeFrom((CommonProtoBuf.Common)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(CommonProtoBuf.Common common)
        {
            if (common == CommonProtoBuf.Common.getDefaultInstance())
            {
                return this;
            }
            if (common.hasConfig())
            {
                setConfig(common.getConfig());
            }
            if (common.hasAK())
            {
                setAK(common.getAK());
            }
            if (common.hasResType())
            {
                setResType(common.getResType());
            }
            if (common.hasEnc())
            {
                setEnc(common.getEnc());
            }
            mergeUnknownFields(common.getUnknownFields());
            return this;
        }

        public Builder setAK(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                aK_ = s;
                onChanged();
                return this;
            }
        }

        void setAK(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            aK_ = bytestring;
            onChanged();
        }

        public Builder setConfig(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 1;
                config_ = s;
                onChanged();
                return this;
            }
        }

        void setConfig(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 1;
            config_ = bytestring;
            onChanged();
        }

        public Builder setEnc(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 8;
                enc_ = s;
                onChanged();
                return this;
            }
        }

        void setEnc(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 8;
            enc_ = bytestring;
            onChanged();
        }

        public Builder setResType(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                resType_ = s;
                onChanged();
                return this;
            }
        }

        void setResType(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            resType_ = bytestring;
            onChanged();
        }



        private Builder()
        {
            config_ = "";
            aK_ = "";
            resType_ = "";
            enc_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            config_ = "";
            aK_ = "";
            resType_ = "";
            enc_ = "";
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, b b)
        {
            this(builderparent);
        }
    }


    public static final int A_K_FIELD_NUMBER = 2;
    public static final int CONFIG_FIELD_NUMBER = 1;
    public static final int ENC_FIELD_NUMBER = 4;
    public static final int RESTYPE_FIELD_NUMBER = 3;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object aK_;
    private int bitField0_;
    private Object config_;
    private Object enc_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private Object resType_;

    private ByteString getAKBytes()
    {
        Object obj = aK_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            aK_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getConfigBytes()
    {
        Object obj = config_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            config_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    public static config_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf. getDescriptor()
    {
        return CommonProtoBuf.access$000();
    }

    private ByteString getEncBytes()
    {
        Object obj = enc_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            enc_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getResTypeBytes()
    {
        Object obj = resType_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            resType_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private void initFields()
    {
        config_ = "";
        aK_ = "";
        resType_ = "";
        enc_ = "";
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

    public String getAK()
    {
        Object obj = aK_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            aK_ = s;
        }
        return s;
    }

    public String getConfig()
    {
        Object obj = config_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            config_ = s;
        }
        return s;
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

    public String getEnc()
    {
        Object obj = enc_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            enc_ = s;
        }
        return s;
    }

    public String getResType()
    {
        Object obj = resType_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            resType_ = s;
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
            j = 0 + CodedOutputStream.computeBytesSize(1, getConfigBytes());
        }
        i = j;
        if ((bitField0_ & 2) == 2)
        {
            i = j + CodedOutputStream.computeBytesSize(2, getAKBytes());
        }
        j = i;
        if ((bitField0_ & 4) == 4)
        {
            j = i + CodedOutputStream.computeBytesSize(3, getResTypeBytes());
        }
        i = j;
        if ((bitField0_ & 8) == 8)
        {
            i = j + CodedOutputStream.computeBytesSize(4, getEncBytes());
        }
        i += getUnknownFields().getSerializedSize();
        memoizedSerializedSize = i;
        return i;
    }

    public boolean hasAK()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasConfig()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasEnc()
    {
        return (bitField0_ & 8) == 8;
    }

    public boolean hasResType()
    {
        return (bitField0_ & 4) == 4;
    }

    protected com.google.protobuf.AccessorTable internalGetFieldAccessorTable()
    {
        return CommonProtoBuf.access$100();
    }

    public final boolean isInitialized()
    {
        byte byte0 = memoizedIsInitialized;
        if (byte0 != -1)
        {
            return byte0 == 1;
        }
        if (!hasConfig())
        {
            memoizedIsInitialized = 0;
            return false;
        }
        if (!hasAK())
        {
            memoizedIsInitialized = 0;
            return false;
        } else
        {
            memoizedIsInitialized = 1;
            return true;
        }
    }

    public volatile com.google.protobuf.on newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.erParent newBuilderForType(com.google.protobuf.erParent erparent)
    {
        return newBuilderForType(erparent);
    }

    public volatile com.google.protobuf.on newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.erParent erparent)
    {
        return new Builder(erparent, null);
    }

    public volatile com.google.protobuf.on toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.on toBuilder()
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
            codedoutputstream.writeBytes(1, getConfigBytes());
        }
        if ((bitField0_ & 2) == 2)
        {
            codedoutputstream.writeBytes(2, getAKBytes());
        }
        if ((bitField0_ & 4) == 4)
        {
            codedoutputstream.writeBytes(3, getResTypeBytes());
        }
        if ((bitField0_ & 8) == 8)
        {
            codedoutputstream.writeBytes(4, getEncBytes());
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
        builder.enc_ = obj;
        return obj;
    }

*/


/*
    static int access$1102(enc_ enc_1, int i)
    {
        enc_1.bitField0_ = i;
        return i;
    }

*/



/*
    static Object access$702(bitField0_ bitfield0_, Object obj)
    {
        bitfield0_.config_ = obj;
        return obj;
    }

*/


/*
    static Object access$802(config_ config_1, Object obj)
    {
        config_1.aK_ = obj;
        return obj;
    }

*/


/*
    static Object access$902(aK_ ak_, Object obj)
    {
        ak_.resType_ = obj;
        return obj;
    }

*/

    private Builder(Builder builder)
    {
        super(builder);
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    Builder(Builder builder, b b)
    {
        this(builder);
    }

    private Builder(boolean flag)
    {
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }
}
