// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.google.protobuf:
//            MessageLite, MessageOrBuilder, InvalidProtocolBufferException, ExtensionRegistryLite, 
//            ByteString, CodedInputStream, UnknownFieldSet

public interface Message
    extends MessageLite, MessageOrBuilder
{
    public static interface Builder
        extends MessageLite.Builder, MessageOrBuilder
    {

        public abstract Builder addRepeatedField(Descriptors.FieldDescriptor fielddescriptor, Object obj);

        public abstract Message build();

        public abstract Message buildPartial();

        public abstract Builder clear();

        public abstract Builder clearField(Descriptors.FieldDescriptor fielddescriptor);

        public abstract Builder clone();

        public abstract Descriptors.Descriptor getDescriptorForType();

        public abstract boolean mergeDelimitedFrom(InputStream inputstream)
            throws IOException;

        public abstract boolean mergeDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException;

        public abstract Builder mergeFrom(ByteString bytestring)
            throws InvalidProtocolBufferException;

        public abstract Builder mergeFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException;

        public abstract Builder mergeFrom(CodedInputStream codedinputstream)
            throws IOException;

        public abstract Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException;

        public abstract Builder mergeFrom(Message message);

        public abstract Builder mergeFrom(InputStream inputstream)
            throws IOException;

        public abstract Builder mergeFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException;

        public abstract Builder mergeFrom(byte abyte0[])
            throws InvalidProtocolBufferException;

        public abstract Builder mergeFrom(byte abyte0[], int i, int j)
            throws InvalidProtocolBufferException;

        public abstract Builder mergeFrom(byte abyte0[], int i, int j, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException;

        public abstract Builder mergeFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException;

        public abstract Builder mergeUnknownFields(UnknownFieldSet unknownfieldset);

        public abstract Builder newBuilderForField(Descriptors.FieldDescriptor fielddescriptor);

        public abstract Builder setField(Descriptors.FieldDescriptor fielddescriptor, Object obj);

        public abstract Builder setRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i, Object obj);

        public abstract Builder setUnknownFields(UnknownFieldSet unknownfieldset);
    }


    public abstract boolean equals(Object obj);

    public abstract int hashCode();

    public abstract Builder newBuilderForType();

    public abstract Builder toBuilder();

    public abstract String toString();
}
