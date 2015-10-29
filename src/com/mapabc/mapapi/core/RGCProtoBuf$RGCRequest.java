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
//            RGCProtoBuf, v

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements RGCProtoBuf.RGCRequestOrBuilder
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

        private RGCProtoBuf.RGCRequest buildParsed()
            throws InvalidProtocolBufferException
        {
            RGCProtoBuf.RGCRequest rgcrequest = buildPartial();
            if (!rgcrequest.isInitialized())
            {
                throw newUninitializedMessageException(rgcrequest).asInvalidProtocolBufferException();
            } else
            {
                return rgcrequest;
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
            return RGCProtoBuf.access$000();
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

        public RGCProtoBuf.RGCRequest build()
        {
            RGCProtoBuf.RGCRequest rgcrequest = buildPartial();
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

        public RGCProtoBuf.RGCRequest buildPartial()
        {
            RGCProtoBuf.RGCRequest rgcrequest = new RGCProtoBuf.RGCRequest(this, null);
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

        public Builder clear()
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

        public Builder clearCoors()
        {
            bitField0_ = bitField0_ & 0xffffffdf;
            coors_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getCoors();
            onChanged();
            return this;
        }

        public Builder clearCr()
        {
            bitField0_ = bitField0_ & 0xffffffbf;
            cr_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getCr();
            onChanged();
            return this;
        }

        public Builder clearFlag()
        {
            bitField0_ = bitField0_ & 0xffffff7f;
            flag_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getFlag();
            onChanged();
            return this;
        }

        public Builder clearTs()
        {
            bitField0_ = bitField0_ & 0xfffffbff;
            ts_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getTs();
            onChanged();
            return this;
        }

        public Builder clearType()
        {
            bitField0_ = bitField0_ & 0xfffffeff;
            type_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getType();
            onChanged();
            return this;
        }

        public Builder clearX1()
        {
            bitField0_ = bitField0_ & -3;
            x1_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getX1();
            onChanged();
            return this;
        }

        public Builder clearX2()
        {
            bitField0_ = bitField0_ & -9;
            x2_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getX2();
            onChanged();
            return this;
        }

        public Builder clearY1()
        {
            bitField0_ = bitField0_ & -5;
            y1_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getY1();
            onChanged();
            return this;
        }

        public Builder clearY2()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            y2_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getY2();
            onChanged();
            return this;
        }

        public Builder clearZ()
        {
            bitField0_ = bitField0_ & 0xfffffdff;
            z_ = RGCProtoBuf.RGCRequest.getDefaultInstance().getZ();
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

        public RGCProtoBuf.RGCRequest getDefaultInstanceForType()
        {
            return RGCProtoBuf.RGCRequest.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return RGCProtoBuf.RGCRequest.getDescriptor();
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
            return RGCProtoBuf.access$100();
        }

        public final boolean isInitialized()
        {
            while (!hasCommon() || !getCommon().isInitialized()) 
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

        public Builder mergeFrom(Message message)
        {
            if (message instanceof RGCProtoBuf.RGCRequest)
            {
                return mergeFrom((RGCProtoBuf.RGCRequest)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(RGCProtoBuf.RGCRequest rgcrequest)
        {
            if (rgcrequest == RGCProtoBuf.RGCRequest.getDefaultInstance())
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

        public Builder setCoors(String s)
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

        public Builder setCr(String s)
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

        public Builder setFlag(String s)
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

        public Builder setTs(String s)
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

        public Builder setType(String s)
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

        public Builder setX1(String s)
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

        public Builder setX2(String s)
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

        public Builder setY1(String s)
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

        public Builder setY2(String s)
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

        public Builder setZ(String s)
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



        private Builder()
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

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
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

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, v v)
        {
            this(builderparent);
        }
    }


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
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private initFields common_;
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

    public static cr_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.st.defaultInstance getDescriptor()
    {
        return RGCProtoBuf.access$000();
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
        common_ = etDefaultInstance();
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

    public Builder getCommonOrBuilder()
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

    public getDefaultInstanceForType getDefaultInstanceForType()
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

    protected com.google.protobuf.ccessorTable internalGetFieldAccessorTable()
    {
        return RGCProtoBuf.access$100();
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
        if (!getCommon().sInitialized())
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

    protected volatile com.google.protobuf.rParent newBuilderForType(com.google.protobuf.rParent rparent)
    {
        return newBuilderForType(rparent);
    }

    public volatile com.google.protobuf.st newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.rParent rparent)
    {
        return new Builder(rparent, null);
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
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }


/*
    static Object access$1002(Builder builder, Object obj)
    {
        builder.x2_ = obj;
        return obj;
    }

*/


/*
    static Object access$1102(x2_ x2_1, Object obj)
    {
        x2_1.y2_ = obj;
        return obj;
    }

*/


/*
    static Object access$1202(y2_ y2_1, Object obj)
    {
        y2_1.coors_ = obj;
        return obj;
    }

*/


/*
    static Object access$1302(coors_ coors_1, Object obj)
    {
        coors_1.cr_ = obj;
        return obj;
    }

*/


/*
    static Object access$1402(cr_ cr_1, Object obj)
    {
        cr_1.flag_ = obj;
        return obj;
    }

*/


/*
    static Object access$1502(flag_ flag_1, Object obj)
    {
        flag_1.type_ = obj;
        return obj;
    }

*/


/*
    static Object access$1602(type_ type_1, Object obj)
    {
        type_1.z_ = obj;
        return obj;
    }

*/


/*
    static Object access$1702(z_ z_1, Object obj)
    {
        z_1.ts_ = obj;
        return obj;
    }

*/


/*
    static int access$1802(ts_ ts_1, int i)
    {
        ts_1.bitField0_ = i;
        return i;
    }

*/



/*
    static bitField0_ access$702(bitField0_ bitfield0_, bitField0_ bitfield0_1)
    {
        bitfield0_.common_ = bitfield0_1;
        return bitfield0_1;
    }

*/


/*
    static Object access$802(common_ common_1, Object obj)
    {
        common_1.x1_ = obj;
        return obj;
    }

*/


/*
    static Object access$902(x1_ x1_1, Object obj)
    {
        x1_1.y1_ = obj;
        return obj;
    }

*/

    private Builder(Builder builder)
    {
        super(builder);
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    Builder(Builder builder, v v)
    {
        this(builder);
    }

    private Builder(boolean flag)
    {
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }
}
