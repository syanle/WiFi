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
        implements GeocodingProtoBuf.GeoPOIOrBuilder
    {

        private Object address_;
        private int bitField0_;
        private Object city_;
        private Object district_;
        private Object eaddress_;
        private Object ecity_;
        private Object edistrict_;
        private Object ename_;
        private Object eprovince_;
        private Object inum_;
        private Object level_;
        private Object name_;
        private Object num_;
        private Object province_;
        private Object prox_;
        private Object range_;
        private Object roadpts_;
        private Object score_;
        private SingleFieldBuilder subpoisBuilder_;
        private GeocodingProtoBuf.SubPOIS subpois_;
        private Object x_;
        private Object y_;

        private GeocodingProtoBuf.GeoPOI buildParsed()
            throws InvalidProtocolBufferException
        {
            GeocodingProtoBuf.GeoPOI geopoi = buildPartial();
            if (!geopoi.isInitialized())
            {
                throw newUninitializedMessageException(geopoi).asInvalidProtocolBufferException();
            } else
            {
                return geopoi;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.access$3200();
        }

        private SingleFieldBuilder getSubpoisFieldBuilder()
        {
            if (subpoisBuilder_ == null)
            {
                subpoisBuilder_ = new SingleFieldBuilder(subpois_, getParentForChildren(), isClean());
                subpois_ = null;
            }
            return subpoisBuilder_;
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

        public GeocodingProtoBuf.GeoPOI build()
        {
            GeocodingProtoBuf.GeoPOI geopoi = buildPartial();
            if (!geopoi.isInitialized())
            {
                throw newUninitializedMessageException(geopoi);
            } else
            {
                return geopoi;
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

        public GeocodingProtoBuf.GeoPOI buildPartial()
        {
            GeocodingProtoBuf.GeoPOI geopoi = new GeoPOI(this, null);
            int k = bitField0_;
            int j = 0;
            if ((k & 1) == 1)
            {
                j = 1;
            }
            geopoi.name_ = name_;
            int i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            geopoi.level_ = level_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            geopoi.x_ = x_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            geopoi.y_ = y_;
            j = i;
            if ((k & 0x10) == 16)
            {
                j = i | 0x10;
            }
            geopoi.address_ = address_;
            i = j;
            if ((k & 0x20) == 32)
            {
                i = j | 0x20;
            }
            geopoi.province_ = province_;
            j = i;
            if ((k & 0x40) == 64)
            {
                j = i | 0x40;
            }
            geopoi.city_ = city_;
            i = j;
            if ((k & 0x80) == 128)
            {
                i = j | 0x80;
            }
            geopoi.ename_ = ename_;
            j = i;
            if ((k & 0x100) == 256)
            {
                j = i | 0x100;
            }
            geopoi.district_ = district_;
            i = j;
            if ((k & 0x200) == 512)
            {
                i = j | 0x200;
            }
            geopoi.range_ = range_;
            j = i;
            if ((k & 0x400) == 1024)
            {
                j = i | 0x400;
            }
            geopoi.num_ = num_;
            i = j;
            if ((k & 0x800) == 2048)
            {
                i = j | 0x800;
            }
            geopoi.inum_ = inum_;
            j = i;
            if ((k & 0x1000) == 4096)
            {
                j = i | 0x1000;
            }
            geopoi.prox_ = prox_;
            i = j;
            if ((k & 0x2000) == 8192)
            {
                i = j | 0x2000;
            }
            geopoi.score_ = score_;
            j = i;
            if ((k & 0x4000) == 16384)
            {
                j = i | 0x4000;
            }
            geopoi.eprovince_ = eprovince_;
            i = j;
            if ((k & 0x8000) == 32768)
            {
                i = j | 0x8000;
            }
            geopoi.ecity_ = ecity_;
            j = i;
            if ((k & 0x10000) == 0x10000)
            {
                j = i | 0x10000;
            }
            geopoi.edistrict_ = edistrict_;
            i = j;
            if ((k & 0x20000) == 0x20000)
            {
                i = j | 0x20000;
            }
            geopoi.eaddress_ = eaddress_;
            j = i;
            if ((k & 0x40000) == 0x40000)
            {
                j = i | 0x40000;
            }
            geopoi.roadpts_ = roadpts_;
            if ((k & 0x80000) == 0x80000)
            {
                i = j | 0x80000;
            } else
            {
                i = j;
            }
            if (subpoisBuilder_ == null)
            {
                geopoi.subpois_ = subpois_;
            } else
            {
                geopoi.subpois_ = (GeocodingProtoBuf.SubPOIS)subpoisBuilder_.build();
            }
            geopoi.bitField0_ = i;
            onBuilt();
            return geopoi;
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
            name_ = "";
            bitField0_ = bitField0_ & -2;
            level_ = "";
            bitField0_ = bitField0_ & -3;
            x_ = "";
            bitField0_ = bitField0_ & -5;
            y_ = "";
            bitField0_ = bitField0_ & -9;
            address_ = "";
            bitField0_ = bitField0_ & 0xffffffef;
            province_ = "";
            bitField0_ = bitField0_ & 0xffffffdf;
            city_ = "";
            bitField0_ = bitField0_ & 0xffffffbf;
            ename_ = "";
            bitField0_ = bitField0_ & 0xffffff7f;
            district_ = "";
            bitField0_ = bitField0_ & 0xfffffeff;
            range_ = "";
            bitField0_ = bitField0_ & 0xfffffdff;
            num_ = "";
            bitField0_ = bitField0_ & 0xfffffbff;
            inum_ = "";
            bitField0_ = bitField0_ & 0xfffff7ff;
            prox_ = "";
            bitField0_ = bitField0_ & 0xffffefff;
            score_ = "";
            bitField0_ = bitField0_ & 0xffffdfff;
            eprovince_ = "";
            bitField0_ = bitField0_ & 0xffffbfff;
            ecity_ = "";
            bitField0_ = bitField0_ & 0xffff7fff;
            edistrict_ = "";
            bitField0_ = bitField0_ & 0xfffeffff;
            eaddress_ = "";
            bitField0_ = bitField0_ & 0xfffdffff;
            roadpts_ = "";
            bitField0_ = bitField0_ & 0xfffbffff;
            if (subpoisBuilder_ == null)
            {
                subpois_ = GeocodingProtoBuf.SubPOIS.getDefaultInstance();
            } else
            {
                subpoisBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xfff7ffff;
            return this;
        }

        public Builder clearAddress()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            address_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getAddress();
            onChanged();
            return this;
        }

        public Builder clearCity()
        {
            bitField0_ = bitField0_ & 0xffffffbf;
            city_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getCity();
            onChanged();
            return this;
        }

        public Builder clearDistrict()
        {
            bitField0_ = bitField0_ & 0xfffffeff;
            district_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getDistrict();
            onChanged();
            return this;
        }

        public Builder clearEaddress()
        {
            bitField0_ = bitField0_ & 0xfffdffff;
            eaddress_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getEaddress();
            onChanged();
            return this;
        }

        public Builder clearEcity()
        {
            bitField0_ = bitField0_ & 0xffff7fff;
            ecity_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getEcity();
            onChanged();
            return this;
        }

        public Builder clearEdistrict()
        {
            bitField0_ = bitField0_ & 0xfffeffff;
            edistrict_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getEdistrict();
            onChanged();
            return this;
        }

        public Builder clearEname()
        {
            bitField0_ = bitField0_ & 0xffffff7f;
            ename_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getEname();
            onChanged();
            return this;
        }

        public Builder clearEprovince()
        {
            bitField0_ = bitField0_ & 0xffffbfff;
            eprovince_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getEprovince();
            onChanged();
            return this;
        }

        public Builder clearInum()
        {
            bitField0_ = bitField0_ & 0xfffff7ff;
            inum_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getInum();
            onChanged();
            return this;
        }

        public Builder clearLevel()
        {
            bitField0_ = bitField0_ & -3;
            level_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getLevel();
            onChanged();
            return this;
        }

        public Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder clearNum()
        {
            bitField0_ = bitField0_ & 0xfffffbff;
            num_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getNum();
            onChanged();
            return this;
        }

        public Builder clearProvince()
        {
            bitField0_ = bitField0_ & 0xffffffdf;
            province_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getProvince();
            onChanged();
            return this;
        }

        public Builder clearProx()
        {
            bitField0_ = bitField0_ & 0xffffefff;
            prox_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getProx();
            onChanged();
            return this;
        }

        public Builder clearRange()
        {
            bitField0_ = bitField0_ & 0xfffffdff;
            range_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getRange();
            onChanged();
            return this;
        }

        public Builder clearRoadpts()
        {
            bitField0_ = bitField0_ & 0xfffbffff;
            roadpts_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getRoadpts();
            onChanged();
            return this;
        }

        public Builder clearScore()
        {
            bitField0_ = bitField0_ & 0xffffdfff;
            score_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getScore();
            onChanged();
            return this;
        }

        public Builder clearSubpois()
        {
            if (subpoisBuilder_ == null)
            {
                subpois_ = GeocodingProtoBuf.SubPOIS.getDefaultInstance();
                onChanged();
            } else
            {
                subpoisBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xfff7ffff;
            return this;
        }

        public Builder clearX()
        {
            bitField0_ = bitField0_ & -5;
            x_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getX();
            onChanged();
            return this;
        }

        public Builder clearY()
        {
            bitField0_ = bitField0_ & -9;
            y_ = GeocodingProtoBuf.GeoPOI.getDefaultInstance().getY();
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

        public String getCity()
        {
            Object obj = city_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                city_ = obj;
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

        public GeocodingProtoBuf.GeoPOI getDefaultInstanceForType()
        {
            return GeocodingProtoBuf.GeoPOI.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return GeocodingProtoBuf.GeoPOI.getDescriptor();
        }

        public String getDistrict()
        {
            Object obj = district_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                district_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getEaddress()
        {
            Object obj = eaddress_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                eaddress_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getEcity()
        {
            Object obj = ecity_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                ecity_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getEdistrict()
        {
            Object obj = edistrict_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                edistrict_ = obj;
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

        public String getEprovince()
        {
            Object obj = eprovince_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                eprovince_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getInum()
        {
            Object obj = inum_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                inum_ = obj;
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

        public String getNum()
        {
            Object obj = num_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                num_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getProvince()
        {
            Object obj = province_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                province_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getProx()
        {
            Object obj = prox_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                prox_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getRange()
        {
            Object obj = range_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                range_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getRoadpts()
        {
            Object obj = roadpts_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                roadpts_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getScore()
        {
            Object obj = score_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                score_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public GeocodingProtoBuf.SubPOIS getSubpois()
        {
            if (subpoisBuilder_ == null)
            {
                return subpois_;
            } else
            {
                return (GeocodingProtoBuf.SubPOIS)subpoisBuilder_.getMessage();
            }
        }

        public GeocodingProtoBuf.SubPOIS.Builder getSubpoisBuilder()
        {
            bitField0_ = bitField0_ | 0x80000;
            onChanged();
            return (GeocodingProtoBuf.SubPOIS.Builder)getSubpoisFieldBuilder().getBuilder();
        }

        public GeocodingProtoBuf.SubPOISOrBuilder getSubpoisOrBuilder()
        {
            if (subpoisBuilder_ != null)
            {
                return (GeocodingProtoBuf.SubPOISOrBuilder)subpoisBuilder_.getMessageOrBuilder();
            } else
            {
                return subpois_;
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

        public boolean hasAddress()
        {
            return (bitField0_ & 0x10) == 16;
        }

        public boolean hasCity()
        {
            return (bitField0_ & 0x40) == 64;
        }

        public boolean hasDistrict()
        {
            return (bitField0_ & 0x100) == 256;
        }

        public boolean hasEaddress()
        {
            return (bitField0_ & 0x20000) == 0x20000;
        }

        public boolean hasEcity()
        {
            return (bitField0_ & 0x8000) == 32768;
        }

        public boolean hasEdistrict()
        {
            return (bitField0_ & 0x10000) == 0x10000;
        }

        public boolean hasEname()
        {
            return (bitField0_ & 0x80) == 128;
        }

        public boolean hasEprovince()
        {
            return (bitField0_ & 0x4000) == 16384;
        }

        public boolean hasInum()
        {
            return (bitField0_ & 0x800) == 2048;
        }

        public boolean hasLevel()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasName()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasNum()
        {
            return (bitField0_ & 0x400) == 1024;
        }

        public boolean hasProvince()
        {
            return (bitField0_ & 0x20) == 32;
        }

        public boolean hasProx()
        {
            return (bitField0_ & 0x1000) == 4096;
        }

        public boolean hasRange()
        {
            return (bitField0_ & 0x200) == 512;
        }

        public boolean hasRoadpts()
        {
            return (bitField0_ & 0x40000) == 0x40000;
        }

        public boolean hasScore()
        {
            return (bitField0_ & 0x2000) == 8192;
        }

        public boolean hasSubpois()
        {
            return (bitField0_ & 0x80000) == 0x80000;
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
            return GeocodingProtoBuf.access$3300();
        }

        public final boolean isInitialized()
        {
            while (!hasName() || !hasLevel() || !hasX() || !hasY()) 
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
                    level_ = codedinputstream.readBytes();
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
                    address_ = codedinputstream.readBytes();
                    break;

                case 50: // '2'
                    bitField0_ = bitField0_ | 0x20;
                    province_ = codedinputstream.readBytes();
                    break;

                case 58: // ':'
                    bitField0_ = bitField0_ | 0x40;
                    city_ = codedinputstream.readBytes();
                    break;

                case 66: // 'B'
                    bitField0_ = bitField0_ | 0x80;
                    ename_ = codedinputstream.readBytes();
                    break;

                case 74: // 'J'
                    bitField0_ = bitField0_ | 0x100;
                    district_ = codedinputstream.readBytes();
                    break;

                case 82: // 'R'
                    bitField0_ = bitField0_ | 0x200;
                    range_ = codedinputstream.readBytes();
                    break;

                case 90: // 'Z'
                    bitField0_ = bitField0_ | 0x400;
                    num_ = codedinputstream.readBytes();
                    break;

                case 98: // 'b'
                    bitField0_ = bitField0_ | 0x800;
                    inum_ = codedinputstream.readBytes();
                    break;

                case 106: // 'j'
                    bitField0_ = bitField0_ | 0x1000;
                    prox_ = codedinputstream.readBytes();
                    break;

                case 114: // 'r'
                    bitField0_ = bitField0_ | 0x2000;
                    score_ = codedinputstream.readBytes();
                    break;

                case 122: // 'z'
                    bitField0_ = bitField0_ | 0x4000;
                    eprovince_ = codedinputstream.readBytes();
                    break;

                case 130: 
                    bitField0_ = bitField0_ | 0x8000;
                    ecity_ = codedinputstream.readBytes();
                    break;

                case 138: 
                    bitField0_ = bitField0_ | 0x10000;
                    edistrict_ = codedinputstream.readBytes();
                    break;

                case 146: 
                    bitField0_ = bitField0_ | 0x20000;
                    eaddress_ = codedinputstream.readBytes();
                    break;

                case 154: 
                    bitField0_ = bitField0_ | 0x40000;
                    roadpts_ = codedinputstream.readBytes();
                    break;

                case 162: 
                    GeocodingProtoBuf.SubPOIS.Builder builder1 = GeocodingProtoBuf.SubPOIS.newBuilder();
                    if (hasSubpois())
                    {
                        builder1.mergeFrom(getSubpois());
                    }
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    setSubpois(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof GeocodingProtoBuf.GeoPOI)
            {
                return mergeFrom((GeocodingProtoBuf.GeoPOI)message);
            } else
            {
                mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(GeocodingProtoBuf.GeoPOI geopoi)
        {
            if (geopoi == GeocodingProtoBuf.GeoPOI.getDefaultInstance())
            {
                return this;
            }
            if (geopoi.hasName())
            {
                setName(geopoi.getName());
            }
            if (geopoi.hasLevel())
            {
                setLevel(geopoi.getLevel());
            }
            if (geopoi.hasX())
            {
                setX(geopoi.getX());
            }
            if (geopoi.hasY())
            {
                setY(geopoi.getY());
            }
            if (geopoi.hasAddress())
            {
                setAddress(geopoi.getAddress());
            }
            if (geopoi.hasProvince())
            {
                setProvince(geopoi.getProvince());
            }
            if (geopoi.hasCity())
            {
                setCity(geopoi.getCity());
            }
            if (geopoi.hasEname())
            {
                setEname(geopoi.getEname());
            }
            if (geopoi.hasDistrict())
            {
                setDistrict(geopoi.getDistrict());
            }
            if (geopoi.hasRange())
            {
                setRange(geopoi.getRange());
            }
            if (geopoi.hasNum())
            {
                setNum(geopoi.getNum());
            }
            if (geopoi.hasInum())
            {
                setInum(geopoi.getInum());
            }
            if (geopoi.hasProx())
            {
                setProx(geopoi.getProx());
            }
            if (geopoi.hasScore())
            {
                setScore(geopoi.getScore());
            }
            if (geopoi.hasEprovince())
            {
                setEprovince(geopoi.getEprovince());
            }
            if (geopoi.hasEcity())
            {
                setEcity(geopoi.getEcity());
            }
            if (geopoi.hasEdistrict())
            {
                setEdistrict(geopoi.getEdistrict());
            }
            if (geopoi.hasEaddress())
            {
                setEaddress(geopoi.getEaddress());
            }
            if (geopoi.hasRoadpts())
            {
                setRoadpts(geopoi.getRoadpts());
            }
            if (geopoi.hasSubpois())
            {
                mergeSubpois(geopoi.getSubpois());
            }
            mergeUnknownFields(geopoi.getUnknownFields());
            return this;
        }

        public Builder mergeSubpois(GeocodingProtoBuf.SubPOIS subpois)
        {
            if (subpoisBuilder_ == null)
            {
                if ((bitField0_ & 0x80000) == 0x80000 && subpois_ != GeocodingProtoBuf.SubPOIS.getDefaultInstance())
                {
                    subpois_ = GeocodingProtoBuf.SubPOIS.newBuilder(subpois_).mergeFrom(subpois).buildPartial();
                } else
                {
                    subpois_ = subpois;
                }
                onChanged();
            } else
            {
                subpoisBuilder_.mergeFrom(subpois);
            }
            bitField0_ = bitField0_ | 0x80000;
            return this;
        }

        public Builder setAddress(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x10;
                address_ = s;
                onChanged();
                return this;
            }
        }

        void setAddress(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x10;
            address_ = bytestring;
            onChanged();
        }

        public Builder setCity(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x40;
                city_ = s;
                onChanged();
                return this;
            }
        }

        void setCity(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x40;
            city_ = bytestring;
            onChanged();
        }

        public Builder setDistrict(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x100;
                district_ = s;
                onChanged();
                return this;
            }
        }

        void setDistrict(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x100;
            district_ = bytestring;
            onChanged();
        }

        public Builder setEaddress(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x20000;
                eaddress_ = s;
                onChanged();
                return this;
            }
        }

        void setEaddress(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x20000;
            eaddress_ = bytestring;
            onChanged();
        }

        public Builder setEcity(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x8000;
                ecity_ = s;
                onChanged();
                return this;
            }
        }

        void setEcity(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x8000;
            ecity_ = bytestring;
            onChanged();
        }

        public Builder setEdistrict(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x10000;
                edistrict_ = s;
                onChanged();
                return this;
            }
        }

        void setEdistrict(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x10000;
            edistrict_ = bytestring;
            onChanged();
        }

        public Builder setEname(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x80;
                ename_ = s;
                onChanged();
                return this;
            }
        }

        void setEname(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x80;
            ename_ = bytestring;
            onChanged();
        }

        public Builder setEprovince(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x4000;
                eprovince_ = s;
                onChanged();
                return this;
            }
        }

        void setEprovince(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x4000;
            eprovince_ = bytestring;
            onChanged();
        }

        public Builder setInum(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x800;
                inum_ = s;
                onChanged();
                return this;
            }
        }

        void setInum(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x800;
            inum_ = bytestring;
            onChanged();
        }

        public Builder setLevel(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                level_ = s;
                onChanged();
                return this;
            }
        }

        void setLevel(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
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

        public Builder setNum(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x400;
                num_ = s;
                onChanged();
                return this;
            }
        }

        void setNum(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x400;
            num_ = bytestring;
            onChanged();
        }

        public Builder setProvince(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x20;
                province_ = s;
                onChanged();
                return this;
            }
        }

        void setProvince(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x20;
            province_ = bytestring;
            onChanged();
        }

        public Builder setProx(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x1000;
                prox_ = s;
                onChanged();
                return this;
            }
        }

        void setProx(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x1000;
            prox_ = bytestring;
            onChanged();
        }

        public Builder setRange(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x200;
                range_ = s;
                onChanged();
                return this;
            }
        }

        void setRange(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x200;
            range_ = bytestring;
            onChanged();
        }

        public Builder setRoadpts(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x40000;
                roadpts_ = s;
                onChanged();
                return this;
            }
        }

        void setRoadpts(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x40000;
            roadpts_ = bytestring;
            onChanged();
        }

        public Builder setScore(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 0x2000;
                score_ = s;
                onChanged();
                return this;
            }
        }

        void setScore(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 0x2000;
            score_ = bytestring;
            onChanged();
        }

        public Builder setSubpois(GeocodingProtoBuf.SubPOIS.Builder builder)
        {
            if (subpoisBuilder_ == null)
            {
                subpois_ = builder.build();
                onChanged();
            } else
            {
                subpoisBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 0x80000;
            return this;
        }

        public Builder setSubpois(GeocodingProtoBuf.SubPOIS subpois)
        {
            if (subpoisBuilder_ == null)
            {
                if (subpois == null)
                {
                    throw new NullPointerException();
                }
                subpois_ = subpois;
                onChanged();
            } else
            {
                subpoisBuilder_.setMessage(subpois);
            }
            bitField0_ = bitField0_ | 0x80000;
            return this;
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
            level_ = "";
            x_ = "";
            y_ = "";
            address_ = "";
            province_ = "";
            city_ = "";
            ename_ = "";
            district_ = "";
            range_ = "";
            num_ = "";
            inum_ = "";
            prox_ = "";
            score_ = "";
            eprovince_ = "";
            ecity_ = "";
            edistrict_ = "";
            eaddress_ = "";
            roadpts_ = "";
            subpois_ = GeocodingProtoBuf.SubPOIS.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            level_ = "";
            x_ = "";
            y_ = "";
            address_ = "";
            province_ = "";
            city_ = "";
            ename_ = "";
            district_ = "";
            range_ = "";
            num_ = "";
            inum_ = "";
            prox_ = "";
            score_ = "";
            eprovince_ = "";
            ecity_ = "";
            edistrict_ = "";
            eaddress_ = "";
            roadpts_ = "";
            subpois_ = GeocodingProtoBuf.SubPOIS.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c)
        {
            this(builderparent);
        }
    }


    public static final int ADDRESS_FIELD_NUMBER = 5;
    public static final int CITY_FIELD_NUMBER = 7;
    public static final int DISTRICT_FIELD_NUMBER = 9;
    public static final int EADDRESS_FIELD_NUMBER = 18;
    public static final int ECITY_FIELD_NUMBER = 16;
    public static final int EDISTRICT_FIELD_NUMBER = 17;
    public static final int ENAME_FIELD_NUMBER = 8;
    public static final int EPROVINCE_FIELD_NUMBER = 15;
    public static final int INUM_FIELD_NUMBER = 12;
    public static final int LEVEL_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int NUM_FIELD_NUMBER = 11;
    public static final int PROVINCE_FIELD_NUMBER = 6;
    public static final int PROX_FIELD_NUMBER = 13;
    public static final int RANGE_FIELD_NUMBER = 10;
    public static final int ROADPTS_FIELD_NUMBER = 19;
    public static final int SCORE_FIELD_NUMBER = 14;
    public static final int SUBPOIS_FIELD_NUMBER = 20;
    public static final int X_FIELD_NUMBER = 3;
    public static final int Y_FIELD_NUMBER = 4;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object address_;
    private int bitField0_;
    private Object city_;
    private Object district_;
    private Object eaddress_;
    private Object ecity_;
    private Object edistrict_;
    private Object ename_;
    private Object eprovince_;
    private Object inum_;
    private Object level_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private Object name_;
    private Object num_;
    private Object province_;
    private Object prox_;
    private Object range_;
    private Object roadpts_;
    private Object score_;
    private  subpois_;
    private Object x_;
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

    private ByteString getCityBytes()
    {
        Object obj = city_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            city_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    public static city_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.GeoPOI.defaultInstance getDescriptor()
    {
        return GeocodingProtoBuf.access$3200();
    }

    private ByteString getDistrictBytes()
    {
        Object obj = district_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            district_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getEaddressBytes()
    {
        Object obj = eaddress_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            eaddress_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getEcityBytes()
    {
        Object obj = ecity_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            ecity_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getEdistrictBytes()
    {
        Object obj = edistrict_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            edistrict_ = obj;
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

    private ByteString getEprovinceBytes()
    {
        Object obj = eprovince_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            eprovince_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getInumBytes()
    {
        Object obj = inum_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            inum_ = obj;
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

    private ByteString getNumBytes()
    {
        Object obj = num_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            num_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getProvinceBytes()
    {
        Object obj = province_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            province_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getProxBytes()
    {
        Object obj = prox_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            prox_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getRangeBytes()
    {
        Object obj = range_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            range_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getRoadptsBytes()
    {
        Object obj = roadpts_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            roadpts_ = obj;
            return ((ByteString) (obj));
        } else
        {
            return (ByteString)obj;
        }
    }

    private ByteString getScoreBytes()
    {
        Object obj = score_;
        if (obj instanceof String)
        {
            obj = ByteString.copyFromUtf8((String)obj);
            score_ = obj;
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
        level_ = "";
        x_ = "";
        y_ = "";
        address_ = "";
        province_ = "";
        city_ = "";
        ename_ = "";
        district_ = "";
        range_ = "";
        num_ = "";
        inum_ = "";
        prox_ = "";
        score_ = "";
        eprovince_ = "";
        ecity_ = "";
        edistrict_ = "";
        eaddress_ = "";
        roadpts_ = "";
        subpois_ = .getDefaultInstance();
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

    public String getCity()
    {
        Object obj = city_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            city_ = s;
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

    public String getDistrict()
    {
        Object obj = district_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            district_ = s;
        }
        return s;
    }

    public String getEaddress()
    {
        Object obj = eaddress_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            eaddress_ = s;
        }
        return s;
    }

    public String getEcity()
    {
        Object obj = ecity_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            ecity_ = s;
        }
        return s;
    }

    public String getEdistrict()
    {
        Object obj = edistrict_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            edistrict_ = s;
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

    public String getEprovince()
    {
        Object obj = eprovince_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            eprovince_ = s;
        }
        return s;
    }

    public String getInum()
    {
        Object obj = inum_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            inum_ = s;
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

    public String getNum()
    {
        Object obj = num_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            num_ = s;
        }
        return s;
    }

    public String getProvince()
    {
        Object obj = province_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            province_ = s;
        }
        return s;
    }

    public String getProx()
    {
        Object obj = prox_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            prox_ = s;
        }
        return s;
    }

    public String getRange()
    {
        Object obj = range_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            range_ = s;
        }
        return s;
    }

    public String getRoadpts()
    {
        Object obj = roadpts_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            roadpts_ = s;
        }
        return s;
    }

    public String getScore()
    {
        Object obj = score_;
        if (obj instanceof String)
        {
            return (String)obj;
        }
        obj = (ByteString)obj;
        String s = ((ByteString) (obj)).toStringUtf8();
        if (Internal.isValidUtf8(((ByteString) (obj))))
        {
            score_ = s;
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
            i = j + CodedOutputStream.computeBytesSize(2, getLevelBytes());
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
            j = i + CodedOutputStream.computeBytesSize(5, getAddressBytes());
        }
        i = j;
        if ((bitField0_ & 0x20) == 32)
        {
            i = j + CodedOutputStream.computeBytesSize(6, getProvinceBytes());
        }
        j = i;
        if ((bitField0_ & 0x40) == 64)
        {
            j = i + CodedOutputStream.computeBytesSize(7, getCityBytes());
        }
        i = j;
        if ((bitField0_ & 0x80) == 128)
        {
            i = j + CodedOutputStream.computeBytesSize(8, getEnameBytes());
        }
        j = i;
        if ((bitField0_ & 0x100) == 256)
        {
            j = i + CodedOutputStream.computeBytesSize(9, getDistrictBytes());
        }
        i = j;
        if ((bitField0_ & 0x200) == 512)
        {
            i = j + CodedOutputStream.computeBytesSize(10, getRangeBytes());
        }
        j = i;
        if ((bitField0_ & 0x400) == 1024)
        {
            j = i + CodedOutputStream.computeBytesSize(11, getNumBytes());
        }
        i = j;
        if ((bitField0_ & 0x800) == 2048)
        {
            i = j + CodedOutputStream.computeBytesSize(12, getInumBytes());
        }
        j = i;
        if ((bitField0_ & 0x1000) == 4096)
        {
            j = i + CodedOutputStream.computeBytesSize(13, getProxBytes());
        }
        i = j;
        if ((bitField0_ & 0x2000) == 8192)
        {
            i = j + CodedOutputStream.computeBytesSize(14, getScoreBytes());
        }
        j = i;
        if ((bitField0_ & 0x4000) == 16384)
        {
            j = i + CodedOutputStream.computeBytesSize(15, getEprovinceBytes());
        }
        i = j;
        if ((bitField0_ & 0x8000) == 32768)
        {
            i = j + CodedOutputStream.computeBytesSize(16, getEcityBytes());
        }
        j = i;
        if ((bitField0_ & 0x10000) == 0x10000)
        {
            j = i + CodedOutputStream.computeBytesSize(17, getEdistrictBytes());
        }
        i = j;
        if ((bitField0_ & 0x20000) == 0x20000)
        {
            i = j + CodedOutputStream.computeBytesSize(18, getEaddressBytes());
        }
        j = i;
        if ((bitField0_ & 0x40000) == 0x40000)
        {
            j = i + CodedOutputStream.computeBytesSize(19, getRoadptsBytes());
        }
        i = j;
        if ((bitField0_ & 0x80000) == 0x80000)
        {
            i = j + CodedOutputStream.computeMessageSize(20, subpois_);
        }
        i += getUnknownFields().getSerializedSize();
        memoizedSerializedSize = i;
        return i;
    }

    public  getSubpois()
    {
        return subpois_;
    }

    public OrBuilder getSubpoisOrBuilder()
    {
        return subpois_;
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

    public boolean hasAddress()
    {
        return (bitField0_ & 0x10) == 16;
    }

    public boolean hasCity()
    {
        return (bitField0_ & 0x40) == 64;
    }

    public boolean hasDistrict()
    {
        return (bitField0_ & 0x100) == 256;
    }

    public boolean hasEaddress()
    {
        return (bitField0_ & 0x20000) == 0x20000;
    }

    public boolean hasEcity()
    {
        return (bitField0_ & 0x8000) == 32768;
    }

    public boolean hasEdistrict()
    {
        return (bitField0_ & 0x10000) == 0x10000;
    }

    public boolean hasEname()
    {
        return (bitField0_ & 0x80) == 128;
    }

    public boolean hasEprovince()
    {
        return (bitField0_ & 0x4000) == 16384;
    }

    public boolean hasInum()
    {
        return (bitField0_ & 0x800) == 2048;
    }

    public boolean hasLevel()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasName()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasNum()
    {
        return (bitField0_ & 0x400) == 1024;
    }

    public boolean hasProvince()
    {
        return (bitField0_ & 0x20) == 32;
    }

    public boolean hasProx()
    {
        return (bitField0_ & 0x1000) == 4096;
    }

    public boolean hasRange()
    {
        return (bitField0_ & 0x200) == 512;
    }

    public boolean hasRoadpts()
    {
        return (bitField0_ & 0x40000) == 0x40000;
    }

    public boolean hasScore()
    {
        return (bitField0_ & 0x2000) == 8192;
    }

    public boolean hasSubpois()
    {
        return (bitField0_ & 0x80000) == 0x80000;
    }

    public boolean hasX()
    {
        return (bitField0_ & 4) == 4;
    }

    public boolean hasY()
    {
        return (bitField0_ & 8) == 8;
    }

    protected com.google.protobuf.essorTable internalGetFieldAccessorTable()
    {
        return GeocodingProtoBuf.access$3300();
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
        if (!hasLevel())
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

    public volatile com.google.protobuf.GeoPOI newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.arent newBuilderForType(com.google.protobuf.arent arent)
    {
        return newBuilderForType(arent);
    }

    public volatile com.google.protobuf.GeoPOI newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.arent arent)
    {
        return new Builder(arent, null);
    }

    public volatile com.google.protobuf.GeoPOI toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.GeoPOI toBuilder()
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
            codedoutputstream.writeBytes(2, getLevelBytes());
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
            codedoutputstream.writeBytes(5, getAddressBytes());
        }
        if ((bitField0_ & 0x20) == 32)
        {
            codedoutputstream.writeBytes(6, getProvinceBytes());
        }
        if ((bitField0_ & 0x40) == 64)
        {
            codedoutputstream.writeBytes(7, getCityBytes());
        }
        if ((bitField0_ & 0x80) == 128)
        {
            codedoutputstream.writeBytes(8, getEnameBytes());
        }
        if ((bitField0_ & 0x100) == 256)
        {
            codedoutputstream.writeBytes(9, getDistrictBytes());
        }
        if ((bitField0_ & 0x200) == 512)
        {
            codedoutputstream.writeBytes(10, getRangeBytes());
        }
        if ((bitField0_ & 0x400) == 1024)
        {
            codedoutputstream.writeBytes(11, getNumBytes());
        }
        if ((bitField0_ & 0x800) == 2048)
        {
            codedoutputstream.writeBytes(12, getInumBytes());
        }
        if ((bitField0_ & 0x1000) == 4096)
        {
            codedoutputstream.writeBytes(13, getProxBytes());
        }
        if ((bitField0_ & 0x2000) == 8192)
        {
            codedoutputstream.writeBytes(14, getScoreBytes());
        }
        if ((bitField0_ & 0x4000) == 16384)
        {
            codedoutputstream.writeBytes(15, getEprovinceBytes());
        }
        if ((bitField0_ & 0x8000) == 32768)
        {
            codedoutputstream.writeBytes(16, getEcityBytes());
        }
        if ((bitField0_ & 0x10000) == 0x10000)
        {
            codedoutputstream.writeBytes(17, getEdistrictBytes());
        }
        if ((bitField0_ & 0x20000) == 0x20000)
        {
            codedoutputstream.writeBytes(18, getEaddressBytes());
        }
        if ((bitField0_ & 0x40000) == 0x40000)
        {
            codedoutputstream.writeBytes(19, getRoadptsBytes());
        }
        if ((bitField0_ & 0x80000) == 0x80000)
        {
            codedoutputstream.writeMessage(20, subpois_);
        }
        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }



/*
    static Object access$3902(Builder builder, Object obj)
    {
        builder.name_ = obj;
        return obj;
    }

*/


/*
    static Object access$4002(name_ name_1, Object obj)
    {
        name_1.level_ = obj;
        return obj;
    }

*/


/*
    static Object access$4102(level_ level_1, Object obj)
    {
        level_1.x_ = obj;
        return obj;
    }

*/


/*
    static Object access$4202(x_ x_1, Object obj)
    {
        x_1.y_ = obj;
        return obj;
    }

*/


/*
    static Object access$4302(y_ y_1, Object obj)
    {
        y_1.address_ = obj;
        return obj;
    }

*/


/*
    static Object access$4402(address_ address_1, Object obj)
    {
        address_1.province_ = obj;
        return obj;
    }

*/


/*
    static Object access$4502(province_ province_1, Object obj)
    {
        province_1.city_ = obj;
        return obj;
    }

*/


/*
    static Object access$4602(city_ city_1, Object obj)
    {
        city_1.ename_ = obj;
        return obj;
    }

*/


/*
    static Object access$4702(ename_ ename_1, Object obj)
    {
        ename_1.district_ = obj;
        return obj;
    }

*/


/*
    static Object access$4802(district_ district_1, Object obj)
    {
        district_1.range_ = obj;
        return obj;
    }

*/


/*
    static Object access$4902(range_ range_1, Object obj)
    {
        range_1.num_ = obj;
        return obj;
    }

*/


/*
    static Object access$5002(num_ num_1, Object obj)
    {
        num_1.inum_ = obj;
        return obj;
    }

*/


/*
    static Object access$5102(inum_ inum_1, Object obj)
    {
        inum_1.prox_ = obj;
        return obj;
    }

*/


/*
    static Object access$5202(prox_ prox_1, Object obj)
    {
        prox_1.score_ = obj;
        return obj;
    }

*/


/*
    static Object access$5302(score_ score_1, Object obj)
    {
        score_1.eprovince_ = obj;
        return obj;
    }

*/


/*
    static Object access$5402(eprovince_ eprovince_1, Object obj)
    {
        eprovince_1.ecity_ = obj;
        return obj;
    }

*/


/*
    static Object access$5502(ecity_ ecity_1, Object obj)
    {
        ecity_1.edistrict_ = obj;
        return obj;
    }

*/


/*
    static Object access$5602(edistrict_ edistrict_1, Object obj)
    {
        edistrict_1.eaddress_ = obj;
        return obj;
    }

*/


/*
    static Object access$5702(eaddress_ eaddress_1, Object obj)
    {
        eaddress_1.roadpts_ = obj;
        return obj;
    }

*/


/*
    static  access$5802( ,  1)
    {
        .subpois_ = 1;
        return 1;
    }

*/


/*
    static int access$5902(subpois_ subpois_1, int i)
    {
        subpois_1.bitField0_ = i;
        return i;
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
