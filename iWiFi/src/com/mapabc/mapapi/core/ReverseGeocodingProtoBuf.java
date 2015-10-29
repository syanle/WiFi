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
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            z, CommonProtoBuf

public final class ReverseGeocodingProtoBuf
{
    public static final class City extends GeneratedMessage
        implements CityOrBuilder
    {

        public static final int CODE_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TEL_FIELD_NUMBER = 3;
        private static final City defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private Object code_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private Object tel_;

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

        public static City getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_City_descriptor;
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

        private void initFields()
        {
            name_ = "";
            code_ = "";
            tel_ = "";
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(City city)
        {
            return newBuilder().mergeFrom(city);
        }

        public static City parseDelimitedFrom(InputStream inputstream)
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

        public static City parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static City parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static City parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static City parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static City parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static City parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static City parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static City parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static City parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0, extensionregistrylite)).buildParsed();
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

        public City getDefaultInstanceForType()
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
                j = i + CodedOutputStream.computeBytesSize(3, getTelBytes());
            }
            i = j + getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
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

        public boolean hasCode()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasTel()
        {
            return (bitField0_ & 4) == 4;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_City_fieldAccessorTable;
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
                codedoutputstream.writeBytes(3, getTelBytes());
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new City(true);
            defaultInstance.initFields();
        }



/*
        static Object access$5002(City city, Object obj)
        {
            city.name_ = obj;
            return obj;
        }

*/


/*
        static Object access$5102(City city, Object obj)
        {
            city.code_ = obj;
            return obj;
        }

*/


/*
        static Object access$5202(City city, Object obj)
        {
            city.tel_ = obj;
            return obj;
        }

*/


/*
        static int access$5302(City city, int i)
        {
            city.bitField0_ = i;
            return i;
        }

*/

        private City(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        City(Builder builder, z z1)
        {
            this(builder);
        }

        private City(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class City.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements CityOrBuilder
    {

        private int bitField0_;
        private Object code_;
        private Object name_;
        private Object tel_;

        private City buildParsed()
            throws InvalidProtocolBufferException
        {
            City city = buildPartial();
            if (!city.isInitialized())
            {
                throw newUninitializedMessageException(city).asInvalidProtocolBufferException();
            } else
            {
                return city;
            }
        }

        private static City.Builder create()
        {
            return new City.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_City_descriptor;
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

        public City build()
        {
            City city = buildPartial();
            if (!city.isInitialized())
            {
                throw newUninitializedMessageException(city);
            } else
            {
                return city;
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

        public City buildPartial()
        {
            int j = 1;
            City city = new City(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            city.name_ = name_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            city.code_ = code_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            city.tel_ = tel_;
            city.bitField0_ = j;
            onBuilt();
            return city;
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

        public City.Builder clear()
        {
            super.clear();
            name_ = "";
            bitField0_ = bitField0_ & -2;
            code_ = "";
            bitField0_ = bitField0_ & -3;
            tel_ = "";
            bitField0_ = bitField0_ & -5;
            return this;
        }

        public City.Builder clearCode()
        {
            bitField0_ = bitField0_ & -3;
            code_ = City.getDefaultInstance().getCode();
            onChanged();
            return this;
        }

        public City.Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = City.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public City.Builder clearTel()
        {
            bitField0_ = bitField0_ & -5;
            tel_ = City.getDefaultInstance().getTel();
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

        public City.Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
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

        public City getDefaultInstanceForType()
        {
            return City.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return City.getDescriptor();
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

        public boolean hasCode()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasTel()
        {
            return (bitField0_ & 4) == 4;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_City_fieldAccessorTable;
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

        public City.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    tel_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public City.Builder mergeFrom(Message message)
        {
            if (message instanceof City)
            {
                return mergeFrom((City)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public City.Builder mergeFrom(City city)
        {
            if (city == City.getDefaultInstance())
            {
                return this;
            }
            if (city.hasName())
            {
                setName(city.getName());
            }
            if (city.hasCode())
            {
                setCode(city.getCode());
            }
            if (city.hasTel())
            {
                setTel(city.getTel());
            }
            mergeUnknownFields(city.getUnknownFields());
            return this;
        }

        public City.Builder setCode(String s)
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

        public City.Builder setName(String s)
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

        public City.Builder setTel(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                tel_ = s;
                onChanged();
                return this;
            }
        }

        void setTel(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            tel_ = bytestring;
            onChanged();
        }



        private City.Builder()
        {
            name_ = "";
            code_ = "";
            tel_ = "";
            maybeForceBuilderInitialization();
        }

        private City.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            code_ = "";
            tel_ = "";
            maybeForceBuilderInitialization();
        }

        City.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface CityOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getCode();

        public abstract String getName();

        public abstract String getTel();

        public abstract boolean hasCode();

        public abstract boolean hasName();

        public abstract boolean hasTel();
    }

    public static final class Cross extends GeneratedMessage
        implements CrossOrBuilder
    {

        public static final int NAME_FIELD_NUMBER = 1;
        public static final int X_FIELD_NUMBER = 2;
        public static final int Y_FIELD_NUMBER = 3;
        private static final Cross defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private Object x_;
        private Object y_;

        public static Cross getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Cross_descriptor;
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

        public static Builder newBuilder(Cross cross)
        {
            return newBuilder().mergeFrom(cross);
        }

        public static Cross parseDelimitedFrom(InputStream inputstream)
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

        public static Cross parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Cross parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Cross parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Cross parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Cross parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Cross parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Cross parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Cross parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Cross parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public Cross getDefaultInstanceForType()
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

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Cross_fieldAccessorTable;
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
            defaultInstance = new Cross(true);
            defaultInstance.initFields();
        }



/*
        static Object access$11602(Cross cross, Object obj)
        {
            cross.name_ = obj;
            return obj;
        }

*/


/*
        static Object access$11702(Cross cross, Object obj)
        {
            cross.x_ = obj;
            return obj;
        }

*/


/*
        static Object access$11802(Cross cross, Object obj)
        {
            cross.y_ = obj;
            return obj;
        }

*/


/*
        static int access$11902(Cross cross, int i)
        {
            cross.bitField0_ = i;
            return i;
        }

*/

        private Cross(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Cross(Builder builder, z z1)
        {
            this(builder);
        }

        private Cross(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Cross.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements CrossOrBuilder
    {

        private int bitField0_;
        private Object name_;
        private Object x_;
        private Object y_;

        private Cross buildParsed()
            throws InvalidProtocolBufferException
        {
            Cross cross = buildPartial();
            if (!cross.isInitialized())
            {
                throw newUninitializedMessageException(cross).asInvalidProtocolBufferException();
            } else
            {
                return cross;
            }
        }

        private static Cross.Builder create()
        {
            return new Cross.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Cross_descriptor;
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

        public Cross build()
        {
            Cross cross = buildPartial();
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

        public Cross buildPartial()
        {
            int j = 1;
            Cross cross = new Cross(this, null);
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

        public Cross.Builder clear()
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

        public Cross.Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = Cross.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Cross.Builder clearX()
        {
            bitField0_ = bitField0_ & -3;
            x_ = Cross.getDefaultInstance().getX();
            onChanged();
            return this;
        }

        public Cross.Builder clearY()
        {
            bitField0_ = bitField0_ & -5;
            y_ = Cross.getDefaultInstance().getY();
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

        public Cross.Builder clone()
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

        public Cross getDefaultInstanceForType()
        {
            return Cross.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return Cross.getDescriptor();
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
            return ReverseGeocodingProtoBuf.internal_static_Cross_fieldAccessorTable;
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

        public Cross.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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

        public Cross.Builder mergeFrom(Message message)
        {
            if (message instanceof Cross)
            {
                return mergeFrom((Cross)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Cross.Builder mergeFrom(Cross cross)
        {
            if (cross == Cross.getDefaultInstance())
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

        public Cross.Builder setName(String s)
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

        public Cross.Builder setX(String s)
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

        public Cross.Builder setY(String s)
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



        private Cross.Builder()
        {
            name_ = "";
            x_ = "";
            y_ = "";
            maybeForceBuilderInitialization();
        }

        private Cross.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            x_ = "";
            y_ = "";
            maybeForceBuilderInitialization();
        }

        Cross.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface CrossOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getName();

        public abstract String getX();

        public abstract String getY();

        public abstract boolean hasName();

        public abstract boolean hasX();

        public abstract boolean hasY();
    }

    public static final class Crosses extends GeneratedMessage
        implements CrossesOrBuilder
    {

        public static final int CROSS_FIELD_NUMBER = 1;
        private static final Crosses defaultInstance;
        private static final long serialVersionUID = 0L;
        private List cross_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;

        public static Crosses getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Crosses_descriptor;
        }

        private void initFields()
        {
            cross_ = Collections.emptyList();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(Crosses crosses)
        {
            return newBuilder().mergeFrom(crosses);
        }

        public static Crosses parseDelimitedFrom(InputStream inputstream)
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

        public static Crosses parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Crosses parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Crosses parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Crosses parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Crosses parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Crosses parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Crosses parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Crosses parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Crosses parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0, extensionregistrylite)).buildParsed();
        }

        public Cross getCross(int i)
        {
            return (Cross)cross_.get(i);
        }

        public int getCrossCount()
        {
            return cross_.size();
        }

        public List getCrossList()
        {
            return cross_;
        }

        public CrossOrBuilder getCrossOrBuilder(int i)
        {
            return (CrossOrBuilder)cross_.get(i);
        }

        public List getCrossOrBuilderList()
        {
            return cross_;
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public Crosses getDefaultInstanceForType()
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
            for (; i < cross_.size(); i++)
            {
                j += CodedOutputStream.computeMessageSize(1, (MessageLite)cross_.get(i));
            }

            i = getUnknownFields().getSerializedSize() + j;
            memoizedSerializedSize = i;
            return i;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Crosses_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            byte byte0 = memoizedIsInitialized;
            if (byte0 != -1)
            {
                return byte0 == 1;
            }
            for (int i = 0; i < getCrossCount(); i++)
            {
                if (!getCross(i).isInitialized())
                {
                    memoizedIsInitialized = 0;
                    return false;
                }
            }

            memoizedIsInitialized = 1;
            return true;
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
            for (int i = 0; i < cross_.size(); i++)
            {
                codedoutputstream.writeMessage(1, (MessageLite)cross_.get(i));
            }

            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new Crosses(true);
            defaultInstance.initFields();
        }




/*
        static List access$10702(Crosses crosses, List list)
        {
            crosses.cross_ = list;
            return list;
        }

*/


        private Crosses(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Crosses(Builder builder, z z1)
        {
            this(builder);
        }

        private Crosses(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Crosses.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements CrossesOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder crossBuilder_;
        private List cross_;

        private Crosses buildParsed()
            throws InvalidProtocolBufferException
        {
            Crosses crosses = buildPartial();
            if (!crosses.isInitialized())
            {
                throw newUninitializedMessageException(crosses).asInvalidProtocolBufferException();
            } else
            {
                return crosses;
            }
        }

        private static Crosses.Builder create()
        {
            return new Crosses.Builder();
        }

        private void ensureCrossIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                cross_ = new ArrayList(cross_);
                bitField0_ = bitField0_ | 1;
            }
        }

        private RepeatedFieldBuilder getCrossFieldBuilder()
        {
            boolean flag = true;
            if (crossBuilder_ == null)
            {
                List list = cross_;
                if ((bitField0_ & 1) != 1)
                {
                    flag = false;
                }
                crossBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                cross_ = null;
            }
            return crossBuilder_;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Crosses_descriptor;
        }

        private void maybeForceBuilderInitialization()
        {
            if (buildPartial)
            {
                getCrossFieldBuilder();
            }
        }

        public Crosses.Builder addAllCross(Iterable iterable)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, cross_);
                onChanged();
                return this;
            } else
            {
                crossBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Crosses.Builder addCross(int i, Cross.Builder builder)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                cross_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                crossBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Crosses.Builder addCross(int i, Cross cross)
        {
            if (crossBuilder_ == null)
            {
                if (cross == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureCrossIsMutable();
                    cross_.add(i, cross);
                    onChanged();
                    return this;
                }
            } else
            {
                crossBuilder_.addMessage(i, cross);
                return this;
            }
        }

        public Crosses.Builder addCross(Cross.Builder builder)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                cross_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                crossBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Crosses.Builder addCross(Cross cross)
        {
            if (crossBuilder_ == null)
            {
                if (cross == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureCrossIsMutable();
                    cross_.add(cross);
                    onChanged();
                    return this;
                }
            } else
            {
                crossBuilder_.addMessage(cross);
                return this;
            }
        }

        public Cross.Builder addCrossBuilder()
        {
            return (Cross.Builder)getCrossFieldBuilder().addBuilder(Cross.getDefaultInstance());
        }

        public Cross.Builder addCrossBuilder(int i)
        {
            return (Cross.Builder)getCrossFieldBuilder().addBuilder(i, Cross.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public Crosses build()
        {
            Crosses crosses = buildPartial();
            if (!crosses.isInitialized())
            {
                throw newUninitializedMessageException(crosses);
            } else
            {
                return crosses;
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

        public Crosses buildPartial()
        {
            Crosses crosses = new Crosses(this, null);
            int i = bitField0_;
            if (crossBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    cross_ = Collections.unmodifiableList(cross_);
                    bitField0_ = bitField0_ & -2;
                }
                crosses.cross_ = cross_;
            } else
            {
                crosses.cross_ = crossBuilder_.build();
            }
            onBuilt();
            return crosses;
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

        public Crosses.Builder clear()
        {
            super.clear();
            if (crossBuilder_ == null)
            {
                cross_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                return this;
            } else
            {
                crossBuilder_.clear();
                return this;
            }
        }

        public Crosses.Builder clearCross()
        {
            if (crossBuilder_ == null)
            {
                cross_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                onChanged();
                return this;
            } else
            {
                crossBuilder_.clear();
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

        public Crosses.Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public Cross getCross(int i)
        {
            if (crossBuilder_ == null)
            {
                return (Cross)cross_.get(i);
            } else
            {
                return (Cross)crossBuilder_.getMessage(i);
            }
        }

        public Cross.Builder getCrossBuilder(int i)
        {
            return (Cross.Builder)getCrossFieldBuilder().getBuilder(i);
        }

        public List getCrossBuilderList()
        {
            return getCrossFieldBuilder().getBuilderList();
        }

        public int getCrossCount()
        {
            if (crossBuilder_ == null)
            {
                return cross_.size();
            } else
            {
                return crossBuilder_.getCount();
            }
        }

        public List getCrossList()
        {
            if (crossBuilder_ == null)
            {
                return Collections.unmodifiableList(cross_);
            } else
            {
                return crossBuilder_.getMessageList();
            }
        }

        public CrossOrBuilder getCrossOrBuilder(int i)
        {
            if (crossBuilder_ == null)
            {
                return (CrossOrBuilder)cross_.get(i);
            } else
            {
                return (CrossOrBuilder)crossBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getCrossOrBuilderList()
        {
            if (crossBuilder_ != null)
            {
                return crossBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(cross_);
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

        public Crosses getDefaultInstanceForType()
        {
            return Crosses.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return Crosses.getDescriptor();
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Crosses_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            for (int i = 0; i < getCrossCount(); i++)
            {
                if (!getCross(i).isInitialized())
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

        public Crosses.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    Cross.Builder builder1 = Cross.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addCross(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Crosses.Builder mergeFrom(Message message)
        {
            if (message instanceof Crosses)
            {
                return mergeFrom((Crosses)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Crosses.Builder mergeFrom(Crosses crosses)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (crosses == Crosses.getDefaultInstance())
            {
                return this;
            }
            if (crossBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!crosses.cross_.isEmpty())
            {
                if (cross_.isEmpty())
                {
                    cross_ = crosses.cross_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureCrossIsMutable();
                    cross_.addAll(crosses.cross_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(crosses.getUnknownFields());
            return this;
_L2:
            if (!crosses.cross_.isEmpty())
            {
                if (crossBuilder_.isEmpty())
                {
                    crossBuilder_.dispose();
                    crossBuilder_ = null;
                    cross_ = crosses.cross_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getCrossFieldBuilder();
                    }
                    crossBuilder_ = repeatedfieldbuilder;
                } else
                {
                    crossBuilder_.addAllMessages(crosses.cross_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Crosses.Builder removeCross(int i)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                cross_.remove(i);
                onChanged();
                return this;
            } else
            {
                crossBuilder_.remove(i);
                return this;
            }
        }

        public Crosses.Builder setCross(int i, Cross.Builder builder)
        {
            if (crossBuilder_ == null)
            {
                ensureCrossIsMutable();
                cross_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                crossBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Crosses.Builder setCross(int i, Cross cross)
        {
            if (crossBuilder_ == null)
            {
                if (cross == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureCrossIsMutable();
                    cross_.set(i, cross);
                    onChanged();
                    return this;
                }
            } else
            {
                crossBuilder_.setMessage(i, cross);
                return this;
            }
        }



        private Crosses.Builder()
        {
            cross_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Crosses.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            cross_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Crosses.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface CrossesOrBuilder
        extends MessageOrBuilder
    {

        public abstract Cross getCross(int i);

        public abstract int getCrossCount();

        public abstract List getCrossList();

        public abstract CrossOrBuilder getCrossOrBuilder(int i);

        public abstract List getCrossOrBuilderList();
    }

    public static final class District extends GeneratedMessage
        implements DistrictOrBuilder
    {

        public static final int BOUNDS_FIELD_NUMBER = 5;
        public static final int CODE_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int X_FIELD_NUMBER = 3;
        public static final int Y_FIELD_NUMBER = 4;
        private static final District defaultInstance;
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

        public static District getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_District_descriptor;
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

        public static Builder newBuilder(District district)
        {
            return newBuilder().mergeFrom(district);
        }

        public static District parseDelimitedFrom(InputStream inputstream)
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

        public static District parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static District parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static District parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static District parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static District parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static District parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static District parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static District parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static District parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public District getDefaultInstanceForType()
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

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_District_fieldAccessorTable;
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
            defaultInstance = new District(true);
            defaultInstance.initFields();
        }



/*
        static Object access$6102(District district, Object obj)
        {
            district.name_ = obj;
            return obj;
        }

*/


/*
        static Object access$6202(District district, Object obj)
        {
            district.code_ = obj;
            return obj;
        }

*/


/*
        static Object access$6302(District district, Object obj)
        {
            district.x_ = obj;
            return obj;
        }

*/


/*
        static Object access$6402(District district, Object obj)
        {
            district.y_ = obj;
            return obj;
        }

*/


/*
        static Object access$6502(District district, Object obj)
        {
            district.bounds_ = obj;
            return obj;
        }

*/


/*
        static int access$6602(District district, int i)
        {
            district.bitField0_ = i;
            return i;
        }

*/

        private District(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        District(Builder builder, z z1)
        {
            this(builder);
        }

        private District(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class District.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements DistrictOrBuilder
    {

        private int bitField0_;
        private Object bounds_;
        private Object code_;
        private Object name_;
        private Object x_;
        private Object y_;

        private District buildParsed()
            throws InvalidProtocolBufferException
        {
            District district = buildPartial();
            if (!district.isInitialized())
            {
                throw newUninitializedMessageException(district).asInvalidProtocolBufferException();
            } else
            {
                return district;
            }
        }

        private static District.Builder create()
        {
            return new District.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_District_descriptor;
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

        public District build()
        {
            District district = buildPartial();
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

        public District buildPartial()
        {
            int j = 1;
            District district = new District(this, null);
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

        public District.Builder clear()
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

        public District.Builder clearBounds()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            bounds_ = District.getDefaultInstance().getBounds();
            onChanged();
            return this;
        }

        public District.Builder clearCode()
        {
            bitField0_ = bitField0_ & -3;
            code_ = District.getDefaultInstance().getCode();
            onChanged();
            return this;
        }

        public District.Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = District.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public District.Builder clearX()
        {
            bitField0_ = bitField0_ & -5;
            x_ = District.getDefaultInstance().getX();
            onChanged();
            return this;
        }

        public District.Builder clearY()
        {
            bitField0_ = bitField0_ & -9;
            y_ = District.getDefaultInstance().getY();
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

        public District.Builder clone()
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

        public District getDefaultInstanceForType()
        {
            return District.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return District.getDescriptor();
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
            return ReverseGeocodingProtoBuf.internal_static_District_fieldAccessorTable;
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

        public District.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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

        public District.Builder mergeFrom(Message message)
        {
            if (message instanceof District)
            {
                return mergeFrom((District)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public District.Builder mergeFrom(District district)
        {
            if (district == District.getDefaultInstance())
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

        public District.Builder setBounds(String s)
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

        public District.Builder setCode(String s)
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

        public District.Builder setName(String s)
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

        public District.Builder setX(String s)
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

        public District.Builder setY(String s)
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



        private District.Builder()
        {
            name_ = "";
            code_ = "";
            x_ = "";
            y_ = "";
            bounds_ = "";
            maybeForceBuilderInitialization();
        }

        private District.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            code_ = "";
            x_ = "";
            y_ = "";
            bounds_ = "";
            maybeForceBuilderInitialization();
        }

        District.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface DistrictOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getBounds();

        public abstract String getCode();

        public abstract String getName();

        public abstract String getX();

        public abstract String getY();

        public abstract boolean hasBounds();

        public abstract boolean hasCode();

        public abstract boolean hasName();

        public abstract boolean hasX();

        public abstract boolean hasY();
    }

    public static final class POIS extends GeneratedMessage
        implements POISOrBuilder
    {

        public static final int POI_FIELD_NUMBER = 1;
        private static final POIS defaultInstance;
        private static final long serialVersionUID = 0L;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List poi_;

        public static POIS getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_POIS_descriptor;
        }

        private void initFields()
        {
            poi_ = Collections.emptyList();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(POIS pois)
        {
            return newBuilder().mergeFrom(pois);
        }

        public static POIS parseDelimitedFrom(InputStream inputstream)
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

        public static POIS parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static POIS parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static POIS parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static POIS parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static POIS parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static POIS parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static POIS parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static POIS parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static POIS parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public POIS getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public CommonProtoBuf.POI getPoi(int i)
        {
            return (CommonProtoBuf.POI)poi_.get(i);
        }

        public int getPoiCount()
        {
            return poi_.size();
        }

        public List getPoiList()
        {
            return poi_;
        }

        public CommonProtoBuf.POIOrBuilder getPoiOrBuilder(int i)
        {
            return (CommonProtoBuf.POIOrBuilder)poi_.get(i);
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

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_POIS_fieldAccessorTable;
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
                if (!getPoi(i).isInitialized())
                {
                    memoizedIsInitialized = 0;
                    return false;
                }
            }

            memoizedIsInitialized = 1;
            return true;
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
            for (int i = 0; i < poi_.size(); i++)
            {
                codedoutputstream.writeMessage(1, (MessageLite)poi_.get(i));
            }

            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new POIS(true);
            defaultInstance.initFields();
        }




/*
        static List access$9802(POIS pois, List list)
        {
            pois.poi_ = list;
            return list;
        }

*/


        private POIS(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        POIS(Builder builder, z z1)
        {
            this(builder);
        }

        private POIS(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class POIS.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements POISOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder poiBuilder_;
        private List poi_;

        private POIS buildParsed()
            throws InvalidProtocolBufferException
        {
            POIS pois = buildPartial();
            if (!pois.isInitialized())
            {
                throw newUninitializedMessageException(pois).asInvalidProtocolBufferException();
            } else
            {
                return pois;
            }
        }

        private static POIS.Builder create()
        {
            return new POIS.Builder();
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
            return ReverseGeocodingProtoBuf.internal_static_POIS_descriptor;
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

        public POIS.Builder addAllPoi(Iterable iterable)
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

        public POIS.Builder addPoi(int i, CommonProtoBuf.POI.Builder builder)
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

        public POIS.Builder addPoi(int i, CommonProtoBuf.POI poi)
        {
            if (poiBuilder_ == null)
            {
                if (poi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensurePoiIsMutable();
                    poi_.add(i, poi);
                    onChanged();
                    return this;
                }
            } else
            {
                poiBuilder_.addMessage(i, poi);
                return this;
            }
        }

        public POIS.Builder addPoi(CommonProtoBuf.POI.Builder builder)
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

        public POIS.Builder addPoi(CommonProtoBuf.POI poi)
        {
            if (poiBuilder_ == null)
            {
                if (poi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensurePoiIsMutable();
                    poi_.add(poi);
                    onChanged();
                    return this;
                }
            } else
            {
                poiBuilder_.addMessage(poi);
                return this;
            }
        }

        public CommonProtoBuf.POI.Builder addPoiBuilder()
        {
            return (CommonProtoBuf.POI.Builder)getPoiFieldBuilder().addBuilder(CommonProtoBuf.POI.getDefaultInstance());
        }

        public CommonProtoBuf.POI.Builder addPoiBuilder(int i)
        {
            return (CommonProtoBuf.POI.Builder)getPoiFieldBuilder().addBuilder(i, CommonProtoBuf.POI.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public POIS build()
        {
            POIS pois = buildPartial();
            if (!pois.isInitialized())
            {
                throw newUninitializedMessageException(pois);
            } else
            {
                return pois;
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

        public POIS buildPartial()
        {
            POIS pois = new POIS(this, null);
            int i = bitField0_;
            if (poiBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    poi_ = Collections.unmodifiableList(poi_);
                    bitField0_ = bitField0_ & -2;
                }
                pois.poi_ = poi_;
            } else
            {
                pois.poi_ = poiBuilder_.build();
            }
            onBuilt();
            return pois;
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

        public POIS.Builder clear()
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

        public POIS.Builder clearPoi()
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

        public POIS.Builder clone()
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

        public POIS getDefaultInstanceForType()
        {
            return POIS.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return POIS.getDescriptor();
        }

        public CommonProtoBuf.POI getPoi(int i)
        {
            if (poiBuilder_ == null)
            {
                return (CommonProtoBuf.POI)poi_.get(i);
            } else
            {
                return (CommonProtoBuf.POI)poiBuilder_.getMessage(i);
            }
        }

        public CommonProtoBuf.POI.Builder getPoiBuilder(int i)
        {
            return (CommonProtoBuf.POI.Builder)getPoiFieldBuilder().getBuilder(i);
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

        public CommonProtoBuf.POIOrBuilder getPoiOrBuilder(int i)
        {
            if (poiBuilder_ == null)
            {
                return (CommonProtoBuf.POIOrBuilder)poi_.get(i);
            } else
            {
                return (CommonProtoBuf.POIOrBuilder)poiBuilder_.getMessageOrBuilder(i);
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
            return ReverseGeocodingProtoBuf.internal_static_POIS_fieldAccessorTable;
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

        public POIS.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    CommonProtoBuf.POI.Builder builder1 = CommonProtoBuf.POI.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addPoi(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public POIS.Builder mergeFrom(Message message)
        {
            if (message instanceof POIS)
            {
                return mergeFrom((POIS)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public POIS.Builder mergeFrom(POIS pois)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (pois == POIS.getDefaultInstance())
            {
                return this;
            }
            if (poiBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!pois.poi_.isEmpty())
            {
                if (poi_.isEmpty())
                {
                    poi_ = pois.poi_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensurePoiIsMutable();
                    poi_.addAll(pois.poi_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(pois.getUnknownFields());
            return this;
_L2:
            if (!pois.poi_.isEmpty())
            {
                if (poiBuilder_.isEmpty())
                {
                    poiBuilder_.dispose();
                    poiBuilder_ = null;
                    poi_ = pois.poi_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getPoiFieldBuilder();
                    }
                    poiBuilder_ = repeatedfieldbuilder;
                } else
                {
                    poiBuilder_.addAllMessages(pois.poi_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public POIS.Builder removePoi(int i)
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

        public POIS.Builder setPoi(int i, CommonProtoBuf.POI.Builder builder)
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

        public POIS.Builder setPoi(int i, CommonProtoBuf.POI poi)
        {
            if (poiBuilder_ == null)
            {
                if (poi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensurePoiIsMutable();
                    poi_.set(i, poi);
                    onChanged();
                    return this;
                }
            } else
            {
                poiBuilder_.setMessage(i, poi);
                return this;
            }
        }



        private POIS.Builder()
        {
            poi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private POIS.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            poi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        POIS.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface POISOrBuilder
        extends MessageOrBuilder
    {

        public abstract CommonProtoBuf.POI getPoi(int i);

        public abstract int getPoiCount();

        public abstract List getPoiList();

        public abstract CommonProtoBuf.POIOrBuilder getPoiOrBuilder(int i);

        public abstract List getPoiOrBuilderList();
    }

    public static final class Province extends GeneratedMessage
        implements ProvinceOrBuilder
    {

        public static final int CODE_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        private static final Province defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private Object code_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;

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

        public static Province getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Province_descriptor;
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

        private void initFields()
        {
            name_ = "";
            code_ = "";
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(Province province)
        {
            return newBuilder().mergeFrom(province);
        }

        public static Province parseDelimitedFrom(InputStream inputstream)
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

        public static Province parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Province parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Province parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Province parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Province parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Province parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Province parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Province parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Province parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0, extensionregistrylite)).buildParsed();
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

        public Province getDefaultInstanceForType()
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
            i = 0;
            if ((bitField0_ & 1) == 1)
            {
                i = 0 + CodedOutputStream.computeBytesSize(1, getNameBytes());
            }
            int j = i;
            if ((bitField0_ & 2) == 2)
            {
                j = i + CodedOutputStream.computeBytesSize(2, getCodeBytes());
            }
            i = j + getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
        }

        public boolean hasCode()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Province_fieldAccessorTable;
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
            if ((bitField0_ & 1) == 1)
            {
                codedoutputstream.writeBytes(1, getNameBytes());
            }
            if ((bitField0_ & 2) == 2)
            {
                codedoutputstream.writeBytes(2, getCodeBytes());
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new Province(true);
            defaultInstance.initFields();
        }



/*
        static Object access$4002(Province province, Object obj)
        {
            province.name_ = obj;
            return obj;
        }

*/


/*
        static Object access$4102(Province province, Object obj)
        {
            province.code_ = obj;
            return obj;
        }

*/


/*
        static int access$4202(Province province, int i)
        {
            province.bitField0_ = i;
            return i;
        }

*/

        private Province(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Province(Builder builder, z z1)
        {
            this(builder);
        }

        private Province(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Province.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements ProvinceOrBuilder
    {

        private int bitField0_;
        private Object code_;
        private Object name_;

        private Province buildParsed()
            throws InvalidProtocolBufferException
        {
            Province province = buildPartial();
            if (!province.isInitialized())
            {
                throw newUninitializedMessageException(province).asInvalidProtocolBufferException();
            } else
            {
                return province;
            }
        }

        private static Province.Builder create()
        {
            return new Province.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Province_descriptor;
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

        public Province build()
        {
            Province province = buildPartial();
            if (!province.isInitialized())
            {
                throw newUninitializedMessageException(province);
            } else
            {
                return province;
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

        public Province buildPartial()
        {
            int i = 1;
            Province province = new Province(this, null);
            int k = bitField0_;
            int j;
            if ((k & 1) != 1)
            {
                i = 0;
            }
            province.name_ = name_;
            j = i;
            if ((k & 2) == 2)
            {
                j = i | 2;
            }
            province.code_ = code_;
            province.bitField0_ = j;
            onBuilt();
            return province;
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

        public Province.Builder clear()
        {
            super.clear();
            name_ = "";
            bitField0_ = bitField0_ & -2;
            code_ = "";
            bitField0_ = bitField0_ & -3;
            return this;
        }

        public Province.Builder clearCode()
        {
            bitField0_ = bitField0_ & -3;
            code_ = Province.getDefaultInstance().getCode();
            onChanged();
            return this;
        }

        public Province.Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = Province.getDefaultInstance().getName();
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

        public Province.Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
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

        public Province getDefaultInstanceForType()
        {
            return Province.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return Province.getDescriptor();
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

        public boolean hasCode()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Province_fieldAccessorTable;
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

        public Province.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                }
            } while (true);
        }

        public Province.Builder mergeFrom(Message message)
        {
            if (message instanceof Province)
            {
                return mergeFrom((Province)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Province.Builder mergeFrom(Province province)
        {
            if (province == Province.getDefaultInstance())
            {
                return this;
            }
            if (province.hasName())
            {
                setName(province.getName());
            }
            if (province.hasCode())
            {
                setCode(province.getCode());
            }
            mergeUnknownFields(province.getUnknownFields());
            return this;
        }

        public Province.Builder setCode(String s)
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

        public Province.Builder setName(String s)
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



        private Province.Builder()
        {
            name_ = "";
            code_ = "";
            maybeForceBuilderInitialization();
        }

        private Province.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            code_ = "";
            maybeForceBuilderInitialization();
        }

        Province.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface ProvinceOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getCode();

        public abstract String getName();

        public abstract boolean hasCode();

        public abstract boolean hasName();
    }

    public static final class ReverseGeocodingRequest extends GeneratedMessage
        implements ReverseGeocodingRequestOrBuilder
    {

        public static final int COMMON_FIELD_NUMBER = 1;
        public static final int SPATIALXML_FIELD_NUMBER = 2;
        private static final ReverseGeocodingRequest defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private CommonProtoBuf.Common common_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object spatialXml_;

        public static ReverseGeocodingRequest getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingRequest_descriptor;
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
            common_ = CommonProtoBuf.Common.getDefaultInstance();
            spatialXml_ = "";
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(ReverseGeocodingRequest reversegeocodingrequest)
        {
            return newBuilder().mergeFrom(reversegeocodingrequest);
        }

        public static ReverseGeocodingRequest parseDelimitedFrom(InputStream inputstream)
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

        public static ReverseGeocodingRequest parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static ReverseGeocodingRequest parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static ReverseGeocodingRequest parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static ReverseGeocodingRequest parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static ReverseGeocodingRequest parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static ReverseGeocodingRequest parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static ReverseGeocodingRequest parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static ReverseGeocodingRequest parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static ReverseGeocodingRequest parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0, extensionregistrylite)).buildParsed();
        }

        public CommonProtoBuf.Common getCommon()
        {
            return common_;
        }

        public CommonProtoBuf.CommonOrBuilder getCommonOrBuilder()
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

        public ReverseGeocodingRequest getDefaultInstanceForType()
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

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingRequest_fieldAccessorTable;
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
            if (!getCommon().isInitialized())
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
            defaultInstance = new ReverseGeocodingRequest(true);
            defaultInstance.initFields();
        }



/*
        static CommonProtoBuf.Common access$702(ReverseGeocodingRequest reversegeocodingrequest, CommonProtoBuf.Common common)
        {
            reversegeocodingrequest.common_ = common;
            return common;
        }

*/


/*
        static Object access$802(ReverseGeocodingRequest reversegeocodingrequest, Object obj)
        {
            reversegeocodingrequest.spatialXml_ = obj;
            return obj;
        }

*/


/*
        static int access$902(ReverseGeocodingRequest reversegeocodingrequest, int i)
        {
            reversegeocodingrequest.bitField0_ = i;
            return i;
        }

*/

        private ReverseGeocodingRequest(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        ReverseGeocodingRequest(Builder builder, z z1)
        {
            this(builder);
        }

        private ReverseGeocodingRequest(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class ReverseGeocodingRequest.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements ReverseGeocodingRequestOrBuilder
    {

        private int bitField0_;
        private SingleFieldBuilder commonBuilder_;
        private CommonProtoBuf.Common common_;
        private Object spatialXml_;

        private ReverseGeocodingRequest buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingRequest reversegeocodingrequest = buildPartial();
            if (!reversegeocodingrequest.isInitialized())
            {
                throw newUninitializedMessageException(reversegeocodingrequest).asInvalidProtocolBufferException();
            } else
            {
                return reversegeocodingrequest;
            }
        }

        private static ReverseGeocodingRequest.Builder create()
        {
            return new ReverseGeocodingRequest.Builder();
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
            return ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingRequest_descriptor;
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

        public ReverseGeocodingRequest build()
        {
            ReverseGeocodingRequest reversegeocodingrequest = buildPartial();
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

        public ReverseGeocodingRequest buildPartial()
        {
            ReverseGeocodingRequest reversegeocodingrequest = new ReverseGeocodingRequest(this, null);
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

        public ReverseGeocodingRequest.Builder clear()
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

        public ReverseGeocodingRequest.Builder clearCommon()
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

        public ReverseGeocodingRequest.Builder clearSpatialXml()
        {
            bitField0_ = bitField0_ & -3;
            spatialXml_ = ReverseGeocodingRequest.getDefaultInstance().getSpatialXml();
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

        public ReverseGeocodingRequest.Builder clone()
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

        public ReverseGeocodingRequest getDefaultInstanceForType()
        {
            return ReverseGeocodingRequest.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingRequest.getDescriptor();
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
            return ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingRequest_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            while (!hasCommon() || !hasSpatialXml() || !getCommon().isInitialized()) 
            {
                return false;
            }
            return true;
        }

        public ReverseGeocodingRequest.Builder mergeCommon(CommonProtoBuf.Common common)
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

        public ReverseGeocodingRequest.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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

        public ReverseGeocodingRequest.Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingRequest)
            {
                return mergeFrom((ReverseGeocodingRequest)message);
            } else
            {
                mergeFrom(message);
                return this;
            }
        }

        public ReverseGeocodingRequest.Builder mergeFrom(ReverseGeocodingRequest reversegeocodingrequest)
        {
            if (reversegeocodingrequest == ReverseGeocodingRequest.getDefaultInstance())
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

        public ReverseGeocodingRequest.Builder setCommon(CommonProtoBuf.Common.Builder builder)
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

        public ReverseGeocodingRequest.Builder setCommon(CommonProtoBuf.Common common)
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

        public ReverseGeocodingRequest.Builder setSpatialXml(String s)
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



        private ReverseGeocodingRequest.Builder()
        {
            common_ = CommonProtoBuf.Common.getDefaultInstance();
            spatialXml_ = "";
            maybeForceBuilderInitialization();
        }

        private ReverseGeocodingRequest.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            common_ = CommonProtoBuf.Common.getDefaultInstance();
            spatialXml_ = "";
            maybeForceBuilderInitialization();
        }

        ReverseGeocodingRequest.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface ReverseGeocodingRequestOrBuilder
        extends MessageOrBuilder
    {

        public abstract CommonProtoBuf.Common getCommon();

        public abstract CommonProtoBuf.CommonOrBuilder getCommonOrBuilder();

        public abstract String getSpatialXml();

        public abstract boolean hasCommon();

        public abstract boolean hasSpatialXml();
    }

    public static final class ReverseGeocodingResponse extends GeneratedMessage
        implements ReverseGeocodingResponseOrBuilder
    {

        public static final int SPATIAL_FIELD_NUMBER = 1;
        private static final ReverseGeocodingResponse defaultInstance;
        private static final long serialVersionUID = 0L;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List spatial_;

        public static ReverseGeocodingResponse getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingResponse_descriptor;
        }

        private void initFields()
        {
            spatial_ = Collections.emptyList();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(ReverseGeocodingResponse reversegeocodingresponse)
        {
            return newBuilder().mergeFrom(reversegeocodingresponse);
        }

        public static ReverseGeocodingResponse parseDelimitedFrom(InputStream inputstream)
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

        public static ReverseGeocodingResponse parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static ReverseGeocodingResponse parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static ReverseGeocodingResponse parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static ReverseGeocodingResponse parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static ReverseGeocodingResponse parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static ReverseGeocodingResponse parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static ReverseGeocodingResponse parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static ReverseGeocodingResponse parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static ReverseGeocodingResponse parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public ReverseGeocodingResponse getDefaultInstanceForType()
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

        public Spatial getSpatial(int i)
        {
            return (Spatial)spatial_.get(i);
        }

        public int getSpatialCount()
        {
            return spatial_.size();
        }

        public List getSpatialList()
        {
            return spatial_;
        }

        public SpatialOrBuilder getSpatialOrBuilder(int i)
        {
            return (SpatialOrBuilder)spatial_.get(i);
        }

        public List getSpatialOrBuilderList()
        {
            return spatial_;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingResponse_fieldAccessorTable;
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
                if (!getSpatial(i).isInitialized())
                {
                    memoizedIsInitialized = 0;
                    return false;
                }
            }

            memoizedIsInitialized = 1;
            return true;
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
            for (int i = 0; i < spatial_.size(); i++)
            {
                codedoutputstream.writeMessage(1, (MessageLite)spatial_.get(i));
            }

            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new ReverseGeocodingResponse(true);
            defaultInstance.initFields();
        }




/*
        static List access$1702(ReverseGeocodingResponse reversegeocodingresponse, List list)
        {
            reversegeocodingresponse.spatial_ = list;
            return list;
        }

*/


        private ReverseGeocodingResponse(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        ReverseGeocodingResponse(Builder builder, z z1)
        {
            this(builder);
        }

        private ReverseGeocodingResponse(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class ReverseGeocodingResponse.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements ReverseGeocodingResponseOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder spatialBuilder_;
        private List spatial_;

        private ReverseGeocodingResponse buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingResponse reversegeocodingresponse = buildPartial();
            if (!reversegeocodingresponse.isInitialized())
            {
                throw newUninitializedMessageException(reversegeocodingresponse).asInvalidProtocolBufferException();
            } else
            {
                return reversegeocodingresponse;
            }
        }

        private static ReverseGeocodingResponse.Builder create()
        {
            return new ReverseGeocodingResponse.Builder();
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
            return ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingResponse_descriptor;
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

        public ReverseGeocodingResponse.Builder addAllSpatial(Iterable iterable)
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

        public ReverseGeocodingResponse.Builder addSpatial(int i, Spatial.Builder builder)
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

        public ReverseGeocodingResponse.Builder addSpatial(int i, Spatial spatial)
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

        public ReverseGeocodingResponse.Builder addSpatial(Spatial.Builder builder)
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

        public ReverseGeocodingResponse.Builder addSpatial(Spatial spatial)
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

        public Spatial.Builder addSpatialBuilder()
        {
            return (Spatial.Builder)getSpatialFieldBuilder().addBuilder(Spatial.getDefaultInstance());
        }

        public Spatial.Builder addSpatialBuilder(int i)
        {
            return (Spatial.Builder)getSpatialFieldBuilder().addBuilder(i, Spatial.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public ReverseGeocodingResponse build()
        {
            ReverseGeocodingResponse reversegeocodingresponse = buildPartial();
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

        public ReverseGeocodingResponse buildPartial()
        {
            ReverseGeocodingResponse reversegeocodingresponse = new ReverseGeocodingResponse(this, null);
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

        public ReverseGeocodingResponse.Builder clear()
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

        public ReverseGeocodingResponse.Builder clearSpatial()
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

        public ReverseGeocodingResponse.Builder clone()
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

        public ReverseGeocodingResponse getDefaultInstanceForType()
        {
            return ReverseGeocodingResponse.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingResponse.getDescriptor();
        }

        public Spatial getSpatial(int i)
        {
            if (spatialBuilder_ == null)
            {
                return (Spatial)spatial_.get(i);
            } else
            {
                return (Spatial)spatialBuilder_.getMessage(i);
            }
        }

        public Spatial.Builder getSpatialBuilder(int i)
        {
            return (Spatial.Builder)getSpatialFieldBuilder().getBuilder(i);
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

        public SpatialOrBuilder getSpatialOrBuilder(int i)
        {
            if (spatialBuilder_ == null)
            {
                return (SpatialOrBuilder)spatial_.get(i);
            } else
            {
                return (SpatialOrBuilder)spatialBuilder_.getMessageOrBuilder(i);
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
            return ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingResponse_fieldAccessorTable;
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

        public ReverseGeocodingResponse.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    Spatial.Builder builder1 = Spatial.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addSpatial(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public ReverseGeocodingResponse.Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingResponse)
            {
                return mergeFrom((ReverseGeocodingResponse)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public ReverseGeocodingResponse.Builder mergeFrom(ReverseGeocodingResponse reversegeocodingresponse)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (reversegeocodingresponse == ReverseGeocodingResponse.getDefaultInstance())
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

        public ReverseGeocodingResponse.Builder removeSpatial(int i)
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

        public ReverseGeocodingResponse.Builder setSpatial(int i, Spatial.Builder builder)
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

        public ReverseGeocodingResponse.Builder setSpatial(int i, Spatial spatial)
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



        private ReverseGeocodingResponse.Builder()
        {
            spatial_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private ReverseGeocodingResponse.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            spatial_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        ReverseGeocodingResponse.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface ReverseGeocodingResponseOrBuilder
        extends MessageOrBuilder
    {

        public abstract Spatial getSpatial(int i);

        public abstract int getSpatialCount();

        public abstract List getSpatialList();

        public abstract SpatialOrBuilder getSpatialOrBuilder(int i);

        public abstract List getSpatialOrBuilderList();
    }

    public static final class Road extends GeneratedMessage
        implements RoadOrBuilder
    {

        public static final int DIRECTION_FIELD_NUMBER = 7;
        public static final int DISTANCE_FIELD_NUMBER = 6;
        public static final int ENAME_FIELD_NUMBER = 3;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int LEVEL_FIELD_NUMBER = 5;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int WIDTH_FIELD_NUMBER = 4;
        private static final Road defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private Object direction_;
        private Object distance_;
        private Object ename_;
        private Object id_;
        private Object level_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private Object width_;

        public static Road getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Road_descriptor;
        }

        private ByteString getDirectionBytes()
        {
            Object obj = direction_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                direction_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
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

        private ByteString getEnameBytes()
        {
            Object obj = ename_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                ename_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getIdBytes()
        {
            Object obj = id_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                id_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getLevelBytes()
        {
            Object obj = level_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                level_ = obj;
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

        private ByteString getWidthBytes()
        {
            Object obj = width_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                width_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private void initFields()
        {
            id_ = "";
            name_ = "";
            ename_ = "";
            width_ = "";
            level_ = "";
            distance_ = "";
            direction_ = "";
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(Road road)
        {
            return newBuilder().mergeFrom(road);
        }

        public static Road parseDelimitedFrom(InputStream inputstream)
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

        public static Road parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Road parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Road parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Road parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Road parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Road parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Road parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Road parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Road parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public Road getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public String getDirection()
        {
            Object obj = direction_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                direction_ = s;
            }
            return s;
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

        public String getEname()
        {
            Object obj = ename_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                ename_ = s;
            }
            return s;
        }

        public String getId()
        {
            Object obj = id_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                id_ = s;
            }
            return s;
        }

        public String getLevel()
        {
            Object obj = level_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                level_ = s;
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
                j = 0 + CodedOutputStream.computeBytesSize(1, getIdBytes());
            }
            i = j;
            if ((bitField0_ & 2) == 2)
            {
                i = j + CodedOutputStream.computeBytesSize(2, getNameBytes());
            }
            j = i;
            if ((bitField0_ & 4) == 4)
            {
                j = i + CodedOutputStream.computeBytesSize(3, getEnameBytes());
            }
            i = j;
            if ((bitField0_ & 8) == 8)
            {
                i = j + CodedOutputStream.computeBytesSize(4, getWidthBytes());
            }
            j = i;
            if ((bitField0_ & 0x10) == 16)
            {
                j = i + CodedOutputStream.computeBytesSize(5, getLevelBytes());
            }
            i = j;
            if ((bitField0_ & 0x20) == 32)
            {
                i = j + CodedOutputStream.computeBytesSize(6, getDistanceBytes());
            }
            j = i;
            if ((bitField0_ & 0x40) == 64)
            {
                j = i + CodedOutputStream.computeBytesSize(7, getDirectionBytes());
            }
            i = j + getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
        }

        public String getWidth()
        {
            Object obj = width_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                width_ = s;
            }
            return s;
        }

        public boolean hasDirection()
        {
            return (bitField0_ & 0x40) == 64;
        }

        public boolean hasDistance()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasEname()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasId()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasLevel()
        {
            return (bitField0_ & 0x10) == 16;
        }

        public boolean hasName()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasWidth()
        {
            return (bitField0_ & 8) == 8;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Road_fieldAccessorTable;
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
            if (!hasId())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasName())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasEname())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasWidth())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasLevel())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasDistance())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasDirection())
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
                codedoutputstream.writeBytes(1, getIdBytes());
            }
            if ((bitField0_ & 2) == 2)
            {
                codedoutputstream.writeBytes(2, getNameBytes());
            }
            if ((bitField0_ & 4) == 4)
            {
                codedoutputstream.writeBytes(3, getEnameBytes());
            }
            if ((bitField0_ & 8) == 8)
            {
                codedoutputstream.writeBytes(4, getWidthBytes());
            }
            if ((bitField0_ & 0x10) == 16)
            {
                codedoutputstream.writeBytes(5, getLevelBytes());
            }
            if ((bitField0_ & 0x20) == 32)
            {
                codedoutputstream.writeBytes(6, getDistanceBytes());
            }
            if ((bitField0_ & 0x40) == 64)
            {
                codedoutputstream.writeBytes(7, getDirectionBytes());
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new Road(true);
            defaultInstance.initFields();
        }



/*
        static Object access$8302(Road road, Object obj)
        {
            road.id_ = obj;
            return obj;
        }

*/


/*
        static Object access$8402(Road road, Object obj)
        {
            road.name_ = obj;
            return obj;
        }

*/


/*
        static Object access$8502(Road road, Object obj)
        {
            road.ename_ = obj;
            return obj;
        }

*/


/*
        static Object access$8602(Road road, Object obj)
        {
            road.width_ = obj;
            return obj;
        }

*/


/*
        static Object access$8702(Road road, Object obj)
        {
            road.level_ = obj;
            return obj;
        }

*/


/*
        static Object access$8802(Road road, Object obj)
        {
            road.distance_ = obj;
            return obj;
        }

*/


/*
        static Object access$8902(Road road, Object obj)
        {
            road.direction_ = obj;
            return obj;
        }

*/


/*
        static int access$9002(Road road, int i)
        {
            road.bitField0_ = i;
            return i;
        }

*/

        private Road(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Road(Builder builder, z z1)
        {
            this(builder);
        }

        private Road(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Road.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements RoadOrBuilder
    {

        private int bitField0_;
        private Object direction_;
        private Object distance_;
        private Object ename_;
        private Object id_;
        private Object level_;
        private Object name_;
        private Object width_;

        private Road buildParsed()
            throws InvalidProtocolBufferException
        {
            Road road = buildPartial();
            if (!road.isInitialized())
            {
                throw newUninitializedMessageException(road).asInvalidProtocolBufferException();
            } else
            {
                return road;
            }
        }

        private static Road.Builder create()
        {
            return new Road.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Road_descriptor;
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

        public Road build()
        {
            Road road = buildPartial();
            if (!road.isInitialized())
            {
                throw newUninitializedMessageException(road);
            } else
            {
                return road;
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

        public Road buildPartial()
        {
            int j = 1;
            Road road = new Road(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            road.id_ = id_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            road.name_ = name_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            road.ename_ = ename_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            road.width_ = width_;
            j = i;
            if ((k & 0x10) == 16)
            {
                j = i | 0x10;
            }
            road.level_ = level_;
            i = j;
            if ((k & 0x20) == 32)
            {
                i = j | 0x20;
            }
            road.distance_ = distance_;
            j = i;
            if ((k & 0x40) == 64)
            {
                j = i | 0x40;
            }
            road.direction_ = direction_;
            road.bitField0_ = j;
            onBuilt();
            return road;
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

        public Road.Builder clear()
        {
            super.clear();
            id_ = "";
            bitField0_ = bitField0_ & -2;
            name_ = "";
            bitField0_ = bitField0_ & -3;
            ename_ = "";
            bitField0_ = bitField0_ & -5;
            width_ = "";
            bitField0_ = bitField0_ & -9;
            level_ = "";
            bitField0_ = bitField0_ & 0xffffffef;
            distance_ = "";
            bitField0_ = bitField0_ & 0xffffffdf;
            direction_ = "";
            bitField0_ = bitField0_ & 0xffffffbf;
            return this;
        }

        public Road.Builder clearDirection()
        {
            bitField0_ = bitField0_ & 0xffffffbf;
            direction_ = Road.getDefaultInstance().getDirection();
            onChanged();
            return this;
        }

        public Road.Builder clearDistance()
        {
            bitField0_ = bitField0_ & 0xffffffdf;
            distance_ = Road.getDefaultInstance().getDistance();
            onChanged();
            return this;
        }

        public Road.Builder clearEname()
        {
            bitField0_ = bitField0_ & -5;
            ename_ = Road.getDefaultInstance().getEname();
            onChanged();
            return this;
        }

        public Road.Builder clearId()
        {
            bitField0_ = bitField0_ & -2;
            id_ = Road.getDefaultInstance().getId();
            onChanged();
            return this;
        }

        public Road.Builder clearLevel()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            level_ = Road.getDefaultInstance().getLevel();
            onChanged();
            return this;
        }

        public Road.Builder clearName()
        {
            bitField0_ = bitField0_ & -3;
            name_ = Road.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Road.Builder clearWidth()
        {
            bitField0_ = bitField0_ & -9;
            width_ = Road.getDefaultInstance().getWidth();
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

        public Road.Builder clone()
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

        public Road getDefaultInstanceForType()
        {
            return Road.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return Road.getDescriptor();
        }

        public String getDirection()
        {
            Object obj = direction_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                direction_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
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

        public String getEname()
        {
            Object obj = ename_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                ename_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getId()
        {
            Object obj = id_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                id_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getLevel()
        {
            Object obj = level_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                level_ = obj;
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

        public String getWidth()
        {
            Object obj = width_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                width_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public boolean hasDirection()
        {
            return (bitField0_ & 0x40) == 64;
        }

        public boolean hasDistance()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasEname()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasId()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasLevel()
        {
            return (bitField0_ & 0x10) == 16;
        }

        public boolean hasName()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasWidth()
        {
            return (bitField0_ & 8) == 8;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Road_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            while (!hasId() || !hasName() || !hasEname() || !hasWidth() || !hasLevel() || !hasDistance() || !hasDirection()) 
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

        public Road.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    id_ = codedinputstream.readBytes();
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 2;
                    name_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    ename_ = codedinputstream.readBytes();
                    break;

                case 34: // '"'
                    bitField0_ = bitField0_ | 8;
                    width_ = codedinputstream.readBytes();
                    break;

                case 42: // '*'
                    bitField0_ = bitField0_ | 0x10;
                    level_ = codedinputstream.readBytes();
                    break;

                case 50: // '2'
                    bitField0_ = bitField0_ | 0x20;
                    distance_ = codedinputstream.readBytes();
                    break;

                case 58: // ':'
                    bitField0_ = bitField0_ | 0x40;
                    direction_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public Road.Builder mergeFrom(Message message)
        {
            if (message instanceof Road)
            {
                return mergeFrom((Road)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Road.Builder mergeFrom(Road road)
        {
            if (road == Road.getDefaultInstance())
            {
                return this;
            }
            if (road.hasId())
            {
                setId(road.getId());
            }
            if (road.hasName())
            {
                setName(road.getName());
            }
            if (road.hasEname())
            {
                setEname(road.getEname());
            }
            if (road.hasWidth())
            {
                setWidth(road.getWidth());
            }
            if (road.hasLevel())
            {
                setLevel(road.getLevel());
            }
            if (road.hasDistance())
            {
                setDistance(road.getDistance());
            }
            if (road.hasDirection())
            {
                setDirection(road.getDirection());
            }
            mergeUnknownFields(road.getUnknownFields());
            return this;
        }

        public Road.Builder setDirection(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x40;
                direction_ = s;
                onChanged();
                return this;
            }
        }

        void setDirection(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x40;
            direction_ = bytestring;
            onChanged();
        }

        public Road.Builder setDistance(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x20;
                distance_ = s;
                onChanged();
                return this;
            }
        }

        void setDistance(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x20;
            distance_ = bytestring;
            onChanged();
        }

        public Road.Builder setEname(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                ename_ = s;
                onChanged();
                return this;
            }
        }

        void setEname(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            ename_ = bytestring;
            onChanged();
        }

        public Road.Builder setId(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 1;
                id_ = s;
                onChanged();
                return this;
            }
        }

        void setId(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 1;
            id_ = bytestring;
            onChanged();
        }

        public Road.Builder setLevel(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x10;
                level_ = s;
                onChanged();
                return this;
            }
        }

        void setLevel(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x10;
            level_ = bytestring;
            onChanged();
        }

        public Road.Builder setName(String s)
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

        public Road.Builder setWidth(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 8;
                width_ = s;
                onChanged();
                return this;
            }
        }

        void setWidth(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 8;
            width_ = bytestring;
            onChanged();
        }



        private Road.Builder()
        {
            id_ = "";
            name_ = "";
            ename_ = "";
            width_ = "";
            level_ = "";
            distance_ = "";
            direction_ = "";
            maybeForceBuilderInitialization();
        }

        private Road.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            id_ = "";
            name_ = "";
            ename_ = "";
            width_ = "";
            level_ = "";
            distance_ = "";
            direction_ = "";
            maybeForceBuilderInitialization();
        }

        Road.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface RoadOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getDirection();

        public abstract String getDistance();

        public abstract String getEname();

        public abstract String getId();

        public abstract String getLevel();

        public abstract String getName();

        public abstract String getWidth();

        public abstract boolean hasDirection();

        public abstract boolean hasDistance();

        public abstract boolean hasEname();

        public abstract boolean hasId();

        public abstract boolean hasLevel();

        public abstract boolean hasName();

        public abstract boolean hasWidth();
    }

    public static final class Roads extends GeneratedMessage
        implements RoadsOrBuilder
    {

        public static final int ROAD_FIELD_NUMBER = 1;
        private static final Roads defaultInstance;
        private static final long serialVersionUID = 0L;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List road_;

        public static Roads getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Roads_descriptor;
        }

        private void initFields()
        {
            road_ = Collections.emptyList();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(Roads roads)
        {
            return newBuilder().mergeFrom(roads);
        }

        public static Roads parseDelimitedFrom(InputStream inputstream)
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

        public static Roads parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Roads parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Roads parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Roads parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Roads parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Roads parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Roads parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Roads parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Roads parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public Roads getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public Road getRoad(int i)
        {
            return (Road)road_.get(i);
        }

        public int getRoadCount()
        {
            return road_.size();
        }

        public List getRoadList()
        {
            return road_;
        }

        public RoadOrBuilder getRoadOrBuilder(int i)
        {
            return (RoadOrBuilder)road_.get(i);
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

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Roads_fieldAccessorTable;
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
                if (!getRoad(i).isInitialized())
                {
                    memoizedIsInitialized = 0;
                    return false;
                }
            }

            memoizedIsInitialized = 1;
            return true;
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
            for (int i = 0; i < road_.size(); i++)
            {
                codedoutputstream.writeMessage(1, (MessageLite)road_.get(i));
            }

            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new Roads(true);
            defaultInstance.initFields();
        }




/*
        static List access$7402(Roads roads, List list)
        {
            roads.road_ = list;
            return list;
        }

*/


        private Roads(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Roads(Builder builder, z z1)
        {
            this(builder);
        }

        private Roads(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Roads.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements RoadsOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder roadBuilder_;
        private List road_;

        private Roads buildParsed()
            throws InvalidProtocolBufferException
        {
            Roads roads = buildPartial();
            if (!roads.isInitialized())
            {
                throw newUninitializedMessageException(roads).asInvalidProtocolBufferException();
            } else
            {
                return roads;
            }
        }

        private static Roads.Builder create()
        {
            return new Roads.Builder();
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
            return ReverseGeocodingProtoBuf.internal_static_Roads_descriptor;
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

        public Roads.Builder addAllRoad(Iterable iterable)
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

        public Roads.Builder addRoad(int i, Road.Builder builder)
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

        public Roads.Builder addRoad(int i, Road road)
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

        public Roads.Builder addRoad(Road.Builder builder)
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

        public Roads.Builder addRoad(Road road)
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

        public Road.Builder addRoadBuilder()
        {
            return (Road.Builder)getRoadFieldBuilder().addBuilder(Road.getDefaultInstance());
        }

        public Road.Builder addRoadBuilder(int i)
        {
            return (Road.Builder)getRoadFieldBuilder().addBuilder(i, Road.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public Roads build()
        {
            Roads roads = buildPartial();
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

        public Roads buildPartial()
        {
            Roads roads = new Roads(this, null);
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

        public Roads.Builder clear()
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

        public Roads.Builder clearRoad()
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

        public Roads.Builder clone()
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

        public Roads getDefaultInstanceForType()
        {
            return Roads.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return Roads.getDescriptor();
        }

        public Road getRoad(int i)
        {
            if (roadBuilder_ == null)
            {
                return (Road)road_.get(i);
            } else
            {
                return (Road)roadBuilder_.getMessage(i);
            }
        }

        public Road.Builder getRoadBuilder(int i)
        {
            return (Road.Builder)getRoadFieldBuilder().getBuilder(i);
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

        public RoadOrBuilder getRoadOrBuilder(int i)
        {
            if (roadBuilder_ == null)
            {
                return (RoadOrBuilder)road_.get(i);
            } else
            {
                return (RoadOrBuilder)roadBuilder_.getMessageOrBuilder(i);
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
            return ReverseGeocodingProtoBuf.internal_static_Roads_fieldAccessorTable;
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

        public Roads.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    Road.Builder builder1 = Road.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addRoad(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Roads.Builder mergeFrom(Message message)
        {
            if (message instanceof Roads)
            {
                return mergeFrom((Roads)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Roads.Builder mergeFrom(Roads roads)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (roads == Roads.getDefaultInstance())
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

        public Roads.Builder removeRoad(int i)
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

        public Roads.Builder setRoad(int i, Road.Builder builder)
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

        public Roads.Builder setRoad(int i, Road road)
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



        private Roads.Builder()
        {
            road_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Roads.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            road_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Roads.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface RoadsOrBuilder
        extends MessageOrBuilder
    {

        public abstract Road getRoad(int i);

        public abstract int getRoadCount();

        public abstract List getRoadList();

        public abstract RoadOrBuilder getRoadOrBuilder(int i);

        public abstract List getRoadOrBuilderList();
    }

    public static final class Spatial extends GeneratedMessage
        implements SpatialOrBuilder
    {

        public static final int CITY_FIELD_NUMBER = 2;
        public static final int CROSSES_FIELD_NUMBER = 6;
        public static final int DISTRICT_FIELD_NUMBER = 3;
        public static final int POIS_FIELD_NUMBER = 5;
        public static final int PROVINCE_FIELD_NUMBER = 1;
        public static final int ROADS_FIELD_NUMBER = 4;
        private static final Spatial defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private City city_;
        private Crosses crosses_;
        private District district_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private POIS pois_;
        private Province province_;
        private Roads roads_;

        public static Spatial getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Spatial_descriptor;
        }

        private void initFields()
        {
            province_ = Province.getDefaultInstance();
            city_ = City.getDefaultInstance();
            district_ = District.getDefaultInstance();
            roads_ = Roads.getDefaultInstance();
            pois_ = POIS.getDefaultInstance();
            crosses_ = Crosses.getDefaultInstance();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(Spatial spatial)
        {
            return newBuilder().mergeFrom(spatial);
        }

        public static Spatial parseDelimitedFrom(InputStream inputstream)
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

        public static Spatial parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Spatial parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Spatial parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Spatial parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Spatial parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Spatial parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Spatial parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Spatial parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Spatial parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0, extensionregistrylite)).buildParsed();
        }

        public City getCity()
        {
            return city_;
        }

        public CityOrBuilder getCityOrBuilder()
        {
            return city_;
        }

        public Crosses getCrosses()
        {
            return crosses_;
        }

        public CrossesOrBuilder getCrossesOrBuilder()
        {
            return crosses_;
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public Spatial getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public District getDistrict()
        {
            return district_;
        }

        public DistrictOrBuilder getDistrictOrBuilder()
        {
            return district_;
        }

        public POIS getPois()
        {
            return pois_;
        }

        public POISOrBuilder getPoisOrBuilder()
        {
            return pois_;
        }

        public Province getProvince()
        {
            return province_;
        }

        public ProvinceOrBuilder getProvinceOrBuilder()
        {
            return province_;
        }

        public Roads getRoads()
        {
            return roads_;
        }

        public RoadsOrBuilder getRoadsOrBuilder()
        {
            return roads_;
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
                j = 0 + CodedOutputStream.computeMessageSize(1, province_);
            }
            i = j;
            if ((bitField0_ & 2) == 2)
            {
                i = j + CodedOutputStream.computeMessageSize(2, city_);
            }
            j = i;
            if ((bitField0_ & 4) == 4)
            {
                j = i + CodedOutputStream.computeMessageSize(3, district_);
            }
            i = j;
            if ((bitField0_ & 8) == 8)
            {
                i = j + CodedOutputStream.computeMessageSize(4, roads_);
            }
            j = i;
            if ((bitField0_ & 0x10) == 16)
            {
                j = i + CodedOutputStream.computeMessageSize(5, pois_);
            }
            i = j;
            if ((bitField0_ & 0x20) == 32)
            {
                i = j + CodedOutputStream.computeMessageSize(6, crosses_);
            }
            i += getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
        }

        public boolean hasCity()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasCrosses()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasDistrict()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasPois()
        {
            return (bitField0_ & 0x10) == 16;
        }

        public boolean hasProvince()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasRoads()
        {
            return (bitField0_ & 8) == 8;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Spatial_fieldAccessorTable;
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
            if (!hasProvince())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasCity())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (!hasDistrict())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (hasRoads() && !getRoads().isInitialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (hasPois() && !getPois().isInitialized())
            {
                memoizedIsInitialized = 0;
                return false;
            }
            if (hasCrosses() && !getCrosses().isInitialized())
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
                codedoutputstream.writeMessage(1, province_);
            }
            if ((bitField0_ & 2) == 2)
            {
                codedoutputstream.writeMessage(2, city_);
            }
            if ((bitField0_ & 4) == 4)
            {
                codedoutputstream.writeMessage(3, district_);
            }
            if ((bitField0_ & 8) == 8)
            {
                codedoutputstream.writeMessage(4, roads_);
            }
            if ((bitField0_ & 0x10) == 16)
            {
                codedoutputstream.writeMessage(5, pois_);
            }
            if ((bitField0_ & 0x20) == 32)
            {
                codedoutputstream.writeMessage(6, crosses_);
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new Spatial(true);
            defaultInstance.initFields();
        }



/*
        static Province access$2602(Spatial spatial, Province province)
        {
            spatial.province_ = province;
            return province;
        }

*/


/*
        static City access$2702(Spatial spatial, City city)
        {
            spatial.city_ = city;
            return city;
        }

*/


/*
        static District access$2802(Spatial spatial, District district)
        {
            spatial.district_ = district;
            return district;
        }

*/


/*
        static Roads access$2902(Spatial spatial, Roads roads)
        {
            spatial.roads_ = roads;
            return roads;
        }

*/


/*
        static POIS access$3002(Spatial spatial, POIS pois)
        {
            spatial.pois_ = pois;
            return pois;
        }

*/


/*
        static Crosses access$3102(Spatial spatial, Crosses crosses)
        {
            spatial.crosses_ = crosses;
            return crosses;
        }

*/


/*
        static int access$3202(Spatial spatial, int i)
        {
            spatial.bitField0_ = i;
            return i;
        }

*/

        private Spatial(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Spatial(Builder builder, z z1)
        {
            this(builder);
        }

        private Spatial(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Spatial.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements SpatialOrBuilder
    {

        private int bitField0_;
        private SingleFieldBuilder cityBuilder_;
        private City city_;
        private SingleFieldBuilder crossesBuilder_;
        private Crosses crosses_;
        private SingleFieldBuilder districtBuilder_;
        private District district_;
        private SingleFieldBuilder poisBuilder_;
        private POIS pois_;
        private SingleFieldBuilder provinceBuilder_;
        private Province province_;
        private SingleFieldBuilder roadsBuilder_;
        private Roads roads_;

        private Spatial buildParsed()
            throws InvalidProtocolBufferException
        {
            Spatial spatial = buildPartial();
            if (!spatial.isInitialized())
            {
                throw newUninitializedMessageException(spatial).asInvalidProtocolBufferException();
            } else
            {
                return spatial;
            }
        }

        private static Spatial.Builder create()
        {
            return new Spatial.Builder();
        }

        private SingleFieldBuilder getCityFieldBuilder()
        {
            if (cityBuilder_ == null)
            {
                cityBuilder_ = new SingleFieldBuilder(city_, getParentForChildren(), isClean());
                city_ = null;
            }
            return cityBuilder_;
        }

        private SingleFieldBuilder getCrossesFieldBuilder()
        {
            if (crossesBuilder_ == null)
            {
                crossesBuilder_ = new SingleFieldBuilder(crosses_, getParentForChildren(), isClean());
                crosses_ = null;
            }
            return crossesBuilder_;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.internal_static_Spatial_descriptor;
        }

        private SingleFieldBuilder getDistrictFieldBuilder()
        {
            if (districtBuilder_ == null)
            {
                districtBuilder_ = new SingleFieldBuilder(district_, getParentForChildren(), isClean());
                district_ = null;
            }
            return districtBuilder_;
        }

        private SingleFieldBuilder getPoisFieldBuilder()
        {
            if (poisBuilder_ == null)
            {
                poisBuilder_ = new SingleFieldBuilder(pois_, getParentForChildren(), isClean());
                pois_ = null;
            }
            return poisBuilder_;
        }

        private SingleFieldBuilder getProvinceFieldBuilder()
        {
            if (provinceBuilder_ == null)
            {
                provinceBuilder_ = new SingleFieldBuilder(province_, getParentForChildren(), isClean());
                province_ = null;
            }
            return provinceBuilder_;
        }

        private SingleFieldBuilder getRoadsFieldBuilder()
        {
            if (roadsBuilder_ == null)
            {
                roadsBuilder_ = new SingleFieldBuilder(roads_, getParentForChildren(), isClean());
                roads_ = null;
            }
            return roadsBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (POIS.getDefaultInstance)
            {
                getProvinceFieldBuilder();
                getCityFieldBuilder();
                getDistrictFieldBuilder();
                getRoadsFieldBuilder();
                getPoisFieldBuilder();
                getCrossesFieldBuilder();
            }
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public Spatial build()
        {
            Spatial spatial = buildPartial();
            if (!spatial.isInitialized())
            {
                throw newUninitializedMessageException(spatial);
            } else
            {
                return spatial;
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

        public Spatial buildPartial()
        {
            Spatial spatial = new Spatial(this, null);
            int k = bitField0_;
            int j = 0;
            if ((k & 1) == 1)
            {
                j = 1;
            }
            int i;
            if (provinceBuilder_ == null)
            {
                spatial.province_ = province_;
            } else
            {
                spatial.province_ = (Province)provinceBuilder_.build();
            }
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            if (cityBuilder_ == null)
            {
                spatial.city_ = city_;
            } else
            {
                spatial.city_ = (City)cityBuilder_.build();
            }
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            if (districtBuilder_ == null)
            {
                spatial.district_ = district_;
            } else
            {
                spatial.district_ = (District)districtBuilder_.build();
            }
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            if (roadsBuilder_ == null)
            {
                spatial.roads_ = roads_;
            } else
            {
                spatial.roads_ = (Roads)roadsBuilder_.build();
            }
            j = i;
            if ((k & 0x10) == 16)
            {
                j = i | 0x10;
            }
            if (poisBuilder_ == null)
            {
                spatial.pois_ = pois_;
            } else
            {
                spatial.pois_ = (POIS)poisBuilder_.build();
            }
            i = j;
            if ((k & 0x20) == 32)
            {
                i = j | 0x20;
            }
            if (crossesBuilder_ == null)
            {
                spatial.crosses_ = crosses_;
            } else
            {
                spatial.crosses_ = (Crosses)crossesBuilder_.build();
            }
            spatial.bitField0_ = i;
            onBuilt();
            return spatial;
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

        public Spatial.Builder clear()
        {
            super.clear();
            if (provinceBuilder_ == null)
            {
                province_ = Province.getDefaultInstance();
            } else
            {
                provinceBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            if (cityBuilder_ == null)
            {
                city_ = City.getDefaultInstance();
            } else
            {
                cityBuilder_.clear();
            }
            bitField0_ = bitField0_ & -3;
            if (districtBuilder_ == null)
            {
                district_ = District.getDefaultInstance();
            } else
            {
                districtBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
            if (roadsBuilder_ == null)
            {
                roads_ = Roads.getDefaultInstance();
            } else
            {
                roadsBuilder_.clear();
            }
            bitField0_ = bitField0_ & -9;
            if (poisBuilder_ == null)
            {
                pois_ = POIS.getDefaultInstance();
            } else
            {
                poisBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffffef;
            if (crossesBuilder_ == null)
            {
                crosses_ = Crosses.getDefaultInstance();
            } else
            {
                crossesBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffffdf;
            return this;
        }

        public Spatial.Builder clearCity()
        {
            if (cityBuilder_ == null)
            {
                city_ = City.getDefaultInstance();
                onChanged();
            } else
            {
                cityBuilder_.clear();
            }
            bitField0_ = bitField0_ & -3;
            return this;
        }

        public Spatial.Builder clearCrosses()
        {
            if (crossesBuilder_ == null)
            {
                crosses_ = Crosses.getDefaultInstance();
                onChanged();
            } else
            {
                crossesBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffffdf;
            return this;
        }

        public Spatial.Builder clearDistrict()
        {
            if (districtBuilder_ == null)
            {
                district_ = District.getDefaultInstance();
                onChanged();
            } else
            {
                districtBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
            return this;
        }

        public Spatial.Builder clearPois()
        {
            if (poisBuilder_ == null)
            {
                pois_ = POIS.getDefaultInstance();
                onChanged();
            } else
            {
                poisBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffffef;
            return this;
        }

        public Spatial.Builder clearProvince()
        {
            if (provinceBuilder_ == null)
            {
                province_ = Province.getDefaultInstance();
                onChanged();
            } else
            {
                provinceBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            return this;
        }

        public Spatial.Builder clearRoads()
        {
            if (roadsBuilder_ == null)
            {
                roads_ = Roads.getDefaultInstance();
                onChanged();
            } else
            {
                roadsBuilder_.clear();
            }
            bitField0_ = bitField0_ & -9;
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

        public Spatial.Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public City getCity()
        {
            if (cityBuilder_ == null)
            {
                return city_;
            } else
            {
                return (City)cityBuilder_.getMessage();
            }
        }

        public City.Builder getCityBuilder()
        {
            bitField0_ = bitField0_ | 2;
            onChanged();
            return (City.Builder)getCityFieldBuilder().getBuilder();
        }

        public CityOrBuilder getCityOrBuilder()
        {
            if (cityBuilder_ != null)
            {
                return (CityOrBuilder)cityBuilder_.getMessageOrBuilder();
            } else
            {
                return city_;
            }
        }

        public Crosses getCrosses()
        {
            if (crossesBuilder_ == null)
            {
                return crosses_;
            } else
            {
                return (Crosses)crossesBuilder_.getMessage();
            }
        }

        public Crosses.Builder getCrossesBuilder()
        {
            bitField0_ = bitField0_ | 0x20;
            onChanged();
            return (Crosses.Builder)getCrossesFieldBuilder().getBuilder();
        }

        public CrossesOrBuilder getCrossesOrBuilder()
        {
            if (crossesBuilder_ != null)
            {
                return (CrossesOrBuilder)crossesBuilder_.getMessageOrBuilder();
            } else
            {
                return crosses_;
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

        public Spatial getDefaultInstanceForType()
        {
            return Spatial.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return Spatial.getDescriptor();
        }

        public District getDistrict()
        {
            if (districtBuilder_ == null)
            {
                return district_;
            } else
            {
                return (District)districtBuilder_.getMessage();
            }
        }

        public District.Builder getDistrictBuilder()
        {
            bitField0_ = bitField0_ | 4;
            onChanged();
            return (District.Builder)getDistrictFieldBuilder().getBuilder();
        }

        public DistrictOrBuilder getDistrictOrBuilder()
        {
            if (districtBuilder_ != null)
            {
                return (DistrictOrBuilder)districtBuilder_.getMessageOrBuilder();
            } else
            {
                return district_;
            }
        }

        public POIS getPois()
        {
            if (poisBuilder_ == null)
            {
                return pois_;
            } else
            {
                return (POIS)poisBuilder_.getMessage();
            }
        }

        public POIS.Builder getPoisBuilder()
        {
            bitField0_ = bitField0_ | 0x10;
            onChanged();
            return (POIS.Builder)getPoisFieldBuilder().getBuilder();
        }

        public POISOrBuilder getPoisOrBuilder()
        {
            if (poisBuilder_ != null)
            {
                return (POISOrBuilder)poisBuilder_.getMessageOrBuilder();
            } else
            {
                return pois_;
            }
        }

        public Province getProvince()
        {
            if (provinceBuilder_ == null)
            {
                return province_;
            } else
            {
                return (Province)provinceBuilder_.getMessage();
            }
        }

        public Province.Builder getProvinceBuilder()
        {
            bitField0_ = bitField0_ | 1;
            onChanged();
            return (Province.Builder)getProvinceFieldBuilder().getBuilder();
        }

        public ProvinceOrBuilder getProvinceOrBuilder()
        {
            if (provinceBuilder_ != null)
            {
                return (ProvinceOrBuilder)provinceBuilder_.getMessageOrBuilder();
            } else
            {
                return province_;
            }
        }

        public Roads getRoads()
        {
            if (roadsBuilder_ == null)
            {
                return roads_;
            } else
            {
                return (Roads)roadsBuilder_.getMessage();
            }
        }

        public Roads.Builder getRoadsBuilder()
        {
            bitField0_ = bitField0_ | 8;
            onChanged();
            return (Roads.Builder)getRoadsFieldBuilder().getBuilder();
        }

        public RoadsOrBuilder getRoadsOrBuilder()
        {
            if (roadsBuilder_ != null)
            {
                return (RoadsOrBuilder)roadsBuilder_.getMessageOrBuilder();
            } else
            {
                return roads_;
            }
        }

        public boolean hasCity()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasCrosses()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasDistrict()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasPois()
        {
            return (bitField0_ & 0x10) == 16;
        }

        public boolean hasProvince()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasRoads()
        {
            return (bitField0_ & 8) == 8;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return ReverseGeocodingProtoBuf.internal_static_Spatial_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            while (!hasProvince() || !hasCity() || !hasDistrict() || hasRoads() && !getRoads().isInitialized() || hasPois() && !getPois().isInitialized() || hasCrosses() && !getCrosses().isInitialized()) 
            {
                return false;
            }
            return true;
        }

        public Spatial.Builder mergeCity(City city)
        {
            if (cityBuilder_ == null)
            {
                if ((bitField0_ & 2) == 2 && city_ != City.getDefaultInstance())
                {
                    city_ = City.newBuilder(city_).mergeFrom(city).buildPartial();
                } else
                {
                    city_ = city;
                }
                onChanged();
            } else
            {
                cityBuilder_.mergeFrom(city);
            }
            bitField0_ = bitField0_ | 2;
            return this;
        }

        public Spatial.Builder mergeCrosses(Crosses crosses)
        {
            if (crossesBuilder_ == null)
            {
                if ((bitField0_ & 0x20) == 32 && crosses_ != Crosses.getDefaultInstance())
                {
                    crosses_ = Crosses.newBuilder(crosses_).mergeFrom(crosses).buildPartial();
                } else
                {
                    crosses_ = crosses;
                }
                onChanged();
            } else
            {
                crossesBuilder_.mergeFrom(crosses);
            }
            bitField0_ = bitField0_ | 0x20;
            return this;
        }

        public Spatial.Builder mergeDistrict(District district)
        {
            if (districtBuilder_ == null)
            {
                if ((bitField0_ & 4) == 4 && district_ != District.getDefaultInstance())
                {
                    district_ = District.newBuilder(district_).mergeFrom(district).buildPartial();
                } else
                {
                    district_ = district;
                }
                onChanged();
            } else
            {
                districtBuilder_.mergeFrom(district);
            }
            bitField0_ = bitField0_ | 4;
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

        public Spatial.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    Province.Builder builder1 = Province.newBuilder();
                    if (hasProvince())
                    {
                        builder1.mergeFrom(getProvince());
                    }
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    setProvince(builder1.buildPartial());
                    break;

                case 18: // '\022'
                    City.Builder builder2 = City.newBuilder();
                    if (hasCity())
                    {
                        builder2.mergeFrom(getCity());
                    }
                    codedinputstream.readMessage(builder2, extensionregistrylite);
                    setCity(builder2.buildPartial());
                    break;

                case 26: // '\032'
                    District.Builder builder3 = District.newBuilder();
                    if (hasDistrict())
                    {
                        builder3.mergeFrom(getDistrict());
                    }
                    codedinputstream.readMessage(builder3, extensionregistrylite);
                    setDistrict(builder3.buildPartial());
                    break;

                case 34: // '"'
                    Roads.Builder builder4 = Roads.newBuilder();
                    if (hasRoads())
                    {
                        builder4.mergeFrom(getRoads());
                    }
                    codedinputstream.readMessage(builder4, extensionregistrylite);
                    setRoads(builder4.buildPartial());
                    break;

                case 42: // '*'
                    POIS.Builder builder5 = POIS.newBuilder();
                    if (hasPois())
                    {
                        builder5.mergeFrom(getPois());
                    }
                    codedinputstream.readMessage(builder5, extensionregistrylite);
                    setPois(builder5.buildPartial());
                    break;

                case 50: // '2'
                    Crosses.Builder builder6 = Crosses.newBuilder();
                    if (hasCrosses())
                    {
                        builder6.mergeFrom(getCrosses());
                    }
                    codedinputstream.readMessage(builder6, extensionregistrylite);
                    setCrosses(builder6.buildPartial());
                    break;
                }
            } while (true);
        }

        public Spatial.Builder mergeFrom(Message message)
        {
            if (message instanceof Spatial)
            {
                return mergeFrom((Spatial)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Spatial.Builder mergeFrom(Spatial spatial)
        {
            if (spatial == Spatial.getDefaultInstance())
            {
                return this;
            }
            if (spatial.hasProvince())
            {
                mergeProvince(spatial.getProvince());
            }
            if (spatial.hasCity())
            {
                mergeCity(spatial.getCity());
            }
            if (spatial.hasDistrict())
            {
                mergeDistrict(spatial.getDistrict());
            }
            if (spatial.hasRoads())
            {
                mergeRoads(spatial.getRoads());
            }
            if (spatial.hasPois())
            {
                mergePois(spatial.getPois());
            }
            if (spatial.hasCrosses())
            {
                mergeCrosses(spatial.getCrosses());
            }
            mergeUnknownFields(spatial.getUnknownFields());
            return this;
        }

        public Spatial.Builder mergePois(POIS pois)
        {
            if (poisBuilder_ == null)
            {
                if ((bitField0_ & 0x10) == 16 && pois_ != POIS.getDefaultInstance())
                {
                    pois_ = POIS.newBuilder(pois_).mergeFrom(pois).buildPartial();
                } else
                {
                    pois_ = pois;
                }
                onChanged();
            } else
            {
                poisBuilder_.mergeFrom(pois);
            }
            bitField0_ = bitField0_ | 0x10;
            return this;
        }

        public Spatial.Builder mergeProvince(Province province)
        {
            if (provinceBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1 && province_ != Province.getDefaultInstance())
                {
                    province_ = Province.newBuilder(province_).mergeFrom(province).buildPartial();
                } else
                {
                    province_ = province;
                }
                onChanged();
            } else
            {
                provinceBuilder_.mergeFrom(province);
            }
            bitField0_ = bitField0_ | 1;
            return this;
        }

        public Spatial.Builder mergeRoads(Roads roads)
        {
            if (roadsBuilder_ == null)
            {
                if ((bitField0_ & 8) == 8 && roads_ != Roads.getDefaultInstance())
                {
                    roads_ = Roads.newBuilder(roads_).mergeFrom(roads).buildPartial();
                } else
                {
                    roads_ = roads;
                }
                onChanged();
            } else
            {
                roadsBuilder_.mergeFrom(roads);
            }
            bitField0_ = bitField0_ | 8;
            return this;
        }

        public Spatial.Builder setCity(City.Builder builder)
        {
            if (cityBuilder_ == null)
            {
                city_ = builder.build();
                onChanged();
            } else
            {
                cityBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 2;
            return this;
        }

        public Spatial.Builder setCity(City city)
        {
            if (cityBuilder_ == null)
            {
                if (city == null)
                {
                    throw new NullPointerException();
                }
                city_ = city;
                onChanged();
            } else
            {
                cityBuilder_.setMessage(city);
            }
            bitField0_ = bitField0_ | 2;
            return this;
        }

        public Spatial.Builder setCrosses(Crosses.Builder builder)
        {
            if (crossesBuilder_ == null)
            {
                crosses_ = builder.build();
                onChanged();
            } else
            {
                crossesBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 0x20;
            return this;
        }

        public Spatial.Builder setCrosses(Crosses crosses)
        {
            if (crossesBuilder_ == null)
            {
                if (crosses == null)
                {
                    throw new NullPointerException();
                }
                crosses_ = crosses;
                onChanged();
            } else
            {
                crossesBuilder_.setMessage(crosses);
            }
            bitField0_ = bitField0_ | 0x20;
            return this;
        }

        public Spatial.Builder setDistrict(District.Builder builder)
        {
            if (districtBuilder_ == null)
            {
                district_ = builder.build();
                onChanged();
            } else
            {
                districtBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }

        public Spatial.Builder setDistrict(District district)
        {
            if (districtBuilder_ == null)
            {
                if (district == null)
                {
                    throw new NullPointerException();
                }
                district_ = district;
                onChanged();
            } else
            {
                districtBuilder_.setMessage(district);
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }

        public Spatial.Builder setPois(POIS.Builder builder)
        {
            if (poisBuilder_ == null)
            {
                pois_ = builder.build();
                onChanged();
            } else
            {
                poisBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 0x10;
            return this;
        }

        public Spatial.Builder setPois(POIS pois)
        {
            if (poisBuilder_ == null)
            {
                if (pois == null)
                {
                    throw new NullPointerException();
                }
                pois_ = pois;
                onChanged();
            } else
            {
                poisBuilder_.setMessage(pois);
            }
            bitField0_ = bitField0_ | 0x10;
            return this;
        }

        public Spatial.Builder setProvince(Province.Builder builder)
        {
            if (provinceBuilder_ == null)
            {
                province_ = builder.build();
                onChanged();
            } else
            {
                provinceBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 1;
            return this;
        }

        public Spatial.Builder setProvince(Province province)
        {
            if (provinceBuilder_ == null)
            {
                if (province == null)
                {
                    throw new NullPointerException();
                }
                province_ = province;
                onChanged();
            } else
            {
                provinceBuilder_.setMessage(province);
            }
            bitField0_ = bitField0_ | 1;
            return this;
        }

        public Spatial.Builder setRoads(Roads.Builder builder)
        {
            if (roadsBuilder_ == null)
            {
                roads_ = builder.build();
                onChanged();
            } else
            {
                roadsBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 8;
            return this;
        }

        public Spatial.Builder setRoads(Roads roads)
        {
            if (roadsBuilder_ == null)
            {
                if (roads == null)
                {
                    throw new NullPointerException();
                }
                roads_ = roads;
                onChanged();
            } else
            {
                roadsBuilder_.setMessage(roads);
            }
            bitField0_ = bitField0_ | 8;
            return this;
        }



        private Spatial.Builder()
        {
            province_ = Province.getDefaultInstance();
            city_ = City.getDefaultInstance();
            district_ = District.getDefaultInstance();
            roads_ = Roads.getDefaultInstance();
            pois_ = POIS.getDefaultInstance();
            crosses_ = Crosses.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        private Spatial.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            province_ = Province.getDefaultInstance();
            city_ = City.getDefaultInstance();
            district_ = District.getDefaultInstance();
            roads_ = Roads.getDefaultInstance();
            pois_ = POIS.getDefaultInstance();
            crosses_ = Crosses.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        Spatial.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z1)
        {
            this(builderparent);
        }
    }

    public static interface SpatialOrBuilder
        extends MessageOrBuilder
    {

        public abstract City getCity();

        public abstract CityOrBuilder getCityOrBuilder();

        public abstract Crosses getCrosses();

        public abstract CrossesOrBuilder getCrossesOrBuilder();

        public abstract District getDistrict();

        public abstract DistrictOrBuilder getDistrictOrBuilder();

        public abstract POIS getPois();

        public abstract POISOrBuilder getPoisOrBuilder();

        public abstract Province getProvince();

        public abstract ProvinceOrBuilder getProvinceOrBuilder();

        public abstract Roads getRoads();

        public abstract RoadsOrBuilder getRoadsOrBuilder();

        public abstract boolean hasCity();

        public abstract boolean hasCrosses();

        public abstract boolean hasDistrict();

        public abstract boolean hasPois();

        public abstract boolean hasProvince();

        public abstract boolean hasRoads();
    }


    private static com.google.protobuf.Descriptors.FileDescriptor descriptor;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_City_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_City_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_Cross_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_Cross_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_Crosses_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_Crosses_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_District_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_District_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_POIS_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_POIS_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_Province_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_Province_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_ReverseGeocodingRequest_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_ReverseGeocodingRequest_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_ReverseGeocodingResponse_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_ReverseGeocodingResponse_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_Road_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_Road_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_Roads_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_Roads_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_Spatial_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_Spatial_fieldAccessorTable;

    private ReverseGeocodingProtoBuf()
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
        z z1 = new z();
        com.google.protobuf.Descriptors.FileDescriptor filedescriptor = CommonProtoBuf.getDescriptor();
        com.google.protobuf.Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] {
            "\n\026reversegeocoding.proto\032\fcommon.proto\"F\n\027ReverseGeocodingRequest\022\027\n\006common\030\001 \002(\0132\007.Common\022\022\n\nspatialXml\030\002 \002(\t\"5\n\030ReverseGeocodingResponse\022\031\n\007spatial\030\001 \003(\0132\b.Spatial\"\237\001\n\007Spatial\022\033\n\bprovince\030\001 \002(\0132\t.Province\022\023\n\004city\030\002 \002(\0132\005.City\022\033\n\bdistrict\030\003 \002(\0132\t.District\022\025\n\005roads\030\004 \001(\0132\006.Roads\022\023\n\004pois\030\005 \001(\0132\005.POIS\022\031\n\007crosses\030\006 \001(\0132\b.Crosses\"&\n\bProvince\022\f\n\004name\030\001 \001(\t\022\f\n\004code\030\002 \001(\t\"/\n\004City\022\f\n\004name\030\001 \001(\t\022\f\n\004code\030\002 ", "\001(\t\022\013\n\003tel\030\003 \001(\t\"L\n\bDistrict\022\f\n\004name\030\001 \001(\t\022\f\n\004code\030\002 \001(\t\022\t\n\001x\030\003 \001(\t\022\t\n\001y\030\004 \001(\t\022\016\n\006bounds\030\005 \001(\t\"\034\n\005Roads\022\023\n\004road\030\001 \003(\0132\005.Road\"r\n\004Road\022\n\n\002id\030\001 \002(\t\022\f\n\004name\030\002 \002(\t\022\r\n\005ename\030\003 \002(\t\022\r\n\005width\030\004 \002(\t\022\r\n\005level\030\005 \002(\t\022\020\n\bdistance\030\006 \002(\t\022\021\n\tdirection\030\007 \002(\t\"\031\n\004POIS\022\021\n\003poi\030\001 \003(\0132\004.POI\" \n\007Crosses\022\025\n\005cross\030\001 \003(\0132\006.Cross\"+\n\005Cross\022\f\n\004name\030\001 \002(\t\022\t\n\001x\030\002 \002(\t\022\t\n\001y\030\003 \002(\tB2\n\026com.mapabc.mapapi.coreB\030ReverseGeocodingProtoBuf"
        }, new com.google.protobuf.Descriptors.FileDescriptor[] {
            filedescriptor
        }, z1);
    }



/*
    static com.google.protobuf.Descriptors.Descriptor access$002(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_ReverseGeocodingRequest_descriptor = descriptor1;
        return descriptor1;
    }

*/





/*
    static com.google.protobuf.Descriptors.Descriptor access$10002(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_Crosses_descriptor = descriptor1;
        return descriptor1;
    }

*/


/*
    static com.google.protobuf.Descriptors.Descriptor access$1002(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_ReverseGeocodingResponse_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$10102(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_Crosses_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/


/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$102(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_ReverseGeocodingRequest_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$10902(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_Cross_descriptor = descriptor1;
        return descriptor1;
    }

*/




/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$11002(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_Cross_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/


/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$1102(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_ReverseGeocodingResponse_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/


/*
    static com.google.protobuf.Descriptors.FileDescriptor access$12002(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
    {
        descriptor = filedescriptor;
        return filedescriptor;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$1902(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_Spatial_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$2002(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_Spatial_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$3302(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_Province_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$3402(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_Province_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$4302(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_City_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$4402(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_City_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$5402(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_District_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$5502(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_District_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$6702(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_Roads_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$6802(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_Roads_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$7602(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_Road_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$7702(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_Road_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$9102(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_POIS_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$9202(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_POIS_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/

    // Unreferenced inner class com/mapabc/mapapi/core/z
    static final class z
        implements com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
    {

        public ExtensionRegistry assignDescriptors(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
        {
            ReverseGeocodingProtoBuf.descriptor = filedescriptor;
            ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingRequest_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(0);
            ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingRequest_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingRequest_descriptor, new String[] {
                "Common", "SpatialXml"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder);
            ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingResponse_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(1);
            ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingResponse_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_ReverseGeocodingResponse_descriptor, new String[] {
                "Spatial"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder);
            ReverseGeocodingProtoBuf.internal_static_Spatial_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(2);
            ReverseGeocodingProtoBuf.internal_static_Spatial_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_Spatial_descriptor, new String[] {
                "Province", "City", "District", "Roads", "Pois", "Crosses"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder);
            ReverseGeocodingProtoBuf.internal_static_Province_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(3);
            ReverseGeocodingProtoBuf.internal_static_Province_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_Province_descriptor, new String[] {
                "Name", "Code"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder);
            ReverseGeocodingProtoBuf.internal_static_City_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(4);
            ReverseGeocodingProtoBuf.internal_static_City_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_City_descriptor, new String[] {
                "Name", "Code", "Tel"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder);
            ReverseGeocodingProtoBuf.internal_static_District_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(5);
            ReverseGeocodingProtoBuf.internal_static_District_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_District_descriptor, new String[] {
                "Name", "Code", "X", "Y", "Bounds"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder);
            ReverseGeocodingProtoBuf.internal_static_Roads_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(6);
            ReverseGeocodingProtoBuf.internal_static_Roads_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_Roads_descriptor, new String[] {
                "Road"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder);
            ReverseGeocodingProtoBuf.internal_static_Road_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(7);
            ReverseGeocodingProtoBuf.internal_static_Road_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_Road_descriptor, new String[] {
                "Id", "Name", "Ename", "Width", "Level", "Distance", "Direction"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder);
            ReverseGeocodingProtoBuf.internal_static_POIS_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(8);
            ReverseGeocodingProtoBuf.internal_static_POIS_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_POIS_descriptor, new String[] {
                "Poi"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder);
            ReverseGeocodingProtoBuf.internal_static_Crosses_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(9);
            ReverseGeocodingProtoBuf.internal_static_Crosses_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_Crosses_descriptor, new String[] {
                "Cross"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder);
            ReverseGeocodingProtoBuf.internal_static_Cross_descriptor = (com.google.protobuf.Descriptors.Descriptor)ReverseGeocodingProtoBuf.getDescriptor().getMessageTypes().get(10);
            ReverseGeocodingProtoBuf.internal_static_Cross_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(ReverseGeocodingProtoBuf.internal_static_Cross_descriptor, new String[] {
                "Name", "X", "Y"
            }, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross, com/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder);
            return null;
        }

            z()
            {
            }
    }

}
