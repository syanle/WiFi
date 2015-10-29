// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.protobuf:
//            Message, InvalidProtocolBufferException, ExtensionRegistry, TextFormat, 
//            MessageLite, ByteString

public final class Descriptors
{
    public static final class Descriptor
        implements b
    {

        private final Descriptor containingType;
        private final EnumDescriptor enumTypes[];
        private final FieldDescriptor extensions[];
        private final FieldDescriptor fields[];
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private final Descriptor nestedTypes[];
        private DescriptorProtos.DescriptorProto proto;

        private void crossLink()
            throws DescriptorValidationException
        {
            boolean flag = false;
            Object aobj[] = nestedTypes;
            int l = aobj.length;
            for (int i = 0; i < l; i++)
            {
                aobj[i].crossLink();
            }

            aobj = fields;
            l = aobj.length;
            for (int j = 0; j < l; j++)
            {
                aobj[j].crossLink();
            }

            aobj = extensions;
            l = aobj.length;
            for (int k = ((flag) ? 1 : 0); k < l; k++)
            {
                aobj[k].crossLink();
            }

        }

        private void setProto(DescriptorProtos.DescriptorProto descriptorproto)
        {
            boolean flag = false;
            proto = descriptorproto;
            for (int i = 0; i < nestedTypes.length; i++)
            {
                nestedTypes[i].setProto(descriptorproto.getNestedType(i));
            }

            for (int j = 0; j < enumTypes.length; j++)
            {
                enumTypes[j].setProto(descriptorproto.getEnumType(j));
            }

            int k = 0;
            int l;
            do
            {
                l = ((flag) ? 1 : 0);
                if (k >= fields.length)
                {
                    break;
                }
                fields[k].setProto(descriptorproto.getField(k));
                k++;
            } while (true);
            for (; l < extensions.length; l++)
            {
                extensions[l].setProto(descriptorproto.getExtension(l));
            }

        }

        public EnumDescriptor findEnumTypeByName(String s)
        {
            s = file.pool.a((new StringBuilder()).append(fullName).append('.').append(s).toString());
            if (s != null && (s instanceof EnumDescriptor))
            {
                return (EnumDescriptor)s;
            } else
            {
                return null;
            }
        }

        public FieldDescriptor findFieldByName(String s)
        {
            s = file.pool.a((new StringBuilder()).append(fullName).append('.').append(s).toString());
            if (s != null && (s instanceof FieldDescriptor))
            {
                return (FieldDescriptor)s;
            } else
            {
                return null;
            }
        }

        public FieldDescriptor findFieldByNumber(int i)
        {
            return (FieldDescriptor)a.a(file.pool).get(new a.a(this, i));
        }

        public Descriptor findNestedTypeByName(String s)
        {
            s = file.pool.a((new StringBuilder()).append(fullName).append('.').append(s).toString());
            if (s != null && (s instanceof Descriptor))
            {
                return (Descriptor)s;
            } else
            {
                return null;
            }
        }

        public Descriptor getContainingType()
        {
            return containingType;
        }

        public List getEnumTypes()
        {
            return Collections.unmodifiableList(Arrays.asList(enumTypes));
        }

        public List getExtensions()
        {
            return Collections.unmodifiableList(Arrays.asList(extensions));
        }

        public List getFields()
        {
            return Collections.unmodifiableList(Arrays.asList(fields));
        }

        public FileDescriptor getFile()
        {
            return file;
        }

        public String getFullName()
        {
            return fullName;
        }

        public int getIndex()
        {
            return index;
        }

        public String getName()
        {
            return proto.getName();
        }

        public List getNestedTypes()
        {
            return Collections.unmodifiableList(Arrays.asList(nestedTypes));
        }

        public DescriptorProtos.MessageOptions getOptions()
        {
            return proto.getOptions();
        }

        public boolean isExtensionNumber(int i)
        {
            for (Iterator iterator = proto.getExtensionRangeList().iterator(); iterator.hasNext();)
            {
                DescriptorProtos.DescriptorProto.ExtensionRange extensionrange = (DescriptorProtos.DescriptorProto.ExtensionRange)iterator.next();
                if (extensionrange.getStart() <= i && i < extensionrange.getEnd())
                {
                    return true;
                }
            }

            return false;
        }

        public DescriptorProtos.DescriptorProto toProto()
        {
            return proto;
        }

        public volatile Message toProto()
        {
            return toProto();
        }



        private Descriptor(DescriptorProtos.DescriptorProto descriptorproto, FileDescriptor filedescriptor, Descriptor descriptor, int i)
            throws DescriptorValidationException
        {
            index = i;
            proto = descriptorproto;
            fullName = Descriptors.computeFullName(filedescriptor, descriptor, descriptorproto.getName());
            file = filedescriptor;
            containingType = descriptor;
            nestedTypes = new Descriptor[descriptorproto.getNestedTypeCount()];
            for (i = 0; i < descriptorproto.getNestedTypeCount(); i++)
            {
                nestedTypes[i] = new Descriptor(descriptorproto.getNestedType(i), filedescriptor, this, i);
            }

            enumTypes = new EnumDescriptor[descriptorproto.getEnumTypeCount()];
            for (i = 0; i < descriptorproto.getEnumTypeCount(); i++)
            {
                enumTypes[i] = new EnumDescriptor(descriptorproto.getEnumType(i), filedescriptor, this, i);
            }

            fields = new FieldDescriptor[descriptorproto.getFieldCount()];
            for (i = 0; i < descriptorproto.getFieldCount(); i++)
            {
                fields[i] = new FieldDescriptor(descriptorproto.getField(i), filedescriptor, this, i, false);
            }

            extensions = new FieldDescriptor[descriptorproto.getExtensionCount()];
            for (i = 0; i < descriptorproto.getExtensionCount(); i++)
            {
                extensions[i] = new FieldDescriptor(descriptorproto.getExtension(i), filedescriptor, this, i, true);
            }

            filedescriptor.pool.a(this);
        }

    }

    public static class DescriptorValidationException extends Exception
    {

        private static final long serialVersionUID = 0x4fccd5afd98283ccL;
        private final String description;
        private final String name;
        private final Message proto;

        public String getDescription()
        {
            return description;
        }

        public Message getProblemProto()
        {
            return proto;
        }

        public String getProblemSymbolName()
        {
            return name;
        }

        private DescriptorValidationException(FileDescriptor filedescriptor, String s)
        {
            super((new StringBuilder()).append(filedescriptor.getName()).append(": ").append(s).toString());
            name = filedescriptor.getName();
            proto = filedescriptor.toProto();
            description = s;
        }


        private DescriptorValidationException(b b1, String s)
        {
            super((new StringBuilder()).append(b1.getFullName()).append(": ").append(s).toString());
            name = b1.getFullName();
            proto = b1.toProto();
            description = s;
        }


        private DescriptorValidationException(b b1, String s, Throwable throwable)
        {
            this(b1, s);
            initCause(throwable);
        }

    }

    public static final class EnumDescriptor
        implements b, Internal.EnumLiteMap
    {

        private final Descriptor containingType;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.EnumDescriptorProto proto;
        private EnumValueDescriptor values[];

        private void setProto(DescriptorProtos.EnumDescriptorProto enumdescriptorproto)
        {
            proto = enumdescriptorproto;
            for (int i = 0; i < values.length; i++)
            {
                values[i].setProto(enumdescriptorproto.getValue(i));
            }

        }

        public EnumValueDescriptor findValueByName(String s)
        {
            s = file.pool.a((new StringBuilder()).append(fullName).append('.').append(s).toString());
            if (s != null && (s instanceof EnumValueDescriptor))
            {
                return (EnumValueDescriptor)s;
            } else
            {
                return null;
            }
        }

        public EnumValueDescriptor findValueByNumber(int i)
        {
            return (EnumValueDescriptor)a.b(file.pool).get(new a.a(this, i));
        }

        public volatile Internal.EnumLite findValueByNumber(int i)
        {
            return findValueByNumber(i);
        }

        public Descriptor getContainingType()
        {
            return containingType;
        }

        public FileDescriptor getFile()
        {
            return file;
        }

        public String getFullName()
        {
            return fullName;
        }

        public int getIndex()
        {
            return index;
        }

        public String getName()
        {
            return proto.getName();
        }

        public DescriptorProtos.EnumOptions getOptions()
        {
            return proto.getOptions();
        }

        public List getValues()
        {
            return Collections.unmodifiableList(Arrays.asList(values));
        }

        public DescriptorProtos.EnumDescriptorProto toProto()
        {
            return proto;
        }

        public volatile Message toProto()
        {
            return toProto();
        }


        private EnumDescriptor(DescriptorProtos.EnumDescriptorProto enumdescriptorproto, FileDescriptor filedescriptor, Descriptor descriptor, int i)
            throws DescriptorValidationException
        {
            index = i;
            proto = enumdescriptorproto;
            fullName = Descriptors.computeFullName(filedescriptor, descriptor, enumdescriptorproto.getName());
            file = filedescriptor;
            containingType = descriptor;
            if (enumdescriptorproto.getValueCount() == 0)
            {
                throw new DescriptorValidationException(this, "Enums must contain at least one value.");
            }
            values = new EnumValueDescriptor[enumdescriptorproto.getValueCount()];
            for (i = 0; i < enumdescriptorproto.getValueCount(); i++)
            {
                values[i] = new EnumValueDescriptor(enumdescriptorproto.getValue(i), filedescriptor, this, i);
            }

            filedescriptor.pool.a(this);
        }

    }

    public static final class EnumValueDescriptor
        implements b, Internal.EnumLite
    {

        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.EnumValueDescriptorProto proto;
        private final EnumDescriptor type;

        private void setProto(DescriptorProtos.EnumValueDescriptorProto enumvaluedescriptorproto)
        {
            proto = enumvaluedescriptorproto;
        }

        public FileDescriptor getFile()
        {
            return file;
        }

        public String getFullName()
        {
            return fullName;
        }

        public int getIndex()
        {
            return index;
        }

        public String getName()
        {
            return proto.getName();
        }

        public int getNumber()
        {
            return proto.getNumber();
        }

        public DescriptorProtos.EnumValueOptions getOptions()
        {
            return proto.getOptions();
        }

        public EnumDescriptor getType()
        {
            return type;
        }

        public DescriptorProtos.EnumValueDescriptorProto toProto()
        {
            return proto;
        }

        public volatile Message toProto()
        {
            return toProto();
        }


        private EnumValueDescriptor(DescriptorProtos.EnumValueDescriptorProto enumvaluedescriptorproto, FileDescriptor filedescriptor, EnumDescriptor enumdescriptor, int i)
            throws DescriptorValidationException
        {
            index = i;
            proto = enumvaluedescriptorproto;
            file = filedescriptor;
            type = enumdescriptor;
            fullName = (new StringBuilder()).append(enumdescriptor.getFullName()).append('.').append(enumvaluedescriptorproto.getName()).toString();
            filedescriptor.pool.a(this);
            filedescriptor.pool.a(this);
        }

    }

    public static final class FieldDescriptor
        implements b, FieldSet.FieldDescriptorLite, Comparable
    {

        private static final WireFormat.FieldType table[] = WireFormat.FieldType.values();
        private Descriptor containingType;
        private Object defaultValue;
        private EnumDescriptor enumType;
        private final Descriptor extensionScope;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private Descriptor messageType;
        private DescriptorProtos.FieldDescriptorProto proto;
        private Type type;

        private void crossLink()
            throws DescriptorValidationException
        {
            if (proto.hasExtendee())
            {
                b b1 = file.pool.a(proto.getExtendee(), this);
                if (!(b1 instanceof Descriptor))
                {
                    throw new DescriptorValidationException(this, (new StringBuilder()).append('"').append(proto.getExtendee()).append("\" is not a message type.").toString());
                }
                containingType = (Descriptor)b1;
                if (!getContainingType().isExtensionNumber(getNumber()))
                {
                    throw new DescriptorValidationException(this, (new StringBuilder()).append('"').append(getContainingType().getFullName()).append("\" does not declare ").append(getNumber()).append(" as an extension number.").toString());
                }
            }
            if (!proto.hasTypeName()) goto _L2; else goto _L1
_L1:
            b b2;
            b2 = file.pool.a(proto.getTypeName(), this);
            if (!proto.hasType())
            {
                if (b2 instanceof Descriptor)
                {
                    type = Type.MESSAGE;
                } else
                if (b2 instanceof EnumDescriptor)
                {
                    type = Type.ENUM;
                } else
                {
                    throw new DescriptorValidationException(this, (new StringBuilder()).append('"').append(proto.getTypeName()).append("\" is not a type.").toString());
                }
            }
            if (getJavaType() != JavaType.MESSAGE) goto _L4; else goto _L3
_L3:
            if (!(b2 instanceof Descriptor))
            {
                throw new DescriptorValidationException(this, (new StringBuilder()).append('"').append(proto.getTypeName()).append("\" is not a message type.").toString());
            }
            messageType = (Descriptor)b2;
            if (proto.hasDefaultValue())
            {
                throw new DescriptorValidationException(this, "Messages can't have default values.");
            }
              goto _L5
_L4:
            if (getJavaType() != JavaType.ENUM) goto _L7; else goto _L6
_L6:
            if (!(b2 instanceof EnumDescriptor))
            {
                throw new DescriptorValidationException(this, (new StringBuilder()).append('"').append(proto.getTypeName()).append("\" is not an enum type.").toString());
            }
            enumType = (EnumDescriptor)b2;
              goto _L5
_L7:
            throw new DescriptorValidationException(this, "Field with primitive type has type_name.");
_L2:
            if (getJavaType() == JavaType.MESSAGE || getJavaType() == JavaType.ENUM)
            {
                throw new DescriptorValidationException(this, "Field with message or enum type missing type_name.");
            }
            if (true) goto _L5; else goto _L8
_L5:
            static class _cls1
            {

                static final int a[];
                static final int b[];

                static 
                {
                    b = new int[FieldDescriptor.JavaType.values().length];
                    try
                    {
                        b[FieldDescriptor.JavaType.ENUM.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror19) { }
                    try
                    {
                        b[FieldDescriptor.JavaType.MESSAGE.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror18) { }
                    a = new int[FieldDescriptor.Type.values().length];
                    try
                    {
                        a[FieldDescriptor.Type.INT32.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror17) { }
                    try
                    {
                        a[FieldDescriptor.Type.SINT32.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror16) { }
                    try
                    {
                        a[FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror15) { }
                    try
                    {
                        a[FieldDescriptor.Type.UINT32.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror14) { }
                    try
                    {
                        a[FieldDescriptor.Type.FIXED32.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror13) { }
                    try
                    {
                        a[FieldDescriptor.Type.INT64.ordinal()] = 6;
                    }
                    catch (NoSuchFieldError nosuchfielderror12) { }
                    try
                    {
                        a[FieldDescriptor.Type.SINT64.ordinal()] = 7;
                    }
                    catch (NoSuchFieldError nosuchfielderror11) { }
                    try
                    {
                        a[FieldDescriptor.Type.SFIXED64.ordinal()] = 8;
                    }
                    catch (NoSuchFieldError nosuchfielderror10) { }
                    try
                    {
                        a[FieldDescriptor.Type.UINT64.ordinal()] = 9;
                    }
                    catch (NoSuchFieldError nosuchfielderror9) { }
                    try
                    {
                        a[FieldDescriptor.Type.FIXED64.ordinal()] = 10;
                    }
                    catch (NoSuchFieldError nosuchfielderror8) { }
                    try
                    {
                        a[FieldDescriptor.Type.FLOAT.ordinal()] = 11;
                    }
                    catch (NoSuchFieldError nosuchfielderror7) { }
                    try
                    {
                        a[FieldDescriptor.Type.DOUBLE.ordinal()] = 12;
                    }
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    try
                    {
                        a[FieldDescriptor.Type.BOOL.ordinal()] = 13;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    try
                    {
                        a[FieldDescriptor.Type.STRING.ordinal()] = 14;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    try
                    {
                        a[FieldDescriptor.Type.BYTES.ordinal()] = 15;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        a[FieldDescriptor.Type.ENUM.ordinal()] = 16;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[FieldDescriptor.Type.GROUP.ordinal()] = 18;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            if (!proto.hasDefaultValue())
            {
                break; /* Loop/switch isn't completed */
            }
            if (isRepeated())
            {
                throw new DescriptorValidationException(this, "Repeated fields cannot have default values.", null);
            }
            int i;
            try
            {
                i = _cls1.a[getType().ordinal()];
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new DescriptorValidationException(this, (new StringBuilder()).append("Could not parse default value: \"").append(proto.getDefaultValue()).append('"').toString(), numberformatexception, null);
            }
            i;
            JVM INSTR tableswitch 1 18: default 584
        //                       1 659
        //                       2 659
        //                       3 659
        //                       4 722
        //                       5 722
        //                       6 742
        //                       7 742
        //                       8 742
        //                       9 762
        //                       10 762
        //                       11 782
        //                       12 886
        //                       13 990
        //                       14 1007
        //                       15 1021
        //                       16 1073
        //                       17 1139
        //                       18 1139;
               goto _L9 _L10 _L10 _L10 _L11 _L11 _L12 _L12 _L12 _L13 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L20
_L9:
            if (!isExtension())
            {
                file.pool.a(this);
            }
            TextFormat.a a1;
            if (containingType != null && containingType.getOptions().getMessageSetWireFormat())
            {
                if (isExtension())
                {
                    if (!isOptional() || getType() != Type.MESSAGE)
                    {
                        throw new DescriptorValidationException(this, "Extensions of MessageSets must be optional messages.", null);
                    }
                } else
                {
                    throw new DescriptorValidationException(this, "MessageSets cannot have fields, only extensions.", null);
                }
            }
            break; /* Loop/switch isn't completed */
_L10:
            defaultValue = Integer.valueOf(TextFormat.parseInt32(proto.getDefaultValue()));
            continue; /* Loop/switch isn't completed */
_L11:
            defaultValue = Integer.valueOf(TextFormat.parseUInt32(proto.getDefaultValue()));
            continue; /* Loop/switch isn't completed */
_L12:
            defaultValue = Long.valueOf(TextFormat.parseInt64(proto.getDefaultValue()));
            continue; /* Loop/switch isn't completed */
_L13:
            defaultValue = Long.valueOf(TextFormat.parseUInt64(proto.getDefaultValue()));
            continue; /* Loop/switch isn't completed */
_L14:
            if (proto.getDefaultValue().equals("inf"))
            {
                defaultValue = Float.valueOf((1.0F / 0.0F));
                continue; /* Loop/switch isn't completed */
            }
            if (proto.getDefaultValue().equals("-inf"))
            {
                defaultValue = Float.valueOf((-1.0F / 0.0F));
                continue; /* Loop/switch isn't completed */
            }
            if (proto.getDefaultValue().equals("nan"))
            {
                defaultValue = Float.valueOf((0.0F / 0.0F));
                continue; /* Loop/switch isn't completed */
            }
            defaultValue = Float.valueOf(proto.getDefaultValue());
            continue; /* Loop/switch isn't completed */
_L15:
            if (proto.getDefaultValue().equals("inf"))
            {
                defaultValue = Double.valueOf((1.0D / 0.0D));
                continue; /* Loop/switch isn't completed */
            }
            if (proto.getDefaultValue().equals("-inf"))
            {
                defaultValue = Double.valueOf((-1.0D / 0.0D));
                continue; /* Loop/switch isn't completed */
            }
            if (proto.getDefaultValue().equals("nan"))
            {
                defaultValue = Double.valueOf((0.0D / 0.0D));
                continue; /* Loop/switch isn't completed */
            }
            defaultValue = Double.valueOf(proto.getDefaultValue());
            continue; /* Loop/switch isn't completed */
_L16:
            defaultValue = Boolean.valueOf(proto.getDefaultValue());
            continue; /* Loop/switch isn't completed */
_L17:
            defaultValue = proto.getDefaultValue();
            continue; /* Loop/switch isn't completed */
_L18:
            defaultValue = TextFormat.unescapeBytes(proto.getDefaultValue());
            continue; /* Loop/switch isn't completed */
            a1;
            throw new DescriptorValidationException(this, (new StringBuilder()).append("Couldn't parse default value: ").append(a1.getMessage()).toString(), a1, null);
_L19:
            defaultValue = enumType.findValueByName(proto.getDefaultValue());
            if (defaultValue == null)
            {
                throw new DescriptorValidationException(this, (new StringBuilder()).append("Unknown enum default value: \"").append(proto.getDefaultValue()).append('"').toString(), null);
            }
            continue; /* Loop/switch isn't completed */
_L20:
            throw new DescriptorValidationException(this, "Message type had default value.", null);
_L8:
            if (isRepeated())
            {
                defaultValue = Collections.emptyList();
                continue; /* Loop/switch isn't completed */
            }
            switch (_cls1.b[getJavaType().ordinal()])
            {
            default:
                defaultValue = getJavaType().defaultDefault;
                break;

            case 1: // '\001'
                defaultValue = enumType.getValues().get(0);
                break;

            case 2: // '\002'
                defaultValue = null;
                break;
            }
            if (true) goto _L9; else goto _L21
_L21:
        }

        private void setProto(DescriptorProtos.FieldDescriptorProto fielddescriptorproto)
        {
            proto = fielddescriptorproto;
        }

        public int compareTo(FieldDescriptor fielddescriptor)
        {
            if (fielddescriptor.containingType != containingType)
            {
                throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
            } else
            {
                return getNumber() - fielddescriptor.getNumber();
            }
        }

        public volatile int compareTo(Object obj)
        {
            return compareTo((FieldDescriptor)obj);
        }

        public Descriptor getContainingType()
        {
            return containingType;
        }

        public Object getDefaultValue()
        {
            if (getJavaType() == JavaType.MESSAGE)
            {
                throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
            } else
            {
                return defaultValue;
            }
        }

        public EnumDescriptor getEnumType()
        {
            if (getJavaType() != JavaType.ENUM)
            {
                throw new UnsupportedOperationException("This field is not of enum type.");
            } else
            {
                return enumType;
            }
        }

        public volatile Internal.EnumLiteMap getEnumType()
        {
            return getEnumType();
        }

        public Descriptor getExtensionScope()
        {
            if (!isExtension())
            {
                throw new UnsupportedOperationException("This field is not an extension.");
            } else
            {
                return extensionScope;
            }
        }

        public FileDescriptor getFile()
        {
            return file;
        }

        public String getFullName()
        {
            return fullName;
        }

        public int getIndex()
        {
            return index;
        }

        public JavaType getJavaType()
        {
            return type.getJavaType();
        }

        public WireFormat.JavaType getLiteJavaType()
        {
            return getLiteType().getJavaType();
        }

        public WireFormat.FieldType getLiteType()
        {
            return table[type.ordinal()];
        }

        public Descriptor getMessageType()
        {
            if (getJavaType() != JavaType.MESSAGE)
            {
                throw new UnsupportedOperationException("This field is not of message type.");
            } else
            {
                return messageType;
            }
        }

        public String getName()
        {
            return proto.getName();
        }

        public int getNumber()
        {
            return proto.getNumber();
        }

        public DescriptorProtos.FieldOptions getOptions()
        {
            return proto.getOptions();
        }

        public Type getType()
        {
            return type;
        }

        public boolean hasDefaultValue()
        {
            return proto.hasDefaultValue();
        }

        public MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messagelite)
        {
            return ((Message.Builder)builder).mergeFrom((Message)messagelite);
        }

        public boolean isExtension()
        {
            return proto.hasExtendee();
        }

        public boolean isOptional()
        {
            return proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_OPTIONAL;
        }

        public boolean isPackable()
        {
            return isRepeated() && getLiteType().isPackable();
        }

        public boolean isPacked()
        {
            return getOptions().getPacked();
        }

        public boolean isRepeated()
        {
            return proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REPEATED;
        }

        public boolean isRequired()
        {
            return proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REQUIRED;
        }

        public DescriptorProtos.FieldDescriptorProto toProto()
        {
            return proto;
        }

        public volatile Message toProto()
        {
            return toProto();
        }

        static 
        {
            if (Type.values().length != DescriptorProtos.FieldDescriptorProto.Type.values().length)
            {
                throw new RuntimeException("descriptor.proto has a new declared type but Desrciptors.java wasn't updated.");
            }
        }



        private FieldDescriptor(DescriptorProtos.FieldDescriptorProto fielddescriptorproto, FileDescriptor filedescriptor, Descriptor descriptor, int i, boolean flag)
            throws DescriptorValidationException
        {
            index = i;
            proto = fielddescriptorproto;
            fullName = Descriptors.computeFullName(filedescriptor, descriptor, fielddescriptorproto.getName());
            file = filedescriptor;
            if (fielddescriptorproto.hasType())
            {
                type = Type.valueOf(fielddescriptorproto.getType());
            }
            if (getNumber() <= 0)
            {
                throw new DescriptorValidationException(this, "Field numbers must be positive integers.");
            }
            if (fielddescriptorproto.getOptions().getPacked() && !isPackable())
            {
                throw new DescriptorValidationException(this, "[packed = true] can only be specified for repeated primitive fields.");
            }
            if (flag)
            {
                if (!fielddescriptorproto.hasExtendee())
                {
                    throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee not set for extension field.");
                }
                containingType = null;
                if (descriptor != null)
                {
                    extensionScope = descriptor;
                } else
                {
                    extensionScope = null;
                }
            } else
            {
                if (fielddescriptorproto.hasExtendee())
                {
                    throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee set for non-extension field.");
                }
                containingType = descriptor;
                extensionScope = null;
            }
            filedescriptor.pool.a(this);
        }

    }

    public static final class FieldDescriptor.JavaType extends Enum
    {

        private static final FieldDescriptor.JavaType $VALUES[];
        public static final FieldDescriptor.JavaType BOOLEAN;
        public static final FieldDescriptor.JavaType BYTE_STRING;
        public static final FieldDescriptor.JavaType DOUBLE;
        public static final FieldDescriptor.JavaType ENUM;
        public static final FieldDescriptor.JavaType FLOAT;
        public static final FieldDescriptor.JavaType INT;
        public static final FieldDescriptor.JavaType LONG;
        public static final FieldDescriptor.JavaType MESSAGE;
        public static final FieldDescriptor.JavaType STRING;
        private final Object defaultDefault;

        public static FieldDescriptor.JavaType valueOf(String s)
        {
            return (FieldDescriptor.JavaType)Enum.valueOf(com/google/protobuf/Descriptors$FieldDescriptor$JavaType, s);
        }

        public static FieldDescriptor.JavaType[] values()
        {
            return (FieldDescriptor.JavaType[])$VALUES.clone();
        }

        static 
        {
            INT = new FieldDescriptor.JavaType("INT", 0, Integer.valueOf(0));
            LONG = new FieldDescriptor.JavaType("LONG", 1, Long.valueOf(0L));
            FLOAT = new FieldDescriptor.JavaType("FLOAT", 2, Float.valueOf(0.0F));
            DOUBLE = new FieldDescriptor.JavaType("DOUBLE", 3, Double.valueOf(0.0D));
            BOOLEAN = new FieldDescriptor.JavaType("BOOLEAN", 4, Boolean.valueOf(false));
            STRING = new FieldDescriptor.JavaType("STRING", 5, "");
            BYTE_STRING = new FieldDescriptor.JavaType("BYTE_STRING", 6, ByteString.EMPTY);
            ENUM = new FieldDescriptor.JavaType("ENUM", 7, null);
            MESSAGE = new FieldDescriptor.JavaType("MESSAGE", 8, null);
            $VALUES = (new FieldDescriptor.JavaType[] {
                INT, LONG, FLOAT, DOUBLE, BOOLEAN, STRING, BYTE_STRING, ENUM, MESSAGE
            });
        }


        private FieldDescriptor.JavaType(String s, int i, Object obj)
        {
            super(s, i);
            defaultDefault = obj;
        }
    }

    public static final class FieldDescriptor.Type extends Enum
    {

        private static final FieldDescriptor.Type $VALUES[];
        public static final FieldDescriptor.Type BOOL;
        public static final FieldDescriptor.Type BYTES;
        public static final FieldDescriptor.Type DOUBLE;
        public static final FieldDescriptor.Type ENUM;
        public static final FieldDescriptor.Type FIXED32;
        public static final FieldDescriptor.Type FIXED64;
        public static final FieldDescriptor.Type FLOAT;
        public static final FieldDescriptor.Type GROUP;
        public static final FieldDescriptor.Type INT32;
        public static final FieldDescriptor.Type INT64;
        public static final FieldDescriptor.Type MESSAGE;
        public static final FieldDescriptor.Type SFIXED32;
        public static final FieldDescriptor.Type SFIXED64;
        public static final FieldDescriptor.Type SINT32;
        public static final FieldDescriptor.Type SINT64;
        public static final FieldDescriptor.Type STRING;
        public static final FieldDescriptor.Type UINT32;
        public static final FieldDescriptor.Type UINT64;
        private FieldDescriptor.JavaType javaType;

        public static FieldDescriptor.Type valueOf(DescriptorProtos.FieldDescriptorProto.Type type)
        {
            return values()[type.getNumber() - 1];
        }

        public static FieldDescriptor.Type valueOf(String s)
        {
            return (FieldDescriptor.Type)Enum.valueOf(com/google/protobuf/Descriptors$FieldDescriptor$Type, s);
        }

        public static FieldDescriptor.Type[] values()
        {
            return (FieldDescriptor.Type[])$VALUES.clone();
        }

        public FieldDescriptor.JavaType getJavaType()
        {
            return javaType;
        }

        public DescriptorProtos.FieldDescriptorProto.Type toProto()
        {
            return DescriptorProtos.FieldDescriptorProto.Type.valueOf(ordinal() + 1);
        }

        static 
        {
            DOUBLE = new FieldDescriptor.Type("DOUBLE", 0, FieldDescriptor.JavaType.DOUBLE);
            FLOAT = new FieldDescriptor.Type("FLOAT", 1, FieldDescriptor.JavaType.FLOAT);
            INT64 = new FieldDescriptor.Type("INT64", 2, FieldDescriptor.JavaType.LONG);
            UINT64 = new FieldDescriptor.Type("UINT64", 3, FieldDescriptor.JavaType.LONG);
            INT32 = new FieldDescriptor.Type("INT32", 4, FieldDescriptor.JavaType.INT);
            FIXED64 = new FieldDescriptor.Type("FIXED64", 5, FieldDescriptor.JavaType.LONG);
            FIXED32 = new FieldDescriptor.Type("FIXED32", 6, FieldDescriptor.JavaType.INT);
            BOOL = new FieldDescriptor.Type("BOOL", 7, FieldDescriptor.JavaType.BOOLEAN);
            STRING = new FieldDescriptor.Type("STRING", 8, FieldDescriptor.JavaType.STRING);
            GROUP = new FieldDescriptor.Type("GROUP", 9, FieldDescriptor.JavaType.MESSAGE);
            MESSAGE = new FieldDescriptor.Type("MESSAGE", 10, FieldDescriptor.JavaType.MESSAGE);
            BYTES = new FieldDescriptor.Type("BYTES", 11, FieldDescriptor.JavaType.BYTE_STRING);
            UINT32 = new FieldDescriptor.Type("UINT32", 12, FieldDescriptor.JavaType.INT);
            ENUM = new FieldDescriptor.Type("ENUM", 13, FieldDescriptor.JavaType.ENUM);
            SFIXED32 = new FieldDescriptor.Type("SFIXED32", 14, FieldDescriptor.JavaType.INT);
            SFIXED64 = new FieldDescriptor.Type("SFIXED64", 15, FieldDescriptor.JavaType.LONG);
            SINT32 = new FieldDescriptor.Type("SINT32", 16, FieldDescriptor.JavaType.INT);
            SINT64 = new FieldDescriptor.Type("SINT64", 17, FieldDescriptor.JavaType.LONG);
            $VALUES = (new FieldDescriptor.Type[] {
                DOUBLE, FLOAT, INT64, UINT64, INT32, FIXED64, FIXED32, BOOL, STRING, GROUP, 
                MESSAGE, BYTES, UINT32, ENUM, SFIXED32, SFIXED64, SINT32, SINT64
            });
        }

        private FieldDescriptor.Type(String s, int i, FieldDescriptor.JavaType javatype)
        {
            super(s, i);
            javaType = javatype;
        }
    }

    public static final class FileDescriptor
    {

        private final FileDescriptor dependencies[];
        private final EnumDescriptor enumTypes[];
        private final FieldDescriptor extensions[];
        private final Descriptor messageTypes[];
        private final a pool;
        private DescriptorProtos.FileDescriptorProto proto;
        private final ServiceDescriptor services[];

        public static FileDescriptor buildFrom(DescriptorProtos.FileDescriptorProto filedescriptorproto, FileDescriptor afiledescriptor[])
            throws DescriptorValidationException
        {
            FileDescriptor filedescriptor = new FileDescriptor(filedescriptorproto, afiledescriptor, new a(afiledescriptor));
            if (afiledescriptor.length != filedescriptorproto.getDependencyCount())
            {
                throw new DescriptorValidationException(filedescriptor, "Dependencies passed to FileDescriptor.buildFrom() don't match those listed in the FileDescriptorProto.", null);
            }
            for (int i = 0; i < filedescriptorproto.getDependencyCount(); i++)
            {
                if (!afiledescriptor[i].getName().equals(filedescriptorproto.getDependency(i)))
                {
                    throw new DescriptorValidationException(filedescriptor, "Dependencies passed to FileDescriptor.buildFrom() don't match those listed in the FileDescriptorProto.", null);
                }
            }

            filedescriptor.crossLink();
            return filedescriptor;
        }

        private void crossLink()
            throws DescriptorValidationException
        {
            boolean flag = false;
            Object aobj[] = messageTypes;
            int l = aobj.length;
            for (int i = 0; i < l; i++)
            {
                aobj[i].crossLink();
            }

            aobj = services;
            l = aobj.length;
            for (int j = 0; j < l; j++)
            {
                aobj[j].crossLink();
            }

            aobj = extensions;
            l = aobj.length;
            for (int k = ((flag) ? 1 : 0); k < l; k++)
            {
                aobj[k].crossLink();
            }

        }

        public static void internalBuildGeneratedFileFrom(String as[], FileDescriptor afiledescriptor[], InternalDescriptorAssigner internaldescriptorassigner)
        {
            Object obj = new StringBuilder();
            int j = as.length;
            for (int i = 0; i < j; i++)
            {
                ((StringBuilder) (obj)).append(as[i]);
            }

            try
            {
                as = ((StringBuilder) (obj)).toString().getBytes("ISO-8859-1");
            }
            // Misplaced declaration of an exception variable
            catch (String as[])
            {
                throw new RuntimeException("Standard encoding ISO-8859-1 not supported by JVM.", as);
            }
            try
            {
                obj = DescriptorProtos.FileDescriptorProto.parseFrom(as);
            }
            // Misplaced declaration of an exception variable
            catch (String as[])
            {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", as);
            }
            try
            {
                afiledescriptor = buildFrom(((DescriptorProtos.FileDescriptorProto) (obj)), afiledescriptor);
            }
            // Misplaced declaration of an exception variable
            catch (String as[])
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid embedded descriptor for \"").append(((DescriptorProtos.FileDescriptorProto) (obj)).getName()).append("\".").toString(), as);
            }
            internaldescriptorassigner = internaldescriptorassigner.assignDescriptors(afiledescriptor);
            if (internaldescriptorassigner != null)
            {
                try
                {
                    as = DescriptorProtos.FileDescriptorProto.parseFrom(as, internaldescriptorassigner);
                }
                // Misplaced declaration of an exception variable
                catch (String as[])
                {
                    throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", as);
                }
                afiledescriptor.setProto(as);
            }
        }

        private void setProto(DescriptorProtos.FileDescriptorProto filedescriptorproto)
        {
            boolean flag = false;
            proto = filedescriptorproto;
            for (int i = 0; i < messageTypes.length; i++)
            {
                messageTypes[i].setProto(filedescriptorproto.getMessageType(i));
            }

            for (int j = 0; j < enumTypes.length; j++)
            {
                enumTypes[j].setProto(filedescriptorproto.getEnumType(j));
            }

            int k = 0;
            int l;
            do
            {
                l = ((flag) ? 1 : 0);
                if (k >= services.length)
                {
                    break;
                }
                services[k].setProto(filedescriptorproto.getService(k));
                k++;
            } while (true);
            for (; l < extensions.length; l++)
            {
                extensions[l].setProto(filedescriptorproto.getExtension(l));
            }

        }

        public EnumDescriptor findEnumTypeByName(String s)
        {
            if (s.indexOf('.') != -1)
            {
                return null;
            }
            String s1 = s;
            if (getPackage().length() > 0)
            {
                s1 = (new StringBuilder()).append(getPackage()).append('.').append(s).toString();
            }
            s = pool.a(s1);
            if (s != null && (s instanceof EnumDescriptor) && s.getFile() == this)
            {
                return (EnumDescriptor)s;
            } else
            {
                return null;
            }
        }

        public FieldDescriptor findExtensionByName(String s)
        {
            if (s.indexOf('.') != -1)
            {
                return null;
            }
            String s1 = s;
            if (getPackage().length() > 0)
            {
                s1 = (new StringBuilder()).append(getPackage()).append('.').append(s).toString();
            }
            s = pool.a(s1);
            if (s != null && (s instanceof FieldDescriptor) && s.getFile() == this)
            {
                return (FieldDescriptor)s;
            } else
            {
                return null;
            }
        }

        public Descriptor findMessageTypeByName(String s)
        {
            if (s.indexOf('.') != -1)
            {
                return null;
            }
            String s1 = s;
            if (getPackage().length() > 0)
            {
                s1 = (new StringBuilder()).append(getPackage()).append('.').append(s).toString();
            }
            s = pool.a(s1);
            if (s != null && (s instanceof Descriptor) && s.getFile() == this)
            {
                return (Descriptor)s;
            } else
            {
                return null;
            }
        }

        public ServiceDescriptor findServiceByName(String s)
        {
            if (s.indexOf('.') != -1)
            {
                return null;
            }
            String s1 = s;
            if (getPackage().length() > 0)
            {
                s1 = (new StringBuilder()).append(getPackage()).append('.').append(s).toString();
            }
            s = pool.a(s1);
            if (s != null && (s instanceof ServiceDescriptor) && s.getFile() == this)
            {
                return (ServiceDescriptor)s;
            } else
            {
                return null;
            }
        }

        public List getDependencies()
        {
            return Collections.unmodifiableList(Arrays.asList(dependencies));
        }

        public List getEnumTypes()
        {
            return Collections.unmodifiableList(Arrays.asList(enumTypes));
        }

        public List getExtensions()
        {
            return Collections.unmodifiableList(Arrays.asList(extensions));
        }

        public List getMessageTypes()
        {
            return Collections.unmodifiableList(Arrays.asList(messageTypes));
        }

        public String getName()
        {
            return proto.getName();
        }

        public DescriptorProtos.FileOptions getOptions()
        {
            return proto.getOptions();
        }

        public String getPackage()
        {
            return proto.getPackage();
        }

        public List getServices()
        {
            return Collections.unmodifiableList(Arrays.asList(services));
        }

        public DescriptorProtos.FileDescriptorProto toProto()
        {
            return proto;
        }


        private FileDescriptor(DescriptorProtos.FileDescriptorProto filedescriptorproto, FileDescriptor afiledescriptor[], a a1)
            throws DescriptorValidationException
        {
            pool = a1;
            proto = filedescriptorproto;
            dependencies = (FileDescriptor[])afiledescriptor.clone();
            a1.a(getPackage(), this);
            messageTypes = new Descriptor[filedescriptorproto.getMessageTypeCount()];
            for (int i = 0; i < filedescriptorproto.getMessageTypeCount(); i++)
            {
                messageTypes[i] = new Descriptor(filedescriptorproto.getMessageType(i), this, null, i);
            }

            enumTypes = new EnumDescriptor[filedescriptorproto.getEnumTypeCount()];
            for (int j = 0; j < filedescriptorproto.getEnumTypeCount(); j++)
            {
                enumTypes[j] = new EnumDescriptor(filedescriptorproto.getEnumType(j), this, null, j);
            }

            services = new ServiceDescriptor[filedescriptorproto.getServiceCount()];
            for (int k = 0; k < filedescriptorproto.getServiceCount(); k++)
            {
                services[k] = new ServiceDescriptor(filedescriptorproto.getService(k), this, k);
            }

            extensions = new FieldDescriptor[filedescriptorproto.getExtensionCount()];
            for (int l = 0; l < filedescriptorproto.getExtensionCount(); l++)
            {
                extensions[l] = new FieldDescriptor(filedescriptorproto.getExtension(l), this, null, l, true);
            }

        }
    }

    public static interface FileDescriptor.InternalDescriptorAssigner
    {

        public abstract ExtensionRegistry assignDescriptors(FileDescriptor filedescriptor);
    }

    public static final class MethodDescriptor
        implements b
    {

        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private Descriptor inputType;
        private Descriptor outputType;
        private DescriptorProtos.MethodDescriptorProto proto;
        private final ServiceDescriptor service;

        private void crossLink()
            throws DescriptorValidationException
        {
            b b1 = file.pool.a(proto.getInputType(), this);
            if (!(b1 instanceof Descriptor))
            {
                throw new DescriptorValidationException(this, (new StringBuilder()).append('"').append(proto.getInputType()).append("\" is not a message type.").toString(), null);
            }
            inputType = (Descriptor)b1;
            b1 = file.pool.a(proto.getOutputType(), this);
            if (!(b1 instanceof Descriptor))
            {
                throw new DescriptorValidationException(this, (new StringBuilder()).append('"').append(proto.getOutputType()).append("\" is not a message type.").toString(), null);
            } else
            {
                outputType = (Descriptor)b1;
                return;
            }
        }

        private void setProto(DescriptorProtos.MethodDescriptorProto methoddescriptorproto)
        {
            proto = methoddescriptorproto;
        }

        public FileDescriptor getFile()
        {
            return file;
        }

        public String getFullName()
        {
            return fullName;
        }

        public int getIndex()
        {
            return index;
        }

        public Descriptor getInputType()
        {
            return inputType;
        }

        public String getName()
        {
            return proto.getName();
        }

        public DescriptorProtos.MethodOptions getOptions()
        {
            return proto.getOptions();
        }

        public Descriptor getOutputType()
        {
            return outputType;
        }

        public ServiceDescriptor getService()
        {
            return service;
        }

        public DescriptorProtos.MethodDescriptorProto toProto()
        {
            return proto;
        }

        public volatile Message toProto()
        {
            return toProto();
        }



        private MethodDescriptor(DescriptorProtos.MethodDescriptorProto methoddescriptorproto, FileDescriptor filedescriptor, ServiceDescriptor servicedescriptor, int i)
            throws DescriptorValidationException
        {
            index = i;
            proto = methoddescriptorproto;
            file = filedescriptor;
            service = servicedescriptor;
            fullName = (new StringBuilder()).append(servicedescriptor.getFullName()).append('.').append(methoddescriptorproto.getName()).toString();
            filedescriptor.pool.a(this);
        }

    }

    public static final class ServiceDescriptor
        implements b
    {

        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private MethodDescriptor methods[];
        private DescriptorProtos.ServiceDescriptorProto proto;

        private void crossLink()
            throws DescriptorValidationException
        {
            MethodDescriptor amethoddescriptor[] = methods;
            int j = amethoddescriptor.length;
            for (int i = 0; i < j; i++)
            {
                amethoddescriptor[i].crossLink();
            }

        }

        private void setProto(DescriptorProtos.ServiceDescriptorProto servicedescriptorproto)
        {
            proto = servicedescriptorproto;
            for (int i = 0; i < methods.length; i++)
            {
                methods[i].setProto(servicedescriptorproto.getMethod(i));
            }

        }

        public MethodDescriptor findMethodByName(String s)
        {
            s = file.pool.a((new StringBuilder()).append(fullName).append('.').append(s).toString());
            if (s != null && (s instanceof MethodDescriptor))
            {
                return (MethodDescriptor)s;
            } else
            {
                return null;
            }
        }

        public FileDescriptor getFile()
        {
            return file;
        }

        public String getFullName()
        {
            return fullName;
        }

        public int getIndex()
        {
            return index;
        }

        public List getMethods()
        {
            return Collections.unmodifiableList(Arrays.asList(methods));
        }

        public String getName()
        {
            return proto.getName();
        }

        public DescriptorProtos.ServiceOptions getOptions()
        {
            return proto.getOptions();
        }

        public DescriptorProtos.ServiceDescriptorProto toProto()
        {
            return proto;
        }

        public volatile Message toProto()
        {
            return toProto();
        }



        private ServiceDescriptor(DescriptorProtos.ServiceDescriptorProto servicedescriptorproto, FileDescriptor filedescriptor, int i)
            throws DescriptorValidationException
        {
            index = i;
            proto = servicedescriptorproto;
            fullName = Descriptors.computeFullName(filedescriptor, null, servicedescriptorproto.getName());
            file = filedescriptor;
            methods = new MethodDescriptor[servicedescriptorproto.getMethodCount()];
            for (i = 0; i < servicedescriptorproto.getMethodCount(); i++)
            {
                methods[i] = new MethodDescriptor(servicedescriptorproto.getMethod(i), filedescriptor, this, i);
            }

            filedescriptor.pool.a(this);
        }

    }

    private static final class a
    {

        static final boolean a;
        private final a b[];
        private final Map c = new HashMap();
        private final Map d = new HashMap();
        private final Map e = new HashMap();

        static Map a(a a1)
        {
            return a1.d;
        }

        static Map b(a a1)
        {
            return a1.e;
        }

        static void b(b b1)
            throws DescriptorValidationException
        {
            String s = b1.getName();
            if (s.length() == 0)
            {
                throw new DescriptorValidationException(b1, "Missing name.", null);
            }
            boolean flag = true;
            int i = 0;
            while (i < s.length()) 
            {
                char c1 = s.charAt(i);
                boolean flag1 = flag;
                if (c1 >= '\200')
                {
                    flag1 = false;
                }
                flag = flag1;
                if (Character.isLetter(c1))
                {
                    continue;
                }
                flag = flag1;
                if (c1 != '_')
                {
                    if (Character.isDigit(c1) && i > 0)
                    {
                        flag = flag1;
                    } else
                    {
                        flag = false;
                    }
                }
                i++;
            }
            if (!flag)
            {
                throw new DescriptorValidationException(b1, (new StringBuilder()).append('"').append(s).append("\" is not a valid identifier.").toString(), null);
            } else
            {
                return;
            }
        }

        b a(String s)
        {
            b b1 = (b)c.get(s);
            if (b1 == null) goto _L2; else goto _L1
_L1:
            return b1;
_L2:
            a aa[] = b;
            int j = aa.length;
            int i = 0;
label0:
            do
            {
label1:
                {
                    if (i >= j)
                    {
                        break label1;
                    }
                    b b2 = (b)aa[i].c.get(s);
                    b1 = b2;
                    if (b2 != null)
                    {
                        break label0;
                    }
                    i++;
                }
            } while (true);
            if (true) goto _L1; else goto _L3
_L3:
            return null;
        }

        b a(String s, b b1)
            throws DescriptorValidationException
        {
            if (!s.startsWith(".")) goto _L2; else goto _L1
_L1:
            Object obj = a(s.substring(1));
_L4:
            StringBuilder stringbuilder;
            int i;
            int j;
            if (obj == null)
            {
                throw new DescriptorValidationException(b1, (new StringBuilder()).append('"').append(s).append("\" is not defined.").toString(), null);
            } else
            {
                return ((b) (obj));
            }
_L2:
            i = s.indexOf('.');
            if (i == -1)
            {
                obj = s;
            } else
            {
                obj = s.substring(0, i);
            }
            stringbuilder = new StringBuilder(b1.getFullName());
_L5:
            j = stringbuilder.lastIndexOf(".");
            if (j == -1)
            {
                obj = a(s);
            } else
            {
label0:
                {
                    stringbuilder.setLength(j + 1);
                    stringbuilder.append(((String) (obj)));
                    b b2 = a(stringbuilder.toString());
                    if (b2 == null)
                    {
                        break label0;
                    }
                    if (i != -1)
                    {
                        stringbuilder.setLength(j + 1);
                        stringbuilder.append(s);
                        obj = a(stringbuilder.toString());
                    } else
                    {
                        obj = b2;
                    }
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
            stringbuilder.setLength(j);
              goto _L5
        }

        void a(EnumValueDescriptor enumvaluedescriptor)
        {
            a a1 = new a(enumvaluedescriptor.getType(), enumvaluedescriptor.getNumber());
            enumvaluedescriptor = (EnumValueDescriptor)e.put(a1, enumvaluedescriptor);
            if (enumvaluedescriptor != null)
            {
                e.put(a1, enumvaluedescriptor);
            }
        }

        void a(FieldDescriptor fielddescriptor)
            throws DescriptorValidationException
        {
            a a1 = new a(fielddescriptor.getContainingType(), fielddescriptor.getNumber());
            FieldDescriptor fielddescriptor1 = (FieldDescriptor)d.put(a1, fielddescriptor);
            if (fielddescriptor1 != null)
            {
                d.put(a1, fielddescriptor1);
                throw new DescriptorValidationException(fielddescriptor, (new StringBuilder()).append("Field number ").append(fielddescriptor.getNumber()).append("has already been used in \"").append(fielddescriptor.getContainingType().getFullName()).append("\" by field \"").append(fielddescriptor1.getName()).append("\".").toString(), null);
            } else
            {
                return;
            }
        }

        void a(b b1)
            throws DescriptorValidationException
        {
            b(b1);
            String s = b1.getFullName();
            int i = s.lastIndexOf('.');
            b b2 = (b)c.put(s, b1);
            if (b2 != null)
            {
                c.put(s, b2);
                if (b1.getFile() == b2.getFile())
                {
                    if (i == -1)
                    {
                        throw new DescriptorValidationException(b1, (new StringBuilder()).append('"').append(s).append("\" is already defined.").toString(), null);
                    } else
                    {
                        throw new DescriptorValidationException(b1, (new StringBuilder()).append('"').append(s.substring(i + 1)).append("\" is already defined in \"").append(s.substring(0, i)).append("\".").toString(), null);
                    }
                } else
                {
                    throw new DescriptorValidationException(b1, (new StringBuilder()).append('"').append(s).append("\" is already defined in file \"").append(b2.getFile().getName()).append("\".").toString(), null);
                }
            } else
            {
                return;
            }
        }

        void a(String s, FileDescriptor filedescriptor)
            throws DescriptorValidationException
        {
            int i = s.lastIndexOf('.');
            String s1;
            b b1;
            if (i == -1)
            {
                s1 = s;
            } else
            {
                a(s.substring(0, i), filedescriptor);
                s1 = s.substring(i + 1);
            }
            b1 = (b)c.put(s, new b(s1, s, filedescriptor));
            if (b1 != null)
            {
                c.put(s, b1);
                if (!(b1 instanceof b))
                {
                    throw new DescriptorValidationException(filedescriptor, (new StringBuilder()).append('"').append(s1).append("\" is already defined (as something other than a ").append("package) in file \"").append(b1.getFile().getName()).append("\".").toString(), null);
                }
            }
        }

        static 
        {
            boolean flag;
            if (!com/google/protobuf/Descriptors.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        a(FileDescriptor afiledescriptor[])
        {
            boolean flag = false;
            super();
            b = new a[afiledescriptor.length];
            for (int i = 0; i < afiledescriptor.length; i++)
            {
                b[i] = afiledescriptor[i].pool;
            }

            int k = afiledescriptor.length;
            int j = ((flag) ? 1 : 0);
            do
            {
                if (j >= k)
                {
                    break;
                }
                FileDescriptor filedescriptor = afiledescriptor[j];
                try
                {
                    a(filedescriptor.getPackage(), filedescriptor);
                }
                catch (DescriptorValidationException descriptorvalidationexception)
                {
                    if (!a)
                    {
                        throw new AssertionError();
                    }
                }
                j++;
            } while (true);
        }
    }

    private static final class a.a
    {

        private final b a;
        private final int b;

        public boolean equals(Object obj)
        {
            if (obj instanceof a.a)
            {
                if (a == ((a.a) (obj = (a.a)obj)).a && b == ((a.a) (obj)).b)
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

        a.a(b b1, int i)
        {
            a = b1;
            b = i;
        }
    }

    private static final class a.b
        implements b
    {

        private final String a;
        private final String b;
        private final FileDescriptor c;

        public FileDescriptor getFile()
        {
            return c;
        }

        public String getFullName()
        {
            return b;
        }

        public String getName()
        {
            return a;
        }

        public Message toProto()
        {
            return c.toProto();
        }

        a.b(String s, String s1, FileDescriptor filedescriptor)
        {
            c = filedescriptor;
            b = s1;
            a = s;
        }
    }

    private static interface b
    {

        public abstract FileDescriptor getFile();

        public abstract String getFullName();

        public abstract String getName();

        public abstract Message toProto();
    }


    public Descriptors()
    {
    }

    private static String computeFullName(FileDescriptor filedescriptor, Descriptor descriptor, String s)
    {
        if (descriptor != null)
        {
            descriptor = (new StringBuilder()).append(descriptor.getFullName()).append('.').append(s).toString();
        } else
        {
            descriptor = s;
            if (filedescriptor.getPackage().length() > 0)
            {
                return (new StringBuilder()).append(filedescriptor.getPackage()).append('.').append(s).toString();
            }
        }
        return descriptor;
    }

}
