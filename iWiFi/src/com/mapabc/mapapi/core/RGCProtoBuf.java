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
//            v, CommonProtoBuf

public final class RGCProtoBuf
{
    public static final class RGCItem extends GeneratedMessage
        implements RGCItemOrBuilder
    {

        public static final int GRIDCODE_FIELD_NUMBER = 3;
        public static final int X_FIELD_NUMBER = 1;
        public static final int Y_FIELD_NUMBER = 2;
        private static final RGCItem defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private Object gridcode_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object x_;
        private Object y_;

        public static RGCItem getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return RGCProtoBuf.internal_static_RGCItem_descriptor;
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
            x_ = "";
            y_ = "";
            gridcode_ = "";
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(RGCItem rgcitem)
        {
            return newBuilder().mergeFrom(rgcitem);
        }

        public static RGCItem parseDelimitedFrom(InputStream inputstream)
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

        public static RGCItem parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static RGCItem parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static RGCItem parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static RGCItem parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static RGCItem parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static RGCItem parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static RGCItem parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static RGCItem parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static RGCItem parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public RGCItem getDefaultInstanceForType()
        {
            return defaultInstance;
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
                j = 0 + CodedOutputStream.computeBytesSize(1, getXBytes());
            }
            i = j;
            if ((bitField0_ & 2) == 2)
            {
                i = j + CodedOutputStream.computeBytesSize(2, getYBytes());
            }
            j = i;
            if ((bitField0_ & 4) == 4)
            {
                j = i + CodedOutputStream.computeBytesSize(3, getGridcodeBytes());
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

        public boolean hasGridcode()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasX()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasY()
        {
            return (bitField0_ & 2) == 2;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return RGCProtoBuf.internal_static_RGCItem_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            byte byte0 = memoizedIsInitialized;
            if (byte0 != -1)
            {
                return byte0 == 1;
            }
            if (!hasGridcode())
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
                codedoutputstream.writeBytes(1, getXBytes());
            }
            if ((bitField0_ & 2) == 2)
            {
                codedoutputstream.writeBytes(2, getYBytes());
            }
            if ((bitField0_ & 4) == 4)
            {
                codedoutputstream.writeBytes(3, getGridcodeBytes());
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new RGCItem(true);
            defaultInstance.initFields();
        }



/*
        static Object access$3502(RGCItem rgcitem, Object obj)
        {
            rgcitem.x_ = obj;
            return obj;
        }

*/


/*
        static Object access$3602(RGCItem rgcitem, Object obj)
        {
            rgcitem.y_ = obj;
            return obj;
        }

*/


/*
        static Object access$3702(RGCItem rgcitem, Object obj)
        {
            rgcitem.gridcode_ = obj;
            return obj;
        }

*/


/*
        static int access$3802(RGCItem rgcitem, int i)
        {
            rgcitem.bitField0_ = i;
            return i;
        }

*/

        private RGCItem(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        RGCItem(Builder builder, v v1)
        {
            this(builder);
        }

        private RGCItem(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class RGCItem.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements RGCItemOrBuilder
    {

        private int bitField0_;
        private Object gridcode_;
        private Object x_;
        private Object y_;

        private RGCItem buildParsed()
            throws InvalidProtocolBufferException
        {
            RGCItem rgcitem = buildPartial();
            if (!rgcitem.isInitialized())
            {
                throw newUninitializedMessageException(rgcitem).asInvalidProtocolBufferException();
            } else
            {
                return rgcitem;
            }
        }

        private static RGCItem.Builder create()
        {
            return new RGCItem.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return RGCProtoBuf.internal_static_RGCItem_descriptor;
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

        public RGCItem build()
        {
            RGCItem rgcitem = buildPartial();
            if (!rgcitem.isInitialized())
            {
                throw newUninitializedMessageException(rgcitem);
            } else
            {
                return rgcitem;
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

        public RGCItem buildPartial()
        {
            int j = 1;
            RGCItem rgcitem = new RGCItem(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            rgcitem.x_ = x_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            rgcitem.y_ = y_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            rgcitem.gridcode_ = gridcode_;
            rgcitem.bitField0_ = j;
            onBuilt();
            return rgcitem;
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

        public RGCItem.Builder clear()
        {
            super.clear();
            x_ = "";
            bitField0_ = bitField0_ & -2;
            y_ = "";
            bitField0_ = bitField0_ & -3;
            gridcode_ = "";
            bitField0_ = bitField0_ & -5;
            return this;
        }

        public RGCItem.Builder clearGridcode()
        {
            bitField0_ = bitField0_ & -5;
            gridcode_ = RGCItem.getDefaultInstance().getGridcode();
            onChanged();
            return this;
        }

        public RGCItem.Builder clearX()
        {
            bitField0_ = bitField0_ & -2;
            x_ = RGCItem.getDefaultInstance().getX();
            onChanged();
            return this;
        }

        public RGCItem.Builder clearY()
        {
            bitField0_ = bitField0_ & -3;
            y_ = RGCItem.getDefaultInstance().getY();
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

        public RGCItem.Builder clone()
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

        public RGCItem getDefaultInstanceForType()
        {
            return RGCItem.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return RGCItem.getDescriptor();
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

        public boolean hasGridcode()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasX()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasY()
        {
            return (bitField0_ & 2) == 2;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return RGCProtoBuf.internal_static_RGCItem_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            return hasGridcode();
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

        public RGCItem.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    x_ = codedinputstream.readBytes();
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 2;
                    y_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    gridcode_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public RGCItem.Builder mergeFrom(Message message)
        {
            if (message instanceof RGCItem)
            {
                return mergeFrom((RGCItem)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public RGCItem.Builder mergeFrom(RGCItem rgcitem)
        {
            if (rgcitem == RGCItem.getDefaultInstance())
            {
                return this;
            }
            if (rgcitem.hasX())
            {
                setX(rgcitem.getX());
            }
            if (rgcitem.hasY())
            {
                setY(rgcitem.getY());
            }
            if (rgcitem.hasGridcode())
            {
                setGridcode(rgcitem.getGridcode());
            }
            mergeUnknownFields(rgcitem.getUnknownFields());
            return this;
        }

        public RGCItem.Builder setGridcode(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                gridcode_ = s;
                onChanged();
                return this;
            }
        }

        void setGridcode(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            gridcode_ = bytestring;
            onChanged();
        }

        public RGCItem.Builder setX(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 1;
                x_ = s;
                onChanged();
                return this;
            }
        }

        void setX(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 1;
            x_ = bytestring;
            onChanged();
        }

        public RGCItem.Builder setY(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                y_ = s;
                onChanged();
                return this;
            }
        }

        void setY(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            y_ = bytestring;
            onChanged();
        }



        private RGCItem.Builder()
        {
            x_ = "";
            y_ = "";
            gridcode_ = "";
            maybeForceBuilderInitialization();
        }

        private RGCItem.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            x_ = "";
            y_ = "";
            gridcode_ = "";
            maybeForceBuilderInitialization();
        }

        RGCItem.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, v v1)
        {
            this(builderparent);
        }
    }

    public static interface RGCItemOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getGridcode();

        public abstract String getX();

        public abstract String getY();

        public abstract boolean hasGridcode();

        public abstract boolean hasX();

        public abstract boolean hasY();
    }

    public static final class RGCRequest extends GeneratedMessage
        implements RGCRequestOrBuilder
    {

        public static final int COMMON_FIELD_NUMBER = 1;
        public static final int COORS_FIELD_NUMBER = 6;
        public static final int CR_FIELD_NUMBER = 7;
        public static final int FLAG_FIELD_NUMBER = 8;
        public static final int TS_FIELD_NUMBER = 11;
        public static final int TYPE_FIELD_NUMBER = 9;
        public static final int X1_FIELD_NUMBER = 2;
        public static final int X2_FIELD_NUMBER = 4;
        public static final int Y1_FIELD_NUMBER = 3;
        public static final int Y2_FIELD_NUMBER = 5;
        public static final int Z_FIELD_NUMBER = 10;
        private static final RGCRequest defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private CommonProtoBuf.Common common_;
        private Object coors_;
        private Object cr_;
        private Object flag_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object ts_;
        private Object type_;
        private Object x1_;
        private Object x2_;
        private Object y1_;
        private Object y2_;
        private Object z_;

        private ByteString getCoorsBytes()
        {
            Object obj = coors_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                coors_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getCrBytes()
        {
            Object obj = cr_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                cr_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        public static RGCRequest getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return RGCProtoBuf.internal_static_RGCRequest_descriptor;
        }

        private ByteString getFlagBytes()
        {
            Object obj = flag_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                flag_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getTsBytes()
        {
            Object obj = ts_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                ts_ = obj;
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

        private ByteString getX1Bytes()
        {
            Object obj = x1_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                x1_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getX2Bytes()
        {
            Object obj = x2_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                x2_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getY1Bytes()
        {
            Object obj = y1_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                y1_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getY2Bytes()
        {
            Object obj = y2_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                y2_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getZBytes()
        {
            Object obj = z_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                z_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private void initFields()
        {
            common_ = CommonProtoBuf.Common.getDefaultInstance();
            x1_ = "";
            y1_ = "";
            x2_ = "";
            y2_ = "";
            coors_ = "";
            cr_ = "";
            flag_ = "";
            type_ = "";
            z_ = "";
            ts_ = "";
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(RGCRequest rgcrequest)
        {
            return newBuilder().mergeFrom(rgcrequest);
        }

        public static RGCRequest parseDelimitedFrom(InputStream inputstream)
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

        public static RGCRequest parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static RGCRequest parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static RGCRequest parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static RGCRequest parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static RGCRequest parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static RGCRequest parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static RGCRequest parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static RGCRequest parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static RGCRequest parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public String getCoors()
        {
            Object obj = coors_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                coors_ = s;
            }
            return s;
        }

        public String getCr()
        {
            Object obj = cr_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                cr_ = s;
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

        public RGCRequest getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public String getFlag()
        {
            Object obj = flag_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                flag_ = s;
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
                i = j + CodedOutputStream.computeBytesSize(2, getX1Bytes());
            }
            j = i;
            if ((bitField0_ & 4) == 4)
            {
                j = i + CodedOutputStream.computeBytesSize(3, getY1Bytes());
            }
            i = j;
            if ((bitField0_ & 8) == 8)
            {
                i = j + CodedOutputStream.computeBytesSize(4, getX2Bytes());
            }
            j = i;
            if ((bitField0_ & 0x10) == 16)
            {
                j = i + CodedOutputStream.computeBytesSize(5, getY2Bytes());
            }
            i = j;
            if ((bitField0_ & 0x20) == 32)
            {
                i = j + CodedOutputStream.computeBytesSize(6, getCoorsBytes());
            }
            j = i;
            if ((bitField0_ & 0x40) == 64)
            {
                j = i + CodedOutputStream.computeBytesSize(7, getCrBytes());
            }
            i = j;
            if ((bitField0_ & 0x80) == 128)
            {
                i = j + CodedOutputStream.computeBytesSize(8, getFlagBytes());
            }
            j = i;
            if ((bitField0_ & 0x100) == 256)
            {
                j = i + CodedOutputStream.computeBytesSize(9, getTypeBytes());
            }
            i = j;
            if ((bitField0_ & 0x200) == 512)
            {
                i = j + CodedOutputStream.computeBytesSize(10, getZBytes());
            }
            j = i;
            if ((bitField0_ & 0x400) == 1024)
            {
                j = i + CodedOutputStream.computeBytesSize(11, getTsBytes());
            }
            i = j + getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
        }

        public String getTs()
        {
            Object obj = ts_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                ts_ = s;
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

        public String getX1()
        {
            Object obj = x1_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                x1_ = s;
            }
            return s;
        }

        public String getX2()
        {
            Object obj = x2_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                x2_ = s;
            }
            return s;
        }

        public String getY1()
        {
            Object obj = y1_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                y1_ = s;
            }
            return s;
        }

        public String getY2()
        {
            Object obj = y2_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                y2_ = s;
            }
            return s;
        }

        public String getZ()
        {
            Object obj = z_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                z_ = s;
            }
            return s;
        }

        public boolean hasCommon()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasCoors()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasCr()
        {
            return (bitField0_ & 0x40) == 64;
        }

        public boolean hasFlag()
        {
            return (bitField0_ & 0x80) == 128;
        }

        public boolean hasTs()
        {
            return (bitField0_ & 0x400) == 1024;
        }

        public boolean hasType()
        {
            return (bitField0_ & 0x100) == 256;
        }

        public boolean hasX1()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasX2()
        {
            return (bitField0_ & 8) == 8;
        }

        public boolean hasY1()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasY2()
        {
            return (bitField0_ & 0x10) == 16;
        }

        public boolean hasZ()
        {
            return (bitField0_ & 0x200) == 512;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return RGCProtoBuf.internal_static_RGCRequest_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            byte byte0 = memoizedIsInitialized;
            if (byte0 != -1)
            {
                return byte0 == 1;
            }
            if (!hasCommon())
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
                codedoutputstream.writeBytes(2, getX1Bytes());
            }
            if ((bitField0_ & 4) == 4)
            {
                codedoutputstream.writeBytes(3, getY1Bytes());
            }
            if ((bitField0_ & 8) == 8)
            {
                codedoutputstream.writeBytes(4, getX2Bytes());
            }
            if ((bitField0_ & 0x10) == 16)
            {
                codedoutputstream.writeBytes(5, getY2Bytes());
            }
            if ((bitField0_ & 0x20) == 32)
            {
                codedoutputstream.writeBytes(6, getCoorsBytes());
            }
            if ((bitField0_ & 0x40) == 64)
            {
                codedoutputstream.writeBytes(7, getCrBytes());
            }
            if ((bitField0_ & 0x80) == 128)
            {
                codedoutputstream.writeBytes(8, getFlagBytes());
            }
            if ((bitField0_ & 0x100) == 256)
            {
                codedoutputstream.writeBytes(9, getTypeBytes());
            }
            if ((bitField0_ & 0x200) == 512)
            {
                codedoutputstream.writeBytes(10, getZBytes());
            }
            if ((bitField0_ & 0x400) == 1024)
            {
                codedoutputstream.writeBytes(11, getTsBytes());
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new RGCRequest(true);
            defaultInstance.initFields();
        }


/*
        static Object access$1002(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.x2_ = obj;
            return obj;
        }

*/


/*
        static Object access$1102(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.y2_ = obj;
            return obj;
        }

*/


/*
        static Object access$1202(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.coors_ = obj;
            return obj;
        }

*/


/*
        static Object access$1302(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.cr_ = obj;
            return obj;
        }

*/


/*
        static Object access$1402(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.flag_ = obj;
            return obj;
        }

*/


/*
        static Object access$1502(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.type_ = obj;
            return obj;
        }

*/


/*
        static Object access$1602(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.z_ = obj;
            return obj;
        }

*/


/*
        static Object access$1702(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.ts_ = obj;
            return obj;
        }

*/


/*
        static int access$1802(RGCRequest rgcrequest, int i)
        {
            rgcrequest.bitField0_ = i;
            return i;
        }

*/



/*
        static CommonProtoBuf.Common access$702(RGCRequest rgcrequest, CommonProtoBuf.Common common)
        {
            rgcrequest.common_ = common;
            return common;
        }

*/


/*
        static Object access$802(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.x1_ = obj;
            return obj;
        }

*/


/*
        static Object access$902(RGCRequest rgcrequest, Object obj)
        {
            rgcrequest.y1_ = obj;
            return obj;
        }

*/

        private RGCRequest(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        RGCRequest(Builder builder, v v1)
        {
            this(builder);
        }

        private RGCRequest(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class RGCRequest.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements RGCRequestOrBuilder
    {

        private int bitField0_;
        private SingleFieldBuilder commonBuilder_;
        private CommonProtoBuf.Common common_;
        private Object coors_;
        private Object cr_;
        private Object flag_;
        private Object ts_;
        private Object type_;
        private Object x1_;
        private Object x2_;
        private Object y1_;
        private Object y2_;
        private Object z_;

        private RGCRequest buildParsed()
            throws InvalidProtocolBufferException
        {
            RGCRequest rgcrequest = buildPartial();
            if (!rgcrequest.isInitialized())
            {
                throw newUninitializedMessageException(rgcrequest).asInvalidProtocolBufferException();
            } else
            {
                return rgcrequest;
            }
        }

        private static RGCRequest.Builder create()
        {
            return new RGCRequest.Builder();
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
            return RGCProtoBuf.internal_static_RGCRequest_descriptor;
        }

        private void maybeForceBuilderInitialization()
        {
            if (isClean)
            {
                getCommonFieldBuilder();
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

        public RGCRequest build()
        {
            RGCRequest rgcrequest = buildPartial();
            if (!rgcrequest.isInitialized())
            {
                throw newUninitializedMessageException(rgcrequest);
            } else
            {
                return rgcrequest;
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

        public RGCRequest buildPartial()
        {
            RGCRequest rgcrequest = new RGCRequest(this, null);
            int k = bitField0_;
            int j = 0;
            if ((k & 1) == 1)
            {
                j = 1;
            }
            int i;
            if (commonBuilder_ == null)
            {
                rgcrequest.common_ = common_;
            } else
            {
                rgcrequest.common_ = (CommonProtoBuf.Common)commonBuilder_.build();
            }
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            rgcrequest.x1_ = x1_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            rgcrequest.y1_ = y1_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            rgcrequest.x2_ = x2_;
            j = i;
            if ((k & 0x10) == 16)
            {
                j = i | 0x10;
            }
            rgcrequest.y2_ = y2_;
            i = j;
            if ((k & 0x20) == 32)
            {
                i = j | 0x20;
            }
            rgcrequest.coors_ = coors_;
            j = i;
            if ((k & 0x40) == 64)
            {
                j = i | 0x40;
            }
            rgcrequest.cr_ = cr_;
            i = j;
            if ((k & 0x80) == 128)
            {
                i = j | 0x80;
            }
            rgcrequest.flag_ = flag_;
            j = i;
            if ((k & 0x100) == 256)
            {
                j = i | 0x100;
            }
            rgcrequest.type_ = type_;
            i = j;
            if ((k & 0x200) == 512)
            {
                i = j | 0x200;
            }
            rgcrequest.z_ = z_;
            j = i;
            if ((k & 0x400) == 1024)
            {
                j = i | 0x400;
            }
            rgcrequest.ts_ = ts_;
            rgcrequest.bitField0_ = j;
            onBuilt();
            return rgcrequest;
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

        public RGCRequest.Builder clear()
        {
            super.clear();
            if (commonBuilder_ == null)
            {
                common_ = CommonProtoBuf.Common.getDefaultInstance();
            } else
            {
                commonBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            x1_ = "";
            bitField0_ = bitField0_ & -3;
            y1_ = "";
            bitField0_ = bitField0_ & -5;
            x2_ = "";
            bitField0_ = bitField0_ & -9;
            y2_ = "";
            bitField0_ = bitField0_ & 0xffffffef;
            coors_ = "";
            bitField0_ = bitField0_ & 0xffffffdf;
            cr_ = "";
            bitField0_ = bitField0_ & 0xffffffbf;
            flag_ = "";
            bitField0_ = bitField0_ & 0xffffff7f;
            type_ = "";
            bitField0_ = bitField0_ & 0xfffffeff;
            z_ = "";
            bitField0_ = bitField0_ & 0xfffffdff;
            ts_ = "";
            bitField0_ = bitField0_ & 0xfffffbff;
            return this;
        }

        public RGCRequest.Builder clearCommon()
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

        public RGCRequest.Builder clearCoors()
        {
            bitField0_ = bitField0_ & 0xffffffdf;
            coors_ = RGCRequest.getDefaultInstance().getCoors();
            onChanged();
            return this;
        }

        public RGCRequest.Builder clearCr()
        {
            bitField0_ = bitField0_ & 0xffffffbf;
            cr_ = RGCRequest.getDefaultInstance().getCr();
            onChanged();
            return this;
        }

        public RGCRequest.Builder clearFlag()
        {
            bitField0_ = bitField0_ & 0xffffff7f;
            flag_ = RGCRequest.getDefaultInstance().getFlag();
            onChanged();
            return this;
        }

        public RGCRequest.Builder clearTs()
        {
            bitField0_ = bitField0_ & 0xfffffbff;
            ts_ = RGCRequest.getDefaultInstance().getTs();
            onChanged();
            return this;
        }

        public RGCRequest.Builder clearType()
        {
            bitField0_ = bitField0_ & 0xfffffeff;
            type_ = RGCRequest.getDefaultInstance().getType();
            onChanged();
            return this;
        }

        public RGCRequest.Builder clearX1()
        {
            bitField0_ = bitField0_ & -3;
            x1_ = RGCRequest.getDefaultInstance().getX1();
            onChanged();
            return this;
        }

        public RGCRequest.Builder clearX2()
        {
            bitField0_ = bitField0_ & -9;
            x2_ = RGCRequest.getDefaultInstance().getX2();
            onChanged();
            return this;
        }

        public RGCRequest.Builder clearY1()
        {
            bitField0_ = bitField0_ & -5;
            y1_ = RGCRequest.getDefaultInstance().getY1();
            onChanged();
            return this;
        }

        public RGCRequest.Builder clearY2()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            y2_ = RGCRequest.getDefaultInstance().getY2();
            onChanged();
            return this;
        }

        public RGCRequest.Builder clearZ()
        {
            bitField0_ = bitField0_ & 0xfffffdff;
            z_ = RGCRequest.getDefaultInstance().getZ();
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

        public RGCRequest.Builder clone()
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

        public String getCoors()
        {
            Object obj = coors_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                coors_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getCr()
        {
            Object obj = cr_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                cr_ = obj;
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

        public RGCRequest getDefaultInstanceForType()
        {
            return RGCRequest.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return RGCRequest.getDescriptor();
        }

        public String getFlag()
        {
            Object obj = flag_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                flag_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getTs()
        {
            Object obj = ts_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                ts_ = obj;
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

        public String getX1()
        {
            Object obj = x1_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                x1_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getX2()
        {
            Object obj = x2_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                x2_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getY1()
        {
            Object obj = y1_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                y1_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getY2()
        {
            Object obj = y2_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                y2_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getZ()
        {
            Object obj = z_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                z_ = obj;
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

        public boolean hasCoors()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasCr()
        {
            return (bitField0_ & 0x40) == 64;
        }

        public boolean hasFlag()
        {
            return (bitField0_ & 0x80) == 128;
        }

        public boolean hasTs()
        {
            return (bitField0_ & 0x400) == 1024;
        }

        public boolean hasType()
        {
            return (bitField0_ & 0x100) == 256;
        }

        public boolean hasX1()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasX2()
        {
            return (bitField0_ & 8) == 8;
        }

        public boolean hasY1()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasY2()
        {
            return (bitField0_ & 0x10) == 16;
        }

        public boolean hasZ()
        {
            return (bitField0_ & 0x200) == 512;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return RGCProtoBuf.internal_static_RGCRequest_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            while (!hasCommon() || !getCommon().isInitialized()) 
            {
                return false;
            }
            return true;
        }

        public RGCRequest.Builder mergeCommon(CommonProtoBuf.Common common)
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

        public RGCRequest.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    x1_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    y1_ = codedinputstream.readBytes();
                    break;

                case 34: // '"'
                    bitField0_ = bitField0_ | 8;
                    x2_ = codedinputstream.readBytes();
                    break;

                case 42: // '*'
                    bitField0_ = bitField0_ | 0x10;
                    y2_ = codedinputstream.readBytes();
                    break;

                case 50: // '2'
                    bitField0_ = bitField0_ | 0x20;
                    coors_ = codedinputstream.readBytes();
                    break;

                case 58: // ':'
                    bitField0_ = bitField0_ | 0x40;
                    cr_ = codedinputstream.readBytes();
                    break;

                case 66: // 'B'
                    bitField0_ = bitField0_ | 0x80;
                    flag_ = codedinputstream.readBytes();
                    break;

                case 74: // 'J'
                    bitField0_ = bitField0_ | 0x100;
                    type_ = codedinputstream.readBytes();
                    break;

                case 82: // 'R'
                    bitField0_ = bitField0_ | 0x200;
                    z_ = codedinputstream.readBytes();
                    break;

                case 90: // 'Z'
                    bitField0_ = bitField0_ | 0x400;
                    ts_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public RGCRequest.Builder mergeFrom(Message message)
        {
            if (message instanceof RGCRequest)
            {
                return mergeFrom((RGCRequest)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public RGCRequest.Builder mergeFrom(RGCRequest rgcrequest)
        {
            if (rgcrequest == RGCRequest.getDefaultInstance())
            {
                return this;
            }
            if (rgcrequest.hasCommon())
            {
                mergeCommon(rgcrequest.getCommon());
            }
            if (rgcrequest.hasX1())
            {
                setX1(rgcrequest.getX1());
            }
            if (rgcrequest.hasY1())
            {
                setY1(rgcrequest.getY1());
            }
            if (rgcrequest.hasX2())
            {
                setX2(rgcrequest.getX2());
            }
            if (rgcrequest.hasY2())
            {
                setY2(rgcrequest.getY2());
            }
            if (rgcrequest.hasCoors())
            {
                setCoors(rgcrequest.getCoors());
            }
            if (rgcrequest.hasCr())
            {
                setCr(rgcrequest.getCr());
            }
            if (rgcrequest.hasFlag())
            {
                setFlag(rgcrequest.getFlag());
            }
            if (rgcrequest.hasType())
            {
                setType(rgcrequest.getType());
            }
            if (rgcrequest.hasZ())
            {
                setZ(rgcrequest.getZ());
            }
            if (rgcrequest.hasTs())
            {
                setTs(rgcrequest.getTs());
            }
            mergeUnknownFields(rgcrequest.getUnknownFields());
            return this;
        }

        public RGCRequest.Builder setCommon(CommonProtoBuf.Common.Builder builder)
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

        public RGCRequest.Builder setCommon(CommonProtoBuf.Common common)
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

        public RGCRequest.Builder setCoors(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x20;
                coors_ = s;
                onChanged();
                return this;
            }
        }

        void setCoors(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x20;
            coors_ = bytestring;
            onChanged();
        }

        public RGCRequest.Builder setCr(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x40;
                cr_ = s;
                onChanged();
                return this;
            }
        }

        void setCr(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x40;
            cr_ = bytestring;
            onChanged();
        }

        public RGCRequest.Builder setFlag(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x80;
                flag_ = s;
                onChanged();
                return this;
            }
        }

        void setFlag(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x80;
            flag_ = bytestring;
            onChanged();
        }

        public RGCRequest.Builder setTs(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x400;
                ts_ = s;
                onChanged();
                return this;
            }
        }

        void setTs(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x400;
            ts_ = bytestring;
            onChanged();
        }

        public RGCRequest.Builder setType(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x100;
                type_ = s;
                onChanged();
                return this;
            }
        }

        void setType(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x100;
            type_ = bytestring;
            onChanged();
        }

        public RGCRequest.Builder setX1(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                x1_ = s;
                onChanged();
                return this;
            }
        }

        void setX1(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            x1_ = bytestring;
            onChanged();
        }

        public RGCRequest.Builder setX2(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 8;
                x2_ = s;
                onChanged();
                return this;
            }
        }

        void setX2(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 8;
            x2_ = bytestring;
            onChanged();
        }

        public RGCRequest.Builder setY1(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                y1_ = s;
                onChanged();
                return this;
            }
        }

        void setY1(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            y1_ = bytestring;
            onChanged();
        }

        public RGCRequest.Builder setY2(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x10;
                y2_ = s;
                onChanged();
                return this;
            }
        }

        void setY2(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x10;
            y2_ = bytestring;
            onChanged();
        }

        public RGCRequest.Builder setZ(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x200;
                z_ = s;
                onChanged();
                return this;
            }
        }

        void setZ(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x200;
            z_ = bytestring;
            onChanged();
        }



        private RGCRequest.Builder()
        {
            common_ = CommonProtoBuf.Common.getDefaultInstance();
            x1_ = "";
            y1_ = "";
            x2_ = "";
            y2_ = "";
            coors_ = "";
            cr_ = "";
            flag_ = "";
            type_ = "";
            z_ = "";
            ts_ = "";
            maybeForceBuilderInitialization();
        }

        private RGCRequest.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            common_ = CommonProtoBuf.Common.getDefaultInstance();
            x1_ = "";
            y1_ = "";
            x2_ = "";
            y2_ = "";
            coors_ = "";
            cr_ = "";
            flag_ = "";
            type_ = "";
            z_ = "";
            ts_ = "";
            maybeForceBuilderInitialization();
        }

        RGCRequest.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, v v1)
        {
            this(builderparent);
        }
    }

    public static interface RGCRequestOrBuilder
        extends MessageOrBuilder
    {

        public abstract CommonProtoBuf.Common getCommon();

        public abstract CommonProtoBuf.CommonOrBuilder getCommonOrBuilder();

        public abstract String getCoors();

        public abstract String getCr();

        public abstract String getFlag();

        public abstract String getTs();

        public abstract String getType();

        public abstract String getX1();

        public abstract String getX2();

        public abstract String getY1();

        public abstract String getY2();

        public abstract String getZ();

        public abstract boolean hasCommon();

        public abstract boolean hasCoors();

        public abstract boolean hasCr();

        public abstract boolean hasFlag();

        public abstract boolean hasTs();

        public abstract boolean hasType();

        public abstract boolean hasX1();

        public abstract boolean hasX2();

        public abstract boolean hasY1();

        public abstract boolean hasY2();

        public abstract boolean hasZ();
    }

    public static final class RGCResponse extends GeneratedMessage
        implements RGCResponseOrBuilder
    {

        public static final int RGCITEM_FIELD_NUMBER = 1;
        private static final RGCResponse defaultInstance;
        private static final long serialVersionUID = 0L;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List rgcItem_;

        public static RGCResponse getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return RGCProtoBuf.internal_static_RGCResponse_descriptor;
        }

        private void initFields()
        {
            rgcItem_ = Collections.emptyList();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(RGCResponse rgcresponse)
        {
            return newBuilder().mergeFrom(rgcresponse);
        }

        public static RGCResponse parseDelimitedFrom(InputStream inputstream)
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

        public static RGCResponse parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static RGCResponse parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static RGCResponse parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static RGCResponse parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static RGCResponse parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static RGCResponse parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static RGCResponse parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static RGCResponse parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static RGCResponse parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public RGCResponse getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public RGCItem getRgcItem(int i)
        {
            return (RGCItem)rgcItem_.get(i);
        }

        public int getRgcItemCount()
        {
            return rgcItem_.size();
        }

        public List getRgcItemList()
        {
            return rgcItem_;
        }

        public RGCItemOrBuilder getRgcItemOrBuilder(int i)
        {
            return (RGCItemOrBuilder)rgcItem_.get(i);
        }

        public List getRgcItemOrBuilderList()
        {
            return rgcItem_;
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
            for (; i < rgcItem_.size(); i++)
            {
                j += CodedOutputStream.computeMessageSize(1, (MessageLite)rgcItem_.get(i));
            }

            i = getUnknownFields().getSerializedSize() + j;
            memoizedSerializedSize = i;
            return i;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return RGCProtoBuf.internal_static_RGCResponse_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            byte byte0 = memoizedIsInitialized;
            if (byte0 != -1)
            {
                return byte0 == 1;
            }
            for (int i = 0; i < getRgcItemCount(); i++)
            {
                if (!getRgcItem(i).isInitialized())
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
            for (int i = 0; i < rgcItem_.size(); i++)
            {
                codedoutputstream.writeMessage(1, (MessageLite)rgcItem_.get(i));
            }

            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new RGCResponse(true);
            defaultInstance.initFields();
        }




/*
        static List access$2602(RGCResponse rgcresponse, List list)
        {
            rgcresponse.rgcItem_ = list;
            return list;
        }

*/


        private RGCResponse(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        RGCResponse(Builder builder, v v1)
        {
            this(builder);
        }

        private RGCResponse(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class RGCResponse.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements RGCResponseOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder rgcItemBuilder_;
        private List rgcItem_;

        private RGCResponse buildParsed()
            throws InvalidProtocolBufferException
        {
            RGCResponse rgcresponse = buildPartial();
            if (!rgcresponse.isInitialized())
            {
                throw newUninitializedMessageException(rgcresponse).asInvalidProtocolBufferException();
            } else
            {
                return rgcresponse;
            }
        }

        private static RGCResponse.Builder create()
        {
            return new RGCResponse.Builder();
        }

        private void ensureRgcItemIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                rgcItem_ = new ArrayList(rgcItem_);
                bitField0_ = bitField0_ | 1;
            }
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return RGCProtoBuf.internal_static_RGCResponse_descriptor;
        }

        private RepeatedFieldBuilder getRgcItemFieldBuilder()
        {
            boolean flag = true;
            if (rgcItemBuilder_ == null)
            {
                List list = rgcItem_;
                if ((bitField0_ & 1) != 1)
                {
                    flag = false;
                }
                rgcItemBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                rgcItem_ = null;
            }
            return rgcItemBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (buildPartial)
            {
                getRgcItemFieldBuilder();
            }
        }

        public RGCResponse.Builder addAllRgcItem(Iterable iterable)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, rgcItem_);
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public RGCResponse.Builder addRgcItem(int i, RGCItem.Builder builder)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                rgcItem_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public RGCResponse.Builder addRgcItem(int i, RGCItem rgcitem)
        {
            if (rgcItemBuilder_ == null)
            {
                if (rgcitem == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureRgcItemIsMutable();
                    rgcItem_.add(i, rgcitem);
                    onChanged();
                    return this;
                }
            } else
            {
                rgcItemBuilder_.addMessage(i, rgcitem);
                return this;
            }
        }

        public RGCResponse.Builder addRgcItem(RGCItem.Builder builder)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                rgcItem_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public RGCResponse.Builder addRgcItem(RGCItem rgcitem)
        {
            if (rgcItemBuilder_ == null)
            {
                if (rgcitem == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureRgcItemIsMutable();
                    rgcItem_.add(rgcitem);
                    onChanged();
                    return this;
                }
            } else
            {
                rgcItemBuilder_.addMessage(rgcitem);
                return this;
            }
        }

        public RGCItem.Builder addRgcItemBuilder()
        {
            return (RGCItem.Builder)getRgcItemFieldBuilder().addBuilder(RGCItem.getDefaultInstance());
        }

        public RGCItem.Builder addRgcItemBuilder(int i)
        {
            return (RGCItem.Builder)getRgcItemFieldBuilder().addBuilder(i, RGCItem.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public RGCResponse build()
        {
            RGCResponse rgcresponse = buildPartial();
            if (!rgcresponse.isInitialized())
            {
                throw newUninitializedMessageException(rgcresponse);
            } else
            {
                return rgcresponse;
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

        public RGCResponse buildPartial()
        {
            RGCResponse rgcresponse = new RGCResponse(this, null);
            int i = bitField0_;
            if (rgcItemBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    rgcItem_ = Collections.unmodifiableList(rgcItem_);
                    bitField0_ = bitField0_ & -2;
                }
                rgcresponse.rgcItem_ = rgcItem_;
            } else
            {
                rgcresponse.rgcItem_ = rgcItemBuilder_.build();
            }
            onBuilt();
            return rgcresponse;
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

        public RGCResponse.Builder clear()
        {
            super.clear();
            if (rgcItemBuilder_ == null)
            {
                rgcItem_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                return this;
            } else
            {
                rgcItemBuilder_.clear();
                return this;
            }
        }

        public RGCResponse.Builder clearRgcItem()
        {
            if (rgcItemBuilder_ == null)
            {
                rgcItem_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.clear();
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

        public RGCResponse.Builder clone()
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

        public RGCResponse getDefaultInstanceForType()
        {
            return RGCResponse.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return RGCResponse.getDescriptor();
        }

        public RGCItem getRgcItem(int i)
        {
            if (rgcItemBuilder_ == null)
            {
                return (RGCItem)rgcItem_.get(i);
            } else
            {
                return (RGCItem)rgcItemBuilder_.getMessage(i);
            }
        }

        public RGCItem.Builder getRgcItemBuilder(int i)
        {
            return (RGCItem.Builder)getRgcItemFieldBuilder().getBuilder(i);
        }

        public List getRgcItemBuilderList()
        {
            return getRgcItemFieldBuilder().getBuilderList();
        }

        public int getRgcItemCount()
        {
            if (rgcItemBuilder_ == null)
            {
                return rgcItem_.size();
            } else
            {
                return rgcItemBuilder_.getCount();
            }
        }

        public List getRgcItemList()
        {
            if (rgcItemBuilder_ == null)
            {
                return Collections.unmodifiableList(rgcItem_);
            } else
            {
                return rgcItemBuilder_.getMessageList();
            }
        }

        public RGCItemOrBuilder getRgcItemOrBuilder(int i)
        {
            if (rgcItemBuilder_ == null)
            {
                return (RGCItemOrBuilder)rgcItem_.get(i);
            } else
            {
                return (RGCItemOrBuilder)rgcItemBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getRgcItemOrBuilderList()
        {
            if (rgcItemBuilder_ != null)
            {
                return rgcItemBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(rgcItem_);
            }
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return RGCProtoBuf.internal_static_RGCResponse_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            for (int i = 0; i < getRgcItemCount(); i++)
            {
                if (!getRgcItem(i).isInitialized())
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

        public RGCResponse.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    RGCItem.Builder builder1 = RGCItem.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addRgcItem(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public RGCResponse.Builder mergeFrom(Message message)
        {
            if (message instanceof RGCResponse)
            {
                return mergeFrom((RGCResponse)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public RGCResponse.Builder mergeFrom(RGCResponse rgcresponse)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (rgcresponse == RGCResponse.getDefaultInstance())
            {
                return this;
            }
            if (rgcItemBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!rgcresponse.rgcItem_.isEmpty())
            {
                if (rgcItem_.isEmpty())
                {
                    rgcItem_ = rgcresponse.rgcItem_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureRgcItemIsMutable();
                    rgcItem_.addAll(rgcresponse.rgcItem_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(rgcresponse.getUnknownFields());
            return this;
_L2:
            if (!rgcresponse.rgcItem_.isEmpty())
            {
                if (rgcItemBuilder_.isEmpty())
                {
                    rgcItemBuilder_.dispose();
                    rgcItemBuilder_ = null;
                    rgcItem_ = rgcresponse.rgcItem_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getRgcItemFieldBuilder();
                    }
                    rgcItemBuilder_ = repeatedfieldbuilder;
                } else
                {
                    rgcItemBuilder_.addAllMessages(rgcresponse.rgcItem_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public RGCResponse.Builder removeRgcItem(int i)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                rgcItem_.remove(i);
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.remove(i);
                return this;
            }
        }

        public RGCResponse.Builder setRgcItem(int i, RGCItem.Builder builder)
        {
            if (rgcItemBuilder_ == null)
            {
                ensureRgcItemIsMutable();
                rgcItem_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                rgcItemBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public RGCResponse.Builder setRgcItem(int i, RGCItem rgcitem)
        {
            if (rgcItemBuilder_ == null)
            {
                if (rgcitem == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureRgcItemIsMutable();
                    rgcItem_.set(i, rgcitem);
                    onChanged();
                    return this;
                }
            } else
            {
                rgcItemBuilder_.setMessage(i, rgcitem);
                return this;
            }
        }



        private RGCResponse.Builder()
        {
            rgcItem_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private RGCResponse.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            rgcItem_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        RGCResponse.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, v v1)
        {
            this(builderparent);
        }
    }

    public static interface RGCResponseOrBuilder
        extends MessageOrBuilder
    {

        public abstract RGCItem getRgcItem(int i);

        public abstract int getRgcItemCount();

        public abstract List getRgcItemList();

        public abstract RGCItemOrBuilder getRgcItemOrBuilder(int i);

        public abstract List getRgcItemOrBuilderList();
    }


    private static com.google.protobuf.Descriptors.FileDescriptor descriptor;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_RGCItem_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_RGCItem_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_RGCRequest_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_RGCRequest_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_RGCResponse_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_RGCResponse_fieldAccessorTable;

    private RGCProtoBuf()
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
        v v1 = new v();
        com.google.protobuf.Descriptors.FileDescriptor filedescriptor = CommonProtoBuf.getDescriptor();
        com.google.protobuf.Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] {
            "\n\trgc.proto\032\fcommon.proto\"\243\001\n\nRGCRequest\022\027\n\006common\030\001 \002(\0132\007.Common\022\n\n\002x1\030\002 \001(\t\022\n\n\002y1\030\003 \001(\t\022\n\n\002x2\030\004 \001(\t\022\n\n\002y2\030\005 \001(\t\022\r\n\005coors\030\006 \001(\t\022\n\n\002cr\030\007 \001(\t\022\f\n\004flag\030\b \001(\t\022\f\n\004type\030\t \001(\t\022\t\n\001z\030\n \001(\t\022\n\n\002ts\030\013 \001(\t\"(\n\013RGCResponse\022\031\n\007rgcItem\030\001 \003(\0132\b.RGCItem\"1\n\007RGCItem\022\t\n\001x\030\001 \001(\t\022\t\n\001y\030\002 \001(\t\022\020\n\bgridcode\030\003 \002(\tB%\n\026com.mapabc.mapapi.coreB\013RGCProtoBuf"
        }, new com.google.protobuf.Descriptors.FileDescriptor[] {
            filedescriptor
        }, v1);
    }



/*
    static com.google.protobuf.Descriptors.Descriptor access$002(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_RGCRequest_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$102(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_RGCRequest_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$1902(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_RGCResponse_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$2002(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_RGCResponse_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$2802(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_RGCItem_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$2902(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_RGCItem_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/


/*
    static com.google.protobuf.Descriptors.FileDescriptor access$3902(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
    {
        descriptor = filedescriptor;
        return filedescriptor;
    }

*/

    // Unreferenced inner class com/mapabc/mapapi/core/v
    static final class v
        implements com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
    {

        public ExtensionRegistry assignDescriptors(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
        {
            RGCProtoBuf.descriptor = filedescriptor;
            RGCProtoBuf.internal_static_RGCRequest_descriptor = (com.google.protobuf.Descriptors.Descriptor)RGCProtoBuf.getDescriptor().getMessageTypes().get(0);
            RGCProtoBuf.internal_static_RGCRequest_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(RGCProtoBuf.internal_static_RGCRequest_descriptor, new String[] {
                "Common", "X1", "Y1", "X2", "Y2", "Coors", "Cr", "Flag", "Type", "Z", 
                "Ts"
            }, com/mapabc/mapapi/core/RGCProtoBuf$RGCRequest, com/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder);
            RGCProtoBuf.internal_static_RGCResponse_descriptor = (com.google.protobuf.Descriptors.Descriptor)RGCProtoBuf.getDescriptor().getMessageTypes().get(1);
            RGCProtoBuf.internal_static_RGCResponse_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(RGCProtoBuf.internal_static_RGCResponse_descriptor, new String[] {
                "RgcItem"
            }, com/mapabc/mapapi/core/RGCProtoBuf$RGCResponse, com/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder);
            RGCProtoBuf.internal_static_RGCItem_descriptor = (com.google.protobuf.Descriptors.Descriptor)RGCProtoBuf.getDescriptor().getMessageTypes().get(2);
            RGCProtoBuf.internal_static_RGCItem_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(RGCProtoBuf.internal_static_RGCItem_descriptor, new String[] {
                "X", "Y", "Gridcode"
            }, com/mapabc/mapapi/core/RGCProtoBuf$RGCItem, com/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder);
            return null;
        }

            v()
            {
            }
    }

}
