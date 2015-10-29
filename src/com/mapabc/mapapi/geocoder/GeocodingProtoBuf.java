// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

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
import com.mapabc.mapapi.core.CommonProtoBuf;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            c

public final class GeocodingProtoBuf
{
    public static final class GeoPOI extends GeneratedMessage
        implements GeoPOIOrBuilder
    {

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
        private static final GeoPOI defaultInstance;
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
        private SubPOIS subpois_;
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

        public static GeoPOI getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_GeoPOI_descriptor;
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
            subpois_ = SubPOIS.getDefaultInstance();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(GeoPOI geopoi)
        {
            return newBuilder().mergeFrom(geopoi);
        }

        public static GeoPOI parseDelimitedFrom(InputStream inputstream)
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

        public static GeoPOI parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static GeoPOI parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static GeoPOI parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static GeoPOI parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static GeoPOI parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static GeoPOI parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static GeoPOI parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static GeoPOI parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static GeoPOI parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public GeoPOI getDefaultInstanceForType()
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

        public SubPOIS getSubpois()
        {
            return subpois_;
        }

        public SubPOISOrBuilder getSubpoisOrBuilder()
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

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.internal_static_GeoPOI_fieldAccessorTable;
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
            defaultInstance = new GeoPOI(true);
            defaultInstance.initFields();
        }



/*
        static Object access$3902(GeoPOI geopoi, Object obj)
        {
            geopoi.name_ = obj;
            return obj;
        }

*/


/*
        static Object access$4002(GeoPOI geopoi, Object obj)
        {
            geopoi.level_ = obj;
            return obj;
        }

*/


/*
        static Object access$4102(GeoPOI geopoi, Object obj)
        {
            geopoi.x_ = obj;
            return obj;
        }

*/


/*
        static Object access$4202(GeoPOI geopoi, Object obj)
        {
            geopoi.y_ = obj;
            return obj;
        }

*/


/*
        static Object access$4302(GeoPOI geopoi, Object obj)
        {
            geopoi.address_ = obj;
            return obj;
        }

*/


/*
        static Object access$4402(GeoPOI geopoi, Object obj)
        {
            geopoi.province_ = obj;
            return obj;
        }

*/


/*
        static Object access$4502(GeoPOI geopoi, Object obj)
        {
            geopoi.city_ = obj;
            return obj;
        }

*/


/*
        static Object access$4602(GeoPOI geopoi, Object obj)
        {
            geopoi.ename_ = obj;
            return obj;
        }

*/


/*
        static Object access$4702(GeoPOI geopoi, Object obj)
        {
            geopoi.district_ = obj;
            return obj;
        }

*/


/*
        static Object access$4802(GeoPOI geopoi, Object obj)
        {
            geopoi.range_ = obj;
            return obj;
        }

*/


/*
        static Object access$4902(GeoPOI geopoi, Object obj)
        {
            geopoi.num_ = obj;
            return obj;
        }

*/


/*
        static Object access$5002(GeoPOI geopoi, Object obj)
        {
            geopoi.inum_ = obj;
            return obj;
        }

*/


/*
        static Object access$5102(GeoPOI geopoi, Object obj)
        {
            geopoi.prox_ = obj;
            return obj;
        }

*/


/*
        static Object access$5202(GeoPOI geopoi, Object obj)
        {
            geopoi.score_ = obj;
            return obj;
        }

*/


/*
        static Object access$5302(GeoPOI geopoi, Object obj)
        {
            geopoi.eprovince_ = obj;
            return obj;
        }

*/


/*
        static Object access$5402(GeoPOI geopoi, Object obj)
        {
            geopoi.ecity_ = obj;
            return obj;
        }

*/


/*
        static Object access$5502(GeoPOI geopoi, Object obj)
        {
            geopoi.edistrict_ = obj;
            return obj;
        }

*/


/*
        static Object access$5602(GeoPOI geopoi, Object obj)
        {
            geopoi.eaddress_ = obj;
            return obj;
        }

*/


/*
        static Object access$5702(GeoPOI geopoi, Object obj)
        {
            geopoi.roadpts_ = obj;
            return obj;
        }

*/


/*
        static SubPOIS access$5802(GeoPOI geopoi, SubPOIS subpois)
        {
            geopoi.subpois_ = subpois;
            return subpois;
        }

*/


/*
        static int access$5902(GeoPOI geopoi, int i)
        {
            geopoi.bitField0_ = i;
            return i;
        }

*/

        private GeoPOI(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        GeoPOI(Builder builder, c c1)
        {
            this(builder);
        }

        private GeoPOI(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class GeoPOI.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements GeoPOIOrBuilder
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
        private SubPOIS subpois_;
        private Object x_;
        private Object y_;

        private GeoPOI buildParsed()
            throws InvalidProtocolBufferException
        {
            GeoPOI geopoi = buildPartial();
            if (!geopoi.isInitialized())
            {
                throw newUninitializedMessageException(geopoi).asInvalidProtocolBufferException();
            } else
            {
                return geopoi;
            }
        }

        private static GeoPOI.Builder create()
        {
            return new GeoPOI.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_GeoPOI_descriptor;
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

        public GeoPOI build()
        {
            GeoPOI geopoi = buildPartial();
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

        public GeoPOI buildPartial()
        {
            GeoPOI geopoi = new GeoPOI(this, null);
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
                geopoi.subpois_ = (SubPOIS)subpoisBuilder_.build();
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

        public GeoPOI.Builder clear()
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
                subpois_ = SubPOIS.getDefaultInstance();
            } else
            {
                subpoisBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xfff7ffff;
            return this;
        }

        public GeoPOI.Builder clearAddress()
        {
            bitField0_ = bitField0_ & 0xffffffef;
            address_ = GeoPOI.getDefaultInstance().getAddress();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearCity()
        {
            bitField0_ = bitField0_ & 0xffffffbf;
            city_ = GeoPOI.getDefaultInstance().getCity();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearDistrict()
        {
            bitField0_ = bitField0_ & 0xfffffeff;
            district_ = GeoPOI.getDefaultInstance().getDistrict();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearEaddress()
        {
            bitField0_ = bitField0_ & 0xfffdffff;
            eaddress_ = GeoPOI.getDefaultInstance().getEaddress();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearEcity()
        {
            bitField0_ = bitField0_ & 0xffff7fff;
            ecity_ = GeoPOI.getDefaultInstance().getEcity();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearEdistrict()
        {
            bitField0_ = bitField0_ & 0xfffeffff;
            edistrict_ = GeoPOI.getDefaultInstance().getEdistrict();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearEname()
        {
            bitField0_ = bitField0_ & 0xffffff7f;
            ename_ = GeoPOI.getDefaultInstance().getEname();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearEprovince()
        {
            bitField0_ = bitField0_ & 0xffffbfff;
            eprovince_ = GeoPOI.getDefaultInstance().getEprovince();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearInum()
        {
            bitField0_ = bitField0_ & 0xfffff7ff;
            inum_ = GeoPOI.getDefaultInstance().getInum();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearLevel()
        {
            bitField0_ = bitField0_ & -3;
            level_ = GeoPOI.getDefaultInstance().getLevel();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = GeoPOI.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearNum()
        {
            bitField0_ = bitField0_ & 0xfffffbff;
            num_ = GeoPOI.getDefaultInstance().getNum();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearProvince()
        {
            bitField0_ = bitField0_ & 0xffffffdf;
            province_ = GeoPOI.getDefaultInstance().getProvince();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearProx()
        {
            bitField0_ = bitField0_ & 0xffffefff;
            prox_ = GeoPOI.getDefaultInstance().getProx();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearRange()
        {
            bitField0_ = bitField0_ & 0xfffffdff;
            range_ = GeoPOI.getDefaultInstance().getRange();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearRoadpts()
        {
            bitField0_ = bitField0_ & 0xfffbffff;
            roadpts_ = GeoPOI.getDefaultInstance().getRoadpts();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearScore()
        {
            bitField0_ = bitField0_ & 0xffffdfff;
            score_ = GeoPOI.getDefaultInstance().getScore();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearSubpois()
        {
            if (subpoisBuilder_ == null)
            {
                subpois_ = SubPOIS.getDefaultInstance();
                onChanged();
            } else
            {
                subpoisBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xfff7ffff;
            return this;
        }

        public GeoPOI.Builder clearX()
        {
            bitField0_ = bitField0_ & -5;
            x_ = GeoPOI.getDefaultInstance().getX();
            onChanged();
            return this;
        }

        public GeoPOI.Builder clearY()
        {
            bitField0_ = bitField0_ & -9;
            y_ = GeoPOI.getDefaultInstance().getY();
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

        public GeoPOI.Builder clone()
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

        public GeoPOI getDefaultInstanceForType()
        {
            return GeoPOI.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return GeoPOI.getDescriptor();
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

        public SubPOIS getSubpois()
        {
            if (subpoisBuilder_ == null)
            {
                return subpois_;
            } else
            {
                return (SubPOIS)subpoisBuilder_.getMessage();
            }
        }

        public SubPOIS.Builder getSubpoisBuilder()
        {
            bitField0_ = bitField0_ | 0x80000;
            onChanged();
            return (SubPOIS.Builder)getSubpoisFieldBuilder().getBuilder();
        }

        public SubPOISOrBuilder getSubpoisOrBuilder()
        {
            if (subpoisBuilder_ != null)
            {
                return (SubPOISOrBuilder)subpoisBuilder_.getMessageOrBuilder();
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
            return GeocodingProtoBuf.internal_static_GeoPOI_fieldAccessorTable;
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

        public GeoPOI.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    SubPOIS.Builder builder1 = SubPOIS.newBuilder();
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

        public GeoPOI.Builder mergeFrom(Message message)
        {
            if (message instanceof GeoPOI)
            {
                return mergeFrom((GeoPOI)message);
            } else
            {
                mergeFrom(message);
                return this;
            }
        }

        public GeoPOI.Builder mergeFrom(GeoPOI geopoi)
        {
            if (geopoi == GeoPOI.getDefaultInstance())
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

        public GeoPOI.Builder mergeSubpois(SubPOIS subpois)
        {
            if (subpoisBuilder_ == null)
            {
                if ((bitField0_ & 0x80000) == 0x80000 && subpois_ != SubPOIS.getDefaultInstance())
                {
                    subpois_ = SubPOIS.newBuilder(subpois_).mergeFrom(subpois).buildPartial();
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

        public GeoPOI.Builder setAddress(String s)
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

        public GeoPOI.Builder setCity(String s)
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

        public GeoPOI.Builder setDistrict(String s)
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

        public GeoPOI.Builder setEaddress(String s)
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

        public GeoPOI.Builder setEcity(String s)
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

        public GeoPOI.Builder setEdistrict(String s)
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

        public GeoPOI.Builder setEname(String s)
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

        public GeoPOI.Builder setEprovince(String s)
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

        public GeoPOI.Builder setInum(String s)
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

        public GeoPOI.Builder setLevel(String s)
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

        public GeoPOI.Builder setName(String s)
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

        public GeoPOI.Builder setNum(String s)
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

        public GeoPOI.Builder setProvince(String s)
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

        public GeoPOI.Builder setProx(String s)
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

        public GeoPOI.Builder setRange(String s)
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

        public GeoPOI.Builder setRoadpts(String s)
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

        public GeoPOI.Builder setScore(String s)
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

        public GeoPOI.Builder setSubpois(SubPOIS.Builder builder)
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

        public GeoPOI.Builder setSubpois(SubPOIS subpois)
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

        public GeoPOI.Builder setX(String s)
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

        public GeoPOI.Builder setY(String s)
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



        private GeoPOI.Builder()
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
            subpois_ = SubPOIS.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        private GeoPOI.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
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
            subpois_ = SubPOIS.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        GeoPOI.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c1)
        {
            this(builderparent);
        }
    }

    public static interface GeoPOIOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getAddress();

        public abstract String getCity();

        public abstract String getDistrict();

        public abstract String getEaddress();

        public abstract String getEcity();

        public abstract String getEdistrict();

        public abstract String getEname();

        public abstract String getEprovince();

        public abstract String getInum();

        public abstract String getLevel();

        public abstract String getName();

        public abstract String getNum();

        public abstract String getProvince();

        public abstract String getProx();

        public abstract String getRange();

        public abstract String getRoadpts();

        public abstract String getScore();

        public abstract SubPOIS getSubpois();

        public abstract SubPOISOrBuilder getSubpoisOrBuilder();

        public abstract String getX();

        public abstract String getY();

        public abstract boolean hasAddress();

        public abstract boolean hasCity();

        public abstract boolean hasDistrict();

        public abstract boolean hasEaddress();

        public abstract boolean hasEcity();

        public abstract boolean hasEdistrict();

        public abstract boolean hasEname();

        public abstract boolean hasEprovince();

        public abstract boolean hasInum();

        public abstract boolean hasLevel();

        public abstract boolean hasName();

        public abstract boolean hasNum();

        public abstract boolean hasProvince();

        public abstract boolean hasProx();

        public abstract boolean hasRange();

        public abstract boolean hasRoadpts();

        public abstract boolean hasScore();

        public abstract boolean hasSubpois();

        public abstract boolean hasX();

        public abstract boolean hasY();
    }

    public static final class Geocoding extends GeneratedMessage
        implements GeocodingOrBuilder
    {

        public static final int POI_FIELD_NUMBER = 1;
        private static final Geocoding defaultInstance;
        private static final long serialVersionUID = 0L;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List poi_;

        public static Geocoding getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_Geocoding_descriptor;
        }

        private void initFields()
        {
            poi_ = Collections.emptyList();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(Geocoding geocoding)
        {
            return newBuilder().mergeFrom(geocoding);
        }

        public static Geocoding parseDelimitedFrom(InputStream inputstream)
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

        public static Geocoding parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Geocoding parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Geocoding parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Geocoding parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Geocoding parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Geocoding parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Geocoding parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Geocoding parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Geocoding parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public Geocoding getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public GeoPOI getPoi(int i)
        {
            return (GeoPOI)poi_.get(i);
        }

        public int getPoiCount()
        {
            return poi_.size();
        }

        public List getPoiList()
        {
            return poi_;
        }

        public GeoPOIOrBuilder getPoiOrBuilder(int i)
        {
            return (GeoPOIOrBuilder)poi_.get(i);
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
            return GeocodingProtoBuf.internal_static_Geocoding_fieldAccessorTable;
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
            defaultInstance = new Geocoding(true);
            defaultInstance.initFields();
        }




/*
        static List access$3002(Geocoding geocoding, List list)
        {
            geocoding.poi_ = list;
            return list;
        }

*/


        private Geocoding(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Geocoding(Builder builder, c c1)
        {
            this(builder);
        }

        private Geocoding(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Geocoding.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements GeocodingOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder poiBuilder_;
        private List poi_;

        private Geocoding buildParsed()
            throws InvalidProtocolBufferException
        {
            Geocoding geocoding = buildPartial();
            if (!geocoding.isInitialized())
            {
                throw newUninitializedMessageException(geocoding).asInvalidProtocolBufferException();
            } else
            {
                return geocoding;
            }
        }

        private static Geocoding.Builder create()
        {
            return new Geocoding.Builder();
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
            return GeocodingProtoBuf.internal_static_Geocoding_descriptor;
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

        public Geocoding.Builder addAllPoi(Iterable iterable)
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

        public Geocoding.Builder addPoi(int i, GeoPOI.Builder builder)
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

        public Geocoding.Builder addPoi(int i, GeoPOI geopoi)
        {
            if (poiBuilder_ == null)
            {
                if (geopoi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensurePoiIsMutable();
                    poi_.add(i, geopoi);
                    onChanged();
                    return this;
                }
            } else
            {
                poiBuilder_.addMessage(i, geopoi);
                return this;
            }
        }

        public Geocoding.Builder addPoi(GeoPOI.Builder builder)
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

        public Geocoding.Builder addPoi(GeoPOI geopoi)
        {
            if (poiBuilder_ == null)
            {
                if (geopoi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensurePoiIsMutable();
                    poi_.add(geopoi);
                    onChanged();
                    return this;
                }
            } else
            {
                poiBuilder_.addMessage(geopoi);
                return this;
            }
        }

        public GeoPOI.Builder addPoiBuilder()
        {
            return (GeoPOI.Builder)getPoiFieldBuilder().addBuilder(GeoPOI.getDefaultInstance());
        }

        public GeoPOI.Builder addPoiBuilder(int i)
        {
            return (GeoPOI.Builder)getPoiFieldBuilder().addBuilder(i, GeoPOI.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public Geocoding build()
        {
            Geocoding geocoding = buildPartial();
            if (!geocoding.isInitialized())
            {
                throw newUninitializedMessageException(geocoding);
            } else
            {
                return geocoding;
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

        public Geocoding buildPartial()
        {
            Geocoding geocoding = new Geocoding(this, null);
            int i = bitField0_;
            if (poiBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    poi_ = Collections.unmodifiableList(poi_);
                    bitField0_ = bitField0_ & -2;
                }
                geocoding.poi_ = poi_;
            } else
            {
                geocoding.poi_ = poiBuilder_.build();
            }
            onBuilt();
            return geocoding;
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

        public Geocoding.Builder clear()
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

        public Geocoding.Builder clearPoi()
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

        public Geocoding.Builder clone()
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

        public Geocoding getDefaultInstanceForType()
        {
            return Geocoding.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return Geocoding.getDescriptor();
        }

        public GeoPOI getPoi(int i)
        {
            if (poiBuilder_ == null)
            {
                return (GeoPOI)poi_.get(i);
            } else
            {
                return (GeoPOI)poiBuilder_.getMessage(i);
            }
        }

        public GeoPOI.Builder getPoiBuilder(int i)
        {
            return (GeoPOI.Builder)getPoiFieldBuilder().getBuilder(i);
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

        public GeoPOIOrBuilder getPoiOrBuilder(int i)
        {
            if (poiBuilder_ == null)
            {
                return (GeoPOIOrBuilder)poi_.get(i);
            } else
            {
                return (GeoPOIOrBuilder)poiBuilder_.getMessageOrBuilder(i);
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
            return GeocodingProtoBuf.internal_static_Geocoding_fieldAccessorTable;
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

        public Geocoding.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    GeoPOI.Builder builder1 = GeoPOI.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addPoi(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Geocoding.Builder mergeFrom(Message message)
        {
            if (message instanceof Geocoding)
            {
                return mergeFrom((Geocoding)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Geocoding.Builder mergeFrom(Geocoding geocoding)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (geocoding == Geocoding.getDefaultInstance())
            {
                return this;
            }
            if (poiBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!geocoding.poi_.isEmpty())
            {
                if (poi_.isEmpty())
                {
                    poi_ = geocoding.poi_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensurePoiIsMutable();
                    poi_.addAll(geocoding.poi_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(geocoding.getUnknownFields());
            return this;
_L2:
            if (!geocoding.poi_.isEmpty())
            {
                if (poiBuilder_.isEmpty())
                {
                    poiBuilder_.dispose();
                    poiBuilder_ = null;
                    poi_ = geocoding.poi_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getPoiFieldBuilder();
                    }
                    poiBuilder_ = repeatedfieldbuilder;
                } else
                {
                    poiBuilder_.addAllMessages(geocoding.poi_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Geocoding.Builder removePoi(int i)
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

        public Geocoding.Builder setPoi(int i, GeoPOI.Builder builder)
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

        public Geocoding.Builder setPoi(int i, GeoPOI geopoi)
        {
            if (poiBuilder_ == null)
            {
                if (geopoi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensurePoiIsMutable();
                    poi_.set(i, geopoi);
                    onChanged();
                    return this;
                }
            } else
            {
                poiBuilder_.setMessage(i, geopoi);
                return this;
            }
        }



        private Geocoding.Builder()
        {
            poi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Geocoding.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            poi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Geocoding.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c1)
        {
            this(builderparent);
        }
    }

    public static interface GeocodingOrBuilder
        extends MessageOrBuilder
    {

        public abstract GeoPOI getPoi(int i);

        public abstract int getPoiCount();

        public abstract List getPoiList();

        public abstract GeoPOIOrBuilder getPoiOrBuilder(int i);

        public abstract List getPoiOrBuilderList();
    }

    public static final class GeocodingRequest extends GeneratedMessage
        implements GeocodingRequestOrBuilder
    {

        public static final int ADDRESS_FIELD_NUMBER = 2;
        public static final int COMMON_FIELD_NUMBER = 1;
        public static final int POINUMBER_FIELD_NUMBER = 3;
        public static final int VER_FIELD_NUMBER = 4;
        private static final GeocodingRequest defaultInstance;
        private static final long serialVersionUID = 0L;
        private Object address_;
        private int bitField0_;
        private com.mapabc.mapapi.core.CommonProtoBuf.Common common_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object poiNumber_;
        private Object ver_;

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

        public static GeocodingRequest getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_GeocodingRequest_descriptor;
        }

        private ByteString getPoiNumberBytes()
        {
            Object obj = poiNumber_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                poiNumber_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private ByteString getVerBytes()
        {
            Object obj = ver_;
            if (obj instanceof String)
            {
                obj = ByteString.copyFromUtf8((String)obj);
                ver_ = obj;
                return ((ByteString) (obj));
            } else
            {
                return (ByteString)obj;
            }
        }

        private void initFields()
        {
            common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance();
            address_ = "";
            poiNumber_ = "";
            ver_ = "";
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(GeocodingRequest geocodingrequest)
        {
            return newBuilder().mergeFrom(geocodingrequest);
        }

        public static GeocodingRequest parseDelimitedFrom(InputStream inputstream)
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

        public static GeocodingRequest parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static GeocodingRequest parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static GeocodingRequest parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static GeocodingRequest parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static GeocodingRequest parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static GeocodingRequest parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static GeocodingRequest parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static GeocodingRequest parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static GeocodingRequest parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public com.mapabc.mapapi.core.CommonProtoBuf.Common getCommon()
        {
            return common_;
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.CommonOrBuilder getCommonOrBuilder()
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

        public GeocodingRequest getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public String getPoiNumber()
        {
            Object obj = poiNumber_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                poiNumber_ = s;
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
                i = j + CodedOutputStream.computeBytesSize(2, getAddressBytes());
            }
            j = i;
            if ((bitField0_ & 4) == 4)
            {
                j = i + CodedOutputStream.computeBytesSize(3, getPoiNumberBytes());
            }
            i = j;
            if ((bitField0_ & 8) == 8)
            {
                i = j + CodedOutputStream.computeBytesSize(4, getVerBytes());
            }
            i += getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
        }

        public String getVer()
        {
            Object obj = ver_;
            if (obj instanceof String)
            {
                return (String)obj;
            }
            obj = (ByteString)obj;
            String s = ((ByteString) (obj)).toStringUtf8();
            if (Internal.isValidUtf8(((ByteString) (obj))))
            {
                ver_ = s;
            }
            return s;
        }

        public boolean hasAddress()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasCommon()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasPoiNumber()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasVer()
        {
            return (bitField0_ & 8) == 8;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.internal_static_GeocodingRequest_fieldAccessorTable;
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
            if (!hasAddress())
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
                codedoutputstream.writeBytes(2, getAddressBytes());
            }
            if ((bitField0_ & 4) == 4)
            {
                codedoutputstream.writeBytes(3, getPoiNumberBytes());
            }
            if ((bitField0_ & 8) == 8)
            {
                codedoutputstream.writeBytes(4, getVerBytes());
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new GeocodingRequest(true);
            defaultInstance.initFields();
        }


/*
        static Object access$1002(GeocodingRequest geocodingrequest, Object obj)
        {
            geocodingrequest.ver_ = obj;
            return obj;
        }

*/


/*
        static int access$1102(GeocodingRequest geocodingrequest, int i)
        {
            geocodingrequest.bitField0_ = i;
            return i;
        }

*/



/*
        static com.mapabc.mapapi.core.CommonProtoBuf.Common access$702(GeocodingRequest geocodingrequest, com.mapabc.mapapi.core.CommonProtoBuf.Common common)
        {
            geocodingrequest.common_ = common;
            return common;
        }

*/


/*
        static Object access$802(GeocodingRequest geocodingrequest, Object obj)
        {
            geocodingrequest.address_ = obj;
            return obj;
        }

*/


/*
        static Object access$902(GeocodingRequest geocodingrequest, Object obj)
        {
            geocodingrequest.poiNumber_ = obj;
            return obj;
        }

*/

        private GeocodingRequest(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        GeocodingRequest(Builder builder, c c1)
        {
            this(builder);
        }

        private GeocodingRequest(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class GeocodingRequest.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements GeocodingRequestOrBuilder
    {

        private Object address_;
        private int bitField0_;
        private SingleFieldBuilder commonBuilder_;
        private com.mapabc.mapapi.core.CommonProtoBuf.Common common_;
        private Object poiNumber_;
        private Object ver_;

        private GeocodingRequest buildParsed()
            throws InvalidProtocolBufferException
        {
            GeocodingRequest geocodingrequest = buildPartial();
            if (!geocodingrequest.isInitialized())
            {
                throw newUninitializedMessageException(geocodingrequest).asInvalidProtocolBufferException();
            } else
            {
                return geocodingrequest;
            }
        }

        private static GeocodingRequest.Builder create()
        {
            return new GeocodingRequest.Builder();
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
            return GeocodingProtoBuf.internal_static_GeocodingRequest_descriptor;
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

        public GeocodingRequest build()
        {
            GeocodingRequest geocodingrequest = buildPartial();
            if (!geocodingrequest.isInitialized())
            {
                throw newUninitializedMessageException(geocodingrequest);
            } else
            {
                return geocodingrequest;
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

        public GeocodingRequest buildPartial()
        {
            GeocodingRequest geocodingrequest = new GeocodingRequest(this, null);
            int k = bitField0_;
            int j = 0;
            if ((k & 1) == 1)
            {
                j = 1;
            }
            int i;
            if (commonBuilder_ == null)
            {
                geocodingrequest.common_ = common_;
            } else
            {
                geocodingrequest.common_ = (com.mapabc.mapapi.core.CommonProtoBuf.Common)commonBuilder_.build();
            }
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            geocodingrequest.address_ = address_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            geocodingrequest.poiNumber_ = poiNumber_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            geocodingrequest.ver_ = ver_;
            geocodingrequest.bitField0_ = i;
            onBuilt();
            return geocodingrequest;
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

        public GeocodingRequest.Builder clear()
        {
            clear();
            if (commonBuilder_ == null)
            {
                common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance();
            } else
            {
                commonBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            address_ = "";
            bitField0_ = bitField0_ & -3;
            poiNumber_ = "";
            bitField0_ = bitField0_ & -5;
            ver_ = "";
            bitField0_ = bitField0_ & -9;
            return this;
        }

        public GeocodingRequest.Builder clearAddress()
        {
            bitField0_ = bitField0_ & -3;
            address_ = GeocodingRequest.getDefaultInstance().getAddress();
            onChanged();
            return this;
        }

        public GeocodingRequest.Builder clearCommon()
        {
            if (commonBuilder_ == null)
            {
                common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance();
                onChanged();
            } else
            {
                commonBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            return this;
        }

        public GeocodingRequest.Builder clearPoiNumber()
        {
            bitField0_ = bitField0_ & -5;
            poiNumber_ = GeocodingRequest.getDefaultInstance().getPoiNumber();
            onChanged();
            return this;
        }

        public GeocodingRequest.Builder clearVer()
        {
            bitField0_ = bitField0_ & -9;
            ver_ = GeocodingRequest.getDefaultInstance().getVer();
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

        public GeocodingRequest.Builder clone()
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

        public com.mapabc.mapapi.core.CommonProtoBuf.Common getCommon()
        {
            if (commonBuilder_ == null)
            {
                return common_;
            } else
            {
                return (com.mapabc.mapapi.core.CommonProtoBuf.Common)commonBuilder_.getMessage();
            }
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder getCommonBuilder()
        {
            bitField0_ = bitField0_ | 1;
            onChanged();
            return (com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder)getCommonFieldBuilder().getBuilder();
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.CommonOrBuilder getCommonOrBuilder()
        {
            if (commonBuilder_ != null)
            {
                return (com.mapabc.mapapi.core.CommonProtoBuf.CommonOrBuilder)commonBuilder_.getMessageOrBuilder();
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

        public GeocodingRequest getDefaultInstanceForType()
        {
            return GeocodingRequest.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return GeocodingRequest.getDescriptor();
        }

        public String getPoiNumber()
        {
            Object obj = poiNumber_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                poiNumber_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public String getVer()
        {
            Object obj = ver_;
            if (!(obj instanceof String))
            {
                obj = ((ByteString)obj).toStringUtf8();
                ver_ = obj;
                return ((String) (obj));
            } else
            {
                return (String)obj;
            }
        }

        public boolean hasAddress()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasCommon()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasPoiNumber()
        {
            return (bitField0_ & 4) == 4;
        }

        public boolean hasVer()
        {
            return (bitField0_ & 8) == 8;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.internal_static_GeocodingRequest_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            while (!hasCommon() || !hasAddress() || !getCommon().isInitialized()) 
            {
                return false;
            }
            return true;
        }

        public GeocodingRequest.Builder mergeCommon(com.mapabc.mapapi.core.CommonProtoBuf.Common common)
        {
            if (commonBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1 && common_ != com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance())
                {
                    common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.newBuilder(common_).mergeFrom(common).buildPartial();
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

        public GeocodingRequest.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder builder1 = com.mapabc.mapapi.core.CommonProtoBuf.Common.newBuilder();
                    if (hasCommon())
                    {
                        builder1.mergeFrom(getCommon());
                    }
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    setCommon(builder1.buildPartial());
                    break;

                case 18: // '\022'
                    bitField0_ = bitField0_ | 2;
                    address_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    poiNumber_ = codedinputstream.readBytes();
                    break;

                case 34: // '"'
                    bitField0_ = bitField0_ | 8;
                    ver_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public GeocodingRequest.Builder mergeFrom(Message message)
        {
            if (message instanceof GeocodingRequest)
            {
                return mergeFrom((GeocodingRequest)message);
            } else
            {
                mergeFrom(message);
                return this;
            }
        }

        public GeocodingRequest.Builder mergeFrom(GeocodingRequest geocodingrequest)
        {
            if (geocodingrequest == GeocodingRequest.getDefaultInstance())
            {
                return this;
            }
            if (geocodingrequest.hasCommon())
            {
                mergeCommon(geocodingrequest.getCommon());
            }
            if (geocodingrequest.hasAddress())
            {
                setAddress(geocodingrequest.getAddress());
            }
            if (geocodingrequest.hasPoiNumber())
            {
                setPoiNumber(geocodingrequest.getPoiNumber());
            }
            if (geocodingrequest.hasVer())
            {
                setVer(geocodingrequest.getVer());
            }
            mergeUnknownFields(geocodingrequest.getUnknownFields());
            return this;
        }

        public GeocodingRequest.Builder setAddress(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                address_ = s;
                onChanged();
                return this;
            }
        }

        void setAddress(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            address_ = bytestring;
            onChanged();
        }

        public GeocodingRequest.Builder setCommon(com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder builder)
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

        public GeocodingRequest.Builder setCommon(com.mapabc.mapapi.core.CommonProtoBuf.Common common)
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

        public GeocodingRequest.Builder setPoiNumber(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 4;
                poiNumber_ = s;
                onChanged();
                return this;
            }
        }

        void setPoiNumber(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 4;
            poiNumber_ = bytestring;
            onChanged();
        }

        public GeocodingRequest.Builder setVer(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 8;
                ver_ = s;
                onChanged();
                return this;
            }
        }

        void setVer(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 8;
            ver_ = bytestring;
            onChanged();
        }



        private GeocodingRequest.Builder()
        {
            common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance();
            address_ = "";
            poiNumber_ = "";
            ver_ = "";
            maybeForceBuilderInitialization();
        }

        private GeocodingRequest.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            common_ = com.mapabc.mapapi.core.CommonProtoBuf.Common.getDefaultInstance();
            address_ = "";
            poiNumber_ = "";
            ver_ = "";
            maybeForceBuilderInitialization();
        }

        GeocodingRequest.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c1)
        {
            this(builderparent);
        }
    }

    public static interface GeocodingRequestOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getAddress();

        public abstract com.mapabc.mapapi.core.CommonProtoBuf.Common getCommon();

        public abstract com.mapabc.mapapi.core.CommonProtoBuf.CommonOrBuilder getCommonOrBuilder();

        public abstract String getPoiNumber();

        public abstract String getVer();

        public abstract boolean hasAddress();

        public abstract boolean hasCommon();

        public abstract boolean hasPoiNumber();

        public abstract boolean hasVer();
    }

    public static final class GeocodingResponse extends GeneratedMessage
        implements GeocodingResponseOrBuilder
    {

        public static final int COUNT_FIELD_NUMBER = 1;
        public static final int GEOCODING_FIELD_NUMBER = 2;
        public static final int SPELLCORRECT_FIELD_NUMBER = 3;
        private static final GeocodingResponse defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private int count_;
        private Geocoding geocoding_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect spellcorrect_;

        public static GeocodingResponse getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_GeocodingResponse_descriptor;
        }

        private void initFields()
        {
            count_ = 0;
            geocoding_ = Geocoding.getDefaultInstance();
            spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(GeocodingResponse geocodingresponse)
        {
            return newBuilder().mergeFrom(geocodingresponse);
        }

        public static GeocodingResponse parseDelimitedFrom(InputStream inputstream)
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

        public static GeocodingResponse parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static GeocodingResponse parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static GeocodingResponse parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static GeocodingResponse parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static GeocodingResponse parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static GeocodingResponse parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static GeocodingResponse parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static GeocodingResponse parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static GeocodingResponse parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0, extensionregistrylite)).buildParsed();
        }

        public int getCount()
        {
            return count_;
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public GeocodingResponse getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public Geocoding getGeocoding()
        {
            return geocoding_;
        }

        public GeocodingOrBuilder getGeocodingOrBuilder()
        {
            return geocoding_;
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
                j = 0 + CodedOutputStream.computeInt32Size(1, count_);
            }
            i = j;
            if ((bitField0_ & 2) == 2)
            {
                i = j + CodedOutputStream.computeMessageSize(2, geocoding_);
            }
            j = i;
            if ((bitField0_ & 4) == 4)
            {
                j = i + CodedOutputStream.computeMessageSize(3, spellcorrect_);
            }
            i = j + getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect getSpellcorrect()
        {
            return spellcorrect_;
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.SpellcorrectOrBuilder getSpellcorrectOrBuilder()
        {
            return spellcorrect_;
        }

        public boolean hasCount()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasGeocoding()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasSpellcorrect()
        {
            return (bitField0_ & 4) == 4;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.internal_static_GeocodingResponse_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            byte byte0 = memoizedIsInitialized;
            if (byte0 != -1)
            {
                return byte0 == 1;
            }
            if (hasGeocoding() && !getGeocoding().isInitialized())
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
                codedoutputstream.writeInt32(1, count_);
            }
            if ((bitField0_ & 2) == 2)
            {
                codedoutputstream.writeMessage(2, geocoding_);
            }
            if ((bitField0_ & 4) == 4)
            {
                codedoutputstream.writeMessage(3, spellcorrect_);
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new GeocodingResponse(true);
            defaultInstance.initFields();
        }



/*
        static int access$1902(GeocodingResponse geocodingresponse, int i)
        {
            geocodingresponse.count_ = i;
            return i;
        }

*/


/*
        static Geocoding access$2002(GeocodingResponse geocodingresponse, Geocoding geocoding)
        {
            geocodingresponse.geocoding_ = geocoding;
            return geocoding;
        }

*/


/*
        static com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect access$2102(GeocodingResponse geocodingresponse, com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect spellcorrect)
        {
            geocodingresponse.spellcorrect_ = spellcorrect;
            return spellcorrect;
        }

*/


/*
        static int access$2202(GeocodingResponse geocodingresponse, int i)
        {
            geocodingresponse.bitField0_ = i;
            return i;
        }

*/

        private GeocodingResponse(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        GeocodingResponse(Builder builder, c c1)
        {
            this(builder);
        }

        private GeocodingResponse(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class GeocodingResponse.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements GeocodingResponseOrBuilder
    {

        private int bitField0_;
        private int count_;
        private SingleFieldBuilder geocodingBuilder_;
        private Geocoding geocoding_;
        private SingleFieldBuilder spellcorrectBuilder_;
        private com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect spellcorrect_;

        private GeocodingResponse buildParsed()
            throws InvalidProtocolBufferException
        {
            GeocodingResponse geocodingresponse = buildPartial();
            if (!geocodingresponse.isInitialized())
            {
                throw newUninitializedMessageException(geocodingresponse).asInvalidProtocolBufferException();
            } else
            {
                return geocodingresponse;
            }
        }

        private static GeocodingResponse.Builder create()
        {
            return new GeocodingResponse.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_GeocodingResponse_descriptor;
        }

        private SingleFieldBuilder getGeocodingFieldBuilder()
        {
            if (geocodingBuilder_ == null)
            {
                geocodingBuilder_ = new SingleFieldBuilder(geocoding_, getParentForChildren(), isClean());
                geocoding_ = null;
            }
            return geocodingBuilder_;
        }

        private SingleFieldBuilder getSpellcorrectFieldBuilder()
        {
            if (spellcorrectBuilder_ == null)
            {
                spellcorrectBuilder_ = new SingleFieldBuilder(spellcorrect_, getParentForChildren(), isClean());
                spellcorrect_ = null;
            }
            return spellcorrectBuilder_;
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

        public GeocodingResponse build()
        {
            GeocodingResponse geocodingresponse = buildPartial();
            if (!geocodingresponse.isInitialized())
            {
                throw newUninitializedMessageException(geocodingresponse);
            } else
            {
                return geocodingresponse;
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

        public GeocodingResponse buildPartial()
        {
            int i = 1;
            GeocodingResponse geocodingresponse = new GeocodingResponse(this, null);
            int k = bitField0_;
            int j;
            if ((k & 1) != 1)
            {
                i = 0;
            }
            geocodingresponse.count_ = count_;
            if ((k & 2) == 2)
            {
                i |= 2;
            }
            if (geocodingBuilder_ == null)
            {
                geocodingresponse.geocoding_ = geocoding_;
            } else
            {
                geocodingresponse.geocoding_ = (Geocoding)geocodingBuilder_.build();
            }
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            if (spellcorrectBuilder_ == null)
            {
                geocodingresponse.spellcorrect_ = spellcorrect_;
            } else
            {
                geocodingresponse.spellcorrect_ = (com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect)spellcorrectBuilder_.build();
            }
            geocodingresponse.bitField0_ = j;
            onBuilt();
            return geocodingresponse;
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

        public GeocodingResponse.Builder clear()
        {
            clear();
            count_ = 0;
            bitField0_ = bitField0_ & -2;
            if (geocodingBuilder_ == null)
            {
                geocoding_ = Geocoding.getDefaultInstance();
            } else
            {
                geocodingBuilder_.clear();
            }
            bitField0_ = bitField0_ & -3;
            if (spellcorrectBuilder_ == null)
            {
                spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance();
            } else
            {
                spellcorrectBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
            return this;
        }

        public GeocodingResponse.Builder clearCount()
        {
            bitField0_ = bitField0_ & -2;
            count_ = 0;
            onChanged();
            return this;
        }

        public GeocodingResponse.Builder clearGeocoding()
        {
            if (geocodingBuilder_ == null)
            {
                geocoding_ = Geocoding.getDefaultInstance();
                onChanged();
            } else
            {
                geocodingBuilder_.clear();
            }
            bitField0_ = bitField0_ & -3;
            return this;
        }

        public GeocodingResponse.Builder clearSpellcorrect()
        {
            if (spellcorrectBuilder_ == null)
            {
                spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance();
                onChanged();
            } else
            {
                spellcorrectBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
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

        public GeocodingResponse.Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public int getCount()
        {
            return count_;
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public GeocodingResponse getDefaultInstanceForType()
        {
            return GeocodingResponse.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return GeocodingResponse.getDescriptor();
        }

        public Geocoding getGeocoding()
        {
            if (geocodingBuilder_ == null)
            {
                return geocoding_;
            } else
            {
                return (Geocoding)geocodingBuilder_.getMessage();
            }
        }

        public Geocoding.Builder getGeocodingBuilder()
        {
            bitField0_ = bitField0_ | 2;
            onChanged();
            return (Geocoding.Builder)getGeocodingFieldBuilder().getBuilder();
        }

        public GeocodingOrBuilder getGeocodingOrBuilder()
        {
            if (geocodingBuilder_ != null)
            {
                return (GeocodingOrBuilder)geocodingBuilder_.getMessageOrBuilder();
            } else
            {
                return geocoding_;
            }
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect getSpellcorrect()
        {
            if (spellcorrectBuilder_ == null)
            {
                return spellcorrect_;
            } else
            {
                return (com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect)spellcorrectBuilder_.getMessage();
            }
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.Builder getSpellcorrectBuilder()
        {
            bitField0_ = bitField0_ | 4;
            onChanged();
            return (com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.Builder)getSpellcorrectFieldBuilder().getBuilder();
        }

        public com.mapabc.mapapi.core.CommonProtoBuf.SpellcorrectOrBuilder getSpellcorrectOrBuilder()
        {
            if (spellcorrectBuilder_ != null)
            {
                return (com.mapabc.mapapi.core.CommonProtoBuf.SpellcorrectOrBuilder)spellcorrectBuilder_.getMessageOrBuilder();
            } else
            {
                return spellcorrect_;
            }
        }

        public boolean hasCount()
        {
            return (bitField0_ & 1) == 1;
        }

        public boolean hasGeocoding()
        {
            return (bitField0_ & 2) == 2;
        }

        public boolean hasSpellcorrect()
        {
            return (bitField0_ & 4) == 4;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.internal_static_GeocodingResponse_fieldAccessorTable;
        }

        public final boolean isInitialized()
        {
            return !hasGeocoding() || getGeocoding().isInitialized();
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

        public GeocodingResponse.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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

                case 8: // '\b'
                    bitField0_ = bitField0_ | 1;
                    count_ = codedinputstream.readInt32();
                    break;

                case 18: // '\022'
                    Geocoding.Builder builder1 = Geocoding.newBuilder();
                    if (hasGeocoding())
                    {
                        builder1.mergeFrom(getGeocoding());
                    }
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    setGeocoding(builder1.buildPartial());
                    break;

                case 26: // '\032'
                    com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.Builder builder2 = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.newBuilder();
                    if (hasSpellcorrect())
                    {
                        builder2.mergeFrom(getSpellcorrect());
                    }
                    codedinputstream.readMessage(builder2, extensionregistrylite);
                    setSpellcorrect(builder2.buildPartial());
                    break;
                }
            } while (true);
        }

        public GeocodingResponse.Builder mergeFrom(Message message)
        {
            if (message instanceof GeocodingResponse)
            {
                return mergeFrom((GeocodingResponse)message);
            } else
            {
                mergeFrom(message);
                return this;
            }
        }

        public GeocodingResponse.Builder mergeFrom(GeocodingResponse geocodingresponse)
        {
            if (geocodingresponse == GeocodingResponse.getDefaultInstance())
            {
                return this;
            }
            if (geocodingresponse.hasCount())
            {
                setCount(geocodingresponse.getCount());
            }
            if (geocodingresponse.hasGeocoding())
            {
                mergeGeocoding(geocodingresponse.getGeocoding());
            }
            if (geocodingresponse.hasSpellcorrect())
            {
                mergeSpellcorrect(geocodingresponse.getSpellcorrect());
            }
            mergeUnknownFields(geocodingresponse.getUnknownFields());
            return this;
        }

        public GeocodingResponse.Builder mergeGeocoding(Geocoding geocoding)
        {
            if (geocodingBuilder_ == null)
            {
                if ((bitField0_ & 2) == 2 && geocoding_ != Geocoding.getDefaultInstance())
                {
                    geocoding_ = Geocoding.newBuilder(geocoding_).mergeFrom(geocoding).buildPartial();
                } else
                {
                    geocoding_ = geocoding;
                }
                onChanged();
            } else
            {
                geocodingBuilder_.mergeFrom(geocoding);
            }
            bitField0_ = bitField0_ | 2;
            return this;
        }

        public GeocodingResponse.Builder mergeSpellcorrect(com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect spellcorrect)
        {
            if (spellcorrectBuilder_ == null)
            {
                if ((bitField0_ & 4) == 4 && spellcorrect_ != com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance())
                {
                    spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.newBuilder(spellcorrect_).mergeFrom(spellcorrect).buildPartial();
                } else
                {
                    spellcorrect_ = spellcorrect;
                }
                onChanged();
            } else
            {
                spellcorrectBuilder_.mergeFrom(spellcorrect);
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }

        public GeocodingResponse.Builder setCount(int i)
        {
            bitField0_ = bitField0_ | 1;
            count_ = i;
            onChanged();
            return this;
        }

        public GeocodingResponse.Builder setGeocoding(Geocoding.Builder builder)
        {
            if (geocodingBuilder_ == null)
            {
                geocoding_ = builder.build();
                onChanged();
            } else
            {
                geocodingBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 2;
            return this;
        }

        public GeocodingResponse.Builder setGeocoding(Geocoding geocoding)
        {
            if (geocodingBuilder_ == null)
            {
                if (geocoding == null)
                {
                    throw new NullPointerException();
                }
                geocoding_ = geocoding;
                onChanged();
            } else
            {
                geocodingBuilder_.setMessage(geocoding);
            }
            bitField0_ = bitField0_ | 2;
            return this;
        }

        public GeocodingResponse.Builder setSpellcorrect(com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.Builder builder)
        {
            if (spellcorrectBuilder_ == null)
            {
                spellcorrect_ = builder.build();
                onChanged();
            } else
            {
                spellcorrectBuilder_.setMessage(builder.build());
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }

        public GeocodingResponse.Builder setSpellcorrect(com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect spellcorrect)
        {
            if (spellcorrectBuilder_ == null)
            {
                if (spellcorrect == null)
                {
                    throw new NullPointerException();
                }
                spellcorrect_ = spellcorrect;
                onChanged();
            } else
            {
                spellcorrectBuilder_.setMessage(spellcorrect);
            }
            bitField0_ = bitField0_ | 4;
            return this;
        }



        private GeocodingResponse.Builder()
        {
            geocoding_ = Geocoding.getDefaultInstance();
            spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        private GeocodingResponse.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            geocoding_ = Geocoding.getDefaultInstance();
            spellcorrect_ = com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        GeocodingResponse.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c1)
        {
            this(builderparent);
        }
    }

    public static interface GeocodingResponseOrBuilder
        extends MessageOrBuilder
    {

        public abstract int getCount();

        public abstract Geocoding getGeocoding();

        public abstract GeocodingOrBuilder getGeocodingOrBuilder();

        public abstract com.mapabc.mapapi.core.CommonProtoBuf.Spellcorrect getSpellcorrect();

        public abstract com.mapabc.mapapi.core.CommonProtoBuf.SpellcorrectOrBuilder getSpellcorrectOrBuilder();

        public abstract boolean hasCount();

        public abstract boolean hasGeocoding();

        public abstract boolean hasSpellcorrect();
    }

    public static final class SubPOI extends GeneratedMessage
        implements SubPOIOrBuilder
    {

        public static final int ENAME_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int X_FIELD_NUMBER = 3;
        public static final int Y_FIELD_NUMBER = 4;
        private static final SubPOI defaultInstance;
        private static final long serialVersionUID = 0L;
        private int bitField0_;
        private Object ename_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private Object x_;
        private Object y_;

        public static SubPOI getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_SubPOI_descriptor;
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
            ename_ = "";
            x_ = "";
            y_ = "";
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(SubPOI subpoi)
        {
            return newBuilder().mergeFrom(subpoi);
        }

        public static SubPOI parseDelimitedFrom(InputStream inputstream)
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

        public static SubPOI parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static SubPOI parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static SubPOI parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static SubPOI parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static SubPOI parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static SubPOI parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static SubPOI parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static SubPOI parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static SubPOI parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public SubPOI getDefaultInstanceForType()
        {
            return defaultInstance;
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
                i = j + CodedOutputStream.computeBytesSize(2, getEnameBytes());
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
            i += getUnknownFields().getSerializedSize();
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

        public boolean hasEname()
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
            return GeocodingProtoBuf.internal_static_SubPOI_fieldAccessorTable;
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
                codedoutputstream.writeBytes(2, getEnameBytes());
            }
            if ((bitField0_ & 4) == 4)
            {
                codedoutputstream.writeBytes(3, getXBytes());
            }
            if ((bitField0_ & 8) == 8)
            {
                codedoutputstream.writeBytes(4, getYBytes());
            }
            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new SubPOI(true);
            defaultInstance.initFields();
        }



/*
        static Object access$7602(SubPOI subpoi, Object obj)
        {
            subpoi.name_ = obj;
            return obj;
        }

*/


/*
        static Object access$7702(SubPOI subpoi, Object obj)
        {
            subpoi.ename_ = obj;
            return obj;
        }

*/


/*
        static Object access$7802(SubPOI subpoi, Object obj)
        {
            subpoi.x_ = obj;
            return obj;
        }

*/


/*
        static Object access$7902(SubPOI subpoi, Object obj)
        {
            subpoi.y_ = obj;
            return obj;
        }

*/


/*
        static int access$8002(SubPOI subpoi, int i)
        {
            subpoi.bitField0_ = i;
            return i;
        }

*/

        private SubPOI(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        SubPOI(Builder builder, c c1)
        {
            this(builder);
        }

        private SubPOI(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class SubPOI.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements SubPOIOrBuilder
    {

        private int bitField0_;
        private Object ename_;
        private Object name_;
        private Object x_;
        private Object y_;

        private SubPOI buildParsed()
            throws InvalidProtocolBufferException
        {
            SubPOI subpoi = buildPartial();
            if (!subpoi.isInitialized())
            {
                throw newUninitializedMessageException(subpoi).asInvalidProtocolBufferException();
            } else
            {
                return subpoi;
            }
        }

        private static SubPOI.Builder create()
        {
            return new SubPOI.Builder();
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_SubPOI_descriptor;
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

        public SubPOI build()
        {
            SubPOI subpoi = buildPartial();
            if (!subpoi.isInitialized())
            {
                throw newUninitializedMessageException(subpoi);
            } else
            {
                return subpoi;
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

        public SubPOI buildPartial()
        {
            int j = 1;
            SubPOI subpoi = new SubPOI(this, null);
            int k = bitField0_;
            int i;
            if ((k & 1) != 1)
            {
                j = 0;
            }
            subpoi.name_ = name_;
            i = j;
            if ((k & 2) == 2)
            {
                i = j | 2;
            }
            subpoi.ename_ = ename_;
            j = i;
            if ((k & 4) == 4)
            {
                j = i | 4;
            }
            subpoi.x_ = x_;
            i = j;
            if ((k & 8) == 8)
            {
                i = j | 8;
            }
            subpoi.y_ = y_;
            subpoi.bitField0_ = i;
            onBuilt();
            return subpoi;
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

        public SubPOI.Builder clear()
        {
            super.clear();
            name_ = "";
            bitField0_ = bitField0_ & -2;
            ename_ = "";
            bitField0_ = bitField0_ & -3;
            x_ = "";
            bitField0_ = bitField0_ & -5;
            y_ = "";
            bitField0_ = bitField0_ & -9;
            return this;
        }

        public SubPOI.Builder clearEname()
        {
            bitField0_ = bitField0_ & -3;
            ename_ = SubPOI.getDefaultInstance().getEname();
            onChanged();
            return this;
        }

        public SubPOI.Builder clearName()
        {
            bitField0_ = bitField0_ & -2;
            name_ = SubPOI.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public SubPOI.Builder clearX()
        {
            bitField0_ = bitField0_ & -5;
            x_ = SubPOI.getDefaultInstance().getX();
            onChanged();
            return this;
        }

        public SubPOI.Builder clearY()
        {
            bitField0_ = bitField0_ & -9;
            y_ = SubPOI.getDefaultInstance().getY();
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

        public SubPOI.Builder clone()
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

        public SubPOI getDefaultInstanceForType()
        {
            return SubPOI.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return SubPOI.getDescriptor();
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

        public boolean hasEname()
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
            return GeocodingProtoBuf.internal_static_SubPOI_fieldAccessorTable;
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

        public SubPOI.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    ename_ = codedinputstream.readBytes();
                    break;

                case 26: // '\032'
                    bitField0_ = bitField0_ | 4;
                    x_ = codedinputstream.readBytes();
                    break;

                case 34: // '"'
                    bitField0_ = bitField0_ | 8;
                    y_ = codedinputstream.readBytes();
                    break;
                }
            } while (true);
        }

        public SubPOI.Builder mergeFrom(Message message)
        {
            if (message instanceof SubPOI)
            {
                return mergeFrom((SubPOI)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public SubPOI.Builder mergeFrom(SubPOI subpoi)
        {
            if (subpoi == SubPOI.getDefaultInstance())
            {
                return this;
            }
            if (subpoi.hasName())
            {
                setName(subpoi.getName());
            }
            if (subpoi.hasEname())
            {
                setEname(subpoi.getEname());
            }
            if (subpoi.hasX())
            {
                setX(subpoi.getX());
            }
            if (subpoi.hasY())
            {
                setY(subpoi.getY());
            }
            mergeUnknownFields(subpoi.getUnknownFields());
            return this;
        }

        public SubPOI.Builder setEname(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                bitField0_ = bitField0_ | 2;
                ename_ = s;
                onChanged();
                return this;
            }
        }

        void setEname(ByteString bytestring)
        {
            bitField0_ = bitField0_ | 2;
            ename_ = bytestring;
            onChanged();
        }

        public SubPOI.Builder setName(String s)
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

        public SubPOI.Builder setX(String s)
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

        public SubPOI.Builder setY(String s)
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



        private SubPOI.Builder()
        {
            name_ = "";
            ename_ = "";
            x_ = "";
            y_ = "";
            maybeForceBuilderInitialization();
        }

        private SubPOI.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            name_ = "";
            ename_ = "";
            x_ = "";
            y_ = "";
            maybeForceBuilderInitialization();
        }

        SubPOI.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c1)
        {
            this(builderparent);
        }
    }

    public static interface SubPOIOrBuilder
        extends MessageOrBuilder
    {

        public abstract String getEname();

        public abstract String getName();

        public abstract String getX();

        public abstract String getY();

        public abstract boolean hasEname();

        public abstract boolean hasName();

        public abstract boolean hasX();

        public abstract boolean hasY();
    }

    public static final class SubPOIS extends GeneratedMessage
        implements SubPOISOrBuilder
    {

        public static final int SUBPOI_FIELD_NUMBER = 1;
        private static final SubPOIS defaultInstance;
        private static final long serialVersionUID = 0L;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List subpoi_;

        public static SubPOIS getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_SubPOIS_descriptor;
        }

        private void initFields()
        {
            subpoi_ = Collections.emptyList();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(SubPOIS subpois)
        {
            return newBuilder().mergeFrom(subpois);
        }

        public static SubPOIS parseDelimitedFrom(InputStream inputstream)
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

        public static SubPOIS parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static SubPOIS parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static SubPOIS parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static SubPOIS parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static SubPOIS parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static SubPOIS parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static SubPOIS parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static SubPOIS parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static SubPOIS parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
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

        public SubPOIS getDefaultInstanceForType()
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
            for (; i < subpoi_.size(); i++)
            {
                j += CodedOutputStream.computeMessageSize(1, (MessageLite)subpoi_.get(i));
            }

            i = getUnknownFields().getSerializedSize() + j;
            memoizedSerializedSize = i;
            return i;
        }

        public SubPOI getSubpoi(int i)
        {
            return (SubPOI)subpoi_.get(i);
        }

        public int getSubpoiCount()
        {
            return subpoi_.size();
        }

        public List getSubpoiList()
        {
            return subpoi_;
        }

        public SubPOIOrBuilder getSubpoiOrBuilder(int i)
        {
            return (SubPOIOrBuilder)subpoi_.get(i);
        }

        public List getSubpoiOrBuilderList()
        {
            return subpoi_;
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.internal_static_SubPOIS_fieldAccessorTable;
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
            for (int i = 0; i < subpoi_.size(); i++)
            {
                codedoutputstream.writeMessage(1, (MessageLite)subpoi_.get(i));
            }

            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new SubPOIS(true);
            defaultInstance.initFields();
        }




/*
        static List access$6702(SubPOIS subpois, List list)
        {
            subpois.subpoi_ = list;
            return list;
        }

*/


        private SubPOIS(Builder builder)
        {
            super(builder);
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        SubPOIS(Builder builder, c c1)
        {
            this(builder);
        }

        private SubPOIS(boolean flag)
        {
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class SubPOIS.Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements SubPOISOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder subpoiBuilder_;
        private List subpoi_;

        private SubPOIS buildParsed()
            throws InvalidProtocolBufferException
        {
            SubPOIS subpois = buildPartial();
            if (!subpois.isInitialized())
            {
                throw newUninitializedMessageException(subpois).asInvalidProtocolBufferException();
            } else
            {
                return subpois;
            }
        }

        private static SubPOIS.Builder create()
        {
            return new SubPOIS.Builder();
        }

        private void ensureSubpoiIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                subpoi_ = new ArrayList(subpoi_);
                bitField0_ = bitField0_ | 1;
            }
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return GeocodingProtoBuf.internal_static_SubPOIS_descriptor;
        }

        private RepeatedFieldBuilder getSubpoiFieldBuilder()
        {
            boolean flag = true;
            if (subpoiBuilder_ == null)
            {
                List list = subpoi_;
                if ((bitField0_ & 1) != 1)
                {
                    flag = false;
                }
                subpoiBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                subpoi_ = null;
            }
            return subpoiBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (buildPartial)
            {
                getSubpoiFieldBuilder();
            }
        }

        public SubPOIS.Builder addAllSubpoi(Iterable iterable)
        {
            if (subpoiBuilder_ == null)
            {
                ensureSubpoiIsMutable();
                com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, subpoi_);
                onChanged();
                return this;
            } else
            {
                subpoiBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public SubPOIS.Builder addSubpoi(int i, SubPOI.Builder builder)
        {
            if (subpoiBuilder_ == null)
            {
                ensureSubpoiIsMutable();
                subpoi_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                subpoiBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public SubPOIS.Builder addSubpoi(int i, SubPOI subpoi)
        {
            if (subpoiBuilder_ == null)
            {
                if (subpoi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureSubpoiIsMutable();
                    subpoi_.add(i, subpoi);
                    onChanged();
                    return this;
                }
            } else
            {
                subpoiBuilder_.addMessage(i, subpoi);
                return this;
            }
        }

        public SubPOIS.Builder addSubpoi(SubPOI.Builder builder)
        {
            if (subpoiBuilder_ == null)
            {
                ensureSubpoiIsMutable();
                subpoi_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                subpoiBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public SubPOIS.Builder addSubpoi(SubPOI subpoi)
        {
            if (subpoiBuilder_ == null)
            {
                if (subpoi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureSubpoiIsMutable();
                    subpoi_.add(subpoi);
                    onChanged();
                    return this;
                }
            } else
            {
                subpoiBuilder_.addMessage(subpoi);
                return this;
            }
        }

        public SubPOI.Builder addSubpoiBuilder()
        {
            return (SubPOI.Builder)getSubpoiFieldBuilder().addBuilder(SubPOI.getDefaultInstance());
        }

        public SubPOI.Builder addSubpoiBuilder(int i)
        {
            return (SubPOI.Builder)getSubpoiFieldBuilder().addBuilder(i, SubPOI.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public SubPOIS build()
        {
            SubPOIS subpois = buildPartial();
            if (!subpois.isInitialized())
            {
                throw newUninitializedMessageException(subpois);
            } else
            {
                return subpois;
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

        public SubPOIS buildPartial()
        {
            SubPOIS subpois = new SubPOIS(this, null);
            int i = bitField0_;
            if (subpoiBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    subpoi_ = Collections.unmodifiableList(subpoi_);
                    bitField0_ = bitField0_ & -2;
                }
                subpois.subpoi_ = subpoi_;
            } else
            {
                subpois.subpoi_ = subpoiBuilder_.build();
            }
            onBuilt();
            return subpois;
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

        public SubPOIS.Builder clear()
        {
            super.clear();
            if (subpoiBuilder_ == null)
            {
                subpoi_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                return this;
            } else
            {
                subpoiBuilder_.clear();
                return this;
            }
        }

        public SubPOIS.Builder clearSubpoi()
        {
            if (subpoiBuilder_ == null)
            {
                subpoi_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                onChanged();
                return this;
            } else
            {
                subpoiBuilder_.clear();
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

        public SubPOIS.Builder clone()
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

        public SubPOIS getDefaultInstanceForType()
        {
            return SubPOIS.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return SubPOIS.getDescriptor();
        }

        public SubPOI getSubpoi(int i)
        {
            if (subpoiBuilder_ == null)
            {
                return (SubPOI)subpoi_.get(i);
            } else
            {
                return (SubPOI)subpoiBuilder_.getMessage(i);
            }
        }

        public SubPOI.Builder getSubpoiBuilder(int i)
        {
            return (SubPOI.Builder)getSubpoiFieldBuilder().getBuilder(i);
        }

        public List getSubpoiBuilderList()
        {
            return getSubpoiFieldBuilder().getBuilderList();
        }

        public int getSubpoiCount()
        {
            if (subpoiBuilder_ == null)
            {
                return subpoi_.size();
            } else
            {
                return subpoiBuilder_.getCount();
            }
        }

        public List getSubpoiList()
        {
            if (subpoiBuilder_ == null)
            {
                return Collections.unmodifiableList(subpoi_);
            } else
            {
                return subpoiBuilder_.getMessageList();
            }
        }

        public SubPOIOrBuilder getSubpoiOrBuilder(int i)
        {
            if (subpoiBuilder_ == null)
            {
                return (SubPOIOrBuilder)subpoi_.get(i);
            } else
            {
                return (SubPOIOrBuilder)subpoiBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getSubpoiOrBuilderList()
        {
            if (subpoiBuilder_ != null)
            {
                return subpoiBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(subpoi_);
            }
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return GeocodingProtoBuf.internal_static_SubPOIS_fieldAccessorTable;
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

        public SubPOIS.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
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
                    SubPOI.Builder builder1 = SubPOI.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addSubpoi(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public SubPOIS.Builder mergeFrom(Message message)
        {
            if (message instanceof SubPOIS)
            {
                return mergeFrom((SubPOIS)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public SubPOIS.Builder mergeFrom(SubPOIS subpois)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (subpois == SubPOIS.getDefaultInstance())
            {
                return this;
            }
            if (subpoiBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!subpois.subpoi_.isEmpty())
            {
                if (subpoi_.isEmpty())
                {
                    subpoi_ = subpois.subpoi_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureSubpoiIsMutable();
                    subpoi_.addAll(subpois.subpoi_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(subpois.getUnknownFields());
            return this;
_L2:
            if (!subpois.subpoi_.isEmpty())
            {
                if (subpoiBuilder_.isEmpty())
                {
                    subpoiBuilder_.dispose();
                    subpoiBuilder_ = null;
                    subpoi_ = subpois.subpoi_;
                    bitField0_ = bitField0_ & -2;
                    if (buildPartial)
                    {
                        repeatedfieldbuilder = getSubpoiFieldBuilder();
                    }
                    subpoiBuilder_ = repeatedfieldbuilder;
                } else
                {
                    subpoiBuilder_.addAllMessages(subpois.subpoi_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public SubPOIS.Builder removeSubpoi(int i)
        {
            if (subpoiBuilder_ == null)
            {
                ensureSubpoiIsMutable();
                subpoi_.remove(i);
                onChanged();
                return this;
            } else
            {
                subpoiBuilder_.remove(i);
                return this;
            }
        }

        public SubPOIS.Builder setSubpoi(int i, SubPOI.Builder builder)
        {
            if (subpoiBuilder_ == null)
            {
                ensureSubpoiIsMutable();
                subpoi_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                subpoiBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public SubPOIS.Builder setSubpoi(int i, SubPOI subpoi)
        {
            if (subpoiBuilder_ == null)
            {
                if (subpoi == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureSubpoiIsMutable();
                    subpoi_.set(i, subpoi);
                    onChanged();
                    return this;
                }
            } else
            {
                subpoiBuilder_.setMessage(i, subpoi);
                return this;
            }
        }



        private SubPOIS.Builder()
        {
            subpoi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private SubPOIS.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            subpoi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        SubPOIS.Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c1)
        {
            this(builderparent);
        }
    }

    public static interface SubPOISOrBuilder
        extends MessageOrBuilder
    {

        public abstract SubPOI getSubpoi(int i);

        public abstract int getSubpoiCount();

        public abstract List getSubpoiList();

        public abstract SubPOIOrBuilder getSubpoiOrBuilder(int i);

        public abstract List getSubpoiOrBuilderList();
    }


    private static com.google.protobuf.Descriptors.FileDescriptor descriptor;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_GeoPOI_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_GeoPOI_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_GeocodingRequest_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_GeocodingRequest_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_GeocodingResponse_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_GeocodingResponse_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_Geocoding_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_Geocoding_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_SubPOIS_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_SubPOIS_fieldAccessorTable;
    private static com.google.protobuf.Descriptors.Descriptor internal_static_SubPOI_descriptor;
    private static com.google.protobuf.GeneratedMessage.FieldAccessorTable internal_static_SubPOI_fieldAccessorTable;

    private GeocodingProtoBuf()
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
        c c1 = new c();
        com.google.protobuf.Descriptors.FileDescriptor filedescriptor = CommonProtoBuf.getDescriptor();
        com.google.protobuf.Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] {
            "\n\017geocoding.proto\032\fcommon.proto\"\\\n\020GeocodingRequest\022\027\n\006common\030\001 \002(\0132\007.Common\022\017\n\007address\030\002 \002(\t\022\021\n\tpoiNumber\030\003 \001(\t\022\013\n\003ver\030\004 \001(\t\"f\n\021GeocodingResponse\022\r\n\005count\030\001 \001(\005\022\035\n\tgeocoding\030\002 \001(\0132\n.Geocoding\022#\n\fspellcorrect\030\003 \001(\0132\r.Spellcorrect\"!\n\tGeocoding\022\024\n\003poi\030\001 \003(\0132\007.GeoPOI\"\307\002\n\006GeoPOI\022\f\n\004name\030\001 \002(\t\022\r\n\005level\030\002 \002(\t\022\t\n\001x\030\003 \002(\t\022\t\n\001y\030\004 \002(\t\022\017\n\007address\030\005 \001(\t\022\020\n\bprovince\030\006 \001(\t\022\f\n\004city\030\007 \001(\t\022\r\n\005ename\030\b \001(\t\022\020\n\bdistri", "ct\030\t \001(\t\022\r\n\005range\030\n \001(\t\022\013\n\003num\030\013 \001(\t\022\f\n\004inum\030\f \001(\t\022\f\n\004prox\030\r \001(\t\022\r\n\005score\030\016 \001(\t\022\021\n\teprovince\030\017 \001(\t\022\r\n\005ecity\030\020 \001(\t\022\021\n\tedistrict\030\021 \001(\t\022\020\n\beaddress\030\022 \001(\t\022\017\n\007roadpts\030\023 \001(\t\022\031\n\007subpois\030\024 \001(\0132\b.SubPOIS\"\"\n\007SubPOIS\022\027\n\006subpoi\030\001 \003(\0132\007.SubPOI\";\n\006SubPOI\022\f\n\004name\030\001 \001(\t\022\r\n\005ename\030\002 \001(\t\022\t\n\001x\030\003 \001(\t\022\t\n\001y\030\004 \001(\tB/\n\032com.mapabc.mapapi.geocoderB\021GeocodingProtoBuf"
        }, new com.google.protobuf.Descriptors.FileDescriptor[] {
            filedescriptor
        }, c1);
    }



/*
    static com.google.protobuf.Descriptors.Descriptor access$002(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_GeocodingRequest_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$102(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_GeocodingRequest_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$1202(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_GeocodingResponse_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$1302(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_GeocodingResponse_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$2302(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_Geocoding_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$2402(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_Geocoding_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$3202(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_GeoPOI_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$3302(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_GeoPOI_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$6002(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_SubPOIS_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$6102(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_SubPOIS_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/



/*
    static com.google.protobuf.Descriptors.Descriptor access$6902(com.google.protobuf.Descriptors.Descriptor descriptor1)
    {
        internal_static_SubPOI_descriptor = descriptor1;
        return descriptor1;
    }

*/



/*
    static com.google.protobuf.GeneratedMessage.FieldAccessorTable access$7002(com.google.protobuf.GeneratedMessage.FieldAccessorTable fieldaccessortable)
    {
        internal_static_SubPOI_fieldAccessorTable = fieldaccessortable;
        return fieldaccessortable;
    }

*/


/*
    static com.google.protobuf.Descriptors.FileDescriptor access$8102(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
    {
        descriptor = filedescriptor;
        return filedescriptor;
    }

*/

    // Unreferenced inner class com/mapabc/mapapi/geocoder/c
    static final class c
        implements com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
    {

        public ExtensionRegistry assignDescriptors(com.google.protobuf.Descriptors.FileDescriptor filedescriptor)
        {
            GeocodingProtoBuf.descriptor = filedescriptor;
            GeocodingProtoBuf.internal_static_GeocodingRequest_descriptor = (com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(0);
            GeocodingProtoBuf.internal_static_GeocodingRequest_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.internal_static_GeocodingRequest_descriptor, new String[] {
                "Common", "Address", "PoiNumber", "Ver"
            }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder);
            GeocodingProtoBuf.internal_static_GeocodingResponse_descriptor = (com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(1);
            GeocodingProtoBuf.internal_static_GeocodingResponse_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.internal_static_GeocodingResponse_descriptor, new String[] {
                "Count", "Geocoding", "Spellcorrect"
            }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder);
            GeocodingProtoBuf.internal_static_Geocoding_descriptor = (com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(2);
            GeocodingProtoBuf.internal_static_Geocoding_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.internal_static_Geocoding_descriptor, new String[] {
                "Poi"
            }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder);
            GeocodingProtoBuf.internal_static_GeoPOI_descriptor = (com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(3);
            GeocodingProtoBuf.internal_static_GeoPOI_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.internal_static_GeoPOI_descriptor, new String[] {
                "Name", "Level", "X", "Y", "Address", "Province", "City", "Ename", "District", "Range", 
                "Num", "Inum", "Prox", "Score", "Eprovince", "Ecity", "Edistrict", "Eaddress", "Roadpts", "Subpois"
            }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder);
            GeocodingProtoBuf.internal_static_SubPOIS_descriptor = (com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(4);
            GeocodingProtoBuf.internal_static_SubPOIS_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.internal_static_SubPOIS_descriptor, new String[] {
                "Subpoi"
            }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder);
            GeocodingProtoBuf.internal_static_SubPOI_descriptor = (com.google.protobuf.Descriptors.Descriptor)GeocodingProtoBuf.getDescriptor().getMessageTypes().get(5);
            GeocodingProtoBuf.internal_static_SubPOI_fieldAccessorTable = new com.google.protobuf.GeneratedMessage.FieldAccessorTable(GeocodingProtoBuf.internal_static_SubPOI_descriptor, new String[] {
                "Name", "Ename", "X", "Y"
            }, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI, com/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder);
            return null;
        }

            c()
            {
            }
    }

}
