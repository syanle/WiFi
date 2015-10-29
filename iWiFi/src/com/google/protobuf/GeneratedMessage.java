// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

// Referenced classes of package com.google.protobuf:
//            AbstractMessage, UnknownFieldSet, Message, CodedInputStream, 
//            ExtensionRegistryLite, FieldSet, DynamicMessage, CodedOutputStream, 
//            MessageOrBuilder, ProtocolMessageEnum

public abstract class GeneratedMessage extends AbstractMessage
    implements Serializable
{
    public static abstract class Builder extends AbstractMessage.Builder
    {

        private BuilderParent builderParent;
        private boolean isClean;
        private a meAsParent;
        private UnknownFieldSet unknownFields;

        private Map getAllFieldsMutable()
        {
            TreeMap treemap = new TreeMap();
            Iterator iterator = internalGetFieldAccessorTable().descriptor.getFields().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Descriptors.FieldDescriptor fielddescriptor = (Descriptors.FieldDescriptor)iterator.next();
                if (fielddescriptor.isRepeated())
                {
                    List list = (List)getField(fielddescriptor);
                    if (!list.isEmpty())
                    {
                        treemap.put(fielddescriptor, list);
                    }
                } else
                if (hasField(fielddescriptor))
                {
                    treemap.put(fielddescriptor, getField(fielddescriptor));
                }
            } while (true);
            return treemap;
        }

        public Builder addRepeatedField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            internalGetFieldAccessorTable().getField(fielddescriptor).b(this, obj);
            return this;
        }

        public volatile Message.Builder addRepeatedField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            return addRepeatedField(fielddescriptor, obj);
        }

        public volatile AbstractMessage.Builder clear()
        {
            return clear();
        }

        public Builder clear()
        {
            unknownFields = UnknownFieldSet.getDefaultInstance();
            onChanged();
            return this;
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
            internalGetFieldAccessorTable().getField(fielddescriptor).d(this);
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
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
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

        void dispose()
        {
            builderParent = null;
        }

        public Map getAllFields()
        {
            return Collections.unmodifiableMap(getAllFieldsMutable());
        }

        public Descriptors.Descriptor getDescriptorForType()
        {
            return internalGetFieldAccessorTable().descriptor;
        }

        public Object getField(Descriptors.FieldDescriptor fielddescriptor)
        {
            Object obj1 = internalGetFieldAccessorTable().getField(fielddescriptor).a(this);
            Object obj = obj1;
            if (fielddescriptor.isRepeated())
            {
                obj = Collections.unmodifiableList((List)obj1);
            }
            return obj;
        }

        protected BuilderParent getParentForChildren()
        {
            if (meAsParent == null)
            {
                meAsParent = new a(this);
            }
            return meAsParent;
        }

        public Object getRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i)
        {
            return internalGetFieldAccessorTable().getField(fielddescriptor).a(this, i);
        }

        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fielddescriptor)
        {
            return internalGetFieldAccessorTable().getField(fielddescriptor).c(this);
        }

        public final UnknownFieldSet getUnknownFields()
        {
            return unknownFields;
        }

        public boolean hasField(Descriptors.FieldDescriptor fielddescriptor)
        {
            return internalGetFieldAccessorTable().getField(fielddescriptor).b(this);
        }

        protected abstract FieldAccessorTable internalGetFieldAccessorTable();

        protected boolean isClean()
        {
            return isClean;
        }

        public boolean isInitialized()
        {
            Iterator iterator = getDescriptorForType().getFields().iterator();
_L2:
            Object obj;
            do
            {
                if (!iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_134;
                }
                obj = (Descriptors.FieldDescriptor)iterator.next();
                if (((Descriptors.FieldDescriptor) (obj)).isRequired() && !hasField(((Descriptors.FieldDescriptor) (obj))))
                {
                    return false;
                }
            } while (((Descriptors.FieldDescriptor) (obj)).getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE);
            if (!((Descriptors.FieldDescriptor) (obj)).isRepeated())
            {
                continue; /* Loop/switch isn't completed */
            }
            obj = ((List)getField(((Descriptors.FieldDescriptor) (obj)))).iterator();
_L4:
            if (!((Iterator) (obj)).hasNext()) goto _L2; else goto _L1
_L1:
            if (((Message)((Iterator) (obj)).next()).isInitialized()) goto _L4; else goto _L3
_L3:
            return false;
            if (!hasField(((Descriptors.FieldDescriptor) (obj))) || ((Message)getField(((Descriptors.FieldDescriptor) (obj)))).isInitialized()) goto _L2; else goto _L5
_L5:
            return false;
            return true;
        }

        protected void markClean()
        {
            isClean = true;
        }

        public volatile AbstractMessage.Builder mergeUnknownFields(UnknownFieldSet unknownfieldset)
        {
            return mergeUnknownFields(unknownfieldset);
        }

        public final Builder mergeUnknownFields(UnknownFieldSet unknownfieldset)
        {
            unknownFields = UnknownFieldSet.newBuilder(unknownFields).mergeFrom(unknownfieldset).build();
            onChanged();
            return this;
        }

        public volatile Message.Builder mergeUnknownFields(UnknownFieldSet unknownfieldset)
        {
            return mergeUnknownFields(unknownfieldset);
        }

        public Message.Builder newBuilderForField(Descriptors.FieldDescriptor fielddescriptor)
        {
            return internalGetFieldAccessorTable().getField(fielddescriptor).a();
        }

        protected void onBuilt()
        {
            if (builderParent != null)
            {
                markClean();
            }
        }

        protected final void onChanged()
        {
            if (isClean && builderParent != null)
            {
                builderParent.markDirty();
                isClean = false;
            }
        }

        protected boolean parseUnknownField(CodedInputStream codedinputstream, UnknownFieldSet.Builder builder, ExtensionRegistryLite extensionregistrylite, int i)
            throws IOException
        {
            return builder.mergeFieldFrom(i, codedinputstream);
        }

        public Builder setField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            internalGetFieldAccessorTable().getField(fielddescriptor).a(this, obj);
            return this;
        }

        public volatile Message.Builder setField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            return setField(fielddescriptor, obj);
        }

        public Builder setRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i, Object obj)
        {
            internalGetFieldAccessorTable().getField(fielddescriptor).a(this, i, obj);
            return this;
        }

        public volatile Message.Builder setRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i, Object obj)
        {
            return setRepeatedField(fielddescriptor, i, obj);
        }

        public final Builder setUnknownFields(UnknownFieldSet unknownfieldset)
        {
            unknownFields = unknownfieldset;
            onChanged();
            return this;
        }

        public volatile Message.Builder setUnknownFields(UnknownFieldSet unknownfieldset)
        {
            return setUnknownFields(unknownfieldset);
        }


        protected Builder()
        {
            this(null);
        }

        protected Builder(BuilderParent builderparent)
        {
            unknownFields = UnknownFieldSet.getDefaultInstance();
            builderParent = builderparent;
        }
    }

    private class Builder.a
        implements BuilderParent
    {

        final Builder a;

        public void markDirty()
        {
            a.onChanged();
        }

        private Builder.a(Builder builder)
        {
            a = builder;
            super();
        }

    }

    protected static interface BuilderParent
    {

        public abstract void markDirty();
    }

    public static abstract class ExtendableBuilder extends Builder
        implements ExtendableMessageOrBuilder
    {

        private FieldSet extensions;

        private FieldSet buildExtensions()
        {
            extensions.c();
            return extensions;
        }

        private void ensureExtensionsIsMutable()
        {
            if (extensions.d())
            {
                extensions = extensions.e();
            }
        }

        private void verifyContainingType(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.getContainingType() != getDescriptorForType())
            {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            } else
            {
                return;
            }
        }

        private void verifyExtensionContainingType(GeneratedExtension generatedextension)
        {
            if (generatedextension.getDescriptor().getContainingType() != getDescriptorForType())
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Extension is for type \"").append(generatedextension.getDescriptor().getContainingType().getFullName()).append("\" which does not match message type \"").append(getDescriptorForType().getFullName()).append("\".").toString());
            } else
            {
                return;
            }
        }

        public final ExtendableBuilder addExtension(GeneratedExtension generatedextension, Object obj)
        {
            verifyExtensionContainingType(generatedextension);
            ensureExtensionsIsMutable();
            Descriptors.FieldDescriptor fielddescriptor = generatedextension.getDescriptor();
            extensions.b(fielddescriptor, generatedextension.singularToReflectionType(obj));
            onChanged();
            return this;
        }

        public volatile Builder addRepeatedField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            return addRepeatedField(fielddescriptor, obj);
        }

        public ExtendableBuilder addRepeatedField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                ensureExtensionsIsMutable();
                extensions.b(fielddescriptor, obj);
                onChanged();
                return this;
            } else
            {
                return (ExtendableBuilder)super.addRepeatedField(fielddescriptor, obj);
            }
        }

        public volatile Message.Builder addRepeatedField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            return addRepeatedField(fielddescriptor, obj);
        }

        public volatile AbstractMessage.Builder clear()
        {
            return clear();
        }

        public volatile Builder clear()
        {
            return clear();
        }

        public ExtendableBuilder clear()
        {
            extensions = FieldSet.b();
            return (ExtendableBuilder)super.clear();
        }

        public volatile Message.Builder clear()
        {
            return clear();
        }

        public volatile MessageLite.Builder clear()
        {
            return clear();
        }

        public final ExtendableBuilder clearExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            ensureExtensionsIsMutable();
            extensions.c(generatedextension.getDescriptor());
            onChanged();
            return this;
        }

        public volatile Builder clearField(Descriptors.FieldDescriptor fielddescriptor)
        {
            return clearField(fielddescriptor);
        }

        public ExtendableBuilder clearField(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                ensureExtensionsIsMutable();
                extensions.c(fielddescriptor);
                onChanged();
                return this;
            } else
            {
                return (ExtendableBuilder)super.clearField(fielddescriptor);
            }
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

        public volatile Builder clone()
        {
            return clone();
        }

        public ExtendableBuilder clone()
        {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
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

        protected boolean extensionsAreInitialized()
        {
            return extensions.i();
        }

        public Map getAllFields()
        {
            Map map = ((Builder)this).getAllFieldsMutable();
            map.putAll(extensions.g());
            return Collections.unmodifiableMap(map);
        }

        public final Object getExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            Descriptors.FieldDescriptor fielddescriptor = generatedextension.getDescriptor();
            Object obj = extensions.b(fielddescriptor);
            if (obj == null)
            {
                if (fielddescriptor.isRepeated())
                {
                    return Collections.emptyList();
                }
                if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
                {
                    return generatedextension.getMessageDefaultInstance();
                } else
                {
                    return generatedextension.fromReflectionType(fielddescriptor.getDefaultValue());
                }
            } else
            {
                return generatedextension.fromReflectionType(obj);
            }
        }

        public final Object getExtension(GeneratedExtension generatedextension, int i)
        {
            verifyExtensionContainingType(generatedextension);
            Descriptors.FieldDescriptor fielddescriptor = generatedextension.getDescriptor();
            return generatedextension.singularFromReflectionType(extensions.a(fielddescriptor, i));
        }

        public final int getExtensionCount(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            generatedextension = generatedextension.getDescriptor();
            return extensions.d(generatedextension);
        }

        public Object getField(Descriptors.FieldDescriptor fielddescriptor)
        {
label0:
            {
label1:
                {
                    if (!fielddescriptor.isExtension())
                    {
                        break label0;
                    }
                    verifyContainingType(fielddescriptor);
                    Object obj1 = extensions.b(fielddescriptor);
                    Object obj = obj1;
                    if (obj1 == null)
                    {
                        if (fielddescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
                        {
                            break label1;
                        }
                        obj = DynamicMessage.getDefaultInstance(fielddescriptor.getMessageType());
                    }
                    return obj;
                }
                return fielddescriptor.getDefaultValue();
            }
            return super.getField(fielddescriptor);
        }

        public Object getRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                return extensions.a(fielddescriptor, i);
            } else
            {
                return super.getRepeatedField(fielddescriptor, i);
            }
        }

        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                return extensions.d(fielddescriptor);
            } else
            {
                return super.getRepeatedFieldCount(fielddescriptor);
            }
        }

        public final boolean hasExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            return extensions.a(generatedextension.getDescriptor());
        }

        public boolean hasField(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                return extensions.a(fielddescriptor);
            } else
            {
                return super.hasField(fielddescriptor);
            }
        }

        public boolean isInitialized()
        {
            return super.isInitialized() && extensionsAreInitialized();
        }

        protected final void mergeExtensionFields(ExtendableMessage extendablemessage)
        {
            ensureExtensionsIsMutable();
            extensions.a(extendablemessage.extensions);
            onChanged();
        }

        protected boolean parseUnknownField(CodedInputStream codedinputstream, UnknownFieldSet.Builder builder, ExtensionRegistryLite extensionregistrylite, int i)
            throws IOException
        {
            return AbstractMessage.Builder.mergeFieldFrom(codedinputstream, builder, extensionregistrylite, this, i);
        }

        public final ExtendableBuilder setExtension(GeneratedExtension generatedextension, int i, Object obj)
        {
            verifyExtensionContainingType(generatedextension);
            ensureExtensionsIsMutable();
            Descriptors.FieldDescriptor fielddescriptor = generatedextension.getDescriptor();
            extensions.a(fielddescriptor, i, generatedextension.singularToReflectionType(obj));
            onChanged();
            return this;
        }

        public final ExtendableBuilder setExtension(GeneratedExtension generatedextension, Object obj)
        {
            verifyExtensionContainingType(generatedextension);
            ensureExtensionsIsMutable();
            Descriptors.FieldDescriptor fielddescriptor = generatedextension.getDescriptor();
            extensions.a(fielddescriptor, generatedextension.toReflectionType(obj));
            onChanged();
            return this;
        }

        public volatile Builder setField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            return setField(fielddescriptor, obj);
        }

        public ExtendableBuilder setField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                ensureExtensionsIsMutable();
                extensions.a(fielddescriptor, obj);
                onChanged();
                return this;
            } else
            {
                return (ExtendableBuilder)super.setField(fielddescriptor, obj);
            }
        }

        public volatile Message.Builder setField(Descriptors.FieldDescriptor fielddescriptor, Object obj)
        {
            return setField(fielddescriptor, obj);
        }

        public volatile Builder setRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i, Object obj)
        {
            return setRepeatedField(fielddescriptor, i, obj);
        }

        public ExtendableBuilder setRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i, Object obj)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                ensureExtensionsIsMutable();
                extensions.a(fielddescriptor, i, obj);
                onChanged();
                return this;
            } else
            {
                return (ExtendableBuilder)super.setRepeatedField(fielddescriptor, i, obj);
            }
        }

        public volatile Message.Builder setRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i, Object obj)
        {
            return setRepeatedField(fielddescriptor, i, obj);
        }


        protected ExtendableBuilder()
        {
            extensions = FieldSet.b();
        }

        protected ExtendableBuilder(BuilderParent builderparent)
        {
            super(builderparent);
            extensions = FieldSet.b();
        }
    }

    public static abstract class ExtendableMessage extends GeneratedMessage
        implements ExtendableMessageOrBuilder
    {

        private final FieldSet extensions;

        private void verifyContainingType(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.getContainingType() != getDescriptorForType())
            {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            } else
            {
                return;
            }
        }

        private void verifyExtensionContainingType(GeneratedExtension generatedextension)
        {
            if (generatedextension.getDescriptor().getContainingType() != getDescriptorForType())
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Extension is for type \"").append(generatedextension.getDescriptor().getContainingType().getFullName()).append("\" which does not match message type \"").append(getDescriptorForType().getFullName()).append("\".").toString());
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

        public Map getAllFields()
        {
            Map map = getAllFieldsMutable();
            map.putAll(getExtensionFields());
            return Collections.unmodifiableMap(map);
        }

        public final Object getExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            Descriptors.FieldDescriptor fielddescriptor = generatedextension.getDescriptor();
            Object obj = extensions.b(fielddescriptor);
            if (obj == null)
            {
                if (fielddescriptor.isRepeated())
                {
                    return Collections.emptyList();
                }
                if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
                {
                    return generatedextension.getMessageDefaultInstance();
                } else
                {
                    return generatedextension.fromReflectionType(fielddescriptor.getDefaultValue());
                }
            } else
            {
                return generatedextension.fromReflectionType(obj);
            }
        }

        public final Object getExtension(GeneratedExtension generatedextension, int i)
        {
            verifyExtensionContainingType(generatedextension);
            Descriptors.FieldDescriptor fielddescriptor = generatedextension.getDescriptor();
            return generatedextension.singularFromReflectionType(extensions.a(fielddescriptor, i));
        }

        public final int getExtensionCount(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            generatedextension = generatedextension.getDescriptor();
            return extensions.d(generatedextension);
        }

        protected Map getExtensionFields()
        {
            return extensions.g();
        }

        public Object getField(Descriptors.FieldDescriptor fielddescriptor)
        {
label0:
            {
label1:
                {
                    if (!fielddescriptor.isExtension())
                    {
                        break label0;
                    }
                    verifyContainingType(fielddescriptor);
                    Object obj1 = extensions.b(fielddescriptor);
                    Object obj = obj1;
                    if (obj1 == null)
                    {
                        if (fielddescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
                        {
                            break label1;
                        }
                        obj = DynamicMessage.getDefaultInstance(fielddescriptor.getMessageType());
                    }
                    return obj;
                }
                return fielddescriptor.getDefaultValue();
            }
            return getField(fielddescriptor);
        }

        public Object getRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                return extensions.a(fielddescriptor, i);
            } else
            {
                return getRepeatedField(fielddescriptor, i);
            }
        }

        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                return extensions.d(fielddescriptor);
            } else
            {
                return getRepeatedFieldCount(fielddescriptor);
            }
        }

        public final boolean hasExtension(GeneratedExtension generatedextension)
        {
            verifyExtensionContainingType(generatedextension);
            return extensions.a(generatedextension.getDescriptor());
        }

        public boolean hasField(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.isExtension())
            {
                verifyContainingType(fielddescriptor);
                return extensions.a(fielddescriptor);
            } else
            {
                return hasField(fielddescriptor);
            }
        }

        public boolean isInitialized()
        {
            return isInitialized() && extensionsAreInitialized();
        }

        protected ExtensionWriter newExtensionWriter()
        {
            return new ExtensionWriter(false);
        }

        protected ExtensionWriter newMessageSetExtensionWriter()
        {
            return new ExtensionWriter(true);
        }


        protected ExtendableMessage()
        {
            extensions = FieldSet.a();
        }

        protected ExtendableMessage(ExtendableBuilder extendablebuilder)
        {
            super(extendablebuilder);
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
            while (next != null && ((Descriptors.FieldDescriptor)next.getKey()).getNumber() < i) 
            {
                Descriptors.FieldDescriptor fielddescriptor = (Descriptors.FieldDescriptor)next.getKey();
                if (messageSetWireFormat && fielddescriptor.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !fielddescriptor.isRepeated())
                {
                    codedoutputstream.writeMessageSetExtension(fielddescriptor.getNumber(), (Message)next.getValue());
                } else
                {
                    FieldSet.a(fielddescriptor, next.getValue(), codedoutputstream);
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
        extends MessageOrBuilder
    {

        public abstract Object getExtension(GeneratedExtension generatedextension);

        public abstract Object getExtension(GeneratedExtension generatedextension, int i);

        public abstract int getExtensionCount(GeneratedExtension generatedextension);

        public abstract boolean hasExtension(GeneratedExtension generatedextension);
    }

    public static final class FieldAccessorTable
    {

        private final Descriptors.Descriptor descriptor;
        private final a fields[];

        private a getField(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.getContainingType() != descriptor)
            {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
            if (fielddescriptor.isExtension())
            {
                throw new IllegalArgumentException("This type does not have extensions.");
            } else
            {
                return fields[fielddescriptor.getIndex()];
            }
        }



        public FieldAccessorTable(Descriptors.Descriptor descriptor1, String as[], Class class1, Class class2)
        {
            descriptor = descriptor1;
            fields = new a[descriptor1.getFields().size()];
            int i = 0;
            while (i < fields.length) 
            {
                Descriptors.FieldDescriptor fielddescriptor = (Descriptors.FieldDescriptor)descriptor1.getFields().get(i);
                if (fielddescriptor.isRepeated())
                {
                    if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
                    {
                        fields[i] = new d(fielddescriptor, as[i], class1, class2);
                    } else
                    if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM)
                    {
                        fields[i] = new b(fielddescriptor, as[i], class1, class2);
                    } else
                    {
                        fields[i] = new c(fielddescriptor, as[i], class1, class2);
                    }
                } else
                if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
                {
                    fields[i] = new g(fielddescriptor, as[i], class1, class2);
                } else
                if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM)
                {
                    fields[i] = new e(fielddescriptor, as[i], class1, class2);
                } else
                {
                    fields[i] = new f(fielddescriptor, as[i], class1, class2);
                }
                i++;
            }
        }
    }

    private static interface FieldAccessorTable.a
    {

        public abstract Message.Builder a();

        public abstract Object a(Builder builder);

        public abstract Object a(Builder builder, int i);

        public abstract Object a(GeneratedMessage generatedmessage);

        public abstract Object a(GeneratedMessage generatedmessage, int i);

        public abstract void a(Builder builder, int i, Object obj);

        public abstract void a(Builder builder, Object obj);

        public abstract void b(Builder builder, Object obj);

        public abstract boolean b(Builder builder);

        public abstract boolean b(GeneratedMessage generatedmessage);

        public abstract int c(Builder builder);

        public abstract int c(GeneratedMessage generatedmessage);

        public abstract void d(Builder builder);
    }

    private static final class FieldAccessorTable.b extends FieldAccessorTable.c
    {

        private final Method k;
        private final Method l;

        public Object a(Builder builder)
        {
            ArrayList arraylist = new ArrayList();
            Object obj;
            for (builder = ((List)super.a(builder)).iterator(); builder.hasNext(); arraylist.add(GeneratedMessage.invokeOrDie(l, obj, new Object[0])))
            {
                obj = builder.next();
            }

            return Collections.unmodifiableList(arraylist);
        }

        public Object a(Builder builder, int i)
        {
            return GeneratedMessage.invokeOrDie(l, a(builder, i), new Object[0]);
        }

        public Object a(GeneratedMessage generatedmessage)
        {
            ArrayList arraylist = new ArrayList();
            Object obj;
            for (generatedmessage = ((List)super.a(generatedmessage)).iterator(); generatedmessage.hasNext(); arraylist.add(GeneratedMessage.invokeOrDie(l, obj, new Object[0])))
            {
                obj = generatedmessage.next();
            }

            return Collections.unmodifiableList(arraylist);
        }

        public Object a(GeneratedMessage generatedmessage, int i)
        {
            return GeneratedMessage.invokeOrDie(l, a(generatedmessage, i), new Object[0]);
        }

        public void a(Builder builder, int i, Object obj)
        {
            super.a(builder, i, GeneratedMessage.invokeOrDie(k, null, new Object[] {
                obj
            }));
        }

        public void b(Builder builder, Object obj)
        {
            super.b(builder, GeneratedMessage.invokeOrDie(k, null, new Object[] {
                obj
            }));
        }

        FieldAccessorTable.b(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            super(fielddescriptor, s, class1, class2);
            k = GeneratedMessage.getMethodOrDie(a, "valueOf", new Class[] {
                com/google/protobuf/Descriptors$EnumValueDescriptor
            });
            l = GeneratedMessage.getMethodOrDie(a, "getValueDescriptor", new Class[0]);
        }
    }

    private static class FieldAccessorTable.c
        implements FieldAccessorTable.a
    {

        protected final Class a;
        protected final Method b;
        protected final Method c;
        protected final Method d;
        protected final Method e;
        protected final Method f;
        protected final Method g;
        protected final Method h;
        protected final Method i;
        protected final Method j;

        public Message.Builder a()
        {
            throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
        }

        public Object a(Builder builder)
        {
            return GeneratedMessage.invokeOrDie(c, builder, new Object[0]);
        }

        public Object a(Builder builder, int k)
        {
            return GeneratedMessage.invokeOrDie(e, builder, new Object[] {
                Integer.valueOf(k)
            });
        }

        public Object a(GeneratedMessage generatedmessage)
        {
            return GeneratedMessage.invokeOrDie(b, generatedmessage, new Object[0]);
        }

        public Object a(GeneratedMessage generatedmessage, int k)
        {
            return GeneratedMessage.invokeOrDie(d, generatedmessage, new Object[] {
                Integer.valueOf(k)
            });
        }

        public void a(Builder builder, int k, Object obj)
        {
            GeneratedMessage.invokeOrDie(f, builder, new Object[] {
                Integer.valueOf(k), obj
            });
        }

        public void a(Builder builder, Object obj)
        {
            d(builder);
            for (obj = ((List)obj).iterator(); ((Iterator) (obj)).hasNext(); b(builder, ((Iterator) (obj)).next())) { }
        }

        public void b(Builder builder, Object obj)
        {
            GeneratedMessage.invokeOrDie(g, builder, new Object[] {
                obj
            });
        }

        public boolean b(Builder builder)
        {
            throw new UnsupportedOperationException("hasField() called on a singular field.");
        }

        public boolean b(GeneratedMessage generatedmessage)
        {
            throw new UnsupportedOperationException("hasField() called on a singular field.");
        }

        public int c(Builder builder)
        {
            return ((Integer)GeneratedMessage.invokeOrDie(i, builder, new Object[0])).intValue();
        }

        public int c(GeneratedMessage generatedmessage)
        {
            return ((Integer)GeneratedMessage.invokeOrDie(h, generatedmessage, new Object[0])).intValue();
        }

        public void d(Builder builder)
        {
            GeneratedMessage.invokeOrDie(j, builder, new Object[0]);
        }

        FieldAccessorTable.c(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            b = GeneratedMessage.getMethodOrDie(class1, (new StringBuilder()).append("get").append(s).append("List").toString(), new Class[0]);
            c = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("get").append(s).append("List").toString(), new Class[0]);
            d = GeneratedMessage.getMethodOrDie(class1, (new StringBuilder()).append("get").append(s).toString(), new Class[] {
                Integer.TYPE
            });
            e = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("get").append(s).toString(), new Class[] {
                Integer.TYPE
            });
            a = d.getReturnType();
            f = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("set").append(s).toString(), new Class[] {
                Integer.TYPE, a
            });
            g = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("add").append(s).toString(), new Class[] {
                a
            });
            h = GeneratedMessage.getMethodOrDie(class1, (new StringBuilder()).append("get").append(s).append("Count").toString(), new Class[0]);
            i = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("get").append(s).append("Count").toString(), new Class[0]);
            j = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("clear").append(s).toString(), new Class[0]);
        }
    }

    private static final class FieldAccessorTable.d extends FieldAccessorTable.c
    {

        private final Method k;

        private Object a(Object obj)
        {
            if (a.isInstance(obj))
            {
                return obj;
            } else
            {
                return ((Message.Builder)GeneratedMessage.invokeOrDie(k, null, new Object[0])).mergeFrom((Message)obj).build();
            }
        }

        public Message.Builder a()
        {
            return (Message.Builder)GeneratedMessage.invokeOrDie(k, null, new Object[0]);
        }

        public void a(Builder builder, int i, Object obj)
        {
            super.a(builder, i, a(obj));
        }

        public void b(Builder builder, Object obj)
        {
            super.b(builder, a(obj));
        }

        FieldAccessorTable.d(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            super(fielddescriptor, s, class1, class2);
            k = GeneratedMessage.getMethodOrDie(a, "newBuilder", new Class[0]);
        }
    }

    private static final class FieldAccessorTable.e extends FieldAccessorTable.f
    {

        private Method h;
        private Method i;

        public Object a(Builder builder)
        {
            return GeneratedMessage.invokeOrDie(i, a(builder), new Object[0]);
        }

        public Object a(GeneratedMessage generatedmessage)
        {
            return GeneratedMessage.invokeOrDie(i, a(generatedmessage), new Object[0]);
        }

        public void a(Builder builder, Object obj)
        {
            super.a(builder, GeneratedMessage.invokeOrDie(h, null, new Object[] {
                obj
            }));
        }

        FieldAccessorTable.e(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            super(fielddescriptor, s, class1, class2);
            h = GeneratedMessage.getMethodOrDie(a, "valueOf", new Class[] {
                com/google/protobuf/Descriptors$EnumValueDescriptor
            });
            i = GeneratedMessage.getMethodOrDie(a, "getValueDescriptor", new Class[0]);
        }
    }

    private static class FieldAccessorTable.f
        implements FieldAccessorTable.a
    {

        protected final Class a;
        protected final Method b;
        protected final Method c;
        protected final Method d;
        protected final Method e;
        protected final Method f;
        protected final Method g;

        public Message.Builder a()
        {
            throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
        }

        public Object a(Builder builder)
        {
            return GeneratedMessage.invokeOrDie(c, builder, new Object[0]);
        }

        public Object a(Builder builder, int i)
        {
            throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
        }

        public Object a(GeneratedMessage generatedmessage)
        {
            return GeneratedMessage.invokeOrDie(b, generatedmessage, new Object[0]);
        }

        public Object a(GeneratedMessage generatedmessage, int i)
        {
            throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
        }

        public void a(Builder builder, int i, Object obj)
        {
            throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
        }

        public void a(Builder builder, Object obj)
        {
            GeneratedMessage.invokeOrDie(d, builder, new Object[] {
                obj
            });
        }

        public void b(Builder builder, Object obj)
        {
            throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
        }

        public boolean b(Builder builder)
        {
            return ((Boolean)GeneratedMessage.invokeOrDie(f, builder, new Object[0])).booleanValue();
        }

        public boolean b(GeneratedMessage generatedmessage)
        {
            return ((Boolean)GeneratedMessage.invokeOrDie(e, generatedmessage, new Object[0])).booleanValue();
        }

        public int c(Builder builder)
        {
            throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
        }

        public int c(GeneratedMessage generatedmessage)
        {
            throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
        }

        public void d(Builder builder)
        {
            GeneratedMessage.invokeOrDie(g, builder, new Object[0]);
        }

        FieldAccessorTable.f(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            b = GeneratedMessage.getMethodOrDie(class1, (new StringBuilder()).append("get").append(s).toString(), new Class[0]);
            c = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("get").append(s).toString(), new Class[0]);
            a = b.getReturnType();
            d = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("set").append(s).toString(), new Class[] {
                a
            });
            e = GeneratedMessage.getMethodOrDie(class1, (new StringBuilder()).append("has").append(s).toString(), new Class[0]);
            f = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("has").append(s).toString(), new Class[0]);
            g = GeneratedMessage.getMethodOrDie(class2, (new StringBuilder()).append("clear").append(s).toString(), new Class[0]);
        }
    }

    private static final class FieldAccessorTable.g extends FieldAccessorTable.f
    {

        private final Method h;

        private Object a(Object obj)
        {
            if (a.isInstance(obj))
            {
                return obj;
            } else
            {
                return ((Message.Builder)GeneratedMessage.invokeOrDie(h, null, new Object[0])).mergeFrom((Message)obj).build();
            }
        }

        public Message.Builder a()
        {
            return (Message.Builder)GeneratedMessage.invokeOrDie(h, null, new Object[0]);
        }

        public void a(Builder builder, Object obj)
        {
            super.a(builder, a(obj));
        }

        FieldAccessorTable.g(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            super(fielddescriptor, s, class1, class2);
            h = GeneratedMessage.getMethodOrDie(a, "newBuilder", new Class[0]);
        }
    }

    public static final class GeneratedExtension
    {

        private a descriptorRetriever;
        private final Method enumGetValueDescriptor;
        private final Method enumValueOf;
        private final Message messageDefaultInstance;
        private final Class singularType;

        private Object fromReflectionType(Object obj)
        {
label0:
            {
                Object obj1;
label1:
                {
                    Descriptors.FieldDescriptor fielddescriptor = getDescriptor();
                    if (!fielddescriptor.isRepeated())
                    {
                        break label0;
                    }
                    if (fielddescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
                    {
                        obj1 = obj;
                        if (fielddescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.ENUM)
                        {
                            break label1;
                        }
                    }
                    obj1 = new ArrayList();
                    for (obj = ((List)obj).iterator(); ((Iterator) (obj)).hasNext(); ((List) (obj1)).add(singularFromReflectionType(((Iterator) (obj)).next()))) { }
                }
                return obj1;
            }
            return singularFromReflectionType(obj);
        }

        private Object singularFromReflectionType(Object obj)
        {
            Descriptors.FieldDescriptor fielddescriptor = getDescriptor();
            static class _cls2
            {

                static final int a[];

                static 
                {
                    a = new int[Descriptors.FieldDescriptor.JavaType.values().length];
                    try
                    {
                        a[Descriptors.FieldDescriptor.JavaType.MESSAGE.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.JavaType.ENUM.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            _cls2.a[fielddescriptor.getJavaType().ordinal()];
            JVM INSTR tableswitch 1 2: default 40
        //                       1 42
        //                       2 77;
               goto _L1 _L2 _L3
_L1:
            return obj;
_L2:
            if (!singularType.isInstance(obj))
            {
                return messageDefaultInstance.newBuilderForType().mergeFrom((Message)obj).build();
            }
              goto _L1
_L3:
            return GeneratedMessage.invokeOrDie(enumValueOf, null, new Object[] {
                (Descriptors.EnumValueDescriptor)obj
            });
        }

        private Object singularToReflectionType(Object obj)
        {
            Descriptors.FieldDescriptor fielddescriptor = getDescriptor();
            switch (_cls2.a[fielddescriptor.getJavaType().ordinal()])
            {
            default:
                return obj;

            case 2: // '\002'
                return GeneratedMessage.invokeOrDie(enumGetValueDescriptor, obj, new Object[0]);
            }
        }

        private Object toReflectionType(Object obj)
        {
            Descriptors.FieldDescriptor fielddescriptor = getDescriptor();
            if (fielddescriptor.isRepeated())
            {
                Object obj1 = obj;
                if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM)
                {
                    obj1 = new ArrayList();
                    for (obj = ((List)obj).iterator(); ((Iterator) (obj)).hasNext(); ((List) (obj1)).add(singularToReflectionType(((Iterator) (obj)).next()))) { }
                }
                return obj1;
            } else
            {
                return singularToReflectionType(obj);
            }
        }

        public Descriptors.FieldDescriptor getDescriptor()
        {
            if (descriptorRetriever == null)
            {
                throw new IllegalStateException("getDescriptor() called before internalInit()");
            } else
            {
                return descriptorRetriever.a();
            }
        }

        public Message getMessageDefaultInstance()
        {
            return messageDefaultInstance;
        }

        public void internalInit(Descriptors.FieldDescriptor fielddescriptor)
        {
            if (descriptorRetriever != null)
            {
                throw new IllegalStateException("Already initialized.");
            } else
            {
                descriptorRetriever = new a(this, fielddescriptor) {

                    final Descriptors.FieldDescriptor a;
                    final GeneratedExtension b;

                    public Descriptors.FieldDescriptor a()
                    {
                        return a;
                    }

            
            {
                b = generatedextension;
                a = fielddescriptor;
                super();
            }
                };
                return;
            }
        }





        private GeneratedExtension(a a1, Class class1, Message message)
        {
            if (com/google/protobuf/Message.isAssignableFrom(class1) && !class1.isInstance(message))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Bad messageDefaultInstance for ").append(class1.getName()).toString());
            }
            descriptorRetriever = a1;
            singularType = class1;
            messageDefaultInstance = message;
            if (com/google/protobuf/ProtocolMessageEnum.isAssignableFrom(class1))
            {
                enumValueOf = GeneratedMessage.getMethodOrDie(class1, "valueOf", new Class[] {
                    com/google/protobuf/Descriptors$EnumValueDescriptor
                });
                enumGetValueDescriptor = GeneratedMessage.getMethodOrDie(class1, "getValueDescriptor", new Class[0]);
                return;
            } else
            {
                enumValueOf = null;
                enumGetValueDescriptor = null;
                return;
            }
        }

    }

    private static interface a
    {

        public abstract Descriptors.FieldDescriptor a();
    }


    protected static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1L;
    private final UnknownFieldSet unknownFields;

    protected GeneratedMessage()
    {
        unknownFields = UnknownFieldSet.getDefaultInstance();
    }

    protected GeneratedMessage(Builder builder)
    {
        unknownFields = builder.getUnknownFields();
    }

    static void enableAlwaysUseFieldBuildersForTesting()
    {
        alwaysUseFieldBuilders = true;
    }

    private Map getAllFieldsMutable()
    {
        TreeMap treemap = new TreeMap();
        Iterator iterator = internalGetFieldAccessorTable().descriptor.getFields().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Descriptors.FieldDescriptor fielddescriptor = (Descriptors.FieldDescriptor)iterator.next();
            if (fielddescriptor.isRepeated())
            {
                List list = (List)getField(fielddescriptor);
                if (!list.isEmpty())
                {
                    treemap.put(fielddescriptor, list);
                }
            } else
            if (hasField(fielddescriptor))
            {
                treemap.put(fielddescriptor, getField(fielddescriptor));
            }
        } while (true);
        return treemap;
    }

    private static transient Method getMethodOrDie(Class class1, String s, Class aclass[])
    {
        try
        {
            aclass = class1.getMethod(s, aclass);
        }
        // Misplaced declaration of an exception variable
        catch (Class aclass[])
        {
            throw new RuntimeException((new StringBuilder()).append("Generated message class \"").append(class1.getName()).append("\" missing method \"").append(s).append("\".").toString(), aclass);
        }
        return aclass;
    }

    private static transient Object invokeOrDie(Method method, Object obj, Object aobj[])
    {
        try
        {
            method = ((Method) (method.invoke(obj, aobj)));
        }
        // Misplaced declaration of an exception variable
        catch (Method method)
        {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", method);
        }
        // Misplaced declaration of an exception variable
        catch (Method method)
        {
            method = method.getCause();
            if (method instanceof RuntimeException)
            {
                throw (RuntimeException)method;
            }
            if (method instanceof Error)
            {
                throw (Error)method;
            } else
            {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", method);
            }
        }
        return method;
    }

    public static GeneratedExtension newFileScopedGeneratedExtension(Class class1, Message message)
    {
        return new GeneratedExtension(null, class1, message);
    }

    public static GeneratedExtension newMessageScopedGeneratedExtension(Message message, int i, Class class1, Message message1)
    {
        return new GeneratedExtension(new a(message, i) {

            final Message a;
            final int b;

            public Descriptors.FieldDescriptor a()
            {
                return (Descriptors.FieldDescriptor)a.getDescriptorForType().getExtensions().get(b);
            }

            
            {
                a = message;
                b = i;
                super();
            }
        }, class1, message1);
    }

    public Map getAllFields()
    {
        return Collections.unmodifiableMap(getAllFieldsMutable());
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
        return internalGetFieldAccessorTable().descriptor;
    }

    public Object getField(Descriptors.FieldDescriptor fielddescriptor)
    {
        return internalGetFieldAccessorTable().getField(fielddescriptor).a(this);
    }

    public Object getRepeatedField(Descriptors.FieldDescriptor fielddescriptor, int i)
    {
        return internalGetFieldAccessorTable().getField(fielddescriptor).a(this, i);
    }

    public int getRepeatedFieldCount(Descriptors.FieldDescriptor fielddescriptor)
    {
        return internalGetFieldAccessorTable().getField(fielddescriptor).c(this);
    }

    public final UnknownFieldSet getUnknownFields()
    {
        return unknownFields;
    }

    public boolean hasField(Descriptors.FieldDescriptor fielddescriptor)
    {
        return internalGetFieldAccessorTable().getField(fielddescriptor).b(this);
    }

    protected abstract FieldAccessorTable internalGetFieldAccessorTable();

    public boolean isInitialized()
    {
        Iterator iterator = getDescriptorForType().getFields().iterator();
_L2:
        Object obj;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_134;
            }
            obj = (Descriptors.FieldDescriptor)iterator.next();
            if (((Descriptors.FieldDescriptor) (obj)).isRequired() && !hasField(((Descriptors.FieldDescriptor) (obj))))
            {
                return false;
            }
        } while (((Descriptors.FieldDescriptor) (obj)).getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE);
        if (!((Descriptors.FieldDescriptor) (obj)).isRepeated())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = ((List)getField(((Descriptors.FieldDescriptor) (obj)))).iterator();
_L4:
        if (!((Iterator) (obj)).hasNext()) goto _L2; else goto _L1
_L1:
        if (((Message)((Iterator) (obj)).next()).isInitialized()) goto _L4; else goto _L3
_L3:
        return false;
        if (!hasField(((Descriptors.FieldDescriptor) (obj))) || ((Message)getField(((Descriptors.FieldDescriptor) (obj)))).isInitialized()) goto _L2; else goto _L5
_L5:
        return false;
        return true;
    }

    protected abstract Message.Builder newBuilderForType(BuilderParent builderparent);

    protected Object writeReplace()
        throws ObjectStreamException
    {
        return new GeneratedMessageLite.b(this);
    }

    static 
    {
        alwaysUseFieldBuilders = false;
    }



}
