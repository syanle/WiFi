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
        implements ReverseGeocodingProtoBuf.RoadOrBuilder
    {

        private int bitField0_;
        private Object direction_;
        private Object distance_;
        private Object ename_;
        private Object id_;
        private Object level_;
        private Object name_;
        private Object width_;

        private ReverseGeocodingProtoBuf.Road buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingProtoBuf.Road road = buildPartial();
            if (!road.isInitialized())
            {
                throw newUninitializedMessageException(road).asInvalidProtocolBufferException();
            } else
            {
                return road;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return ReverseGeocodingProtoBuf.access$7600();
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

        public ReverseGeocodingProtoBuf.Road build()
        {
            ReverseGeocodingProtoBuf.Road road = buildPartial();
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

        public ReverseGeocodingProtoBuf.Road buildPartial()
        {
            int j = 1;
            ReverseGeocodingProtoBuf.Road road = new ReverseGeocodingProtoBuf.Road(this, null);
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

        public Builder clear()
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

        public Builder clearDirection()
        {
            bitField0_ = bitField0_ & 0xffffffbf;
            direction_ = ReverseGeocodingProtoBuf.Road.getDefaultInstance().getDirection();
            onChanged();
            return this;
        }

        public Builder clearDistance()
        {
            bitField0_ = bitField0_ & 0xffffffdf;
            distance_ = ReverseGeocodingProtoBuf.Road.getDefaultInstance().getDistance();
            onChanged();
            return this;
        }

        public Builder clearEname()
        {
            bitField0_ = bitField0_ & -5;
            ename_ = ReverseGeocodingProtoBuf.Road.getDefaultInstance().getEname();
            onChanged();
            return this;
        }

        public Builder clearId()
        {
            bitField0_ = bitField0_ & -2;
            id_ = ReverseGeocodingProtoBuf.Road.getDefaultInstance().getId();
            onChanged();
            return this;
        }

        public Builder clearLevel()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            level_ = ReverseGeocodingProtoBuf.Road.getDefaultInstance().getLevel();
            onChanged();
            return this;
        }

        public Builder clearName()
        {
            bitField0_ = bitField0_ & -3;
            name_ = ReverseGeocodingProtoBuf.Road.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder clearWidth()
        {
            bitField0_ = bitField0_ & -9;
            width_ = ReverseGeocodingProtoBuf.Road.getDefaultInstance().getWidth();
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

        public ReverseGeocodingProtoBuf.Road getDefaultInstanceForType()
        {
            return ReverseGeocodingProtoBuf.Road.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingProtoBuf.Road.getDescriptor();
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
            return ReverseGeocodingProtoBuf.access$7700();
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

        public Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingProtoBuf.Road)
            {
                return mergeFrom((ReverseGeocodingProtoBuf.Road)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(ReverseGeocodingProtoBuf.Road road)
        {
            if (road == ReverseGeocodingProtoBuf.Road.getDefaultInstance())
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

        public Builder setDirection(String s)
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

        public Builder setDistance(String s)
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

        public Builder setEname(String s)
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

        public Builder setId(String s)
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

        public Builder setLevel(String s)
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

        public Builder setName(String s)
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

        public Builder setWidth(String s)
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



        private Builder()
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

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
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

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z)
        {
            this(builderparent);
        }
    }


    public static final int DIRECTION_FIELD_NUMBER = 7;
    public static final int DISTANCE_FIELD_NUMBER = 6;
    public static final int ENAME_FIELD_NUMBER = 3;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int LEVEL_FIELD_NUMBER = 5;
    public static final int NAME_FIELD_NUMBER = 2;
    public static final int WIDTH_FIELD_NUMBER = 4;
    private static final initFields defaultInstance;
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

    public static Builder.onChanged getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.ad.defaultInstance getDescriptor()
    {
        return ReverseGeocodingProtoBuf.access$7600();
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

    protected com.google.protobuf.Table internalGetFieldAccessorTable()
    {
        return ReverseGeocodingProtoBuf.access$7700();
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

    public volatile com.google.protobuf.ad newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf. newBuilderForType(com.google.protobuf. )
    {
        return newBuilderForType();
    }

    public volatile com.google.protobuf.ad newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf. )
    {
        return new Builder(, null);
    }

    public volatile com.google.protobuf.ad toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.ad toBuilder()
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
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }



/*
    static Object access$8302(Builder builder, Object obj)
    {
        builder.id_ = obj;
        return obj;
    }

*/


/*
    static Object access$8402(id_ id_1, Object obj)
    {
        id_1.name_ = obj;
        return obj;
    }

*/


/*
    static Object access$8502(name_ name_1, Object obj)
    {
        name_1.ename_ = obj;
        return obj;
    }

*/


/*
    static Object access$8602(ename_ ename_1, Object obj)
    {
        ename_1.width_ = obj;
        return obj;
    }

*/


/*
    static Object access$8702(width_ width_1, Object obj)
    {
        width_1.level_ = obj;
        return obj;
    }

*/


/*
    static Object access$8802(level_ level_1, Object obj)
    {
        level_1.distance_ = obj;
        return obj;
    }

*/


/*
    static Object access$8902(distance_ distance_1, Object obj)
    {
        distance_1.direction_ = obj;
        return obj;
    }

*/


/*
    static int access$9002(direction_ direction_1, int i)
    {
        direction_1.bitField0_ = i;
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
