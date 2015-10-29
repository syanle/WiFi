// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage, DescriptorProtos, InvalidProtocolBufferException, MessageLite, 
//            CodedOutputStream, UnknownFieldSet, a, ExtensionRegistryLite, 
//            ByteString, CodedInputStream, Message, UninitializedMessageException, 
//            RepeatedFieldBuilder, MessageOrBuilder

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends GeneratedMessage.Builder
        implements DescriptorProtos.SourceCodeInfoOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder locationBuilder_;
        private List location_;

        private DescriptorProtos.SourceCodeInfo buildParsed()
            throws InvalidProtocolBufferException
        {
            DescriptorProtos.SourceCodeInfo sourcecodeinfo = buildPartial();
            if (!sourcecodeinfo.isInitialized())
            {
                throw newUninitializedMessageException(sourcecodeinfo).asInvalidProtocolBufferException();
            } else
            {
                return sourcecodeinfo;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureLocationIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                location_ = new ArrayList(location_);
                bitField0_ = bitField0_ | 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor()
        {
            return DescriptorProtos.access$19100();
        }

        private RepeatedFieldBuilder getLocationFieldBuilder()
        {
            boolean flag = true;
            if (locationBuilder_ == null)
            {
                List list = location_;
                if ((bitField0_ & 1) != 1)
                {
                    flag = false;
                }
                locationBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
                location_ = null;
            }
            return locationBuilder_;
        }

        private void maybeForceBuilderInitialization()
        {
            if (GeneratedMessage.alwaysUseFieldBuilders)
            {
                getLocationFieldBuilder();
            }
        }

        public Builder addAllLocation(Iterable iterable)
        {
            if (locationBuilder_ == null)
            {
                ensureLocationIsMutable();
                GeneratedMessage.Builder.addAll(iterable, location_);
                onChanged();
                return this;
            } else
            {
                locationBuilder_.addAllMessages(iterable);
                return this;
            }
        }

        public Builder addLocation(int i, Location.Builder builder)
        {
            if (locationBuilder_ == null)
            {
                ensureLocationIsMutable();
                location_.add(i, builder.build());
                onChanged();
                return this;
            } else
            {
                locationBuilder_.addMessage(i, builder.build());
                return this;
            }
        }

        public Builder addLocation(int i, Location location)
        {
            if (locationBuilder_ == null)
            {
                if (location == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureLocationIsMutable();
                    location_.add(i, location);
                    onChanged();
                    return this;
                }
            } else
            {
                locationBuilder_.addMessage(i, location);
                return this;
            }
        }

        public Builder addLocation(Location.Builder builder)
        {
            if (locationBuilder_ == null)
            {
                ensureLocationIsMutable();
                location_.add(builder.build());
                onChanged();
                return this;
            } else
            {
                locationBuilder_.addMessage(builder.build());
                return this;
            }
        }

        public Builder addLocation(Location location)
        {
            if (locationBuilder_ == null)
            {
                if (location == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureLocationIsMutable();
                    location_.add(location);
                    onChanged();
                    return this;
                }
            } else
            {
                locationBuilder_.addMessage(location);
                return this;
            }
        }

        public Location.Builder addLocationBuilder()
        {
            return (Location.Builder)getLocationFieldBuilder().addBuilder(Location.getDefaultInstance());
        }

        public Location.Builder addLocationBuilder(int i)
        {
            return (Location.Builder)getLocationFieldBuilder().addBuilder(i, Location.getDefaultInstance());
        }

        public DescriptorProtos.SourceCodeInfo build()
        {
            DescriptorProtos.SourceCodeInfo sourcecodeinfo = buildPartial();
            if (!sourcecodeinfo.isInitialized())
            {
                throw newUninitializedMessageException(sourcecodeinfo);
            } else
            {
                return sourcecodeinfo;
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

        public DescriptorProtos.SourceCodeInfo buildPartial()
        {
            DescriptorProtos.SourceCodeInfo sourcecodeinfo = new DescriptorProtos.SourceCodeInfo(this, null);
            int i = bitField0_;
            if (locationBuilder_ == null)
            {
                if ((bitField0_ & 1) == 1)
                {
                    location_ = Collections.unmodifiableList(location_);
                    bitField0_ = bitField0_ & -2;
                }
                sourcecodeinfo.location_ = location_;
            } else
            {
                sourcecodeinfo.location_ = locationBuilder_.build();
            }
            onBuilt();
            return sourcecodeinfo;
        }

        public volatile Message buildPartial()
        {
            return buildPartial();
        }

        public volatile MessageLite buildPartial()
        {
            return buildPartial();
        }

        public volatile AbstractMessage.Builder clear()
        {
            return clear();
        }

        public Builder clear()
        {
            super.clear();
            if (locationBuilder_ == null)
            {
                location_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                return this;
            } else
            {
                locationBuilder_.clear();
                return this;
            }
        }

        public volatile GeneratedMessage.Builder clear()
        {
            return clear();
        }

        public volatile Message.Builder clear()
        {
            return clear();
        }

        public volatile MessageLite.Builder clear()
        {
            return clear();
        }

        public Builder clearLocation()
        {
            if (locationBuilder_ == null)
            {
                location_ = Collections.emptyList();
                bitField0_ = bitField0_ & -2;
                onChanged();
                return this;
            } else
            {
                locationBuilder_.clear();
                return this;
            }
        }

        public volatile AbstractMessage.Builder clone()
        {
            return clone();
        }

        public volatile AbstractMessageLite.Builder clone()
        {
            return clone();
        }

        public Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile GeneratedMessage.Builder clone()
        {
            return clone();
        }

        public volatile Message.Builder clone()
        {
            return clone();
        }

        public volatile MessageLite.Builder clone()
        {
            return clone();
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public DescriptorProtos.SourceCodeInfo getDefaultInstanceForType()
        {
            return DescriptorProtos.SourceCodeInfo.getDefaultInstance();
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public Descriptors.Descriptor getDescriptorForType()
        {
            return DescriptorProtos.SourceCodeInfo.getDescriptor();
        }

        public Location getLocation(int i)
        {
            if (locationBuilder_ == null)
            {
                return (Location)location_.get(i);
            } else
            {
                return (Location)locationBuilder_.getMessage(i);
            }
        }

        public Location.Builder getLocationBuilder(int i)
        {
            return (Location.Builder)getLocationFieldBuilder().getBuilder(i);
        }

        public List getLocationBuilderList()
        {
            return getLocationFieldBuilder().getBuilderList();
        }

        public int getLocationCount()
        {
            if (locationBuilder_ == null)
            {
                return location_.size();
            } else
            {
                return locationBuilder_.getCount();
            }
        }

        public List getLocationList()
        {
            if (locationBuilder_ == null)
            {
                return Collections.unmodifiableList(location_);
            } else
            {
                return locationBuilder_.getMessageList();
            }
        }

        public LocationOrBuilder getLocationOrBuilder(int i)
        {
            if (locationBuilder_ == null)
            {
                return (LocationOrBuilder)location_.get(i);
            } else
            {
                return (LocationOrBuilder)locationBuilder_.getMessageOrBuilder(i);
            }
        }

        public List getLocationOrBuilderList()
        {
            if (locationBuilder_ != null)
            {
                return locationBuilder_.getMessageOrBuilderList();
            } else
            {
                return Collections.unmodifiableList(location_);
            }
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return DescriptorProtos.access$19200();
        }

        public final boolean isInitialized()
        {
            return true;
        }

        public volatile AbstractMessage.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile AbstractMessage.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public volatile AbstractMessageLite.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            UnknownFieldSet.Builder builder = UnknownFieldSet.newBuilder(getUnknownFields());
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
                    Location.Builder builder1 = Location.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addLocation(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(DescriptorProtos.SourceCodeInfo sourcecodeinfo)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (sourcecodeinfo == DescriptorProtos.SourceCodeInfo.getDefaultInstance())
            {
                return this;
            }
            if (locationBuilder_ != null) goto _L2; else goto _L1
_L1:
            if (!sourcecodeinfo.location_.isEmpty())
            {
                if (location_.isEmpty())
                {
                    location_ = sourcecodeinfo.location_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureLocationIsMutable();
                    location_.addAll(sourcecodeinfo.location_);
                }
                onChanged();
            }
_L4:
            mergeUnknownFields(sourcecodeinfo.getUnknownFields());
            return this;
_L2:
            if (!sourcecodeinfo.location_.isEmpty())
            {
                if (locationBuilder_.isEmpty())
                {
                    locationBuilder_.dispose();
                    locationBuilder_ = null;
                    location_ = sourcecodeinfo.location_;
                    bitField0_ = bitField0_ & -2;
                    if (GeneratedMessage.alwaysUseFieldBuilders)
                    {
                        repeatedfieldbuilder = getLocationFieldBuilder();
                    }
                    locationBuilder_ = repeatedfieldbuilder;
                } else
                {
                    locationBuilder_.addAllMessages(sourcecodeinfo.location_);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof DescriptorProtos.SourceCodeInfo)
            {
                return mergeFrom((DescriptorProtos.SourceCodeInfo)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public volatile Message.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile Message.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public volatile MessageLite.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public Builder removeLocation(int i)
        {
            if (locationBuilder_ == null)
            {
                ensureLocationIsMutable();
                location_.remove(i);
                onChanged();
                return this;
            } else
            {
                locationBuilder_.remove(i);
                return this;
            }
        }

        public Builder setLocation(int i, Location.Builder builder)
        {
            if (locationBuilder_ == null)
            {
                ensureLocationIsMutable();
                location_.set(i, builder.build());
                onChanged();
                return this;
            } else
            {
                locationBuilder_.setMessage(i, builder.build());
                return this;
            }
        }

        public Builder setLocation(int i, Location location)
        {
            if (locationBuilder_ == null)
            {
                if (location == null)
                {
                    throw new NullPointerException();
                } else
                {
                    ensureLocationIsMutable();
                    location_.set(i, location);
                    onChanged();
                    return this;
                }
            } else
            {
                locationBuilder_.setMessage(i, location);
                return this;
            }
        }



        private Builder()
        {
            location_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            location_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(GeneratedMessage.BuilderParent builderparent, a a)
        {
            this(builderparent);
        }
    }

    public static final class Location extends GeneratedMessage
        implements LocationOrBuilder
    {

        public static final int PATH_FIELD_NUMBER = 1;
        public static final int SPAN_FIELD_NUMBER = 2;
        private static final Location defaultInstance;
        private static final long serialVersionUID = 0L;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int pathMemoizedSerializedSize;
        private List path_;
        private int spanMemoizedSerializedSize;
        private List span_;

        public static Location getDefaultInstance()
        {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor()
        {
            return DescriptorProtos.access$19300();
        }

        private void initFields()
        {
            path_ = Collections.emptyList();
            span_ = Collections.emptyList();
        }

        public static Builder newBuilder()
        {
            return Builder.create();
        }

        public static Builder newBuilder(Location location)
        {
            return newBuilder().mergeFrom(location);
        }

        public static Location parseDelimitedFrom(InputStream inputstream)
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

        public static Location parseDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
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

        public static Location parseFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring)).buildParsed();
        }

        public static Location parseFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(bytestring, extensionregistrylite)).buildParsed();
        }

        public static Location parseFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(codedinputstream)).buildParsed();
        }

        public static Location parseFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return newBuilder().mergeFrom(codedinputstream, extensionregistrylite).buildParsed();
        }

        public static Location parseFrom(InputStream inputstream)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream)).buildParsed();
        }

        public static Location parseFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return ((Builder)newBuilder().mergeFrom(inputstream, extensionregistrylite)).buildParsed();
        }

        public static Location parseFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0)).buildParsed();
        }

        public static Location parseFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return ((Builder)newBuilder().mergeFrom(abyte0, extensionregistrylite)).buildParsed();
        }

        public Location getDefaultInstanceForType()
        {
            return defaultInstance;
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public int getPath(int i)
        {
            return ((Integer)path_.get(i)).intValue();
        }

        public int getPathCount()
        {
            return path_.size();
        }

        public List getPathList()
        {
            return path_;
        }

        public int getSerializedSize()
        {
            int k = 0;
            int i = memoizedSerializedSize;
            if (i != -1)
            {
                return i;
            }
            i = 0;
            int j = 0;
            for (; i < path_.size(); i++)
            {
                j += CodedOutputStream.computeInt32SizeNoTag(((Integer)path_.get(i)).intValue());
            }

            i = 0 + j;
            if (!getPathList().isEmpty())
            {
                i = i + 1 + CodedOutputStream.computeInt32SizeNoTag(j);
            }
            pathMemoizedSerializedSize = j;
            int l;
            for (j = 0; k < span_.size(); j = l + j)
            {
                l = CodedOutputStream.computeInt32SizeNoTag(((Integer)span_.get(k)).intValue());
                k++;
            }

            k = i + j;
            i = k;
            if (!getSpanList().isEmpty())
            {
                i = k + 1 + CodedOutputStream.computeInt32SizeNoTag(j);
            }
            spanMemoizedSerializedSize = j;
            i += getUnknownFields().getSerializedSize();
            memoizedSerializedSize = i;
            return i;
        }

        public int getSpan(int i)
        {
            return ((Integer)span_.get(i)).intValue();
        }

        public int getSpanCount()
        {
            return span_.size();
        }

        public List getSpanList()
        {
            return span_;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return DescriptorProtos.access$19400();
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

        public Builder newBuilderForType()
        {
            return newBuilder();
        }

        protected Builder newBuilderForType(GeneratedMessage.BuilderParent builderparent)
        {
            return new Builder(builderparent, null);
        }

        public volatile Message.Builder newBuilderForType()
        {
            return newBuilderForType();
        }

        protected volatile Message.Builder newBuilderForType(GeneratedMessage.BuilderParent builderparent)
        {
            return newBuilderForType(builderparent);
        }

        public volatile MessageLite.Builder newBuilderForType()
        {
            return newBuilderForType();
        }

        public Builder toBuilder()
        {
            return newBuilder(this);
        }

        public volatile Message.Builder toBuilder()
        {
            return toBuilder();
        }

        public volatile MessageLite.Builder toBuilder()
        {
            return toBuilder();
        }

        protected Object writeReplace()
            throws ObjectStreamException
        {
            return super.writeReplace();
        }

        public void writeTo(CodedOutputStream codedoutputstream)
            throws IOException
        {
            boolean flag = false;
            getSerializedSize();
            if (getPathList().size() > 0)
            {
                codedoutputstream.writeRawVarint32(10);
                codedoutputstream.writeRawVarint32(pathMemoizedSerializedSize);
            }
            for (int i = 0; i < path_.size(); i++)
            {
                codedoutputstream.writeInt32NoTag(((Integer)path_.get(i)).intValue());
            }

            int j = ((flag) ? 1 : 0);
            if (getSpanList().size() > 0)
            {
                codedoutputstream.writeRawVarint32(18);
                codedoutputstream.writeRawVarint32(spanMemoizedSerializedSize);
                j = ((flag) ? 1 : 0);
            }
            for (; j < span_.size(); j++)
            {
                codedoutputstream.writeInt32NoTag(((Integer)span_.get(j)).intValue());
            }

            getUnknownFields().writeTo(codedoutputstream);
        }

        static 
        {
            defaultInstance = new Location(true);
            defaultInstance.initFields();
        }



/*
        static List access$19902(Location location, List list)
        {
            location.path_ = list;
            return list;
        }

*/



/*
        static List access$20002(Location location, List list)
        {
            location.span_ = list;
            return list;
        }

*/

        private Location(Builder builder)
        {
            super(builder);
            pathMemoizedSerializedSize = -1;
            spanMemoizedSerializedSize = -1;
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }

        Location(Builder builder, a a)
        {
            this(builder);
        }

        private Location(boolean flag)
        {
            pathMemoizedSerializedSize = -1;
            spanMemoizedSerializedSize = -1;
            memoizedIsInitialized = -1;
            memoizedSerializedSize = -1;
        }
    }

    public static final class Location.Builder extends GeneratedMessage.Builder
        implements LocationOrBuilder
    {

        private int bitField0_;
        private List path_;
        private List span_;

        private Location buildParsed()
            throws InvalidProtocolBufferException
        {
            Location location = buildPartial();
            if (!location.isInitialized())
            {
                throw newUninitializedMessageException(location).asInvalidProtocolBufferException();
            } else
            {
                return location;
            }
        }

        private static Location.Builder create()
        {
            return new Location.Builder();
        }

        private void ensurePathIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                path_ = new ArrayList(path_);
                bitField0_ = bitField0_ | 1;
            }
        }

        private void ensureSpanIsMutable()
        {
            if ((bitField0_ & 2) != 2)
            {
                span_ = new ArrayList(span_);
                bitField0_ = bitField0_ | 2;
            }
        }

        public static final Descriptors.Descriptor getDescriptor()
        {
            return DescriptorProtos.access$19300();
        }

        private void maybeForceBuilderInitialization()
        {
            if (!GeneratedMessage.alwaysUseFieldBuilders);
        }

        public Location.Builder addAllPath(Iterable iterable)
        {
            ensurePathIsMutable();
            GeneratedMessage.Builder.addAll(iterable, path_);
            onChanged();
            return this;
        }

        public Location.Builder addAllSpan(Iterable iterable)
        {
            ensureSpanIsMutable();
            GeneratedMessage.Builder.addAll(iterable, span_);
            onChanged();
            return this;
        }

        public Location.Builder addPath(int i)
        {
            ensurePathIsMutable();
            path_.add(Integer.valueOf(i));
            onChanged();
            return this;
        }

        public Location.Builder addSpan(int i)
        {
            ensureSpanIsMutable();
            span_.add(Integer.valueOf(i));
            onChanged();
            return this;
        }

        public Location build()
        {
            Location location = buildPartial();
            if (!location.isInitialized())
            {
                throw newUninitializedMessageException(location);
            } else
            {
                return location;
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

        public Location buildPartial()
        {
            Location location = new Location(this, null);
            int i = bitField0_;
            if ((bitField0_ & 1) == 1)
            {
                path_ = Collections.unmodifiableList(path_);
                bitField0_ = bitField0_ & -2;
            }
            location.path_ = path_;
            if ((bitField0_ & 2) == 2)
            {
                span_ = Collections.unmodifiableList(span_);
                bitField0_ = bitField0_ & -3;
            }
            location.span_ = span_;
            onBuilt();
            return location;
        }

        public volatile Message buildPartial()
        {
            return buildPartial();
        }

        public volatile MessageLite buildPartial()
        {
            return buildPartial();
        }

        public volatile AbstractMessage.Builder clear()
        {
            return clear();
        }

        public Location.Builder clear()
        {
            super.clear();
            path_ = Collections.emptyList();
            bitField0_ = bitField0_ & -2;
            span_ = Collections.emptyList();
            bitField0_ = bitField0_ & -3;
            return this;
        }

        public volatile GeneratedMessage.Builder clear()
        {
            return clear();
        }

        public volatile Message.Builder clear()
        {
            return clear();
        }

        public volatile MessageLite.Builder clear()
        {
            return clear();
        }

        public Location.Builder clearPath()
        {
            path_ = Collections.emptyList();
            bitField0_ = bitField0_ & -2;
            onChanged();
            return this;
        }

        public Location.Builder clearSpan()
        {
            span_ = Collections.emptyList();
            bitField0_ = bitField0_ & -3;
            onChanged();
            return this;
        }

        public volatile AbstractMessage.Builder clone()
        {
            return clone();
        }

        public volatile AbstractMessageLite.Builder clone()
        {
            return clone();
        }

        public Location.Builder clone()
        {
            return create().mergeFrom(buildPartial());
        }

        public volatile GeneratedMessage.Builder clone()
        {
            return clone();
        }

        public volatile Message.Builder clone()
        {
            return clone();
        }

        public volatile MessageLite.Builder clone()
        {
            return clone();
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public Location getDefaultInstanceForType()
        {
            return Location.getDefaultInstance();
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public Descriptors.Descriptor getDescriptorForType()
        {
            return Location.getDescriptor();
        }

        public int getPath(int i)
        {
            return ((Integer)path_.get(i)).intValue();
        }

        public int getPathCount()
        {
            return path_.size();
        }

        public List getPathList()
        {
            return Collections.unmodifiableList(path_);
        }

        public int getSpan(int i)
        {
            return ((Integer)span_.get(i)).intValue();
        }

        public int getSpanCount()
        {
            return span_.size();
        }

        public List getSpanList()
        {
            return Collections.unmodifiableList(span_);
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return DescriptorProtos.access$19400();
        }

        public final boolean isInitialized()
        {
            return true;
        }

        public volatile AbstractMessage.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile AbstractMessage.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public volatile AbstractMessageLite.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public Location.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            UnknownFieldSet.Builder builder = UnknownFieldSet.newBuilder(getUnknownFields());
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
                    ensurePathIsMutable();
                    path_.add(Integer.valueOf(codedinputstream.readInt32()));
                    break;

                case 10: // '\n'
                    int j = codedinputstream.pushLimit(codedinputstream.readRawVarint32());
                    for (; codedinputstream.getBytesUntilLimit() > 0; addPath(codedinputstream.readInt32())) { }
                    codedinputstream.popLimit(j);
                    break;

                case 16: // '\020'
                    ensureSpanIsMutable();
                    span_.add(Integer.valueOf(codedinputstream.readInt32()));
                    break;

                case 18: // '\022'
                    int k = codedinputstream.pushLimit(codedinputstream.readRawVarint32());
                    for (; codedinputstream.getBytesUntilLimit() > 0; addSpan(codedinputstream.readInt32())) { }
                    codedinputstream.popLimit(k);
                    break;
                }
            } while (true);
        }

        public Location.Builder mergeFrom(Location location)
        {
            if (location == Location.getDefaultInstance())
            {
                return this;
            }
            if (!location.path_.isEmpty())
            {
                if (path_.isEmpty())
                {
                    path_ = location.path_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensurePathIsMutable();
                    path_.addAll(location.path_);
                }
                onChanged();
            }
            if (!location.span_.isEmpty())
            {
                if (span_.isEmpty())
                {
                    span_ = location.span_;
                    bitField0_ = bitField0_ & -3;
                } else
                {
                    ensureSpanIsMutable();
                    span_.addAll(location.span_);
                }
                onChanged();
            }
            mergeUnknownFields(location.getUnknownFields());
            return this;
        }

        public Location.Builder mergeFrom(Message message)
        {
            if (message instanceof Location)
            {
                return mergeFrom((Location)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public volatile Message.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile Message.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public volatile MessageLite.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public Location.Builder setPath(int i, int j)
        {
            ensurePathIsMutable();
            path_.set(i, Integer.valueOf(j));
            onChanged();
            return this;
        }

        public Location.Builder setSpan(int i, int j)
        {
            ensureSpanIsMutable();
            span_.set(i, Integer.valueOf(j));
            onChanged();
            return this;
        }



        private Location.Builder()
        {
            path_ = Collections.emptyList();
            span_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Location.Builder(GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            path_ = Collections.emptyList();
            span_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Location.Builder(GeneratedMessage.BuilderParent builderparent, a a)
        {
            this(builderparent);
        }
    }

    public static interface LocationOrBuilder
        extends MessageOrBuilder
    {

        public abstract int getPath(int i);

        public abstract int getPathCount();

        public abstract List getPathList();

        public abstract int getSpan(int i);

        public abstract int getSpanCount();

        public abstract List getSpanList();
    }


    public static final int LOCATION_FIELD_NUMBER = 1;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private List location_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;

    public static LocationOrBuilder getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final defaultInstance getDescriptor()
    {
        return DescriptorProtos.access$19100();
    }

    private void initFields()
    {
        location_ = Collections.emptyList();
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

    public Builder.buildParsed getDefaultInstanceForType()
    {
        return defaultInstance;
    }

    public volatile Message getDefaultInstanceForType()
    {
        return getDefaultInstanceForType();
    }

    public volatile MessageLite getDefaultInstanceForType()
    {
        return getDefaultInstanceForType();
    }

    public Location getLocation(int i)
    {
        return (Location)location_.get(i);
    }

    public int getLocationCount()
    {
        return location_.size();
    }

    public List getLocationList()
    {
        return location_;
    }

    public LocationOrBuilder getLocationOrBuilder(int i)
    {
        return (LocationOrBuilder)location_.get(i);
    }

    public List getLocationOrBuilderList()
    {
        return location_;
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
        for (; i < location_.size(); i++)
        {
            j += CodedOutputStream.computeMessageSize(1, (MessageLite)location_.get(i));
        }

        i = getUnknownFields().getSerializedSize() + j;
        memoizedSerializedSize = i;
        return i;
    }

    protected ble internalGetFieldAccessorTable()
    {
        return DescriptorProtos.access$19200();
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

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(newBuilder newbuilder)
    {
        return new Builder(newbuilder, null);
    }

    public volatile Builder newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile newBuilderForType newBuilderForType(newBuilderForType newbuilderfortype)
    {
        return newBuilderForType(newbuilderfortype);
    }

    public volatile newBuilderForType newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder toBuilder()
    {
        return newBuilder(this);
    }

    public volatile newBuilder toBuilder()
    {
        return toBuilder();
    }

    public volatile toBuilder toBuilder()
    {
        return toBuilder();
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
        for (int i = 0; i < location_.size(); i++)
        {
            codedoutputstream.writeMessage(1, (MessageLite)location_.get(i));
        }

        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }



/*
    static List access$20502(Builder builder, List list)
    {
        builder.location_ = list;
        return list;
    }

*/

    private Builder(Builder builder)
    {
        super(builder);
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    Builder(Builder builder, a a)
    {
        this(builder);
    }

    private Builder(boolean flag)
    {
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }
}
