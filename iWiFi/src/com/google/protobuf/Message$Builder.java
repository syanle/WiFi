// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.google.protobuf:
//            MessageOrBuilder, Message, InvalidProtocolBufferException, ExtensionRegistryLite, 
//            ByteString, CodedInputStream, UnknownFieldSet

public static interface dDescriptor
    extends der, MessageOrBuilder
{

    public abstract dDescriptor addRepeatedField(dDescriptor ddescriptor, Object obj);

    public abstract Message build();

    public abstract Message buildPartial();

    public abstract dDescriptor clear();

    public abstract dDescriptor clearField(dDescriptor ddescriptor);

    public abstract dDescriptor clone();

    public abstract riptor getDescriptorForType();

    public abstract boolean mergeDelimitedFrom(InputStream inputstream)
        throws IOException;

    public abstract boolean mergeDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException;

    public abstract yLite mergeFrom(ByteString bytestring)
        throws InvalidProtocolBufferException;

    public abstract yLite mergeFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
        throws InvalidProtocolBufferException;

    public abstract  mergeFrom(CodedInputStream codedinputstream)
        throws IOException;

    public abstract yLite mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException;

    public abstract yLite mergeFrom(Message message);

    public abstract yLite mergeFrom(InputStream inputstream)
        throws IOException;

    public abstract yLite mergeFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException;

    public abstract yLite mergeFrom(byte abyte0[])
        throws InvalidProtocolBufferException;

    public abstract ufferException mergeFrom(byte abyte0[], int i, int j)
        throws InvalidProtocolBufferException;

    public abstract yLite mergeFrom(byte abyte0[], int i, int j, ExtensionRegistryLite extensionregistrylite)
        throws InvalidProtocolBufferException;

    public abstract yLite mergeFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
        throws InvalidProtocolBufferException;

    public abstract ufferException mergeUnknownFields(UnknownFieldSet unknownfieldset);

    public abstract dDescriptor newBuilderForField(dDescriptor ddescriptor);

    public abstract dDescriptor setField(dDescriptor ddescriptor, Object obj);

    public abstract dDescriptor setRepeatedField(dDescriptor ddescriptor, int i, Object obj);

    public abstract dDescriptor setUnknownFields(UnknownFieldSet unknownfieldset);
}
