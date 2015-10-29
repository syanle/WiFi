// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            GeocodingProtoBuf, c

public static final class memoizedSerializedSize extends GeneratedMessage
    implements rBuilder
{
    public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder
        implements GeocodingProtoBuf.SubPOISOrBuilder
    {

        private int bitField0_;
        private RepeatedFieldBuilder subpoiBuilder_;
        private List subpoi_;

        private GeocodingProtoBuf.SubPOIS buildParsed()
            throws InvalidProtocolBufferException
        {
            GeocodingProtoBuf.SubPOIS subpois = buildPartial();
            if (!subpois.isInitialized())
            {
                throw newUninitializedMessageException(subpois).asInvalidProtocolBufferException();
            } else
            {
                return subpois;
            }
        }

        private static Builder create()
        {
            return new Builder();
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
            return GeocodingProtoBuf.access$6000();
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

        public Builder addAllSubpoi(Iterable iterable)
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

        public Builder addSubpoi(int i, GeocodingProtoBuf.SubPOI.Builder builder)
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

        public Builder addSubpoi(int i, GeocodingProtoBuf.SubPOI subpoi)
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

        public Builder addSubpoi(GeocodingProtoBuf.SubPOI.Builder builder)
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

        public Builder addSubpoi(GeocodingProtoBuf.SubPOI subpoi)
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

        public GeocodingProtoBuf.SubPOI.Builder addSubpoiBuilder()
        {
            return (GeocodingProtoBuf.SubPOI.Builder)getSubpoiFieldBuilder().addBuilder(GeocodingProtoBuf.SubPOI.getDefaultInstance());
        }

        public GeocodingProtoBuf.SubPOI.Builder addSubpoiBuilder(int i)
        {
            return (GeocodingProtoBuf.SubPOI.Builder)getSubpoiFieldBuilder().addBuilder(i, GeocodingProtoBuf.SubPOI.getDefaultInstance());
        }

        public volatile Message build()
        {
            return build();
        }

        public volatile MessageLite build()
        {
            return build();
        }

        public GeocodingProtoBuf.SubPOIS build()
        {
            GeocodingProtoBuf.SubPOIS subpois = buildPartial();
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

        public GeocodingProtoBuf.SubPOIS buildPartial()
        {
            GeocodingProtoBuf.SubPOIS subpois = new GeocodingProtoBuf.SubPOIS(this, null);
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

        public Builder clear()
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

        public Builder clearSubpoi()
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

        public GeocodingProtoBuf.SubPOIS getDefaultInstanceForType()
        {
            return GeocodingProtoBuf.SubPOIS.getDefaultInstance();
        }

        public com.google.protobuf.Descriptors.Descriptor getDescriptorForType()
        {
            return GeocodingProtoBuf.SubPOIS.getDescriptor();
        }

        public GeocodingProtoBuf.SubPOI getSubpoi(int i)
        {
            if (subpoiBuilder_ == null)
            {
                return (GeocodingProtoBuf.SubPOI)subpoi_.get(i);
            } else
            {
                return (GeocodingProtoBuf.SubPOI)subpoiBuilder_.getMessage(i);
            }
        }

        public GeocodingProtoBuf.SubPOI.Builder getSubpoiBuilder(int i)
        {
            return (GeocodingProtoBuf.SubPOI.Builder)getSubpoiFieldBuilder().getBuilder(i);
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

        public GeocodingProtoBuf.SubPOIOrBuilder getSubpoiOrBuilder(int i)
        {
            if (subpoiBuilder_ == null)
            {
                return (GeocodingProtoBuf.SubPOIOrBuilder)subpoi_.get(i);
            } else
            {
                return (GeocodingProtoBuf.SubPOIOrBuilder)subpoiBuilder_.getMessageOrBuilder(i);
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
            return GeocodingProtoBuf.access$6100();
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
                    GeocodingProtoBuf.SubPOI.Builder builder1 = GeocodingProtoBuf.SubPOI.newBuilder();
                    codedinputstream.readMessage(builder1, extensionregistrylite);
                    addSubpoi(builder1.buildPartial());
                    break;
                }
            } while (true);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof GeocodingProtoBuf.SubPOIS)
            {
                return mergeFrom((GeocodingProtoBuf.SubPOIS)message);
            } else
            {
                super.mergeFrom(message);
                return this;
            }
        }

        public Builder mergeFrom(GeocodingProtoBuf.SubPOIS subpois)
        {
            RepeatedFieldBuilder repeatedfieldbuilder;
            repeatedfieldbuilder = null;
            if (subpois == GeocodingProtoBuf.SubPOIS.getDefaultInstance())
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

        public Builder removeSubpoi(int i)
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

        public Builder setSubpoi(int i, GeocodingProtoBuf.SubPOI.Builder builder)
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

        public Builder setSubpoi(int i, GeocodingProtoBuf.SubPOI subpoi)
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



        private Builder()
        {
            subpoi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent)
        {
            super(builderparent);
            subpoi_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        Builder(com.google.protobuf.GeneratedMessage.BuilderParent builderparent, c c)
        {
            this(builderparent);
        }
    }


    public static final int SUBPOI_FIELD_NUMBER = 1;
    private static final initFields defaultInstance;
    private static final long serialVersionUID = 0L;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List subpoi_;

    public static Builder.subpoiBuilder_ getDefaultInstance()
    {
        return defaultInstance;
    }

    public static final com.google.protobuf.ubPOIS.defaultInstance getDescriptor()
    {
        return GeocodingProtoBuf.access$6000();
    }

    private void initFields()
    {
        subpoi_ = Collections.emptyList();
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

    public memoizedSerializedSize getSubpoi(int i)
    {
        return (memoizedSerializedSize)subpoi_.get(i);
    }

    public int getSubpoiCount()
    {
        return subpoi_.size();
    }

    public List getSubpoiList()
    {
        return subpoi_;
    }

    public Builder getSubpoiOrBuilder(int i)
    {
        return (Builder)subpoi_.get(i);
    }

    public List getSubpoiOrBuilderList()
    {
        return subpoi_;
    }

    protected com.google.protobuf.ssorTable internalGetFieldAccessorTable()
    {
        return GeocodingProtoBuf.access$6100();
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

    public volatile com.google.protobuf.ubPOIS newBuilderForType()
    {
        return newBuilderForType();
    }

    protected volatile com.google.protobuf.rent newBuilderForType(com.google.protobuf.rent rent)
    {
        return newBuilderForType(rent);
    }

    public volatile com.google.protobuf.ubPOIS newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder newBuilderForType()
    {
        return newBuilder();
    }

    protected Builder newBuilderForType(com.google.protobuf.rent rent)
    {
        return new Builder(rent, null);
    }

    public volatile com.google.protobuf.ubPOIS toBuilder()
    {
        return toBuilder();
    }

    public volatile com.google.protobuf.ubPOIS toBuilder()
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
        defaultInstance = new <init>(true);
        defaultInstance.initFields();
    }




/*
    static List access$6702(Builder builder, List list)
    {
        builder.subpoi_ = list;
        return list;
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
