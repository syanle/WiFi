// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;

// Referenced classes of package com.google.protobuf:
//            AbstractMessageLite, MessageLite, CodedInputStream, ExtensionRegistryLite, 
//            FieldSet, WireFormat, CodedOutputStream, MessageLiteOrBuilder

public abstract class GeneratedMessageLite extends AbstractMessageLite
    implements Serializable
{
    public static abstract class Builder extends AbstractMessageLite.Builder
    {

        public Builder clear()
        {
            return this;
        }

        public volatile MessageLite.Builder clear()
        {
            return clear();
        }

        public volatile AbstractMessageLite.Builder clone()
        {
            return clone();
        }

        public Builder clone()
        {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
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

        public abstract GeneratedMessageLite getDefaultInstanceForType();

        public volatile MessageLite getDefaultInstanceForType()
        {
            return getDefaultInstanceForType();
        }

        public abstract Builder mergeFrom(GeneratedMessageLite generatedmessagelite);

        protected boolean parseUnknownField(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite, int i)
            throws IOException
        {
            return codedinputstream.skipField(i);
        }

        protected Builder()
        {
        }
    }

    public static abstract class ExtendableBuilder extends Builder
        implements ExtendableMessageOrBuilder
    {

        private FieldSet extensions;
        private boolean extensionsIsMutable;

        private FieldSet buildExtensions()
        {
            extensions.c();
            extensionsIsMutable = false;
            return extensions;
        }

        private void ensureExtensionsIsMutable()
        {
            if (!extensionsIsMutable)
            {
                extensions = extensions.e();
                extensionsIsMutable = true;
            }
        }

        private void verifyExtensionContainingType(GeneratedExtension generatedextension)
        {
            if (generatedextension.getContainingTypeDefaultInstance() != getDefaultInstanceForType())
            {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            } else
            {
                return;
            }
        }

        public final ExtendableBuilder addExtension(GeneratedExtension generatedextension, Object obj)
        {
            verifyExtensionContainingType(generatedextension);
            ensureExtensionsIsMutable();
            extensions.b(generatedextension.descriptor, obj);
            return this;
        }

        public volatile Builder clear()
        {
            return clear();
        }

        public ExtendableBuilder clear()
        {
            extensions.f();
            extensionsIsMutable = false;
            return (ExtendableBuilder)super.clear();
        }

        public volatile MessageLite.Builder clear()
        {
            return clear();
        }

        public final ExtendableBuilder clearExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            ensureExtensionsIsMutable();
            extensions.c(generatedextension.descriptor);
            return this;
        }

        public volatile AbstractMessageLite.Builder clone()
        {
            return clone();
        }

        public volatile Builder clone()
        {
            return clone();
        }

        public ExtendableBuilder clone()
        {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
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

        protected boolean extensionsAreInitialized()
        {
            return extensions.i();
        }

        public final Object getExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            Object obj1 = extensions.b(generatedextension.descriptor);
            Object obj = obj1;
            if (obj1 == null)
            {
                obj = generatedextension.defaultValue;
            }
            return obj;
        }

        public final Object getExtension(GeneratedExtension generatedextension, int i)
        {
            verifyExtensionContainingType(generatedextension);
            return extensions.a(generatedextension.descriptor, i);
        }

        public final int getExtensionCount(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            return extensions.d(generatedextension.descriptor);
        }

        public final boolean hasExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            return extensions.a(generatedextension.descriptor);
        }

        protected final void mergeExtensionFields(ExtendableMessage extendablemessage)
        {
            ensureExtensionsIsMutable();
            extensions.a(extendablemessage.extensions);
        }

        protected boolean parseUnknownField(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite, int i)
            throws IOException
        {
            GeneratedExtension generatedextension;
            boolean flag;
            flag = false;
            int j = WireFormat.getTagWireType(i);
            int l = WireFormat.getTagFieldNumber(i);
            generatedextension = extensionregistrylite.findLiteExtensionByNumber(getDefaultInstanceForType(), l);
            if (generatedextension == null)
            {
                j = 1;
            } else
            if (j == FieldSet.a(generatedextension.descriptor.getLiteType(), false))
            {
                j = 0;
            } else
            if (a.b(generatedextension.descriptor) && a.c(generatedextension.descriptor).isPackable() && j == FieldSet.a(generatedextension.descriptor.getLiteType(), true))
            {
                j = 0;
                flag = true;
            } else
            {
                j = 1;
            }
            if (j != 0)
            {
                return codedinputstream.skipField(i);
            }
            if (!flag) goto _L2; else goto _L1
_L1:
            i = codedinputstream.pushLimit(codedinputstream.readRawVarint32());
            if (generatedextension.descriptor.getLiteType() == WireFormat.FieldType.ENUM)
            {
                for (; codedinputstream.getBytesUntilLimit() > 0; extensions.b(generatedextension.descriptor, extensionregistrylite))
                {
                    int k = codedinputstream.readEnum();
                    extensionregistrylite = generatedextension.descriptor.getEnumType().findValueByNumber(k);
                    if (extensionregistrylite == null)
                    {
                        return true;
                    }
                    ensureExtensionsIsMutable();
                }

            } else
            {
                for (; codedinputstream.getBytesUntilLimit() > 0; extensions.b(generatedextension.descriptor, extensionregistrylite))
                {
                    extensionregistrylite = ((ExtensionRegistryLite) (FieldSet.a(codedinputstream, generatedextension.descriptor.getLiteType())));
                    ensureExtensionsIsMutable();
                }

            }
            codedinputstream.popLimit(i);
_L6:
            return true;
_L2:
            static class _cls1
            {

                static final int a[];

                static 
                {
                    a = new int[WireFormat.JavaType.values().length];
                    try
                    {
                        a[WireFormat.JavaType.MESSAGE.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[WireFormat.JavaType.ENUM.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            _cls1.a[generatedextension.descriptor.getLiteJavaType().ordinal()];
            JVM INSTR tableswitch 1 2: default 292
        //                       1 336
        //                       2 446;
               goto _L3 _L4 _L5
_L3:
            codedinputstream = ((CodedInputStream) (FieldSet.a(codedinputstream, generatedextension.descriptor.getLiteType())));
_L7:
            Object obj;
            if (generatedextension.descriptor.isRepeated())
            {
                ensureExtensionsIsMutable();
                extensions.b(generatedextension.descriptor, codedinputstream);
            } else
            {
                ensureExtensionsIsMutable();
                extensions.a(generatedextension.descriptor, codedinputstream);
            }
            if (true) goto _L6; else goto _L4
_L4:
            if (generatedextension.descriptor.isRepeated())
            {
                break MISSING_BLOCK_LABEL_494;
            }
            obj = (MessageLite)extensions.b(generatedextension.descriptor);
            if (obj == null)
            {
                break MISSING_BLOCK_LABEL_494;
            }
            obj = ((MessageLite) (obj)).toBuilder();
_L8:
            MessageLite.Builder builder = ((MessageLite.Builder) (obj));
            if (obj == null)
            {
                builder = generatedextension.messageDefaultInstance.newBuilderForType();
            }
            if (generatedextension.descriptor.getLiteType() == WireFormat.FieldType.GROUP)
            {
                codedinputstream.readGroup(generatedextension.getNumber(), builder, extensionregistrylite);
            } else
            {
                codedinputstream.readMessage(builder, extensionregistrylite);
            }
            codedinputstream = builder.build();
              goto _L7
_L5:
            i = codedinputstream.readEnum();
            extensionregistrylite = generatedextension.descriptor.getEnumType().findValueByNumber(i);
            codedinputstream = extensionregistrylite;
            if (extensionregistrylite == null)
            {
                return true;
            }
              goto _L7
            obj = null;
              goto _L8
        }

        public final ExtendableBuilder setExtension(GeneratedExtension generatedextension, int i, Object obj)
        {
            verifyExtensionContainingType(generatedextension);
            ensureExtensionsIsMutable();
            extensions.a(generatedextension.descriptor, i, obj);
            return this;
        }

        public final ExtendableBuilder setExtension(GeneratedExtension generatedextension, Object obj)
        {
            verifyExtensionContainingType(generatedextension);
            ensureExtensionsIsMutable();
            extensions.a(generatedextension.descriptor, obj);
            return this;
        }


        protected ExtendableBuilder()
        {
            extensions = FieldSet.b();
        }
    }

    public static abstract class ExtendableMessage extends GeneratedMessageLite
        implements ExtendableMessageOrBuilder
    {

        private final FieldSet extensions;

        private void verifyExtensionContainingType(GeneratedExtension generatedextension)
        {
            if (generatedextension.getContainingTypeDefaultInstance() != getDefaultInstanceForType())
            {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            } else
            {
                return;
            }
        }

        protected boolean extensionsAreInitialized()
        {
            return extensions.i();
        }

        protected int extensionsSerializedSize()
        {
            return extensions.j();
        }

        protected int extensionsSerializedSizeAsMessageSet()
        {
            return extensions.k();
        }

        public final Object getExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            Object obj1 = extensions.b(generatedextension.descriptor);
            Object obj = obj1;
            if (obj1 == null)
            {
                obj = generatedextension.defaultValue;
            }
            return obj;
        }

        public final Object getExtension(GeneratedExtension generatedextension, int i)
        {
            verifyExtensionContainingType(generatedextension);
            return extensions.a(generatedextension.descriptor, i);
        }

        public final int getExtensionCount(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            return extensions.d(generatedextension.descriptor);
        }

        public final boolean hasExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            return extensions.a(generatedextension.descriptor);
        }

        protected ExtensionWriter newExtensionWriter()
        {
            return new ExtensionWriter(false, null);
        }

        protected ExtensionWriter newMessageSetExtensionWriter()
        {
            return new ExtensionWriter(true, null);
        }


        protected ExtendableMessage()
        {
            extensions = FieldSet.a();
        }

        protected ExtendableMessage(ExtendableBuilder extendablebuilder)
        {
            extensions = extendablebuilder.buildExtensions();
        }
    }

    protected class ExtendableMessage.ExtensionWriter
    {

        private final Iterator iter;
        private final boolean messageSetWireFormat;
        private java.util.Map.Entry next;
        final ExtendableMessage this$0;

        public void writeUntil(int i, CodedOutputStream codedoutputstream)
            throws IOException
        {
            while (next != null && ((a)next.getKey()).getNumber() < i) 
            {
                a a1 = (a)next.getKey();
                if (messageSetWireFormat && a1.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !a1.isRepeated())
                {
                    codedoutputstream.writeMessageSetExtension(a1.getNumber(), (MessageLite)next.getValue());
                } else
                {
                    FieldSet.a(a1, next.getValue(), codedoutputstream);
                }
                if (iter.hasNext())
                {
                    next = (java.util.Map.Entry)iter.next();
                } else
                {
                    next = null;
                }
            }
        }

        private ExtendableMessage.ExtensionWriter(boolean flag)
        {
            this$0 = ExtendableMessage.this;
            super();
            iter = extensions.h();
            if (iter.hasNext())
            {
                next = (java.util.Map.Entry)iter.next();
            }
            messageSetWireFormat = flag;
        }

    }

    public static interface ExtendableMessageOrBuilder
        extends MessageLiteOrBuilder
    {

        public abstract Object getExtension(GeneratedExtension generatedextension);

        public abstract Object getExtension(GeneratedExtension generatedextension, int i);

        public abstract int getExtensionCount(GeneratedExtension generatedextension);

        public abstract boolean hasExtension(GeneratedExtension generatedextension);
    }

    public static final class GeneratedExtension
    {

        private final MessageLite containingTypeDefaultInstance;
        private final Object defaultValue;
        private final a descriptor;
        private final MessageLite messageDefaultInstance;

        public MessageLite getContainingTypeDefaultInstance()
        {
            return containingTypeDefaultInstance;
        }

        public MessageLite getMessageDefaultInstance()
        {
            return messageDefaultInstance;
        }

        public int getNumber()
        {
            return descriptor.getNumber();
        }




        private GeneratedExtension(MessageLite messagelite, Object obj, MessageLite messagelite1, a a1)
        {
            if (messagelite == null)
            {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (a1.getLiteType() == WireFormat.FieldType.MESSAGE && messagelite1 == null)
            {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            } else
            {
                containingTypeDefaultInstance = messagelite;
                defaultValue = obj;
                messageDefaultInstance = messagelite1;
                descriptor = a1;
                return;
            }
        }

    }

    private static final class a
        implements FieldSet.FieldDescriptorLite
    {

        private final Internal.EnumLiteMap a;
        private final int b;
        private final WireFormat.FieldType c;
        private final boolean d;
        private final boolean e;

        static boolean b(a a1)
        {
            return a1.d;
        }

        static WireFormat.FieldType c(a a1)
        {
            return a1.c;
        }

        public int a(a a1)
        {
            return b - a1.b;
        }

        public volatile int compareTo(Object obj)
        {
            return a((a)obj);
        }

        public Internal.EnumLiteMap getEnumType()
        {
            return a;
        }

        public WireFormat.JavaType getLiteJavaType()
        {
            return c.getJavaType();
        }

        public WireFormat.FieldType getLiteType()
        {
            return c;
        }

        public int getNumber()
        {
            return b;
        }

        public MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messagelite)
        {
            return ((Builder)builder).mergeFrom((GeneratedMessageLite)messagelite);
        }

        public boolean isPacked()
        {
            return e;
        }

        public boolean isRepeated()
        {
            return d;
        }

        private a(Internal.EnumLiteMap enumlitemap, int i, WireFormat.FieldType fieldtype, boolean flag, boolean flag1)
        {
            a = enumlitemap;
            b = i;
            c = fieldtype;
            d = flag;
            e = flag1;
        }

    }

    static final class b
        implements Serializable
    {

        private String a;
        private byte b[];

        b(MessageLite messagelite)
        {
            a = messagelite.getClass().getName();
            b = messagelite.toByteArray();
        }
    }


    private static final long serialVersionUID = 1L;

    protected GeneratedMessageLite()
    {
    }

    protected GeneratedMessageLite(Builder builder)
    {
    }

    public static GeneratedExtension newRepeatedGeneratedExtension(MessageLite messagelite, MessageLite messagelite1, Internal.EnumLiteMap enumlitemap, int i, WireFormat.FieldType fieldtype, boolean flag)
    {
        return new GeneratedExtension(messagelite, Collections.emptyList(), messagelite1, new a(enumlitemap, i, fieldtype, true, flag, null), null);
    }

    public static GeneratedExtension newSingularGeneratedExtension(MessageLite messagelite, Object obj, MessageLite messagelite1, Internal.EnumLiteMap enumlitemap, int i, WireFormat.FieldType fieldtype)
    {
        return new GeneratedExtension(messagelite, obj, messagelite1, new a(enumlitemap, i, fieldtype, false, false, null), null);
    }

    protected Object writeReplace()
        throws ObjectStreamException
    {
        return new b(this);
    }
}
