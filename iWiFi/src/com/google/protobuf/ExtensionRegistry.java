// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.protobuf:
//            ExtensionRegistryLite, Message

public final class ExtensionRegistry extends ExtensionRegistryLite
{
    public static final class ExtensionInfo
    {

        public final Message defaultInstance;
        public final Descriptors.FieldDescriptor descriptor;

        private ExtensionInfo(Descriptors.FieldDescriptor fielddescriptor)
        {
            descriptor = fielddescriptor;
            defaultInstance = null;
        }

        private ExtensionInfo(Descriptors.FieldDescriptor fielddescriptor, Message message)
        {
            descriptor = fielddescriptor;
            defaultInstance = message;
        }

    }

    private static final class a
    {

        private final Descriptors.Descriptor a;
        private final int b;

        public boolean equals(Object obj)
        {
            if (obj instanceof a)
            {
                if (a == ((a) (obj = (a)obj)).a && b == ((a) (obj)).b)
                {
                    return true;
                }
            }
            return false;
        }

        public int hashCode()
        {
            return a.hashCode() * 65535 + b;
        }

        a(Descriptors.Descriptor descriptor, int i)
        {
            a = descriptor;
            b = i;
        }
    }


    private static final ExtensionRegistry EMPTY = new ExtensionRegistry(true);
    private final Map extensionsByName;
    private final Map extensionsByNumber;

    private ExtensionRegistry()
    {
        extensionsByName = new HashMap();
        extensionsByNumber = new HashMap();
    }

    private ExtensionRegistry(ExtensionRegistry extensionregistry)
    {
        super(extensionregistry);
        extensionsByName = Collections.unmodifiableMap(extensionregistry.extensionsByName);
        extensionsByNumber = Collections.unmodifiableMap(extensionregistry.extensionsByNumber);
    }

    private ExtensionRegistry(boolean flag)
    {
        super(ExtensionRegistryLite.getEmptyRegistry());
        extensionsByName = Collections.emptyMap();
        extensionsByNumber = Collections.emptyMap();
    }

    private void add(ExtensionInfo extensioninfo)
    {
        if (!extensioninfo.descriptor.isExtension())
        {
            throw new IllegalArgumentException("ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field.");
        }
        extensionsByName.put(extensioninfo.descriptor.getFullName(), extensioninfo);
        extensionsByNumber.put(new a(extensioninfo.descriptor.getContainingType(), extensioninfo.descriptor.getNumber()), extensioninfo);
        Descriptors.FieldDescriptor fielddescriptor = extensioninfo.descriptor;
        if (fielddescriptor.getContainingType().getOptions().getMessageSetWireFormat() && fielddescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && fielddescriptor.isOptional() && fielddescriptor.getExtensionScope() == fielddescriptor.getMessageType())
        {
            extensionsByName.put(fielddescriptor.getMessageType().getFullName(), extensioninfo);
        }
    }

    public static ExtensionRegistry getEmptyRegistry()
    {
        return EMPTY;
    }

    public static ExtensionRegistry newInstance()
    {
        return new ExtensionRegistry();
    }

    public void add(Descriptors.FieldDescriptor fielddescriptor)
    {
        if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
        {
            throw new IllegalArgumentException("ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension.");
        } else
        {
            add(new ExtensionInfo(fielddescriptor, null));
            return;
        }
    }

    public void add(Descriptors.FieldDescriptor fielddescriptor, Message message)
    {
        if (fielddescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
        {
            throw new IllegalArgumentException("ExtensionRegistry.add() provided a default instance for a non-message extension.");
        } else
        {
            add(new ExtensionInfo(fielddescriptor, message));
            return;
        }
    }

    public void add(GeneratedMessage.GeneratedExtension generatedextension)
    {
        if (generatedextension.getDescriptor().getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
        {
            if (generatedextension.getMessageDefaultInstance() == null)
            {
                throw new IllegalStateException((new StringBuilder()).append("Registered message-type extension had null default instance: ").append(generatedextension.getDescriptor().getFullName()).toString());
            } else
            {
                add(new ExtensionInfo(generatedextension.getDescriptor(), generatedextension.getMessageDefaultInstance()));
                return;
            }
        } else
        {
            add(new ExtensionInfo(generatedextension.getDescriptor(), null));
            return;
        }
    }

    public ExtensionInfo findExtensionByName(String s)
    {
        return (ExtensionInfo)extensionsByName.get(s);
    }

    public ExtensionInfo findExtensionByNumber(Descriptors.Descriptor descriptor, int i)
    {
        return (ExtensionInfo)extensionsByNumber.get(new a(descriptor, i));
    }

    public ExtensionRegistry getUnmodifiable()
    {
        return new ExtensionRegistry(this);
    }

    public volatile ExtensionRegistryLite getUnmodifiable()
    {
        return getUnmodifiable();
    }

}
