// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
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
//            ReverseGeocodingProtoBuf, z

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements ReverseGeocodingProtoBuf.SpatialOrBuilder
    {

        private int bitField0_;
        private SingleFieldBuilder cityBuilder_;
        private ReverseGeocodingProtoBuf.City city_;
        private SingleFieldBuilder crossesBuilder_;
        private ReverseGeocodingProtoBuf.Crosses crosses_;
        private SingleFieldBuilder districtBuilder_;
        private ReverseGeocodingProtoBuf.District district_;
        private SingleFieldBuilder poisBuilder_;
        private ReverseGeocodingProtoBuf.POIS pois_;
        private SingleFieldBuilder provinceBuilder_;
        private ReverseGeocodingProtoBuf.Province province_;
        private SingleFieldBuilder roadsBuilder_;
        private ReverseGeocodingProtoBuf.Roads roads_;

        private ReverseGeocodingProtoBuf.Spatial buildParsed()
            throws InvalidProtocolBufferException
        {
            ReverseGeocodingProtoBuf.Spatial spatial = buildPartial();
            if (!spatial.isInitialized())
            {
                throw newUninitializedMessageException(spatial).asInvalidProtocolBufferException();
            } else
            {
                return spatial;
            }
        }

        private static Builder create()
        {
            return new Builder();
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
            return ReverseGeocodingProtoBuf.access$1900();
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
            if (ReverseGeocodingProtoBuf.POIS.getDefaultInstance)
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

        public ReverseGeocodingProtoBuf.Spatial build()
        {
            ReverseGeocodingProtoBuf.Spatial spatial = buildPartial();
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

        public ReverseGeocodingProtoBuf.Spatial buildPartial()
        {
            ReverseGeocodingProtoBuf.Spatial spatial = new ReverseGeocodingProtoBuf.Spatial(this, null);
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
                spatial.province_ = (ReverseGeocodingProtoBuf.Province)provinceBuilder_.build();
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
                spatial.city_ = (ReverseGeocodingProtoBuf.City)cityBuilder_.build();
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
                spatial.district_ = (ReverseGeocodingProtoBuf.District)districtBuilder_.build();
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
                spatial.roads_ = (ReverseGeocodingProtoBuf.Roads)roadsBuilder_.build();
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
                spatial.pois_ = (ReverseGeocodingProtoBuf.POIS)poisBuilder_.build();
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
                spatial.crosses_ = (ReverseGeocodingProtoBuf.Crosses)crossesBuilder_.build();
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

        public Builder clear()
        {
            super.clear();
            if (provinceBuilder_ == null)
            {
                province_ = ReverseGeocodingProtoBuf.Province.getDefaultInstance();
            } else
            {
                provinceBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            if (cityBuilder_ == null)
            {
                city_ = ReverseGeocodingProtoBuf.City.getDefaultInstance();
            } else
            {
                cityBuilder_.clear();
            }
            bitField0_ = bitField0_ & -3;
            if (districtBuilder_ == null)
            {
                district_ = ReverseGeocodingProtoBuf.District.getDefaultInstance();
            } else
            {
                districtBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
            if (roadsBuilder_ == null)
            {
                roads_ = ReverseGeocodingProtoBuf.Roads.getDefaultInstance();
            } else
            {
                roadsBuilder_.clear();
            }
            bitField0_ = bitField0_ & -9;
            if (poisBuilder_ == null)
            {
                pois_ = ReverseGeocodingProtoBuf.POIS.getDefaultInstance();
            } else
            {
                poisBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffffef;
            if (crossesBuilder_ == null)
            {
                crosses_ = ReverseGeocodingProtoBuf.Crosses.getDefaultInstance();
            } else
            {
                crossesBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffffdf;
            return this;
        }

        public Builder clearCity()
        {
            if (cityBuilder_ == null)
            {
                city_ = ReverseGeocodingProtoBuf.City.getDefaultInstance();
                onChanged();
            } else
            {
                cityBuilder_.clear();
            }
            bitField0_ = bitField0_ & -3;
            return this;
        }

        public Builder clearCrosses()
        {
            if (crossesBuilder_ == null)
            {
                crosses_ = ReverseGeocodingProtoBuf.Crosses.getDefaultInstance();
                onChanged();
            } else
            {
                crossesBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffffdf;
            return this;
        }

        public Builder clearDistrict()
        {
            if (districtBuilder_ == null)
            {
                district_ = ReverseGeocodingProtoBuf.District.getDefaultInstance();
                onChanged();
            } else
            {
                districtBuilder_.clear();
            }
            bitField0_ = bitField0_ & -5;
            return this;
        }

        public Builder clearPois()
        {
            if (poisBuilder_ == null)
            {
                pois_ = ReverseGeocodingProtoBuf.POIS.getDefaultInstance();
                onChanged();
            } else
            {
                poisBuilder_.clear();
            }
            bitField0_ = bitField0_ & 0xffffffef;
            return this;
        }

        public Builder clearProvince()
        {
            if (provinceBuilder_ == null)
            {
                province_ = ReverseGeocodingProtoBuf.Province.getDefaultInstance();
                onChanged();
            } else
            {
                provinceBuilder_.clear();
            }
            bitField0_ = bitField0_ & -2;
            return this;
        }

        public Builder clearRoads()
        {
            if (roadsBuilder_ == null)
            {
                roads_ = ReverseGeocodingProtoBuf.Roads.getDefaultInstance();
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

        public Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public ReverseGeocodingProtoBuf.City getCity()
        {
            if (cityBuilder_ == null)
            {
                return city_;
            } else
            {
                return (ReverseGeocodingProtoBuf.City)cityBuilder_.getMessage();
            }
        }

        public ReverseGeocodingProtoBuf.City.Builder getCityBuilder()
        {
            bitField0_ = bitField0_ | 2;
            onChanged();
            return (ReverseGeocodingProtoBuf.City.Builder)getCityFieldBuilder().getBuilder();
        }

        public ReverseGeocodingProtoBuf.CityOrBuilder getCityOrBuilder()
        {
            if (cityBuilder_ != null)
            {
                return (ReverseGeocodingProtoBuf.CityOrBuilder)cityBuilder_.getMessageOrBuilder();
            } else
            {
                return city_;
            }
        }

        public ReverseGeocodingProtoBuf.Crosses getCrosses()
        {
            if (crossesBuilder_ == null)
            {
                return crosses_;
            } else
            {
                return (ReverseGeocodingProtoBuf.Crosses)crossesBuilder_.getMessage();
            }
        }

        public ReverseGeocodingProtoBuf.Crosses.Builder getCrossesBuilder()
        {
            bitField0_ = bitField0_ | 0x20;
            onChanged();
            return (ReverseGeocodingProtoBuf.Crosses.Builder)getCrossesFieldBuilder().getBuilder();
        }

        public ReverseGeocodingProtoBuf.CrossesOrBuilder getCrossesOrBuilder()
        {
            if (crossesBuilder_ != null)
            {
                return (ReverseGeocodingProtoBuf.CrossesOrBuilder)crossesBuilder_.getMessageOrBuilder();
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

        public ReverseGeocodingProtoBuf.Spatial getDefaultInstanceForType()
        {
            return ReverseGeocodingProtoBuf.Spatial.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return ReverseGeocodingProtoBuf.Spatial.getDescriptor();
        }

        public ReverseGeocodingProtoBuf.District getDistrict()
        {
            if (districtBuilder_ == null)
            {
                return district_;
            } else
            {
                return (ReverseGeocodingProtoBuf.District)districtBuilder_.getMessage();
            }
        }

        public ReverseGeocodingProtoBuf.District.Builder getDistrictBuilder()
        {
            bitField0_ = bitField0_ | 4;
            onChanged();
            return (ReverseGeocodingProtoBuf.District.Builder)getDistrictFieldBuilder().getBuilder();
        }

        public ReverseGeocodingProtoBuf.DistrictOrBuilder getDistrictOrBuilder()
        {
            if (districtBuilder_ != null)
            {
                return (ReverseGeocodingProtoBuf.DistrictOrBuilder)districtBuilder_.getMessageOrBuilder();
            } else
            {
                return district_;
            }
        }

        public ReverseGeocodingProtoBuf.POIS getPois()
        {
            if (poisBuilder_ == null)
            {
                return pois_;
            } else
            {
                return (ReverseGeocodingProtoBuf.POIS)poisBuilder_.getMessage();
            }
        }

        public ReverseGeocodingProtoBuf.POIS.Builder getPoisBuilder()
        {
            bitField0_ = bitField0_ | 0x10;
            onChanged();
            return (ReverseGeocodingProtoBuf.POIS.Builder)getPoisFieldBuilder().getBuilder();
        }

        public ReverseGeocodingProtoBuf.POISOrBuilder getPoisOrBuilder()
        {
            if (poisBuilder_ != null)
            {
                return (ReverseGeocodingProtoBuf.POISOrBuilder)poisBuilder_.getMessageOrBuilder();
            } else
            {
                return pois_;
            }
        }

        public ReverseGeocodingProtoBuf.Province getProvince()
        {
            if (provinceBuilder_ == null)
            {
                return province_;
            } else
            {
                return (ReverseGeocodingProtoBuf.Province)provinceBuilder_.getMessage();
            }
        }

        public ReverseGeocodingProtoBuf.Province.Builder getProvinceBuilder()
        {
            bitField0_ = bitField0_ | 1;
            onChanged();
            return (ReverseGeocodingProtoBuf.Province.Builder)getProvinceFieldBuilder().getBuilder();
        }

        public ReverseGeocodingProtoBuf.ProvinceOrBuilder getProvinceOrBuilder()
        {
            if (provinceBuilder_ != null)
            {
                return (ReverseGeocodingProtoBuf.ProvinceOrBuilder)provinceBuilder_.getMessageOrBuilder();
            } else
            {
                return province_;
            }
        }

        public ReverseGeocodingProtoBuf.Roads getRoads()
        {
            if (roadsBuilder_ == null)
            {
                return roads_;
            } else
            {
                return (ReverseGeocodingProtoBuf.Roads)roadsBuilder_.getMessage();
            }
        }

        public ReverseGeocodingProtoBuf.Roads.Builder getRoadsBuilder()
        {
            bitField0_ = bitField0_ | 8;
            onChanged();
            return (ReverseGeocodingProtoBuf.Roads.Builder)getRoadsFieldBuilder().getBuilder();
        }

        public ReverseGeocodingProtoBuf.RoadsOrBuilder getRoadsOrBuilder()
        {
            if (roadsBuilder_ != null)
            {
                return (ReverseGeocodingProtoBuf.RoadsOrBuilder)roadsBuilder_.getMessageOrBuilder();
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
            return ReverseGeocodingProtoBuf.access$2000();
        }

        public final boolean isInitialized()
        {
            while (!hasProvince() || !hasCity() || !hasDistrict() || hasRoads() && !getRoads().isInitialized() || hasPois() && !getPois().isInitialized() || hasCrosses() && !getCrosses().isInitialized()) 
            {
                return false;
            }
            return true;
        }

        public Builder mergeCity(ReverseGeocodingProtoBuf.City city)
        {
            if (cityBuilder_ == null)
            {
                if ((bitField0_ & 2) == 2 && city_ != ReverseGeocodingProtoBuf.City.getDefaultInstance())
                {
                    city_ = ReverseGeocodingProtoBuf.City.newBuilder(city_).mergeFrom(city).buildPartial();
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

        public Builder mergeCrosses(ReverseGeocodingProtoBuf.Crosses crosses)
        {
            if (crossesBuilder_ == null)
            {
                if ((bitField0_ & 0x20) == 32 && crosses_ != ReverseGeocodingProtoBuf.Crosses.getDefaultInstance())
                {
                    crosses_ = ReverseGeocodingProtoBuf.Crosses.newBuilder(crosses_).mergeFrom(crosses).buildPartial();
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

        public Builder mergeDistrict(ReverseGeocodingProtoBuf.District district)
        {
            if (districtBuilder_ == null)
            {
                if ((bitField0_ & 4) == 4 && district_ != ReverseGeocodingProtoBuf.District.getDefaultInstance())
                {
                    district_ = ReverseGeocodingProtoBuf.District.newBuilder(district_).mergeFrom(district).buildPartial();
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
                    ReverseGeocodingProtoBuf.Province.Builder builder1 = ReverseGeocodingProtoBuf.Province.newBuilder();
                    if (hasProvince())
                    {
                        builder1.mergeFrom(getProvince());
                    }
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    setProvince(builder1.buildPartial());
                    break;

                case 18: // '\022'
                    ReverseGeocodingProtoBuf.City.Builder builder2 = ReverseGeocodingProtoBuf.City.newBuilder();
                    if (hasCity())
                    {
                        builder2.mergeFrom(getCity());
                    }
                    codedinputstream.readMessage(builder2, extensionregistrylite);
                    setCity(builder2.buildPartial());
                    break;

                case 26: // '\032'
                    ReverseGeocodingProtoBuf.District.Builder builder3 = ReverseGeocodingProtoBuf.District.newBuilder();
                    if (hasDistrict())
                    {
                        builder3.mergeFrom(getDistrict());
                    }
                    codedinputstream.readMessage(builder3, extensionregistrylite);
                    setDistrict(builder3.buildPartial());
                    break;

                case 34: // '"'
                    ReverseGeocodingProtoBuf.Roads.Builder builder4 = ReverseGeocodingProtoBuf.Roads.newBuilder();
                    if (hasRoads())
                    {
                        builder4.mergeFrom(getRoads());
                    }
                    codedinputstream.readMessage(builder4, extensionregistrylite);
                    setRoads(builder4.buildPartial());
                    break;

                case 42: // '*'
                    ReverseGeocodingProtoBuf.POIS.Builder builder5 = ReverseGeocodingProtoBuf.POIS.newBuilder();
                    if (hasPois())
                    {
                        builder5.mergeFrom(getPois());
                    }
                    codedinputstream.readMessage(builder5, extensionregistrylite);
                    setPois(builder5.buildPartial());
                    break;

                case 50: // '2'
                    ReverseGeocodingProtoBuf.Crosses.Builder builder6 = ReverseGeocodingProtoBuf.Crosses.newBuilder();
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

        public Builder mergeFrom(Message message)
        {
            if (message instanceof ReverseGeocodingProtoBuf.Spatial)
            {
                return mergeFrom((ReverseGeocodingProtoBuf.Spatial)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(ReverseGeocodingProtoBuf.Spatial spatial)
        {
            if (spatial == ReverseGeocodingProtoBuf.Spatial.getDefaultInstance())
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

        public Builder mergePois(ReverseGeocodingProtoBuf.POIS pois)
        {
            if (poisBuilder_ == null)
            {
                if ((bitField0_ & 0x10) == 16 && pois_ != ReverseGeocodingProtoBuf.POIS.getDefaultInstance())
                {
                    pois_ = ReverseGeocodingProtoBuf.POIS.newBuilder(pois_).mergeFrom(pois).buildPartial();
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

        public Builder mergeProvince(ReverseGeocodingProtoBuf.Province province)
        {
            if (provinceBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1 && province_ != ReverseGeocodingProtoBuf.Province.getDefaultInstance())
                {
                    province_ = ReverseGeocodingProtoBuf.Province.newBuilder(province_).mergeFrom(province).buildPartial();
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

        public Builder mergeRoads(ReverseGeocodingProtoBuf.Roads roads)
        {
            if (roadsBuilder_ == null)
            {
                if ((bitField0_ & 8) == 8 && roads_ != ReverseGeocodingProtoBuf.Roads.getDefaultInstance())
                {
                    roads_ = ReverseGeocodingProtoBuf.Roads.newBuilder(roads_).mergeFrom(roads).buildPartial();
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

        public Builder setCity(ReverseGeocodingProtoBuf.City.Builder builder)
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

        public Builder setCity(ReverseGeocodingProtoBuf.City city)
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

        public Builder setCrosses(ReverseGeocodingProtoBuf.Crosses.Builder builder)
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

        public Builder setCrosses(ReverseGeocodingProtoBuf.Crosses crosses)
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

        public Builder setDistrict(ReverseGeocodingProtoBuf.District.Builder builder)
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

        public Builder setDistrict(ReverseGeocodingProtoBuf.District district)
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

        public Builder setPois(ReverseGeocodingProtoBuf.POIS.Builder builder)
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

        public Builder setPois(ReverseGeocodingProtoBuf.POIS pois)
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

        public Builder setProvince(ReverseGeocodingProtoBuf.Province.Builder builder)
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

        public Builder setProvince(ReverseGeocodingProtoBuf.Province province)
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

        public Builder setRoads(ReverseGeocodingProtoBuf.Roads.Builder builder)
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

        public Builder setRoads(ReverseGeocodingProtoBuf.Roads roads)
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



        private Builder()
        {
            province_ = ReverseGeocodingProtoBuf.Province.getDefaultInstance();
            city_ = ReverseGeocodingProtoBuf.City.getDefaultInstance();
            district_ = ReverseGeocodingProtoBuf.District.getDefaultInstance();
            roads_ = ReverseGeocodingProtoBuf.Roads.getDefaultInstance();
            pois_ = ReverseGeocodingProtoBuf.POIS.getDefaultInstance();
            crosses_ = ReverseGeocodingProtoBuf.Crosses.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            province_ = ReverseGeocodingProtoBuf.Province.getDefaultInstance();
            city_ = ReverseGeocodingProtoBuf.City.getDefaultInstance();
            district_ = ReverseGeocodingProtoBuf.District.getDefaultInstance();
            roads_ = ReverseGeocodingProtoBuf.Roads.getDefaultInstance();
            pois_ = ReverseGeocodingProtoBuf.POIS.getDefaultInstance();
            crosses_ = ReverseGeocodingProtoBuf.Crosses.getDefaultInstance();
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, z z)
        {
            this(builderparent);
        }
    }


    public static final int CITY_FIELD_NUMBER = 2;
    public static final int CROSSES_FIELD_NUMBER = 6;
    public static final int DISTRICT_FIELD_NUMBER = 3;
    public static final int POIS_FIELD_NUMBER = 5;
    public static final int PROVINCE_FIELD_NUMBER = 1;
    public static final int ROADS_FIELD_NUMBER = 4;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private initFields city_;
    private initFields crosses_;
    private  district_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private  pois_;
    private  province_;
    private  roads_;

    public static  getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.al.defaultInstance getDescriptor()
    {
        return ReverseGeocodingProtoBuf.access$1900();
    }

    private void initFields()
    {
        province_ = .getDefaultInstance();
        city_ = DefaultInstance();
        district_ = .getDefaultInstance();
        roads_ = tDefaultInstance();
        pois_ = DefaultInstance();
        crosses_ = getDefaultInstance();
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

    public Builder.buildParsed getCity()
    {
        return city_;
    }

    public ilder getCityOrBuilder()
    {
        return city_;
    }

    public city_ getCrosses()
    {
        return crosses_;
    }

    public rBuilder getCrossesOrBuilder()
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

    public getDefaultInstanceForType getDefaultInstanceForType()
    {
        return defaultInstance;
    }

    public  getDistrict()
    {
        return district_;
    }

    public OrBuilder getDistrictOrBuilder()
    {
        return district_;
    }

    public district_ getPois()
    {
        return pois_;
    }

    public ilder getPoisOrBuilder()
    {
        return pois_;
    }

    public  getProvince()
    {
        return province_;
    }

    public OrBuilder getProvinceOrBuilder()
    {
        return province_;
    }

    public province_ getRoads()
    {
        return roads_;
    }

    public uilder getRoadsOrBuilder()
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

    protected com.google.protobuf.le internalGetFieldAccessorTable()
    {
        return ReverseGeocodingProtoBuf.access$2000();
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
        if (hasRoads() && !getRoads().Initialized())
        {
            memoizedIsInitialized = 0;
            return false;
        }
        if (hasPois() && !getPois().nitialized())
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

    public volatile com.google.protobuf.al newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.al newBuilderForType(com.google.protobuf.al al)
    {
        return newBuilderForType(al);
    }

    public volatile com.google.protobuf.al newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.al al)
    {
        return new Builder(al, null);
    }

    public volatile com.google.protobuf.al toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.al toBuilder()
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
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }



/*
    static  access$2602( ,  1)
    {
        .province_ = 1;
        return 1;
    }

*/


/*
    static province_ access$2702(province_ province_1, province_ province_2)
    {
        province_1.city_ = province_2;
        return province_2;
    }

*/


/*
    static  access$2802( ,  1)
    {
        .district_ = 1;
        return 1;
    }

*/


/*
    static district_ access$2902(district_ district_1, district_ district_2)
    {
        district_1.roads_ = district_2;
        return district_2;
    }

*/


/*
    static roads_ access$3002(roads_ roads_1, roads_ roads_2)
    {
        roads_1.pois_ = roads_2;
        return roads_2;
    }

*/


/*
    static pois_ access$3102(pois_ pois_1, pois_ pois_2)
    {
        pois_1.crosses_ = pois_2;
        return pois_2;
    }

*/


/*
    static int access$3202(crosses_ crosses_1, int i)
    {
        crosses_1.bitField0_ = i;
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
