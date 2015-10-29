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
//            GeneratedMessage, DescriptorProtos, InvalidProtocolBufferException, CodedOutputStream, 
//            UnknownFieldSet, a, ExtensionRegistryLite, ByteString, 
//            CodedInputStream, Message, MessageLite, UninitializedMessageException

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends GeneratedMessage.Builder
        implements DescriptorProtos.SourceCodeInfo.LocationOrBuilder
    {

        private int bitField0_;
        private List path_;
        private List span_;

        private DescriptorProtos.SourceCodeInfo.Location buildParsed()
            throws InvalidProtocolBufferException
        {
            DescriptorProtos.SourceCodeInfo.Location location = buildPartial();
            if (!location.isInitialized())
            {
                throw newUninitializedMessageException(location).asInvalidProtocolBufferException();
            } else
            {
                return location;
            }
        }

        private static Builder create()
        {
            return new Builder();
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

        public Builder addAllPath(Iterable iterable)
        {
            ensurePathIsMutable();
            GeneratedMessage.Builder.addAll(iterable, path_);
            onChanged();
            return this;
        }

        public Builder addAllSpan(Iterable iterable)
        {
            ensureSpanIsMutable();
            GeneratedMessage.Builder.addAll(iterable, span_);
            onChanged();
            return this;
        }

        public Builder addPath(int i)
        {
            ensurePathIsMutable();
            path_.add(Integer.valueOf(i));
            onChanged();
            return this;
        }

        public Builder addSpan(int i)
        {
            ensureSpanIsMutable();
            span_.add(Integer.valueOf(i));
            onChanged();
            return this;
        }

        public DescriptorProtos.SourceCodeInfo.Location build()
        {
            DescriptorProtos.SourceCodeInfo.Location location = buildPartial();
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

        public DescriptorProtos.SourceCodeInfo.Location buildPartial()
        {
            DescriptorProtos.SourceCodeInfo.Location location = new DescriptorProtos.SourceCodeInfo.Location(this, null);
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

        public Builder clear()
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

        public Builder clearPath()
        {
            path_ = Collections.emptyList();
            bitField0_ = bitField0_ & -2;
            onChanged();
            return this;
        }

        public Builder clearSpan()
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

        public DescriptorProtos.SourceCodeInfo.Location getDefaultInstanceForType()
        {
            return DescriptorProtos.SourceCodeInfo.Location.getDefaultInstance();
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
            return DescriptorProtos.SourceCodeInfo.Location.getDescriptor();
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

        public Builder mergeFrom(DescriptorProtos.SourceCodeInfo.Location location)
        {
            if (location == DescriptorProtos.SourceCodeInfo.Location.getDefaultInstance())
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

        public Builder mergeFrom(Message message)
        {
            if (message instanceof DescriptorProtos.SourceCodeInfo.Location)
            {
                return mergeFrom((DescriptorProtos.SourceCodeInfo.Location)message);
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

        public Builder setPath(int i, int j)
        {
            ensurePathIsMutable();
            path_.set(i, Integer.valueOf(j));
            onChanged();
            return this;
        }

        public Builder setSpan(int i, int j)
        {
            ensureSpanIsMutable();
            span_.set(i, Integer.valueOf(j));
            onChanged();
            return this;
        }



        private Builder()
        {
            path_ = Collections.emptyList();
            span_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            path_ = Collections.emptyList();
            span_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(GeneratedMessage.BuilderParent builderparent, a a)
        {
            this(builderparent);
        }
    }


    public static final int PATH_FIELD_NUMBER = 1;
    public static final int SPAN_FIELD_NUMBER = 2;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int pathMemoizedSerializedSize;
    private List path_;
    private int spanMemoizedSerializedSize;
    private List span_;

    public static Builder.onChanged getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final defaultInstance getDescriptor()
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

    protected span_ internalGetFieldAccessorTable()
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
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }



/*
    static List access$19902(Builder builder, List list)
    {
        builder.path_ = list;
        return list;
    }

*/



/*
    static List access$20002(path_ path_1, List list)
    {
        path_1.span_ = list;
        return list;
    }

*/

    private Builder(Builder builder)
    {
        super(builder);
        pathMemoizedSerializedSize = -1;
        spanMemoizedSerializedSize = -1;
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    Builder(Builder builder, a a)
    {
        this(builder);
    }

    private Builder(boolean flag)
    {
        pathMemoizedSerializedSize = -1;
        spanMemoizedSerializedSize = -1;
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }
}
