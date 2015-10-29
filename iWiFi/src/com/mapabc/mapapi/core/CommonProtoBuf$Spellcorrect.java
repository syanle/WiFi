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
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import com.google.protobuf.UnmodifiableLazyStringList;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            CommonProtoBuf, b

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements CommonProtoBuf.SpellcorrectOrBuilder
    {

        private int bitField0_;
        private LazyStringList data_;

        private CommonProtoBuf.Spellcorrect buildParsed()
            throws InvalidProtocolBufferException
        {
            CommonProtoBuf.Spellcorrect spellcorrect = buildPartial();
            if (!spellcorrect.isInitialized())
            {
                throw newUninitializedMessageException(spellcorrect).asInvalidProtocolBufferException();
            } else
            {
                return spellcorrect;
            }
        }

        private static Builder create()
        {
            return new Builder();
        }

        private void ensureDataIsMutable()
        {
            if ((bitField0_ & 1) != 1)
            {
                data_ = new LazyStringArrayList(data_);
                bitField0_ = bitField0_ | 1;
            }
        }

        public static final com.google.protobuf.Descriptors.Descriptor getDescriptor()
        {
            return CommonProtoBuf.access$4200();
        }

        private void maybeForceBuilderInitialization()
        {
            if (!isInitialized);
        }

        public Builder addAllData(Iterable iterable)
        {
            ensureDataIsMutable();
            com.google.protobuf.GeneratedMessage.Builder.addAll(iterable, data_);
            onChanged();
            return this;
        }

        public Builder addData(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureDataIsMutable();
                data_.add(s);
                onChanged();
                return this;
            }
        }

        void addData(ByteString bytestring)
        {
            ensureDataIsMutable();
            data_.add(bytestring);
            onChanged();
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public CommonProtoBuf.Spellcorrect build()
        {
            CommonProtoBuf.Spellcorrect spellcorrect = buildPartial();
            if (!spellcorrect.isInitialized())
            {
                throw newUninitializedMessageException(spellcorrect);
            } else
            {
                return spellcorrect;
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

        public CommonProtoBuf.Spellcorrect buildPartial()
        {
            CommonProtoBuf.Spellcorrect spellcorrect = new CommonProtoBuf.Spellcorrect(this, null);
            int i = bitField0_;
            if ((bitField0_ & 1) == 1)
            {
                data_ = new UnmodifiableLazyStringList(data_);
                bitField0_ = bitField0_ & -2;
            }
            spellcorrect.data_ = data_;
            onBuilt();
            return spellcorrect;
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
            data_ = LazyStringArrayList.EMPTY;
            bitField0_ = bitField0_ & -2;
            return this;
        }

        public Builder clearData()
        {
            data_ = LazyStringArrayList.EMPTY;
            bitField0_ = bitField0_ & -2;
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

        public String getData(int i)
        {
            return (String)data_.get(i);
        }

        public int getDataCount()
        {
            return data_.size();
        }

        public List getDataList()
        {
            return Collections.unmodifiableList(data_);
        }

        public volatile Message getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public CommonProtoBuf.Spellcorrect getDefaultInstanceForType()
        {
            return CommonProtoBuf.Spellcorrect.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return CommonProtoBuf.Spellcorrect.getDescriptor();
        }

        protected com.google.protobuf.GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
        {
            return CommonProtoBuf.access$4300();
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
                    ensureDataIsMutable();
                    data_.add(codedinputstream.readBytes());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof CommonProtoBuf.Spellcorrect)
            {
                return mergeFrom((CommonProtoBuf.Spellcorrect)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(CommonProtoBuf.Spellcorrect spellcorrect)
        {
            if (spellcorrect == CommonProtoBuf.Spellcorrect.getDefaultInstance())
            {
                return this;
            }
            if (!spellcorrect.data_.isEmpty())
            {
                if (data_.isEmpty())
                {
                    data_ = spellcorrect.data_;
                    bitField0_ = bitField0_ & -2;
                } else
                {
                    ensureDataIsMutable();
                    data_.addAll(spellcorrect.data_);
                }
                onChanged();
            }
            mergeUnknownFields(spellcorrect.getUnknownFields());
            return this;
        }

        public Builder setData(int i, String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureDataIsMutable();
                data_.set(i, s);
                onChanged();
                return this;
            }
        }



        private Builder()
        {
            data_ = LazyStringArrayList.EMPTY;
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            data_ = LazyStringArrayList.EMPTY;
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, b b)
        {
            this(builderparent);
        }
    }


    public static final int DATA_FIELD_NUMBER = 1;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private LazyStringList data_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;

    public static Builder.onChanged getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.ct.defaultInstance getDescriptor()
    {
        return CommonProtoBuf.access$4200();
    }

    private void initFields()
    {
        data_ = LazyStringArrayList.EMPTY;
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

    public String getData(int i)
    {
        return (String)data_.get(i);
    }

    public int getDataCount()
    {
        return data_.size();
    }

    public List getDataList()
    {
        return data_;
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

    public int getSerializedSize()
    {
        int i = memoizedSerializedSize;
        if (i != -1)
        {
            return i;
        }
        i = 0;
        int j = 0;
        for (; i < data_.size(); i++)
        {
            j += CodedOutputStream.computeBytesSizeNoTag(data_.getByteString(i));
        }

        i = 0 + j + getDataList().size() * 1 + getUnknownFields().getSerializedSize();
        memoizedSerializedSize = i;
        return i;
    }

    protected com.google.protobuf.orTable internalGetFieldAccessorTable()
    {
        return CommonProtoBuf.access$4300();
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

    public volatile com.google.protobuf.ct newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.nt newBuilderForType(com.google.protobuf.nt nt)
    {
        return newBuilderForType(nt);
    }

    public volatile com.google.protobuf.ct newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.nt nt)
    {
        return new Builder(nt, null);
    }

    public volatile com.google.protobuf.ct toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.ct toBuilder()
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
        for (int i = 0; i < data_.size(); i++)
        {
            codedoutputstream.writeBytes(1, data_.getByteString(i));
        }

        getUnknownFields().writeTo(codedoutputstream);
    }

    static 
    {
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }




/*
    static LazyStringList access$4902(Builder builder, LazyStringList lazystringlist)
    {
        builder.data_ = lazystringlist;
        return lazystringlist;
    }

*/

    private Builder(Builder builder)
    {
        super(builder);
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }

    Builder(Builder builder, b b)
    {
        this(builder);
    }

    private Builder(boolean flag)
    {
        memoizedIsInitialized = -1;
        memoizedSerializedSize = -1;
    }
}
