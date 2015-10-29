// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import com.google.protobuf.UnmodifiableLazyStringList;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            b

public final class CommonProtoBuf
{
    public static final class Common extends GeneratedMessage
        implements CommonOrBuilder
    {

        public static final int A_K_FIELD_NUMBER = 2;
        public static final int CONFIG_FIELD_NUMBER = 1;
        public static final int ENC_FIELD_NUMBER = 4;
        public static final int RESTYPE_FIELD_NUMBER = 3;
        private static final Common defaultInstance;
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

        public static Common getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return CommonProtoBuf.internal_static_Common_descriptor;
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

        public static Builder newBuilder(Common common)
        {
            return newBuilder().mergeFrom(common);
        }

        public static Common parseDelimitedFrom(InputStream inputstream)
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

        public static Common parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Common parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Common parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Common parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Common parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Common parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Common parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Common parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Common parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public Common getDefaultInstanceForType()
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

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return CommonProtoBuf.internal_static_Common_fieldAccessorTable;
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

        public volatile com.google.protobuf.Message.Builder newBuilderForType()
        {
            return newBuilderForType();
        }

        protected volatile com.google.protobuf.Message.Builder newBuilderForType(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            return newBuilderForType(builderparent);
        }

        public volatile com.google.protobuf.MessageLite.Builder newBuilderForType()
        {
            return newBuilderForType();
        }

        public Builder newBuilderForType()
        {
            return newBuilder();
        }

        protected Builder newBuilderForType(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            return new Builder(builderparent, null);
        }

        public volatile com.google.protobuf.Message.Builder toBuilder()
        {
            return toBuilder();
        }

        public volatile com.google.protobuf.MessageLite.Builder toBuilder()
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
            defaultInstance = new Common(true);
            defaultInstance.initFields();
        }


/*
        static Object access$1002(Common common, Object obj)
        {
            common.enc_ = obj;
            return obj;
        }

*/


/*
        static int access$1102(Common common, int i)
        {
            common.bitField0_ = i;
            return i;
        }

*/



/*
        static Object access$702(Common common, Object obj)
        {
            common.config_ = obj;
            return obj;
        }

*/


/*
        static Object access$802(Common common, Object obj)
        {
            common.aK_ = obj;
            return obj;
        }

*/


/*
        static Object access$902(Common common, Object obj)
        {
            common.resType_ = obj;
            return obj;
        }

*/

        private Common(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Common(Builder builder, b b1)
        {
            this(builder);
        }

        private Common(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Common.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements CommonOrBuilder
    {

        private Object aK_;
        private int bitField0_;
        private Object config_;
        private Object enc_;
        private Object resType_;

        private Common buildParsed()
            throws InvalidProtocolBufferException
        {
            Common common = buildPartial();
            if (!common.isInitialized())
            {
                throw newUninitializedMessageException(common).asInvalidProtocolBufferException();
            } else
            {
                return common;
            }
        }

        private static Common.Builder create()
        {
            return new Common.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return CommonProtoBuf.internal_static_Common_descriptor;
        }

        private void maybeForceBuilderInitialization()
        {
            if (!Common.Builder);
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public Common build()
        {
            Common common = buildPartial();
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

        public Common buildPartial()
        {
            int j = 1;
            Common common = new Common(this, null);
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

        public Common.Builder clear()
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

        public Common.Builder clearAK()
        {
            bitField0_ = bitField0_ & -3;
            aK_ = Common.getDefaultInstance().getAK();
            onChanged();
            return this;
        }

        public Common.Builder clearConfig()
        {
            bitField0_ = bitField0_ & -2;
            config_ = Common.getDefaultInstance().getConfig();
            onChanged();
            return this;
        }

        public Common.Builder clearEnc()
        {
            bitField0_ = bitField0_ & -9;
            enc_ = Common.getDefaultInstance().getEnc();
            onChanged();
            return this;
        }

        public Common.Builder clearResType()
        {
            bitField0_ = bitField0_ & -5;
            resType_ = Common.getDefaultInstance().getResType();
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

        public Common.Builder clone()
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

        public Common getDefaultInstanceForType()
        {
            return Common.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return Common.getDescriptor();
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
            return CommonProtoBuf.internal_static_Common_fieldAccessorTable;
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

        public Common.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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

        public Common.Builder mergeFrom(Message message)
        {
            if (message instanceof Common)
            {
                return mergeFrom((Common)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Common.Builder mergeFrom(Common common)
        {
            if (common == Common.getDefaultInstance())
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

        public Common.Builder setAK(String s)
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

        public Common.Builder setConfig(String s)
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

        public Common.Builder setEnc(String s)
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

        public Common.Builder setResType(String s)
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



        private Common.Builder()
        {
            config_ = "";
            aK_ = "";
            resType_ = "";
            enc_ = "";
            maybeForceBuilderInitialization();
        }

        private Common.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            config_ = "";
            aK_ = "";
            resType_ = "";
            enc_ = "";
            maybeForceBuilderInitialization();
        }

        Common.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, b b1)
        {
            this(builderparent);
        }
    }

    public static interface CommonOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getAK();

        public abstract String getConfig();

        public abstract String getEnc();

        public abstract String getResType();

        public abstract boolean hasAK();

        public abstract boolean hasConfig();

        public abstract boolean hasEnc();

        public abstract boolean hasResType();
    }

    public static final class POI extends GeneratedMessage
        implements POIOrBuilder
    {

        public static final int ADDRESS_FIELD_NUMBER = 7;
        public static final int BUSCODE_FIELD_NUMBER = 15;
        public static final int CITYCODE_FIELD_NUMBER = 12;
        public static final int CODE_FIELD_NUMBER = 10;
        public static final int DISTANCE_FIELD_NUMBER = 21;
        public static final int DRIVEDISTANCE_FIELD_NUMBER = 22;
        public static final int GRIDCODE_FIELD_NUMBER = 14;
        public static final int IMAGEID_FIELD_NUMBER = 18;
        public static final int LINKID_FIELD_NUMBER = 20;
        public static final int MATCH_FIELD_NUMBER = 9;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int NEWTYPE_FIELD_NUMBER = 11;
        public static final int PGUID_FIELD_NUMBER = 1;
        public static final int SRCTYPE_FIELD_NUMBER = 6;
        public static final int TEL_FIELD_NUMBER = 19;
        public static final int TIMESTAMP_FIELD_NUMBER = 8;
        public static final int TYPECODE_FIELD_NUMBER = 13;
        public static final int TYPE_FIELD_NUMBER = 3;
        public static final int URL_FIELD_NUMBER = 16;
        public static final int XML_FIELD_NUMBER = 17;
        public static final int X_FIELD_NUMBER = 4;
        public static final int Y_FIELD_NUMBER = 5;
        private static final POI defaultInstance;
        private static final long serialVersionUID = 0L;
        private Object address_;
        private int bitField0_;
        private Object buscode_;
        private Object citycode_;
        private Object code_;
        private Object distance_;
        private Object drivedistance_;
        private Object gridcode_;
        private Object imageid_;
        private Object linkid_;
        private Object match_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private Object newtype_;
        private Object pguid_;
        private Object srctype_;
        private Object tel_;
        private Object timestamp_;
        private Object type_;
        private Object typecode_;
        private Object url_;
        private Object x_;
        private Object xml_;
        private Object y_;

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

        private ByteString getBuscodeBytes()
        {
            Object obj = buscode_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                buscode_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getCitycodeBytes()
        {
            Object obj = citycode_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                citycode_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getCodeBytes()
        {
            Object obj = code_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                code_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        public static POI getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return CommonProtoBuf.internal_static_POI_descriptor;
        }

        private ByteString getDistanceBytes()
        {
            Object obj = distance_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                distance_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getDrivedistanceBytes()
        {
            Object obj = drivedistance_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                drivedistance_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getGridcodeBytes()
        {
            Object obj = gridcode_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                gridcode_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getImageidBytes()
        {
            Object obj = imageid_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                imageid_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getLinkidBytes()
        {
            Object obj = linkid_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                linkid_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getMatchBytes()
        {
            Object obj = match_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                match_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getNameBytes()
        {
            Object obj = name_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                name_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getNewtypeBytes()
        {
            Object obj = newtype_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                newtype_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getPguidBytes()
        {
            Object obj = pguid_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                pguid_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getSrctypeBytes()
        {
            Object obj = srctype_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                srctype_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getTelBytes()
        {
            Object obj = tel_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                tel_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getTimestampBytes()
        {
            Object obj = timestamp_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                timestamp_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getTypeBytes()
        {
            Object obj = type_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                type_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getTypecodeBytes()
        {
            Object obj = typecode_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                typecode_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getUrlBytes()
        {
            Object obj = url_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                url_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getXBytes()
        {
            Object obj = x_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                x_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getXmlBytes()
        {
            Object obj = xml_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                xml_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getYBytes()
        {
            Object obj = y_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                y_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private void initFields()
        {
            pguid_ = "";
            name_ = "";
            type_ = "";
            x_ = "";
            y_ = "";
            srctype_ = "";
            address_ = "";
            timestamp_ = "";
            match_ = "";
            code_ = "";
            newtype_ = "";
            citycode_ = "";
            typecode_ = "";
            gridcode_ = "";
            buscode_ = "";
            url_ = "";
            xml_ = "";
            imageid_ = "";
            tel_ = "";
            linkid_ = "";
            distance_ = "";
            drivedistance_ = "";
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(POI poi)
        {
            return newBuilder().mergeFrom(poi);
        }

        public static POI parseDelimitedFrom(InputStream inputstream)
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

        public static POI parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static POI parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static POI parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static POI parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static POI parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static POI parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static POI parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static POI parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static POI parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public String getBuscode()
        {
            Object obj = buscode_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                buscode_ = s;
            }
            return s;
        }

        public String getCitycode()
        {
            Object obj = citycode_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                citycode_ = s;
            }
            return s;
        }

        public String getCode()
        {
            Object obj = code_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                code_ = s;
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

        public POI getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public String getDistance()
        {
            Object obj = distance_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                distance_ = s;
            }
            return s;
        }

        public String getDrivedistance()
        {
            Object obj = drivedistance_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                drivedistance_ = s;
            }
            return s;
        }

        public String getGridcode()
        {
            Object obj = gridcode_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                gridcode_ = s;
            }
            return s;
        }

        public String getImageid()
        {
            Object obj = imageid_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                imageid_ = s;
            }
            return s;
        }

        public String getLinkid()
        {
            Object obj = linkid_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                linkid_ = s;
            }
            return s;
        }

        public String getMatch()
        {
            Object obj = match_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                match_ = s;
            }
            return s;
        }

        public String getName()
        {
            Object obj = name_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                name_ = s;
            }
            return s;
        }

        public String getNewtype()
        {
            Object obj = newtype_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                newtype_ = s;
            }
            return s;
        }

        public String getPguid()
        {
            Object obj = pguid_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                pguid_ = s;
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
                j = 0 + CodedOutputStream.computeBytesSize(1, getPguidBytes());
            }
            i = j;
            if ((bitField0_ & 2) == 2)
            {
                i = j + CodedOutputStream.computeBytesSize(2, getNameBytes());
            }
            j = i;
            if ((bitField0_ & 4) == 4)
            {
                j = i + CodedOutputStream.computeBytesSize(3, getTypeBytes());
            }
            i = j;
            if ((bitField0_ & 8) == 8)
            {
                i = j + CodedOutputStream.computeBytesSize(4, getXBytes());
            }
            j = i;
            if ((bitField0_ & 0x10) == 16)
            {
                j = i + CodedOutputStream.computeBytesSize(5, getYBytes());
            }
            i = j;
            if ((bitField0_ & 0x20) == 32)
            {
                i = j + CodedOutputStream.computeBytesSize(6, getSrctypeBytes());
            }
            j = i;
            if ((bitField0_ & 0x40) == 64)
            {
                j = i + CodedOutputStream.computeBytesSize(7, getAddressBytes());
            }
            i = j;
            if ((bitField0_ & 0x80) == 128)
            {
                i = j + CodedOutputStream.computeBytesSize(8, getTimestampBytes());
            }
            j = i;
            if ((bitField0_ & 0x100) == 256)
            {
                j = i + CodedOutputStream.computeBytesSize(9, getMatchBytes());
            }
            i = j;
            if ((bitField0_ & 0x200) == 512)
            {
                i = j + CodedOutputStream.computeBytesSize(10, getCodeBytes());
            }
            j = i;
            if ((bitField0_ & 0x400) == 1024)
            {
                j = i + CodedOutputStream.computeBytesSize(11, getNewtypeBytes());
            }
            i = j;
            if ((bitField0_ & 0x800) == 2048)
            {
                i = j + CodedOutputStream.computeBytesSize(12, getCitycodeBytes());
            }
            j = i;
            if ((bitField0_ & 0x1000) == 4096)
            {
                j = i + CodedOutputStream.computeBytesSize(13, getTypecodeBytes());
            }
            i = j;
            if ((bitField0_ & 0x2000) == 8192)
            {
                i = j + CodedOutputStream.computeBytesSize(14, getGridcodeBytes());
            }
            j = i;
            if ((bitField0_ & 0x4000) == 16384)
            {
                j = i + CodedOutputStream.computeBytesSize(15, getBuscodeBytes());
            }
            i = j;
            if ((bitField0_ & 0x8000) == 32768)
            {
                i = j + CodedOutputStream.computeBytesSize(16, getUrlBytes());
            }
            j = i;
            if ((bitField0_ & 0x10000) == 0x10000)
            {
                j = i + CodedOutputStream.computeBytesSize(17, getXmlBytes());
            }
            i = j;
            if ((bitField0_ & 0x20000) == 0x20000)
            {
                i = j + CodedOutputStream.computeBytesSize(18, getImageidBytes());
            }
            j = i;
            if ((bitField0_ & 0x40000) == 0x40000)
            {
                j = i + CodedOutputStream.computeBytesSize(19, getTelBytes());
            }
            i = j;
            if ((bitField0_ & 0x80000) == 0x80000)
            {
                i = j + CodedOutputStream.computeBytesSize(20, getLinkidBytes());
            }
            j = i;
            if ((bitField0_ & 0x100000) == 0x100000)
            {
                j = i + CodedOutputStream.computeBytesSize(21, getDistanceBytes());
            }
            i = j;
            if ((bitField0_ & 0x200000) == 0x200000)
            {
                i = j + CodedOutputStream.computeBytesSize(22, getDrivedistanceBytes());
            }
            i += getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
        }

        public String getSrctype()
        {
            Object obj = srctype_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                srctype_ = s;
            }
            return s;
        }

        public String getTel()
        {
            Object obj = tel_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                tel_ = s;
            }
            return s;
        }

        public String getTimestamp()
        {
            Object obj = timestamp_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                timestamp_ = s;
            }
            return s;
        }

        public String getType()
        {
            Object obj = type_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                type_ = s;
            }
            return s;
        }

        public String getTypecode()
        {
            Object obj = typecode_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                typecode_ = s;
            }
            return s;
        }

        public String getUrl()
        {
            Object obj = url_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                url_ = s;
            }
            return s;
        }

        public String getX()
        {
            Object obj = x_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                x_ = s;
            }
            return s;
        }

        public String getXml()
        {
            Object obj = xml_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                xml_ = s;
            }
            return s;
        }

        public String getY()
        {
            Object obj = y_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                y_ = s;
            }
            return s;
        }

        public boolean hasAddress()
        {
            return (bitField0_ & 0x40) == 64;
        }

        public boolean hasBuscode()
        {
            return (bitField0_ & 0x4000) == 16384;
        }

        public boolean hasCitycode()
        {
            return (bitField0_ & 0x800) == 2048;
        }

        public boolean hasCode()
        {
            return (bitField0_ & 0x200) == 512;
        }

        public boolean hasDistance()
        {
            return (bitField0_ & 0x100000) == 0x100000;
        }

        public boolean hasDrivedistance()
        {
            return (bitField0_ & 0x200000) == 0x200000;
        }

        public boolean hasGridcode()
        {
            return (bitField0_ & 0x2000) == 8192;
        }

        public boolean hasImageid()
        {
            return (bitField0_ & 0x20000) == 0x20000;
        }

        public boolean hasLinkid()
        {
            return (bitField0_ & 0x80000) == 0x80000;
        }

        public boolean hasMatch()
        {
            return (bitField0_ & 0x100) == 256;
        }

        public boolean hasName()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasNewtype()
        {
            return (bitField0_ & 0x400) == 1024;
        }

        public boolean hasPguid()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasSrctype()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasTel()
        {
            return (bitField0_ & 0x40000) == 0x40000;
        }

        public boolean hasTimestamp()
        {
            return (bitField0_ & 0x80) == 128;
        }

        public boolean hasType()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasTypecode()
        {
            return (bitField0_ & 0x1000) == 4096;
        }

        public boolean hasUrl()
        {
            return (bitField0_ & 0x8000) == 32768;
        }

        public boolean hasX()
        {
            return (bitField0_ & 8) == 8;
        }

        public boolean hasXml()
        {
            return (bitField0_ & 0x10000) == 0x10000;
        }

        public boolean hasY()
        {
            return (bitField0_ & 0x10) == 16;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return CommonProtoBuf.internal_static_POI_fieldAccessorTable;
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
            if (!hasPguid())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasName())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasType())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasX())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasY())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasSrctype())
            {
                memoizedIsInitialized = 0;
                return false;
            } else
            {
                memoizedIsInitialized = 1;
                return true;
            }
        }

        public volatile com.google.protobuf.Message.Builder newBuilderForType()
        {
            return newBuilderForType();
        }

        protected volatile com.google.protobuf.Message.Builder newBuilderForType(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            return newBuilderForType(builderparent);
        }

        public volatile com.google.protobuf.MessageLite.Builder newBuilderForType()
        {
            return newBuilderForType();
        }

        public Builder newBuilderForType()
        {
            return newBuilder();
        }

        protected Builder newBuilderForType(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            return new Builder(builderparent, null);
        }

        public volatile com.google.protobuf.Message.Builder toBuilder()
        {
            return toBuilder();
        }

        public volatile com.google.protobuf.MessageLite.Builder toBuilder()
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
                codedoutputstream.writeBytes(1, getPguidBytes());
            }
            if ((bitField0_ & 2) == 2)
            {
                codedoutputstream.writeBytes(2, getNameBytes());
            }
            if ((bitField0_ & 4) == 4)
            {
                codedoutputstream.writeBytes(3, getTypeBytes());
            }
            if ((bitField0_ & 8) == 8)
            {
                codedoutputstream.writeBytes(4, getXBytes());
            }
            if ((bitField0_ & 0x10) == 16)
            {
                codedoutputstream.writeBytes(5, getYBytes());
            }
            if ((bitField0_ & 0x20) == 32)
            {
                codedoutputstream.writeBytes(6, getSrctypeBytes());
            }
            if ((bitField0_ & 0x40) == 64)
            {
                codedoutputstream.writeBytes(7, getAddressBytes());
            }
            if ((bitField0_ & 0x80) == 128)
            {
                codedoutputstream.writeBytes(8, getTimestampBytes());
            }
            if ((bitField0_ & 0x100) == 256)
            {
                codedoutputstream.writeBytes(9, getMatchBytes());
            }
            if ((bitField0_ & 0x200) == 512)
            {
                codedoutputstream.writeBytes(10, getCodeBytes());
            }
            if ((bitField0_ & 0x400) == 1024)
            {
                codedoutputstream.writeBytes(11, getNewtypeBytes());
            }
            if ((bitField0_ & 0x800) == 2048)
            {
                codedoutputstream.writeBytes(12, getCitycodeBytes());
            }
            if ((bitField0_ & 0x1000) == 4096)
            {
                codedoutputstream.writeBytes(13, getTypecodeBytes());
            }
            if ((bitField0_ & 0x2000) == 8192)
            {
                codedoutputstream.writeBytes(14, getGridcodeBytes());
            }
            if ((bitField0_ & 0x4000) == 16384)
            {
                codedoutputstream.writeBytes(15, getBuscodeBytes());
            }
            if ((bitField0_ & 0x8000) == 32768)
            {
                codedoutputstream.writeBytes(16, getUrlBytes());
            }
            if ((bitField0_ & 0x10000) == 0x10000)
            {
                codedoutputstream.writeBytes(17, getXmlBytes());
            }
            if ((bitField0_ & 0x20000) == 0x20000)
            {
                codedoutputstream.writeBytes(18, getImageidBytes());
            }
            if ((bitField0_ & 0x40000) == 0x40000)
            {
                codedoutputstream.writeBytes(19, getTelBytes());
            }
            if ((bitField0_ & 0x80000) == 0x80000)
            {
                codedoutputstream.writeBytes(20, getLinkidBytes());
            }
            if ((bitField0_ & 0x100000) == 0x100000)
            {
                codedoutputstream.writeBytes(21, getDistanceBytes());
            }
            if ((bitField0_ & 0x200000) == 0x200000)
            {
                codedoutputstream.writeBytes(22, getDrivedistanceBytes());
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new POI(true);
            defaultInstance.initFields();
        }



/*
        static Object access$1902(POI poi, Object obj)
        {
            poi.pguid_ = obj;
            return obj;
        }

*/


/*
        static Object access$2002(POI poi, Object obj)
        {
            poi.name_ = obj;
            return obj;
        }

*/


/*
        static Object access$2102(POI poi, Object obj)
        {
            poi.type_ = obj;
            return obj;
        }

*/


/*
        static Object access$2202(POI poi, Object obj)
        {
            poi.x_ = obj;
            return obj;
        }

*/


/*
        static Object access$2302(POI poi, Object obj)
        {
            poi.y_ = obj;
            return obj;
        }

*/


/*
        static Object access$2402(POI poi, Object obj)
        {
            poi.srctype_ = obj;
            return obj;
        }

*/


/*
        static Object access$2502(POI poi, Object obj)
        {
            poi.address_ = obj;
            return obj;
        }

*/


/*
        static Object access$2602(POI poi, Object obj)
        {
            poi.timestamp_ = obj;
            return obj;
        }

*/


/*
        static Object access$2702(POI poi, Object obj)
        {
            poi.match_ = obj;
            return obj;
        }

*/


/*
        static Object access$2802(POI poi, Object obj)
        {
            poi.code_ = obj;
            return obj;
        }

*/


/*
        static Object access$2902(POI poi, Object obj)
        {
            poi.newtype_ = obj;
            return obj;
        }

*/


/*
        static Object access$3002(POI poi, Object obj)
        {
            poi.citycode_ = obj;
            return obj;
        }

*/


/*
        static Object access$3102(POI poi, Object obj)
        {
            poi.typecode_ = obj;
            return obj;
        }

*/


/*
        static Object access$3202(POI poi, Object obj)
        {
            poi.gridcode_ = obj;
            return obj;
        }

*/


/*
        static Object access$3302(POI poi, Object obj)
        {
            poi.buscode_ = obj;
            return obj;
        }

*/


/*
        static Object access$3402(POI poi, Object obj)
        {
            poi.url_ = obj;
            return obj;
        }

*/


/*
        static Object access$3502(POI poi, Object obj)
        {
            poi.xml_ = obj;
            return obj;
        }

*/


/*
        static Object access$3602(POI poi, Object obj)
        {
            poi.imageid_ = obj;
            return obj;
        }

*/


/*
        static Object access$3702(POI poi, Object obj)
        {
            poi.tel_ = obj;
            return obj;
        }

*/


/*
        static Object access$3802(POI poi, Object obj)
        {
            poi.linkid_ = obj;
            return obj;
        }

*/


/*
        static Object access$3902(POI poi, Object obj)
        {
            poi.distance_ = obj;
            return obj;
        }

*/


/*
        static Object access$4002(POI poi, Object obj)
        {
            poi.drivedistance_ = obj;
            return obj;
        }

*/


/*
        static int access$4102(POI poi, int i)
        {
            poi.bitField0_ = i;
            return i;
        }

*/

        private POI(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        POI(Builder builder, b b1)
        {
            this(builder);
        }

        private POI(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class POI.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements POIOrBuilder
    {

        private Object address_;
        private int bitField0_;
        private Object buscode_;
        private Object citycode_;
        private Object code_;
        private Object distance_;
        private Object drivedistance_;
        private Object gridcode_;
        private Object imageid_;
        private Object linkid_;
        private Object match_;
        private Object name_;
        private Object newtype_;
        private Object pguid_;
        private Object srctype_;
        private Object tel_;
        private Object timestamp_;
        private Object type_;
        private Object typecode_;
        private Object url_;
        private Object x_;
        private Object xml_;
        private Object y_;

        private POI buildParsed()
            throws InvalidProtocolBufferException
        {
            POI poi = buildPartial();
            if (!poi.isInitialized())
            {
                throw newUninitializedMessageException(poi).asInvalidProtocolBufferException();
            } else
            {
                return poi;
            }
        }

        private static POI.Builder create()
        {
            return new POI.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return CommonProtoBuf.internal_static_POI_descriptor;
        }

        private void maybeForceBuilderInitialization()
        {
            if (!newUninitializedMessageException);
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public POI build()
        {
            POI poi = buildPartial();
            if (!poi.isInitialized())
            {
                throw newUninitializedMessageException(poi);
            } else
            {
                return poi;
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

        public POI buildPartial()
        {
            POI poi = new POI(this, null);
            int k = bitField0_;
            int j = 0;
            if ((k & 1) == 1)
            {
                j = 1;
            }
            poi.pguid_ = pguid_;
            int i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            poi.name_ = name_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            poi.type_ = type_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            poi.x_ = x_;
            j = i;
            if ((k & 0x10) == 16)
            {
                j = i | 0x10;
            }
            poi.y_ = y_;
            i = j;
            if ((k & 0x20) == 32)
            {
                i = j | 0x20;
            }
            poi.srctype_ = srctype_;
            j = i;
            if ((k & 0x40) == 64)
            {
                j = i | 0x40;
            }
            poi.address_ = address_;
            i = j;
            if ((k & 0x80) == 128)
            {
                i = j | 0x80;
            }
            poi.timestamp_ = timestamp_;
            j = i;
            if ((k & 0x100) == 256)
            {
                j = i | 0x100;
            }
            poi.match_ = match_;
            i = j;
            if ((k & 0x200) == 512)
            {
                i = j | 0x200;
            }
            poi.code_ = code_;
            j = i;
            if ((k & 0x400) == 1024)
            {
                j = i | 0x400;
            }
            poi.newtype_ = newtype_;
            i = j;
            if ((k & 0x800) == 2048)
            {
                i = j | 0x800;
            }
            poi.citycode_ = citycode_;
            j = i;
            if ((k & 0x1000) == 4096)
            {
                j = i | 0x1000;
            }
            poi.typecode_ = typecode_;
            i = j;
            if ((k & 0x2000) == 8192)
            {
                i = j | 0x2000;
            }
            poi.gridcode_ = gridcode_;
            j = i;
            if ((k & 0x4000) == 16384)
            {
                j = i | 0x4000;
            }
            poi.buscode_ = buscode_;
            i = j;
            if ((k & 0x8000) == 32768)
            {
                i = j | 0x8000;
            }
            poi.url_ = url_;
            j = i;
            if ((k & 0x10000) == 0x10000)
            {
                j = i | 0x10000;
            }
            poi.xml_ = xml_;
            i = j;
            if ((k & 0x20000) == 0x20000)
            {
                i = j | 0x20000;
            }
            poi.imageid_ = imageid_;
            j = i;
            if ((k & 0x40000) == 0x40000)
            {
                j = i | 0x40000;
            }
            poi.tel_ = tel_;
            i = j;
            if ((k & 0x80000) == 0x80000)
            {
                i = j | 0x80000;
            }
            poi.linkid_ = linkid_;
            j = i;
            if ((0x100000 & k) == 0x100000)
            {
                j = i | 0x100000;
            }
            poi.distance_ = distance_;
            i = j;
            if ((k & 0x200000) == 0x200000)
            {
                i = j | 0x200000;
            }
            poi.drivedistance_ = drivedistance_;
            poi.bitField0_ = i;
            onBuilt();
            return poi;
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

        public POI.Builder clear()
        {
            super.clear();
            pguid_ = "";
            bitField0_ = bitField0_ & -2;
            name_ = "";
            bitField0_ = bitField0_ & -3;
            type_ = "";
            bitField0_ = bitField0_ & -5;
            x_ = "";
            bitField0_ = bitField0_ & -9;
            y_ = "";
            bitField0_ = bitField0_ & 0xffffffef;
            srctype_ = "";
            bitField0_ = bitField0_ & 0xffffffdf;
            address_ = "";
            bitField0_ = bitField0_ & 0xffffffbf;
            timestamp_ = "";
            bitField0_ = bitField0_ & 0xffffff7f;
            match_ = "";
            bitField0_ = bitField0_ & 0xfffffeff;
            code_ = "";
            bitField0_ = bitField0_ & 0xfffffdff;
            newtype_ = "";
            bitField0_ = bitField0_ & 0xfffffbff;
            citycode_ = "";
            bitField0_ = bitField0_ & 0xfffff7ff;
            typecode_ = "";
            bitField0_ = bitField0_ & 0xffffefff;
            gridcode_ = "";
            bitField0_ = bitField0_ & 0xffffdfff;
            buscode_ = "";
            bitField0_ = bitField0_ & 0xffffbfff;
            url_ = "";
            bitField0_ = bitField0_ & 0xffff7fff;
            xml_ = "";
            bitField0_ = bitField0_ & 0xfffeffff;
            imageid_ = "";
            bitField0_ = bitField0_ & 0xfffdffff;
            tel_ = "";
            bitField0_ = bitField0_ & 0xfffbffff;
            linkid_ = "";
            bitField0_ = bitField0_ & 0xfff7ffff;
            distance_ = "";
            bitField0_ = bitField0_ & 0xffefffff;
            drivedistance_ = "";
            bitField0_ = bitField0_ & 0xffdfffff;
            return this;
        }

        public POI.Builder clearAddress()
        {
            bitField0_ = bitField0_ & 0xffffffbf;
            address_ = POI.getDefaultInstance().getAddress();
            onChanged();
            return this;
        }

        public POI.Builder clearBuscode()
        {
            bitField0_ = bitField0_ & 0xffffbfff;
            buscode_ = POI.getDefaultInstance().getBuscode();
            onChanged();
            return this;
        }

        public POI.Builder clearCitycode()
        {
            bitField0_ = bitField0_ & 0xfffff7ff;
            citycode_ = POI.getDefaultInstance().getCitycode();
            onChanged();
            return this;
        }

        public POI.Builder clearCode()
        {
            bitField0_ = bitField0_ & 0xfffffdff;
            code_ = POI.getDefaultInstance().getCode();
            onChanged();
            return this;
        }

        public POI.Builder clearDistance()
        {
            bitField0_ = bitField0_ & 0xffefffff;
            distance_ = POI.getDefaultInstance().getDistance();
            onChanged();
            return this;
        }

        public POI.Builder clearDrivedistance()
        {
            bitField0_ = bitField0_ & 0xffdfffff;
            drivedistance_ = POI.getDefaultInstance().getDrivedistance();
            onChanged();
            return this;
        }

        public POI.Builder clearGridcode()
        {
            bitField0_ = bitField0_ & 0xffffdfff;
            gridcode_ = POI.getDefaultInstance().getGridcode();
            onChanged();
            return this;
        }

        public POI.Builder clearImageid()
        {
            bitField0_ = bitField0_ & 0xfffdffff;
            imageid_ = POI.getDefaultInstance().getImageid();
            onChanged();
            return this;
        }

        public POI.Builder clearLinkid()
        {
            bitField0_ = bitField0_ & 0xfff7ffff;
            linkid_ = POI.getDefaultInstance().getLinkid();
            onChanged();
            return this;
        }

        public POI.Builder clearMatch()
        {
            bitField0_ = bitField0_ & 0xfffffeff;
            match_ = POI.getDefaultInstance().getMatch();
            onChanged();
            return this;
        }

        public POI.Builder clearName()
        {
            bitField0_ = bitField0_ & -3;
            name_ = POI.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public POI.Builder clearNewtype()
        {
            bitField0_ = bitField0_ & 0xfffffbff;
            newtype_ = POI.getDefaultInstance().getNewtype();
            onChanged();
            return this;
        }

        public POI.Builder clearPguid()
        {
            bitField0_ = bitField0_ & -2;
            pguid_ = POI.getDefaultInstance().getPguid();
            onChanged();
            return this;
        }

        public POI.Builder clearSrctype()
        {
            bitField0_ = bitField0_ & 0xffffffdf;
            srctype_ = POI.getDefaultInstance().getSrctype();
            onChanged();
            return this;
        }

        public POI.Builder clearTel()
        {
            bitField0_ = bitField0_ & 0xfffbffff;
            tel_ = POI.getDefaultInstance().getTel();
            onChanged();
            return this;
        }

        public POI.Builder clearTimestamp()
        {
            bitField0_ = bitField0_ & 0xffffff7f;
            timestamp_ = POI.getDefaultInstance().getTimestamp();
            onChanged();
            return this;
        }

        public POI.Builder clearType()
        {
            bitField0_ = bitField0_ & -5;
            type_ = POI.getDefaultInstance().getType();
            onChanged();
            return this;
        }

        public POI.Builder clearTypecode()
        {
            bitField0_ = bitField0_ & 0xffffefff;
            typecode_ = POI.getDefaultInstance().getTypecode();
            onChanged();
            return this;
        }

        public POI.Builder clearUrl()
        {
            bitField0_ = bitField0_ & 0xffff7fff;
            url_ = POI.getDefaultInstance().getUrl();
            onChanged();
            return this;
        }

        public POI.Builder clearX()
        {
            bitField0_ = bitField0_ & -9;
            x_ = POI.getDefaultInstance().getX();
            onChanged();
            return this;
        }

        public POI.Builder clearXml()
        {
            bitField0_ = bitField0_ & 0xfffeffff;
            xml_ = POI.getDefaultInstance().getXml();
            onChanged();
            return this;
        }

        public POI.Builder clearY()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            y_ = POI.getDefaultInstance().getY();
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

        public POI.Builder clone()
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

        public String getBuscode()
        {
            Object obj = buscode_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                buscode_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getCitycode()
        {
            Object obj = citycode_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                citycode_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getCode()
        {
            Object obj = code_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                code_ = obj;
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

        public POI getDefaultInstanceForType()
        {
            return POI.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return POI.getDescriptor();
        }

        public String getDistance()
        {
            Object obj = distance_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                distance_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getDrivedistance()
        {
            Object obj = drivedistance_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                drivedistance_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getGridcode()
        {
            Object obj = gridcode_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                gridcode_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getImageid()
        {
            Object obj = imageid_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                imageid_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getLinkid()
        {
            Object obj = linkid_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                linkid_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getMatch()
        {
            Object obj = match_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                match_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getName()
        {
            Object obj = name_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                name_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getNewtype()
        {
            Object obj = newtype_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                newtype_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getPguid()
        {
            Object obj = pguid_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                pguid_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getSrctype()
        {
            Object obj = srctype_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                srctype_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getTel()
        {
            Object obj = tel_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                tel_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getTimestamp()
        {
            Object obj = timestamp_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                timestamp_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getType()
        {
            Object obj = type_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                type_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getTypecode()
        {
            Object obj = typecode_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                typecode_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getUrl()
        {
            Object obj = url_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                url_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getX()
        {
            Object obj = x_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                x_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getXml()
        {
            Object obj = xml_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                xml_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getY()
        {
            Object obj = y_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                y_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public boolean hasAddress()
        {
            return (bitField0_ & 0x40) == 64;
        }

        public boolean hasBuscode()
        {
            return (bitField0_ & 0x4000) == 16384;
        }

        public boolean hasCitycode()
        {
            return (bitField0_ & 0x800) == 2048;
        }

        public boolean hasCode()
        {
            return (bitField0_ & 0x200) == 512;
        }

        public boolean hasDistance()
        {
            return (bitField0_ & 0x100000) == 0x100000;
        }

        public boolean hasDrivedistance()
        {
            return (bitField0_ & 0x200000) == 0x200000;
        }

        public boolean hasGridcode()
        {
            return (bitField0_ & 0x2000) == 8192;
        }

        public boolean hasImageid()
        {
            return (bitField0_ & 0x20000) == 0x20000;
        }

        public boolean hasLinkid()
        {
            return (bitField0_ & 0x80000) == 0x80000;
        }

        public boolean hasMatch()
        {
            return (bitField0_ & 0x100) == 256;
        }

        public boolean hasName()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasNewtype()
        {
            return (bitField0_ & 0x400) == 1024;
        }

        public boolean hasPguid()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasSrctype()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasTel()
        {
            return (bitField0_ & 0x40000) == 0x40000;
        }

        public boolean hasTimestamp()
        {
            return (bitField0_ & 0x80) == 128;
        }

        public boolean hasType()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasTypecode()
        {
            return (bitField0_ & 0x1000) == 4096;
        }

        public boolean hasUrl()
        {
            return (bitField0_ & 0x8000) == 32768;
        }

        public boolean hasX()
        {
            return (bitField0_ & 8) == 8;
        }

        public boolean hasXml()
        {
            return (bitField0_ & 0x10000) == 0x10000;
        }

        public boolean hasY()
        {
            return (bitField0_ & 0x10) == 16;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return CommonProtoBuf.internal_static_POI_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            while (!hasPguid() || !hasName() || !hasType() || !hasX() || !hasY() || !hasSrctype()) 
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

        public POI.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    pguid_ = codedinputstream.readBytes();
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 2;
                    name_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    type_ = codedinputstream.readBytes();
                    break;

                case 34: // '"'
                    bitField0_ = bitField0_ | 8;
                    x_ = codedinputstream.readBytes();
                    break;

                case 42: // '*'
                    bitField0_ = bitField0_ | 0x10;
                    y_ = codedinputstream.readBytes();
                    break;

                case 50: // '2'
                    bitField0_ = bitField0_ | 0x20;
                    srctype_ = codedinputstream.readBytes();
                    break;

                case 58: // ':'
                    bitField0_ = bitField0_ | 0x40;
                    address_ = codedinputstream.readBytes();
                    break;

                case 66: // 'B'
                    bitField0_ = bitField0_ | 0x80;
                    timestamp_ = codedinputstream.readBytes();
                    break;

                case 74: // 'J'
                    bitField0_ = bitField0_ | 0x100;
                    match_ = codedinputstream.readBytes();
                    break;

                case 82: // 'R'
                    bitField0_ = bitField0_ | 0x200;
                    code_ = codedinputstream.readBytes();
                    break;

                case 90: // 'Z'
                    bitField0_ = bitField0_ | 0x400;
                    newtype_ = codedinputstream.readBytes();
                    break;

                case 98: // 'b'
                    bitField0_ = bitField0_ | 0x800;
                    citycode_ = codedinputstream.readBytes();
                    break;

                case 106: // 'j'
                    bitField0_ = bitField0_ | 0x1000;
                    typecode_ = codedinputstream.readBytes();
                    break;

                case 114: // 'r'
                    bitField0_ = bitField0_ | 0x2000;
                    gridcode_ = codedinputstream.readBytes();
                    break;

                case 122: // 'z'
                    bitField0_ = bitField0_ | 0x4000;
                    buscode_ = codedinputstream.readBytes();
                    break;

                case 130: 
                    bitField0_ = bitField0_ | 0x8000;
                    url_ = codedinputstream.readBytes();
                    break;

                case 138: 
                    bitField0_ = bitField0_ | 0x10000;
                    xml_ = codedinputstream.readBytes();
                    break;

                case 146: 
                    bitField0_ = bitField0_ | 0x20000;
                    imageid_ = codedinputstream.readBytes();
                    break;

                case 154: 
                    bitField0_ = bitField0_ | 0x40000;
                    tel_ = codedinputstream.readBytes();
                    break;

                case 162: 
                    bitField0_ = bitField0_ | 0x80000;
                    linkid_ = codedinputstream.readBytes();
                    break;

                case 170: 
                    bitField0_ = bitField0_ | 0x100000;
                    distance_ = codedinputstream.readBytes();
                    break;

                case 178: 
                    bitField0_ = bitField0_ | 0x200000;
                    drivedistance_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public POI.Builder mergeFrom(Message message)
        {
            if (message instanceof POI)
            {
                return mergeFrom((POI)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public POI.Builder mergeFrom(POI poi)
        {
            if (poi == POI.getDefaultInstance())
            {
                return this;
            }
            if (poi.hasPguid())
            {
                setPguid(poi.getPguid());
            }
            if (poi.hasName())
            {
                setName(poi.getName());
            }
            if (poi.hasType())
            {
                setType(poi.getType());
            }
            if (poi.hasX())
            {
                setX(poi.getX());
            }
            if (poi.hasY())
            {
                setY(poi.getY());
            }
            if (poi.hasSrctype())
            {
                setSrctype(poi.getSrctype());
            }
            if (poi.hasAddress())
            {
                setAddress(poi.getAddress());
            }
            if (poi.hasTimestamp())
            {
                setTimestamp(poi.getTimestamp());
            }
            if (poi.hasMatch())
            {
                setMatch(poi.getMatch());
            }
            if (poi.hasCode())
            {
                setCode(poi.getCode());
            }
            if (poi.hasNewtype())
            {
                setNewtype(poi.getNewtype());
            }
            if (poi.hasCitycode())
            {
                setCitycode(poi.getCitycode());
            }
            if (poi.hasTypecode())
            {
                setTypecode(poi.getTypecode());
            }
            if (poi.hasGridcode())
            {
                setGridcode(poi.getGridcode());
            }
            if (poi.hasBuscode())
            {
                setBuscode(poi.getBuscode());
            }
            if (poi.hasUrl())
            {
                setUrl(poi.getUrl());
            }
            if (poi.hasXml())
            {
                setXml(poi.getXml());
            }
            if (poi.hasImageid())
            {
                setImageid(poi.getImageid());
            }
            if (poi.hasTel())
            {
                setTel(poi.getTel());
            }
            if (poi.hasLinkid())
            {
                setLinkid(poi.getLinkid());
            }
            if (poi.hasDistance())
            {
                setDistance(poi.getDistance());
            }
            if (poi.hasDrivedistance())
            {
                setDrivedistance(poi.getDrivedistance());
            }
            mergeUnknownFields(poi.getUnknownFields());
            return this;
        }

        public POI.Builder setAddress(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x40;
                address_ = s;
                onChanged();
                return this;
            }
        }

        void setAddress(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x40;
            address_ = bytestring;
            onChanged();
        }

        public POI.Builder setBuscode(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x4000;
                buscode_ = s;
                onChanged();
                return this;
            }
        }

        void setBuscode(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x4000;
            buscode_ = bytestring;
            onChanged();
        }

        public POI.Builder setCitycode(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x800;
                citycode_ = s;
                onChanged();
                return this;
            }
        }

        void setCitycode(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x800;
            citycode_ = bytestring;
            onChanged();
        }

        public POI.Builder setCode(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x200;
                code_ = s;
                onChanged();
                return this;
            }
        }

        void setCode(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x200;
            code_ = bytestring;
            onChanged();
        }

        public POI.Builder setDistance(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x100000;
                distance_ = s;
                onChanged();
                return this;
            }
        }

        void setDistance(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x100000;
            distance_ = bytestring;
            onChanged();
        }

        public POI.Builder setDrivedistance(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x200000;
                drivedistance_ = s;
                onChanged();
                return this;
            }
        }

        void setDrivedistance(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x200000;
            drivedistance_ = bytestring;
            onChanged();
        }

        public POI.Builder setGridcode(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x2000;
                gridcode_ = s;
                onChanged();
                return this;
            }
        }

        void setGridcode(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x2000;
            gridcode_ = bytestring;
            onChanged();
        }

        public POI.Builder setImageid(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x20000;
                imageid_ = s;
                onChanged();
                return this;
            }
        }

        void setImageid(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x20000;
            imageid_ = bytestring;
            onChanged();
        }

        public POI.Builder setLinkid(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x80000;
                linkid_ = s;
                onChanged();
                return this;
            }
        }

        void setLinkid(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x80000;
            linkid_ = bytestring;
            onChanged();
        }

        public POI.Builder setMatch(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x100;
                match_ = s;
                onChanged();
                return this;
            }
        }

        void setMatch(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x100;
            match_ = bytestring;
            onChanged();
        }

        public POI.Builder setName(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                name_ = s;
                onChanged();
                return this;
            }
        }

        void setName(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            name_ = bytestring;
            onChanged();
        }

        public POI.Builder setNewtype(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x400;
                newtype_ = s;
                onChanged();
                return this;
            }
        }

        void setNewtype(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x400;
            newtype_ = bytestring;
            onChanged();
        }

        public POI.Builder setPguid(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 1;
                pguid_ = s;
                onChanged();
                return this;
            }
        }

        void setPguid(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 1;
            pguid_ = bytestring;
            onChanged();
        }

        public POI.Builder setSrctype(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x20;
                srctype_ = s;
                onChanged();
                return this;
            }
        }

        void setSrctype(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x20;
            srctype_ = bytestring;
            onChanged();
        }

        public POI.Builder setTel(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x40000;
                tel_ = s;
                onChanged();
                return this;
            }
        }

        void setTel(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x40000;
            tel_ = bytestring;
            onChanged();
        }

        public POI.Builder setTimestamp(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x80;
                timestamp_ = s;
                onChanged();
                return this;
            }
        }

        void setTimestamp(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x80;
            timestamp_ = bytestring;
            onChanged();
        }

        public POI.Builder setType(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                type_ = s;
                onChanged();
                return this;
            }
        }

        void setType(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            type_ = bytestring;
            onChanged();
        }

        public POI.Builder setTypecode(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x1000;
                typecode_ = s;
                onChanged();
                return this;
            }
        }

        void setTypecode(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x1000;
            typecode_ = bytestring;
            onChanged();
        }

        public POI.Builder setUrl(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x8000;
                url_ = s;
                onChanged();
                return this;
            }
        }

        void setUrl(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x8000;
            url_ = bytestring;
            onChanged();
        }

        public POI.Builder setX(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 8;
                x_ = s;
                onChanged();
                return this;
            }
        }

        void setX(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 8;
            x_ = bytestring;
            onChanged();
        }

        public POI.Builder setXml(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x10000;
                xml_ = s;
                onChanged();
                return this;
            }
        }

        void setXml(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x10000;
            xml_ = bytestring;
            onChanged();
        }

        public POI.Builder setY(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x10;
                y_ = s;
                onChanged();
                return this;
            }
        }

        void setY(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x10;
            y_ = bytestring;
            onChanged();
        }



        private POI.Builder()
        {
            pguid_ = "";
            name_ = "";
            type_ = "";
            x_ = "";
            y_ = "";
            srctype_ = "";
            address_ = "";
            timestamp_ = "";
            match_ = "";
            code_ = "";
            newtype_ = "";
            citycode_ = "";
            typecode_ = "";
            gridcode_ = "";
            buscode_ = "";
            url_ = "";
            xml_ = "";
            imageid_ = "";
            tel_ = "";
            linkid_ = "";
            distance_ = "";
            drivedistance_ = "";
            maybeForceBuilderInitialization();
        }

        private POI.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            pguid_ = "";
            name_ = "";
            type_ = "";
            x_ = "";
            y_ = "";
            srctype_ = "";
            address_ = "";
            timestamp_ = "";
            match_ = "";
            code_ = "";
            newtype_ = "";
            citycode_ = "";
            typecode_ = "";
            gridcode_ = "";
            buscode_ = "";
            url_ = "";
            xml_ = "";
            imageid_ = "";
            tel_ = "";
            linkid_ = "";
            distance_ = "";
            drivedistance_ = "";
            maybeForceBuilderInitialization();
        }

        POI.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, b b1)
        {
            this(builderparent);
        }
    }

    public static interface POIOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getAddress();

        public abstract String getBuscode();

        public abstract String getCitycode();

        public abstract String getCode();

        public abstract String getDistance();

        public abstract String getDrivedistance();

        public abstract String getGridcode();

        public abstract String getImageid();

        public abstract String getLinkid();

        public abstract String getMatch();

        public abstract String getName();

        public abstract String getNewtype();

        public abstract String getPguid();

        public abstract String getSrctype();

        public abstract String getTel();

        public abstract String getTimestamp();

        public abstract String getType();

        public abstract String getTypecode();

        public abstract String getUrl();

        public abstract String getX();

        public abstract String getXml();

        public abstract String getY();

        public abstract boolean hasAddress();

        public abstract boolean hasBuscode();

        public abstract boolean hasCitycode();

        public abstract boolean hasCode();

        public abstract boolean hasDistance();

        public abstract boolean hasDrivedistance();

        public abstract boolean hasGridcode();

        public abstract boolean hasImageid();

        public abstract boolean hasLinkid();

        public abstract boolean hasMatch();

        public abstract boolean hasName();

        public abstract boolean hasNewtype();

        public abstract boolean hasPguid();

        public abstract boolean hasSrctype();

        public abstract boolean hasTel();

        public abstract boolean hasTimestamp();

        public abstract boolean hasType();

        public abstract boolean hasTypecode();

        public abstract boolean hasUrl();

        public abstract boolean hasX();

        public abstract boolean hasXml();

        public abstract boolean hasY();
    }

    public static final class Spellcorrect extends GeneratedMessage
        implements SpellcorrectOrBuilder
    {

        public static final int DATA_FIELD_NUMBER = 1;
        private static final Spellcorrect defaultInstance;
        private static final long serialVersionUID = 0L;
        private LazyStringList data_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;

        public static Spellcorrect getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return CommonProtoBuf.internal_static_Spellcorrect_descriptor;
        }

        private void initFields()
        {
            data_ = LazyStringArrayList.EMPTY;
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(Spellcorrect spellcorrect)
        {
            return newBuilder().mergeFrom(spellcorrect);
        }

        public static Spellcorrect parseDelimitedFrom(InputStream inputstream)
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

        public static Spellcorrect parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Spellcorrect parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Spellcorrect parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Spellcorrect parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Spellcorrect parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Spellcorrect parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Spellcorrect parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Spellcorrect parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Spellcorrect parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0, extensionregistrylite)).buildParsed();
        }

        public String getData(int i)
        {
            return (String)data_.get(i);
        }

        public int getDataCount()
        {
            return data_.size();
        }

        public List getDataList()
        {
            return data_;
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public Spellcorrect getDefaultInstanceForType()
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
            for (; i < data_.size(); i++)
            {
                j += CodedOutputStream.computeBytesSizeNoTag(data_.getByteString(i));
            }

            i = 0 + j + getDataList().size() * 1 + getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return CommonProtoBuf.internal_static_Spellcorrect_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            byte byte0 = memoizedIsInitialized;
            if (byte0 != -1)
            {
                return byte0 == 1;
            } else
            {
                memoizedIsInitialized = 1;
                return true;
            }
        }

        public volatile com.google.protobuf.Message.Builder newBuilderForType()
        {
            return newBuilderForType();
        }

        protected volatile com.google.protobuf.Message.Builder newBuilderForType(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            return newBuilderForType(builderparent);
        }

        public volatile com.google.protobuf.MessageLite.Builder newBuilderForType()
        {
            return newBuilderForType();
        }

        public Builder newBuilderForType()
        {
            return newBuilder();
        }

        protected Builder newBuilderForType(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            return new Builder(builderparent, null);
        }

        public volatile com.google.protobuf.Message.Builder toBuilder()
        {
            return toBuilder();
        }

        public volatile com.google.protobuf.MessageLite.Builder toBuilder()
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
            for (int i = 0; i < data_.size(); i++)
            {
                codedoutputstream.writeBytes(1, data_.getByteString(i));
            }

            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new Spellcorrect(true);
            defaultInstance.initFields();
        }




/*
        static LazyStringList access$4902(Spellcorrect spellcorrect, LazyStringList lazystringlist)
        {
            spellcorrect.data_ = lazystringlist;
            return lazystringlist;
        }

*/

        private Spellcorrect(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Spellcorrect(Builder builder, b b1)
        {
            this(builder);
        }

        private Spellcorrect(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Spellcorrect.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements SpellcorrectOrBuilder
    {

        private int bitField0_;
        private LazyStringList data_;

        private Spellcorrect buildParsed()
            throws InvalidProtocolBufferException
        {
            Spellcorrect spellcorrect = buildPartial();
            if (!spellcorrect.isInitialized())
            {
                throw newUninitializedMessageException(spellcorrect).asInvalidProtocolBufferException();
            } else
            {
                return spellcorrect;
            }
        }

        private static Spellcorrect.Builder create()
        {
            return new Spellcorrect.Builder();
        }

        private void ensureDataIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                data_ = new LazyStringArrayList(data_);
                bitField0_ = bitField0_ | 1;
            }
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return CommonProtoBuf.internal_static_Spellcorrect_descriptor;
        }

        private void maybeForceBuilderInitialization()
        {
            if (!isInitialized);
        }

        public Spellcorrect.Builder addAllData(Iterable iterable)
        {
            ensureDataIsMutable();
            com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, data_);
            onChanged();
            return this;
        }

        public Spellcorrect.Builder addData(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureDataIsMutable();
                data_.add(s);
                onChanged();
                return this;
            }
        }

        void addData(ByteString bytestring)
        {
            ensureDataIsMutable();
            data_.add(bytestring);
            onChanged();
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public Spellcorrect build()
        {
            Spellcorrect spellcorrect = buildPartial();
            if (!spellcorrect.isInitialized())
            {
                throw newUninitializedMessageException(spellcorrect);
            } else
            {
                return spellcorrect;
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

        public Spellcorrect buildPartial()
        {
            Spellcorrect spellcorrect = new Spellcorrect(this, null);
            int i = bitField0_;
            if ((bitField0_ & 1) == 1)
            {
                data_ = new UnmodifiableLazyStringList(data_);
                bitField0_ = bitField0_ & -2;
            }
            spellcorrect.data_ = data_;
            onBuilt();
            return spellcorrect;
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

        public Spellcorrect.Builder clear()
        {
            super.clear();
            data_ = LazyStringArrayList.EMPTY;
            bitField0_ = bitField0_ & -2;
            return this;
        }

        public Spellcorrect.Builder clearData()
        {
            data_ = LazyStringArrayList.EMPTY;
            bitField0_ = bitField0_ & -2;
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

        public Spellcorrect.Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public String getData(int i)
        {
            return (String)data_.get(i);
        }

        public int getDataCount()
        {
            return data_.size();
        }

        public List getDataList()
        {
            return Collections.unmodifiableList(data_);
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public Spellcorrect getDefaultInstanceForType()
        {
            return Spellcorrect.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return Spellcorrect.getDescriptor();
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return CommonProtoBuf.internal_static_Spellcorrect_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
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

        public Spellcorrect.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    ensureDataIsMutable();
                    data_.add(codedinputstream.readBytes());
                    break;
                }
            } while (true);
        }

        public Spellcorrect.Builder mergeFrom(Message message)
        {
            if (message instanceof Spellcorrect)
            {
                return mergeFrom((Spellcorrect)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Spellcorrect.Builder mergeFrom(Spellcorrect spellcorrect)
        {
            if (spellcorrect == Spellcorrect.getDefaultInstance())
            {
                return this;
            }
            if (!spellcorrect.data_.isEmpty())
            {
                if (data_.isEmpty())
                {
                    data_ = spellcorrect.data_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureDataIsMutable();
                    data_.addAll(spellcorrect.data_);
                }
                onChanged();
            }
            mergeUnknownFields(spellcorrect.getUnknownFields());
            return this;
        }

        public Spellcorrect.Builder setData(int i, String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureDataIsMutable();
                data_.set(i, s);
                onChanged();
                return this;
            }
        }



        private Spellcorrect.Builder()
        {
            data_ = LazyStringArrayList.EMPTY;
            maybeForceBuilderInitialization();
        }

        private Spellcorrect.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            data_ = LazyStringArrayList.EMPTY;
            maybeForceBuilderInitialization();
        }

        Spellcorrect.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, b b1)
        {
            this(builderparent);
        }
    }

    public static interface SpellcorrectOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getData(int i);

        public abstract int getDataCount();

        public abstract List getDataList();
    }


    private static com.google.protobuf.Descriptors.FileDescriptor descriptor;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_Common_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_Common_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_POI_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_POI_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_Spellcorrect_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_Spellcorrect_fieldAccessorTable;

    private CommonProtoBuf()
    {
    }

    public static com.google.protobuf.Descriptors.FileDescriptor getDescriptor()
    {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistry extensionregistry)
    {
    }

    static 
    {
        b b1 = new b();
        com.google.protobuf.Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] {
            "\n\fcommon.proto\"C\n\006Common\022\016\n\006config\030\001 \002(\t\022\013\n\003a_k\030\002 \002(\t\022\017\n\007resType\030\003 \001(\t\022\013\n\003enc\030\004 \001(\t\"\341\002\n\003POI\022\r\n\005pguid\030\001 \002(\t\022\f\n\004name\030\002 \002(\t\022\f\n\004type\030\003 \002(\t\022\t\n\001x\030\004 \002(\t\022\t\n\001y\030\005 \002(\t\022\017\n\007srctype\030\006 \002(\t\022\017\n\007address\030\007 \001(\t\022\021\n\ttimestamp\030\b \001(\t\022\r\n\005match\030\t \001(\t\022\f\n\004code\030\n \001(\t\022\017\n\007newtype\030\013 \001(\t\022\020\n\bcitycode\030\f \001(\t\022\020\n\btypecode\030\r \001(\t\022\020\n\bgridcode\030\016 \001(\t\022\017\n\007buscode\030\017 \001(\t\022\013\n\003url\030\020 \001(\t\022\013\n\003xml\030\021 \001(\t\022\017\n\007imageid\030\022 \001(\t\022\013\n\003tel\030\023 \001(\t\022\016\n\006linkid\030\024 \001(\t\022\020", "\n\bdistance\030\025 \001(\t\022\025\n\rdrivedistance\030\026 \001(\t\"\034\n\fSpellcorrect\022\f\n\004data\030\001 \003(\tB(\n\026com.mapabc.mapapi.coreB\016CommonProtoBuf"
        }, new com.google.protobuf.Descriptors.FileDescriptor[0], b1);
    }



/*
    static com.google.protobuf.Descriptors.Descriptor access$002(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_Common_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$102(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_Common_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$1202(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_POI_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$1302(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_POI_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$4202(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_Spellcorrect_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$4302(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_Spellcorrect_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/


/*
    static com.google.protobuf.Descriptors.FileDescriptor access$5002(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
    {
        descriptor = filedescriptor;
        return filedescriptor;
    }

*/

    // Unreferenced inner class com/mapabc/mapapi/core/b
    static final class b
        implements com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
    {

        public ExtensionRegistry assignDescriptors(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
        {
            CommonProtoBuf.descriptor = filedescriptor;
            CommonProtoBuf.internal_static_Common_descriptor = (com.google.protobuf.Descriptors.Descriptor)CommonProtoBuf.getDescriptor().getMessageTypes().get(0);
            CommonProtoBuf.internal_static_Common_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(CommonProtoBuf.internal_static_Common_descriptor, new String[] {
                "Config", "AK", "ResType", "Enc"
            }, com/mapabc/mapapi/core/CommonProtoBuf$Common, com/mapabc/mapapi/core/CommonProtoBuf$Common$Builder);
            CommonProtoBuf.internal_static_POI_descriptor = (com.google.protobuf.Descriptors.Descriptor)CommonProtoBuf.getDescriptor().getMessageTypes().get(1);
            CommonProtoBuf.internal_static_POI_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(CommonProtoBuf.internal_static_POI_descriptor, new String[] {
                "Pguid", "Name", "Type", "X", "Y", "Srctype", "Address", "Timestamp", "Match", "Code", 
                "Newtype", "Citycode", "Typecode", "Gridcode", "Buscode", "Url", "Xml", "Imageid", "Tel", "Linkid", 
                "Distance", "Drivedistance"
            }, com/mapabc/mapapi/core/CommonProtoBuf$POI, com/mapabc/mapapi/core/CommonProtoBuf$POI$Builder);
            CommonProtoBuf.internal_static_Spellcorrect_descriptor = (com.google.protobuf.Descriptors.Descriptor)CommonProtoBuf.getDescriptor().getMessageTypes().get(2);
            CommonProtoBuf.internal_static_Spellcorrect_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(CommonProtoBuf.internal_static_Spellcorrect_descriptor, new String[] {
                "Data"
            }, com/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect, com/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder);
            return null;
        }

            b()
            {
            }
    }

}
