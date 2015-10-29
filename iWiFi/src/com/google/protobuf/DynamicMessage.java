// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.protobuf:
//            AbstractMessage, FieldSet, UnknownFieldSet, Message, 
//            InvalidProtocolBufferException, ByteString, ExtensionRegistry, CodedInputStream, 
//            MessageLite, CodedOutputStream, UninitializedMessageException

public final class DynamicMessage extends AbstractMessage
{
    public static final class Builder extends AbstractMessage.Builder
    {

        private FieldSet fields;
        private final Descriptors.Descriptor type;
        private UnknownFieldSet unknownFields;

        private DynamicMessage buildParsed()
            throws InvalidProtocolBufferException
        {
            if (!isInitialized())
            {
                throw newUninitializedMessageException(new DynamicMessage(type, fields, unknownFields)).asInvalidProtocolBufferException();
            } else
            {
                return buildPartial();
            }
        }

        private void verifyContainingType(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.getContainingType() != type)
            {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            } else
            {
                return;
            }
        }

        public Builder addRepeatedField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            verifyContainingType(fielddescriptor);
            fields.b(fielddescriptor, obj);
            return this;
        }

        public volatile Message.Builder addRepeatedField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            return addRepeatedField(fielddescriptor, obj);
        }

        public DynamicMessage build()
        {
            if (fields != null && !isInitialized())
            {
                throw newUninitializedMessageException(new DynamicMessage(type, fields, unknownFields));
            } else
            {
                return buildPartial();
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

        public DynamicMessage buildPartial()
        {
            if (fields == null)
            {
                throw new IllegalStateException("build() has already been called on this Builder.");
            } else
            {
                fields.c();
                DynamicMessage dynamicmessage = new DynamicMessage(type, fields, unknownFields);
                fields = null;
                unknownFields = null;
                return dynamicmessage;
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

        public volatile AbstractMessage.Builder clear()
        {
            return clear();
        }

        public Builder clear()
        {
            if (fields == null)
            {
                throw new IllegalStateException("Cannot call clear() after build().");
            } else
            {
                fields.f();
                return this;
            }
        }

        public volatile Message.Builder clear()
        {
            return clear();
        }

        public volatile MessageLite.Builder clear()
        {
            return clear();
        }

        public Builder clearField(Descriptors.FieldDescriptor fielddescriptor)
        {
            verifyContainingType(fielddescriptor);
            fields.c(fielddescriptor);
            return this;
        }

        public volatile Message.Builder clearField(Descriptors.FieldDescriptor fielddescriptor)
        {
            return clearField(fielddescriptor);
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
            Builder builder = new Builder(type);
            builder.fields.a(fields);
            return builder;
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

        public Map getAllFields()
        {
            return fields.g();
        }

        public DynamicMessage getDefaultInstanceForType()
        {
            return DynamicMessage.getDefaultInstance(type);
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
            return type;
        }

        public Object getField(Descriptors.FieldDescriptor fielddescriptor)
        {
label0:
            {
                verifyContainingType(fielddescriptor);
                Object obj1 = fields.b(fielddescriptor);
                Object obj = obj1;
                if (obj1 == null)
                {
                    if (fielddescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
                    {
                        break label0;
                    }
                    obj = DynamicMessage.getDefaultInstance(fielddescriptor.getMessageType());
                }
                return obj;
            }
            return fielddescriptor.getDefaultValue();
        }

        public Object getRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i)
        {
            verifyContainingType(fielddescriptor);
            return fields.a(fielddescriptor, i);
        }

        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fielddescriptor)
        {
            verifyContainingType(fielddescriptor);
            return fields.d(fielddescriptor);
        }

        public UnknownFieldSet getUnknownFields()
        {
            return unknownFields;
        }

        public boolean hasField(Descriptors.FieldDescriptor fielddescriptor)
        {
            verifyContainingType(fielddescriptor);
            return fields.a(fielddescriptor);
        }

        public boolean isInitialized()
        {
            return DynamicMessage.isInitialized(type, fields);
        }

        public volatile AbstractMessage.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public Builder mergeFrom(Message message)
        {
            if (message instanceof DynamicMessage)
            {
                message = (DynamicMessage)message;
                if (((DynamicMessage) (message)).type != type)
                {
                    throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
                } else
                {
                    fields.a(((DynamicMessage) (message)).fields);
                    mergeUnknownFields(((DynamicMessage) (message)).unknownFields);
                    return this;
                }
            } else
            {
                return (Builder)super.mergeFrom(message);
            }
        }

        public volatile Message.Builder mergeFrom(Message message)
        {
            return mergeFrom(message);
        }

        public volatile AbstractMessage.Builder mergeUnknownFields(UnknownFieldSet unknownfieldset)
        {
            return mergeUnknownFields(unknownfieldset);
        }

        public Builder mergeUnknownFields(UnknownFieldSet unknownfieldset)
        {
            unknownFields = UnknownFieldSet.newBuilder(unknownFields).mergeFrom(unknownfieldset).build();
            return this;
        }

        public volatile Message.Builder mergeUnknownFields(UnknownFieldSet unknownfieldset)
        {
            return mergeUnknownFields(unknownfieldset);
        }

        public Builder newBuilderForField(Descriptors.FieldDescriptor fielddescriptor)
        {
            verifyContainingType(fielddescriptor);
            if (fielddescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
            {
                throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
            } else
            {
                return new Builder(fielddescriptor.getMessageType());
            }
        }

        public volatile Message.Builder newBuilderForField(Descriptors.FieldDescriptor fielddescriptor)
        {
            return newBuilderForField(fielddescriptor);
        }

        public Builder setField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            verifyContainingType(fielddescriptor);
            fields.a(fielddescriptor, obj);
            return this;
        }

        public volatile Message.Builder setField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            return setField(fielddescriptor, obj);
        }

        public Builder setRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i, Object obj)
        {
            verifyContainingType(fielddescriptor);
            fields.a(fielddescriptor, i, obj);
            return this;
        }

        public volatile Message.Builder setRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i, Object obj)
        {
            return setRepeatedField(fielddescriptor, i, obj);
        }

        public Builder setUnknownFields(UnknownFieldSet unknownfieldset)
        {
            unknownFields = unknownfieldset;
            return this;
        }

        public volatile Message.Builder setUnknownFields(UnknownFieldSet unknownfieldset)
        {
            return setUnknownFields(unknownfieldset);
        }


        private Builder(Descriptors.Descriptor descriptor)
        {
            type = descriptor;
            fields = FieldSet.a();
            unknownFields = UnknownFieldSet.getDefaultInstance();
        }

    }


    private final FieldSet fields;
    private int memoizedSize;
    private final Descriptors.Descriptor type;
    private final UnknownFieldSet unknownFields;

    private DynamicMessage(Descriptors.Descriptor descriptor, FieldSet fieldset, UnknownFieldSet unknownfieldset)
    {
        memoizedSize = -1;
        type = descriptor;
        fields = fieldset;
        unknownFields = unknownfieldset;
    }


    public static DynamicMessage getDefaultInstance(Descriptors.Descriptor descriptor)
    {
        return new DynamicMessage(descriptor, FieldSet.b(), UnknownFieldSet.getDefaultInstance());
    }

    private static boolean isInitialized(Descriptors.Descriptor descriptor, FieldSet fieldset)
    {
        for (descriptor = descriptor.getFields().iterator(); descriptor.hasNext();)
        {
            Descriptors.FieldDescriptor fielddescriptor = (Descriptors.FieldDescriptor)descriptor.next();
            if (fielddescriptor.isRequired() && !fieldset.a(fielddescriptor))
            {
                return false;
            }
        }

        return fieldset.i();
    }

    public static Builder newBuilder(Descriptors.Descriptor descriptor)
    {
        return new Builder(descriptor);
    }

    public static Builder newBuilder(Message message)
    {
        return (new Builder(message.getDescriptorForType())).mergeFrom(message);
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor descriptor, ByteString bytestring)
        throws InvalidProtocolBufferException
    {
        return ((Builder)newBuilder(descriptor).mergeFrom(bytestring)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor descriptor, ByteString bytestring, ExtensionRegistry extensionregistry)
        throws InvalidProtocolBufferException
    {
        return ((Builder)newBuilder(descriptor).mergeFrom(bytestring, extensionregistry)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor descriptor, CodedInputStream codedinputstream)
        throws IOException
    {
        return ((Builder)newBuilder(descriptor).mergeFrom(codedinputstream)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor descriptor, CodedInputStream codedinputstream, ExtensionRegistry extensionregistry)
        throws IOException
    {
        return ((Builder)newBuilder(descriptor).mergeFrom(codedinputstream, extensionregistry)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor descriptor, InputStream inputstream)
        throws IOException
    {
        return ((Builder)newBuilder(descriptor).mergeFrom(inputstream)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor descriptor, InputStream inputstream, ExtensionRegistry extensionregistry)
        throws IOException
    {
        return ((Builder)newBuilder(descriptor).mergeFrom(inputstream, extensionregistry)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor descriptor, byte abyte0[])
        throws InvalidProtocolBufferException
    {
        return ((Builder)newBuilder(descriptor).mergeFrom(abyte0)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor descriptor, byte abyte0[], ExtensionRegistry extensionregistry)
        throws InvalidProtocolBufferException
    {
        return ((Builder)newBuilder(descriptor).mergeFrom(abyte0, extensionregistry)).buildParsed();
    }

    private void verifyContainingType(Descriptors.FieldDescriptor fielddescriptor)
    {
        if (fielddescriptor.getContainingType() != type)
        {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        } else
        {
            return;
        }
    }

    public Map getAllFields()
    {
        return fields.g();
    }

    public DynamicMessage getDefaultInstanceForType()
    {
        return getDefaultInstance(type);
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
        return type;
    }

    public Object getField(Descriptors.FieldDescriptor fielddescriptor)
    {
label0:
        {
            verifyContainingType(fielddescriptor);
            Object obj1 = fields.b(fielddescriptor);
            Object obj = obj1;
            if (obj1 == null)
            {
                if (fielddescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
                {
                    break label0;
                }
                obj = getDefaultInstance(fielddescriptor.getMessageType());
            }
            return obj;
        }
        return fielddescriptor.getDefaultValue();
    }

    public Object getRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i)
    {
        verifyContainingType(fielddescriptor);
        return fields.a(fielddescriptor, i);
    }

    public int getRepeatedFieldCount(Descriptors.FieldDescriptor fielddescriptor)
    {
        verifyContainingType(fielddescriptor);
        return fields.d(fielddescriptor);
    }

    public int getSerializedSize()
    {
        int i = memoizedSize;
        if (i != -1)
        {
            return i;
        }
        if (type.getOptions().getMessageSetWireFormat())
        {
            i = fields.k() + unknownFields.getSerializedSizeAsMessageSet();
        } else
        {
            i = fields.j() + unknownFields.getSerializedSize();
        }
        memoizedSize = i;
        return i;
    }

    public UnknownFieldSet getUnknownFields()
    {
        return unknownFields;
    }

    public boolean hasField(Descriptors.FieldDescriptor fielddescriptor)
    {
        verifyContainingType(fielddescriptor);
        return fields.a(fielddescriptor);
    }

    public boolean isInitialized()
    {
        return isInitialized(type, fields);
    }

    public Builder newBuilderForType()
    {
        return new Builder(type);
    }

    public volatile Message.Builder newBuilderForType()
    {
        return newBuilderForType();
    }

    public volatile MessageLite.Builder newBuilderForType()
    {
        return newBuilderForType();
    }

    public Builder toBuilder()
    {
        return newBuilderForType().mergeFrom(this);
    }

    public volatile Message.Builder toBuilder()
    {
        return toBuilder();
    }

    public volatile MessageLite.Builder toBuilder()
    {
        return toBuilder();
    }

    public void writeTo(CodedOutputStream codedoutputstream)
        throws IOException
    {
        if (type.getOptions().getMessageSetWireFormat())
        {
            fields.b(codedoutputstream);
            unknownFields.writeAsMessageSetTo(codedoutputstream);
            return;
        } else
        {
            fields.a(codedoutputstream);
            unknownFields.writeTo(codedoutputstream);
            return;
        }
    }




}
