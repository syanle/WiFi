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
        implements ReverseGeocodingProtoBuf.CrossOrBuilder
    {

        private int bitField0_;
        private Object name_;
        private Object x_;
        private Object y_;

        private ReverseGeocodingProtoBuf.Cross buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingProtoBuf.Cross cross = buildPartial();
            if (!cross.isInitialized())
            {
                throw newUninitializedMessageException(cross).asInvalidProtocolBufferException();
            } else
            {
                return cross;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.access$10900();
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

        public ReverseGeocodingProtoBuf.Cross build()
        {
            ReverseGeocodingProtoBuf.Cross cross = buildPartial();
            if (!cross.isInitialized())
            {
                throw newUninitializedMessageException(cross);
            } else
            {
                return cross;
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

        public ReverseGeocodingProtoBuf.Cross buildPartial()
        {
            int j = 1;
            ReverseGeocodingProtoBuf.Cross cross = new ReverseGeocodingProtoBuf.Cross(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            cross.name_ = name_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            cross.x_ = x_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            cross.y_ = y_;
            cross.bitField0_ = j;
            onBuilt();
            return cross;
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
            x_ = "";
            bitField0_ = bitField0_ & -3;
            y_ = "";
            bitField0_ = bitField0_ & -5;
            return this;
        }

        public Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = ReverseGeocodingProtoBuf.Cross.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder clearX()
        {
            bitField0_ = bitField0_ & -3;
            x_ = ReverseGeocodingProtoBuf.Cross.getDefaultInstance().getX();
            onChanged();
            return this;
        }

        public Builder clearY()
        {
            bitField0_ = bitField0_ & -5;
            y_ = ReverseGeocodingProtoBuf.Cross.getDefaultInstance().getY();
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

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public ReverseGeocodingProtoBuf.Cross getDefaultInstanceForType()
        {
            return ReverseGeocodingProtoBuf.Cross.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingProtoBuf.Cross.getDescriptor();
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

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasX()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasY()
        {
            return (bitField0_ & 4) == 4;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.access$11000();
        }

        public final boolean isInitialized()
        {
            while (!hasName() || !hasX() || !hasY()) 
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
                    name_ = codedinputstream.readBytes();
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 2;
                    x_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    y_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingProtoBuf.Cross)
            {
                return mergeFrom((ReverseGeocodingProtoBuf.Cross)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(ReverseGeocodingProtoBuf.Cross cross)
        {
            if (cross == ReverseGeocodingProtoBuf.Cross.getDefaultInstance())
            {
                return this;
            }
            if (cross.hasName())
            {
                setName(cross.getName());
            }
            if (cross.hasX())
            {
                setX(cross.getX());
            }
            if (cross.hasY())
            {
                setY(cross.getY());
            }
            mergeUnknownFields(cross.getUnknownFields());
            return this;
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
                bitField0_ = bitField0_ | 2;
                x_ = s;
                onChanged();
                return this;
            }
        }

        void setX(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
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
                bitField0_ = bitField0_ | 4;
                y_ = s;
                onChanged();
                return this;
            }
        }

        void setY(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            y_ = bytestring;
            onChanged();
        }



        private Builder()
        {
            name_ = "";
            x_ = "";
            y_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            x_ = "";
            y_ = "";
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z)
        {
            this(builderparent);
        }
    }


    public static final int NAME_FIELD_NUMBER = 1;
    public static final int X_FIELD_NUMBER = 2;
    public static final int Y_FIELD_NUMBER = 3;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private Object name_;
    private Object x_;
    private Object y_;

    public static Builder.onChanged getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.ss.defaultInstance getDescriptor()
    {
        return ReverseGeocodingProtoBuf.access$10900();
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
        x_ = "";
        y_ = "";
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
            i = j + CodedOutputStream.computeBytesSize(2, getXBytes());
        }
        j = i;
        if ((bitField0_ & 4) == 4)
        {
            j = i + CodedOutputStream.computeBytesSize(3, getYBytes());
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

    public boolean hasName()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasX()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasY()
    {
        return (bitField0_ & 4) == 4;
    }

    protected com.google.protobuf.able internalGetFieldAccessorTable()
    {
        return ReverseGeocodingProtoBuf.access$11000();
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
        if (!hasName())
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
        } else
        {
            memoizedIsInitialized = 1;
            return true;
        }
    }

    public volatile com.google.protobuf.ss newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.ss newBuilderForType(com.google.protobuf.ss ss)
    {
        return newBuilderForType(ss);
    }

    public volatile com.google.protobuf.ss newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.ss ss)
    {
        return new Builder(ss, null);
    }

    public volatile com.google.protobuf.ss toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.ss toBuilder()
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
            codedoutputstream.writeBytes(2, getXBytes());
        }
        if ((bitField0_ & 4) == 4)
        {
            codedoutputstream.writeBytes(3, getYBytes());
        }
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }



/*
    static Object access$11602(Builder builder, Object obj)
    {
        builder.name_ = obj;
        return obj;
    }

*/


/*
    static Object access$11702(name_ name_1, Object obj)
    {
        name_1.x_ = obj;
        return obj;
    }

*/


/*
    static Object access$11802(x_ x_1, Object obj)
    {
        x_1.y_ = obj;
        return obj;
    }

*/


/*
    static int access$11902(y_ y_1, int i)
    {
        y_1.bitField0_ = i;
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
