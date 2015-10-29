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
//            ReverseGeocodingProtoBuf, z

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements ReverseGeocodingProtoBuf.DistrictOrBuilder
    {

        private int bitField0_;
        private Object bounds_;
        private Object code_;
        private Object name_;
        private Object x_;
        private Object y_;

        private ReverseGeocodingProtoBuf.District buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingProtoBuf.District district = buildPartial();
            if (!district.isInitialized())
            {
                throw newUninitializedMessageException(district).asInvalidProtocolBufferException();
            } else
            {
                return district;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.access$5400();
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

        public ReverseGeocodingProtoBuf.District build()
        {
            ReverseGeocodingProtoBuf.District district = buildPartial();
            if (!district.isInitialized())
            {
                throw newUninitializedMessageException(district);
            } else
            {
                return district;
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

        public ReverseGeocodingProtoBuf.District buildPartial()
        {
            int j = 1;
            ReverseGeocodingProtoBuf.District district = new ReverseGeocodingProtoBuf.District(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            district.name_ = name_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            district.code_ = code_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            district.x_ = x_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            district.y_ = y_;
            j = i;
            if ((k & 0x10) == 16)
            {
                j = i | 0x10;
            }
            district.bounds_ = bounds_;
            district.bitField0_ = j;
            onBuilt();
            return district;
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
            name_ = "";
            bitField0_ = bitField0_ & -2;
            code_ = "";
            bitField0_ = bitField0_ & -3;
            x_ = "";
            bitField0_ = bitField0_ & -5;
            y_ = "";
            bitField0_ = bitField0_ & -9;
            bounds_ = "";
            bitField0_ = bitField0_ & 0xffffffef;
            return this;
        }

        public Builder clearBounds()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            bounds_ = ReverseGeocodingProtoBuf.District.getDefaultInstance().getBounds();
            onChanged();
            return this;
        }

        public Builder clearCode()
        {
            bitField0_ = bitField0_ & -3;
            code_ = ReverseGeocodingProtoBuf.District.getDefaultInstance().getCode();
            onChanged();
            return this;
        }

        public Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = ReverseGeocodingProtoBuf.District.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder clearX()
        {
            bitField0_ = bitField0_ & -5;
            x_ = ReverseGeocodingProtoBuf.District.getDefaultInstance().getX();
            onChanged();
            return this;
        }

        public Builder clearY()
        {
            bitField0_ = bitField0_ & -9;
            y_ = ReverseGeocodingProtoBuf.District.getDefaultInstance().getY();
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

        public String getBounds()
        {
            Object obj = bounds_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                bounds_ = obj;
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

        public ReverseGeocodingProtoBuf.District getDefaultInstanceForType()
        {
            return ReverseGeocodingProtoBuf.District.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingProtoBuf.District.getDescriptor();
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

        public boolean hasBounds()
        {
            return (bitField0_ & 0x10) == 16;
        }

        public boolean hasCode()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasX()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasY()
        {
            return (bitField0_ & 8) == 8;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.access$5500();
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
                    name_ = codedinputstream.readBytes();
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 2;
                    code_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    x_ = codedinputstream.readBytes();
                    break;

                case 34: // '"'
                    bitField0_ = bitField0_ | 8;
                    y_ = codedinputstream.readBytes();
                    break;

                case 42: // '*'
                    bitField0_ = bitField0_ | 0x10;
                    bounds_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingProtoBuf.District)
            {
                return mergeFrom((ReverseGeocodingProtoBuf.District)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(ReverseGeocodingProtoBuf.District district)
        {
            if (district == ReverseGeocodingProtoBuf.District.getDefaultInstance())
            {
                return this;
            }
            if (district.hasName())
            {
                setName(district.getName());
            }
            if (district.hasCode())
            {
                setCode(district.getCode());
            }
            if (district.hasX())
            {
                setX(district.getX());
            }
            if (district.hasY())
            {
                setY(district.getY());
            }
            if (district.hasBounds())
            {
                setBounds(district.getBounds());
            }
            mergeUnknownFields(district.getUnknownFields());
            return this;
        }

        public Builder setBounds(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x10;
                bounds_ = s;
                onChanged();
                return this;
            }
        }

        void setBounds(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x10;
            bounds_ = bytestring;
            onChanged();
        }

        public Builder setCode(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                code_ = s;
                onChanged();
                return this;
            }
        }

        void setCode(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            code_ = bytestring;
            onChanged();
        }

        public Builder setName(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 1;
                name_ = s;
                onChanged();
                return this;
            }
        }

        void setName(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 1;
            name_ = bytestring;
            onChanged();
        }

        public Builder setX(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                x_ = s;
                onChanged();
                return this;
            }
        }

        void setX(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            x_ = bytestring;
            onChanged();
        }

        public Builder setY(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 8;
                y_ = s;
                onChanged();
                return this;
            }
        }

        void setY(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 8;
            y_ = bytestring;
            onChanged();
        }



        private Builder()
        {
            name_ = "";
            code_ = "";
            x_ = "";
            y_ = "";
            bounds_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            code_ = "";
            x_ = "";
            y_ = "";
            bounds_ = "";
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z)
        {
            this(builderparent);
        }
    }


    public static final int BOUNDS_FIELD_NUMBER = 5;
    public static final int CODE_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int X_FIELD_NUMBER = 3;
    public static final int Y_FIELD_NUMBER = 4;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object bounds_;
    private Object code_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private Object name_;
    private Object x_;
    private Object y_;

    private ByteString getBoundsBytes()
    {
        Object obj = bounds_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            bounds_ = obj;
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

    public static code_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.ct.defaultInstance getDescriptor()
    {
        return ReverseGeocodingProtoBuf.access$5400();
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
        name_ = "";
        code_ = "";
        x_ = "";
        y_ = "";
        bounds_ = "";
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

    public String getBounds()
    {
        Object obj = bounds_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            bounds_ = s;
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

    public getDefaultInstanceForType getDefaultInstanceForType()
    {
        return defaultInstance;
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
            j = 0 + CodedOutputStream.computeBytesSize(1, getNameBytes());
        }
        i = j;
        if ((bitField0_ & 2) == 2)
        {
            i = j + CodedOutputStream.computeBytesSize(2, getCodeBytes());
        }
        j = i;
        if ((bitField0_ & 4) == 4)
        {
            j = i + CodedOutputStream.computeBytesSize(3, getXBytes());
        }
        i = j;
        if ((bitField0_ & 8) == 8)
        {
            i = j + CodedOutputStream.computeBytesSize(4, getYBytes());
        }
        j = i;
        if ((bitField0_ & 0x10) == 16)
        {
            j = i + CodedOutputStream.computeBytesSize(5, getBoundsBytes());
        }
        i = j + getUnknownFields().getSerializedSize();
        memoizedSerializedSize = i;
        return i;
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

    public boolean hasBounds()
    {
        return (bitField0_ & 0x10) == 16;
    }

    public boolean hasCode()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasName()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasX()
    {
        return (bitField0_ & 4) == 4;
    }

    public boolean hasY()
    {
        return (bitField0_ & 8) == 8;
    }

    protected com.google.protobuf.e internalGetFieldAccessorTable()
    {
        return ReverseGeocodingProtoBuf.access$5500();
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

    public volatile com.google.protobuf.ct newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.ct newBuilderForType(com.google.protobuf.ct ct)
    {
        return newBuilderForType(ct);
    }

    public volatile com.google.protobuf.ct newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.ct ct)
    {
        return new Builder(ct, null);
    }

    public volatile com.google.protobuf.ct toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.ct toBuilder()
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
            codedoutputstream.writeBytes(1, getNameBytes());
        }
        if ((bitField0_ & 2) == 2)
        {
            codedoutputstream.writeBytes(2, getCodeBytes());
        }
        if ((bitField0_ & 4) == 4)
        {
            codedoutputstream.writeBytes(3, getXBytes());
        }
        if ((bitField0_ & 8) == 8)
        {
            codedoutputstream.writeBytes(4, getYBytes());
        }
        if ((bitField0_ & 0x10) == 16)
        {
            codedoutputstream.writeBytes(5, getBoundsBytes());
        }
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }



/*
    static Object access$6102(Builder builder, Object obj)
    {
        builder.name_ = obj;
        return obj;
    }

*/


/*
    static Object access$6202(name_ name_1, Object obj)
    {
        name_1.code_ = obj;
        return obj;
    }

*/


/*
    static Object access$6302(code_ code_1, Object obj)
    {
        code_1.x_ = obj;
        return obj;
    }

*/


/*
    static Object access$6402(x_ x_1, Object obj)
    {
        x_1.y_ = obj;
        return obj;
    }

*/


/*
    static Object access$6502(y_ y_1, Object obj)
    {
        y_1.bounds_ = obj;
        return obj;
    }

*/


/*
    static int access$6602(bounds_ bounds_1, int i)
    {
        bounds_1.bitField0_ = i;
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
