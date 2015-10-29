// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.protobuf:
//            f, CodedOutputStream, CodedInputStream, MessageLite, 
//            ByteString

final class FieldSet
{
    public static interface FieldDescriptorLite
        extends Comparable
    {

        public abstract Internal.EnumLiteMap getEnumType();

        public abstract WireFormat.JavaType getLiteJavaType();

        public abstract WireFormat.FieldType getLiteType();

        public abstract int getNumber();

        public abstract MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messagelite);

        public abstract boolean isPacked();

        public abstract boolean isRepeated();
    }


    private static final FieldSet c = new FieldSet(true);
    private final f a;
    private boolean b;

    private FieldSet()
    {
        a = com.google.protobuf.f.a(16);
    }

    private FieldSet(boolean flag)
    {
        a = com.google.protobuf.f.a(0);
        c();
    }

    private static int a(WireFormat.FieldType fieldtype, int l, Object obj)
    {
        int i1 = CodedOutputStream.computeTagSize(l);
        l = i1;
        if (fieldtype == WireFormat.FieldType.GROUP)
        {
            l = i1 * 2;
        }
        return l + b(fieldtype, obj);
    }

    static int a(WireFormat.FieldType fieldtype, boolean flag)
    {
        if (flag)
        {
            return 2;
        } else
        {
            return fieldtype.getWireType();
        }
    }

    public static FieldSet a()
    {
        return new FieldSet();
    }

    public static Object a(CodedInputStream codedinputstream, WireFormat.FieldType fieldtype)
        throws IOException
    {
        static class _cls1
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[WireFormat.FieldType.values().length];
                try
                {
                    b[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror26) { }
                try
                {
                    b[WireFormat.FieldType.FLOAT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror25) { }
                try
                {
                    b[WireFormat.FieldType.INT64.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror24) { }
                try
                {
                    b[WireFormat.FieldType.UINT64.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror23) { }
                try
                {
                    b[WireFormat.FieldType.INT32.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror22) { }
                try
                {
                    b[WireFormat.FieldType.FIXED64.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror21) { }
                try
                {
                    b[WireFormat.FieldType.FIXED32.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror20) { }
                try
                {
                    b[WireFormat.FieldType.BOOL.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror19) { }
                try
                {
                    b[WireFormat.FieldType.STRING.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror18) { }
                try
                {
                    b[WireFormat.FieldType.BYTES.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror17) { }
                try
                {
                    b[WireFormat.FieldType.UINT32.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror16) { }
                try
                {
                    b[WireFormat.FieldType.SFIXED32.ordinal()] = 12;
                }
                catch (NoSuchFieldError nosuchfielderror15) { }
                try
                {
                    b[WireFormat.FieldType.SFIXED64.ordinal()] = 13;
                }
                catch (NoSuchFieldError nosuchfielderror14) { }
                try
                {
                    b[WireFormat.FieldType.SINT32.ordinal()] = 14;
                }
                catch (NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    b[WireFormat.FieldType.SINT64.ordinal()] = 15;
                }
                catch (NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    b[WireFormat.FieldType.GROUP.ordinal()] = 16;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    b[WireFormat.FieldType.MESSAGE.ordinal()] = 17;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    b[WireFormat.FieldType.ENUM.ordinal()] = 18;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                a = new int[WireFormat.JavaType.values().length];
                try
                {
                    a[WireFormat.JavaType.INT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[WireFormat.JavaType.LONG.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[WireFormat.JavaType.FLOAT.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[WireFormat.JavaType.STRING.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[WireFormat.JavaType.ENUM.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1.b[fieldtype.ordinal()])
        {
        default:
            throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");

        case 1: // '\001'
            return Double.valueOf(codedinputstream.readDouble());

        case 2: // '\002'
            return Float.valueOf(codedinputstream.readFloat());

        case 3: // '\003'
            return Long.valueOf(codedinputstream.readInt64());

        case 4: // '\004'
            return Long.valueOf(codedinputstream.readUInt64());

        case 5: // '\005'
            return Integer.valueOf(codedinputstream.readInt32());

        case 6: // '\006'
            return Long.valueOf(codedinputstream.readFixed64());

        case 7: // '\007'
            return Integer.valueOf(codedinputstream.readFixed32());

        case 8: // '\b'
            return Boolean.valueOf(codedinputstream.readBool());

        case 9: // '\t'
            return codedinputstream.readString();

        case 10: // '\n'
            return codedinputstream.readBytes();

        case 11: // '\013'
            return Integer.valueOf(codedinputstream.readUInt32());

        case 12: // '\f'
            return Integer.valueOf(codedinputstream.readSFixed32());

        case 13: // '\r'
            return Long.valueOf(codedinputstream.readSFixed64());

        case 14: // '\016'
            return Integer.valueOf(codedinputstream.readSInt32());

        case 15: // '\017'
            return Long.valueOf(codedinputstream.readSInt64());

        case 16: // '\020'
            throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");

        case 17: // '\021'
            throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");

        case 18: // '\022'
            throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
        }
    }

    private static void a(CodedOutputStream codedoutputstream, WireFormat.FieldType fieldtype, int l, Object obj)
        throws IOException
    {
        if (fieldtype == WireFormat.FieldType.GROUP)
        {
            codedoutputstream.writeGroup(l, (MessageLite)obj);
            return;
        } else
        {
            codedoutputstream.writeTag(l, a(fieldtype, false));
            a(codedoutputstream, fieldtype, obj);
            return;
        }
    }

    private static void a(CodedOutputStream codedoutputstream, WireFormat.FieldType fieldtype, Object obj)
        throws IOException
    {
        switch (_cls1.b[fieldtype.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            codedoutputstream.writeDoubleNoTag(((Double)obj).doubleValue());
            return;

        case 2: // '\002'
            codedoutputstream.writeFloatNoTag(((Float)obj).floatValue());
            return;

        case 3: // '\003'
            codedoutputstream.writeInt64NoTag(((Long)obj).longValue());
            return;

        case 4: // '\004'
            codedoutputstream.writeUInt64NoTag(((Long)obj).longValue());
            return;

        case 5: // '\005'
            codedoutputstream.writeInt32NoTag(((Integer)obj).intValue());
            return;

        case 6: // '\006'
            codedoutputstream.writeFixed64NoTag(((Long)obj).longValue());
            return;

        case 7: // '\007'
            codedoutputstream.writeFixed32NoTag(((Integer)obj).intValue());
            return;

        case 8: // '\b'
            codedoutputstream.writeBoolNoTag(((Boolean)obj).booleanValue());
            return;

        case 9: // '\t'
            codedoutputstream.writeStringNoTag((String)obj);
            return;

        case 16: // '\020'
            codedoutputstream.writeGroupNoTag((MessageLite)obj);
            return;

        case 17: // '\021'
            codedoutputstream.writeMessageNoTag((MessageLite)obj);
            return;

        case 10: // '\n'
            codedoutputstream.writeBytesNoTag((ByteString)obj);
            return;

        case 11: // '\013'
            codedoutputstream.writeUInt32NoTag(((Integer)obj).intValue());
            return;

        case 12: // '\f'
            codedoutputstream.writeSFixed32NoTag(((Integer)obj).intValue());
            return;

        case 13: // '\r'
            codedoutputstream.writeSFixed64NoTag(((Long)obj).longValue());
            return;

        case 14: // '\016'
            codedoutputstream.writeSInt32NoTag(((Integer)obj).intValue());
            return;

        case 15: // '\017'
            codedoutputstream.writeSInt64NoTag(((Long)obj).longValue());
            return;

        case 18: // '\022'
            codedoutputstream.writeEnumNoTag(((Internal.EnumLite)obj).getNumber());
            break;
        }
    }

    public static void a(FieldDescriptorLite fielddescriptorlite, Object obj, CodedOutputStream codedoutputstream)
        throws IOException
    {
        WireFormat.FieldType fieldtype = fielddescriptorlite.getLiteType();
        int l = fielddescriptorlite.getNumber();
        if (fielddescriptorlite.isRepeated())
        {
            obj = (List)obj;
            if (fielddescriptorlite.isPacked())
            {
                codedoutputstream.writeTag(l, 2);
                l = 0;
                for (fielddescriptorlite = ((List) (obj)).iterator(); fielddescriptorlite.hasNext();)
                {
                    l += b(fieldtype, fielddescriptorlite.next());
                }

                codedoutputstream.writeRawVarint32(l);
                for (fielddescriptorlite = ((List) (obj)).iterator(); fielddescriptorlite.hasNext(); a(codedoutputstream, fieldtype, fielddescriptorlite.next())) { }
            } else
            {
                for (fielddescriptorlite = ((List) (obj)).iterator(); fielddescriptorlite.hasNext(); a(codedoutputstream, fieldtype, l, fielddescriptorlite.next())) { }
            }
        } else
        {
            a(codedoutputstream, fieldtype, l, obj);
        }
    }

    private static void a(WireFormat.FieldType fieldtype, Object obj)
    {
        boolean flag;
        if (obj == null)
        {
            throw new NullPointerException();
        }
        flag = false;
        _cls1.a[fieldtype.getJavaType().ordinal()];
        JVM INSTR tableswitch 1 9: default 76
    //                   1 91
    //                   2 99
    //                   3 107
    //                   4 115
    //                   5 123
    //                   6 131
    //                   7 139
    //                   8 147
    //                   9 155;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        break; /* Loop/switch isn't completed */
_L10:
        break MISSING_BLOCK_LABEL_155;
_L11:
        if (!flag)
        {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else
        {
            return;
        }
_L2:
        flag = obj instanceof Integer;
          goto _L11
_L3:
        flag = obj instanceof Long;
          goto _L11
_L4:
        flag = obj instanceof Float;
          goto _L11
_L5:
        flag = obj instanceof Double;
          goto _L11
_L6:
        flag = obj instanceof Boolean;
          goto _L11
_L7:
        flag = obj instanceof String;
          goto _L11
_L8:
        flag = obj instanceof ByteString;
          goto _L11
_L9:
        flag = obj instanceof Internal.EnumLite;
          goto _L11
        flag = obj instanceof MessageLite;
          goto _L11
    }

    private void a(java.util.Map.Entry entry, CodedOutputStream codedoutputstream)
        throws IOException
    {
        FieldDescriptorLite fielddescriptorlite = (FieldDescriptorLite)entry.getKey();
        if (fielddescriptorlite.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !fielddescriptorlite.isRepeated() && !fielddescriptorlite.isPacked())
        {
            codedoutputstream.writeMessageSetExtension(((FieldDescriptorLite)entry.getKey()).getNumber(), (MessageLite)entry.getValue());
            return;
        } else
        {
            a(fielddescriptorlite, entry.getValue(), codedoutputstream);
            return;
        }
    }

    private boolean a(java.util.Map.Entry entry)
    {
label0:
        {
            FieldDescriptorLite fielddescriptorlite = (FieldDescriptorLite)entry.getKey();
            if (fielddescriptorlite.getLiteJavaType() != WireFormat.JavaType.MESSAGE)
            {
                break label0;
            }
            if (fielddescriptorlite.isRepeated())
            {
                entry = ((List)entry.getValue()).iterator();
                do
                {
                    if (!entry.hasNext())
                    {
                        break label0;
                    }
                } while (((MessageLite)entry.next()).isInitialized());
                return false;
            }
            if (!((MessageLite)entry.getValue()).isInitialized())
            {
                return false;
            }
        }
        return true;
    }

    private static int b(WireFormat.FieldType fieldtype, Object obj)
    {
        switch (_cls1.b[fieldtype.ordinal()])
        {
        default:
            throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");

        case 1: // '\001'
            return CodedOutputStream.computeDoubleSizeNoTag(((Double)obj).doubleValue());

        case 2: // '\002'
            return CodedOutputStream.computeFloatSizeNoTag(((Float)obj).floatValue());

        case 3: // '\003'
            return CodedOutputStream.computeInt64SizeNoTag(((Long)obj).longValue());

        case 4: // '\004'
            return CodedOutputStream.computeUInt64SizeNoTag(((Long)obj).longValue());

        case 5: // '\005'
            return CodedOutputStream.computeInt32SizeNoTag(((Integer)obj).intValue());

        case 6: // '\006'
            return CodedOutputStream.computeFixed64SizeNoTag(((Long)obj).longValue());

        case 7: // '\007'
            return CodedOutputStream.computeFixed32SizeNoTag(((Integer)obj).intValue());

        case 8: // '\b'
            return CodedOutputStream.computeBoolSizeNoTag(((Boolean)obj).booleanValue());

        case 9: // '\t'
            return CodedOutputStream.computeStringSizeNoTag((String)obj);

        case 16: // '\020'
            return CodedOutputStream.computeGroupSizeNoTag((MessageLite)obj);

        case 17: // '\021'
            return CodedOutputStream.computeMessageSizeNoTag((MessageLite)obj);

        case 10: // '\n'
            return CodedOutputStream.computeBytesSizeNoTag((ByteString)obj);

        case 11: // '\013'
            return CodedOutputStream.computeUInt32SizeNoTag(((Integer)obj).intValue());

        case 12: // '\f'
            return CodedOutputStream.computeSFixed32SizeNoTag(((Integer)obj).intValue());

        case 13: // '\r'
            return CodedOutputStream.computeSFixed64SizeNoTag(((Long)obj).longValue());

        case 14: // '\016'
            return CodedOutputStream.computeSInt32SizeNoTag(((Integer)obj).intValue());

        case 15: // '\017'
            return CodedOutputStream.computeSInt64SizeNoTag(((Long)obj).longValue());

        case 18: // '\022'
            return CodedOutputStream.computeEnumSizeNoTag(((Internal.EnumLite)obj).getNumber());
        }
    }

    public static FieldSet b()
    {
        return c;
    }

    private void b(java.util.Map.Entry entry)
    {
        FieldDescriptorLite fielddescriptorlite = (FieldDescriptorLite)entry.getKey();
        entry = ((java.util.Map.Entry) (entry.getValue()));
        if (fielddescriptorlite.isRepeated())
        {
            Object obj = a.get(fielddescriptorlite);
            if (obj == null)
            {
                a.a(fielddescriptorlite, new ArrayList((List)entry));
                return;
            } else
            {
                ((List)obj).addAll((List)entry);
                return;
            }
        }
        if (fielddescriptorlite.getLiteJavaType() == WireFormat.JavaType.MESSAGE)
        {
            Object obj1 = a.get(fielddescriptorlite);
            if (obj1 == null)
            {
                a.a(fielddescriptorlite, entry);
                return;
            } else
            {
                a.a(fielddescriptorlite, fielddescriptorlite.internalMergeFrom(((MessageLite)obj1).toBuilder(), (MessageLite)entry).build());
                return;
            }
        } else
        {
            a.a(fielddescriptorlite, entry);
            return;
        }
    }

    public static int c(FieldDescriptorLite fielddescriptorlite, Object obj)
    {
        WireFormat.FieldType fieldtype;
        int l;
        int j1;
        int k1;
        j1 = 0;
        l = 0;
        fieldtype = fielddescriptorlite.getLiteType();
        k1 = fielddescriptorlite.getNumber();
        if (!fielddescriptorlite.isRepeated())
        {
            break MISSING_BLOCK_LABEL_137;
        }
        if (!fielddescriptorlite.isPacked()) goto _L2; else goto _L1
_L1:
        for (fielddescriptorlite = ((List)obj).iterator(); fielddescriptorlite.hasNext();)
        {
            l += b(fieldtype, fielddescriptorlite.next());
        }

        j1 = CodedOutputStream.computeTagSize(k1);
        j1 = CodedOutputStream.computeRawVarint32Size(l) + (j1 + l);
_L4:
        return j1;
_L2:
        fielddescriptorlite = ((List)obj).iterator();
        int i1 = j1;
        do
        {
            j1 = i1;
            if (!fielddescriptorlite.hasNext())
            {
                break;
            }
            i1 += a(fieldtype, k1, fielddescriptorlite.next());
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return a(fieldtype, k1, obj);
    }

    private int c(java.util.Map.Entry entry)
    {
        FieldDescriptorLite fielddescriptorlite = (FieldDescriptorLite)entry.getKey();
        if (fielddescriptorlite.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !fielddescriptorlite.isRepeated() && !fielddescriptorlite.isPacked())
        {
            return CodedOutputStream.computeMessageSetExtensionSize(((FieldDescriptorLite)entry.getKey()).getNumber(), (MessageLite)entry.getValue());
        } else
        {
            return c(fielddescriptorlite, entry.getValue());
        }
    }

    public Object a(FieldDescriptorLite fielddescriptorlite, int l)
    {
        if (!fielddescriptorlite.isRepeated())
        {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        fielddescriptorlite = ((FieldDescriptorLite) (a.get(fielddescriptorlite)));
        if (fielddescriptorlite == null)
        {
            throw new IndexOutOfBoundsException();
        } else
        {
            return ((List)fielddescriptorlite).get(l);
        }
    }

    public void a(CodedOutputStream codedoutputstream)
        throws IOException
    {
        for (int l = 0; l < a.c(); l++)
        {
            java.util.Map.Entry entry = a.b(l);
            a((FieldDescriptorLite)entry.getKey(), entry.getValue(), codedoutputstream);
        }

        java.util.Map.Entry entry1;
        for (Iterator iterator = a.d().iterator(); iterator.hasNext(); a((FieldDescriptorLite)entry1.getKey(), entry1.getValue(), codedoutputstream))
        {
            entry1 = (java.util.Map.Entry)iterator.next();
        }

    }

    public void a(FieldDescriptorLite fielddescriptorlite, int l, Object obj)
    {
        if (!fielddescriptorlite.isRepeated())
        {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object obj1 = a.get(fielddescriptorlite);
        if (obj1 == null)
        {
            throw new IndexOutOfBoundsException();
        } else
        {
            a(fielddescriptorlite.getLiteType(), obj);
            ((List)obj1).set(l, obj);
            return;
        }
    }

    public void a(FieldDescriptorLite fielddescriptorlite, Object obj)
    {
        if (fielddescriptorlite.isRepeated())
        {
            if (!(obj instanceof List))
            {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arraylist = new ArrayList();
            arraylist.addAll((List)obj);
            Object obj1;
            for (obj = arraylist.iterator(); ((Iterator) (obj)).hasNext(); a(fielddescriptorlite.getLiteType(), obj1))
            {
                obj1 = ((Iterator) (obj)).next();
            }

            obj = arraylist;
        } else
        {
            a(fielddescriptorlite.getLiteType(), obj);
        }
        a.a(fielddescriptorlite, obj);
    }

    public void a(FieldSet fieldset)
    {
        for (int l = 0; l < fieldset.a.c(); l++)
        {
            b(fieldset.a.b(l));
        }

        for (fieldset = fieldset.a.d().iterator(); fieldset.hasNext(); b((java.util.Map.Entry)fieldset.next())) { }
    }

    public boolean a(FieldDescriptorLite fielddescriptorlite)
    {
        if (fielddescriptorlite.isRepeated())
        {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return a.get(fielddescriptorlite) != null;
    }

    public Object b(FieldDescriptorLite fielddescriptorlite)
    {
        return a.get(fielddescriptorlite);
    }

    public void b(CodedOutputStream codedoutputstream)
        throws IOException
    {
        for (int l = 0; l < a.c(); l++)
        {
            a(a.b(l), codedoutputstream);
        }

        for (Iterator iterator = a.d().iterator(); iterator.hasNext(); a((java.util.Map.Entry)iterator.next(), codedoutputstream)) { }
    }

    public void b(FieldDescriptorLite fielddescriptorlite, Object obj)
    {
        if (!fielddescriptorlite.isRepeated())
        {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        a(fielddescriptorlite.getLiteType(), obj);
        Object obj1 = a.get(fielddescriptorlite);
        if (obj1 == null)
        {
            obj1 = new ArrayList();
            a.a(fielddescriptorlite, obj1);
            fielddescriptorlite = ((FieldDescriptorLite) (obj1));
        } else
        {
            fielddescriptorlite = (List)obj1;
        }
        fielddescriptorlite.add(obj);
    }

    public void c()
    {
        if (b)
        {
            return;
        } else
        {
            a.a();
            b = true;
            return;
        }
    }

    public void c(FieldDescriptorLite fielddescriptorlite)
    {
        a.remove(fielddescriptorlite);
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return e();
    }

    public int d(FieldDescriptorLite fielddescriptorlite)
    {
        if (!fielddescriptorlite.isRepeated())
        {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        fielddescriptorlite = ((FieldDescriptorLite) (a.get(fielddescriptorlite)));
        if (fielddescriptorlite == null)
        {
            return 0;
        } else
        {
            return ((List)fielddescriptorlite).size();
        }
    }

    public boolean d()
    {
        return b;
    }

    public FieldSet e()
    {
        FieldSet fieldset = a();
        for (int l = 0; l < a.c(); l++)
        {
            java.util.Map.Entry entry = a.b(l);
            fieldset.a((FieldDescriptorLite)entry.getKey(), entry.getValue());
        }

        java.util.Map.Entry entry1;
        for (Iterator iterator = a.d().iterator(); iterator.hasNext(); fieldset.a((FieldDescriptorLite)entry1.getKey(), entry1.getValue()))
        {
            entry1 = (java.util.Map.Entry)iterator.next();
        }

        return fieldset;
    }

    public void f()
    {
        a.clear();
    }

    public Map g()
    {
        if (a.b())
        {
            return a;
        } else
        {
            return Collections.unmodifiableMap(a);
        }
    }

    public Iterator h()
    {
        return a.entrySet().iterator();
    }

    public boolean i()
    {
        for (int l = 0; l < a.c(); l++)
        {
            if (!a(a.b(l)))
            {
                return false;
            }
        }

        for (Iterator iterator = a.d().iterator(); iterator.hasNext();)
        {
            if (!a((java.util.Map.Entry)iterator.next()))
            {
                return false;
            }
        }

        return true;
    }

    public int j()
    {
        int i1 = 0;
        int l = 0;
        for (; i1 < a.c(); i1++)
        {
            java.util.Map.Entry entry = a.b(i1);
            l += c((FieldDescriptorLite)entry.getKey(), entry.getValue());
        }

        for (Iterator iterator = a.d().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator.next();
            l += c((FieldDescriptorLite)entry1.getKey(), entry1.getValue());
        }

        return l;
    }

    public int k()
    {
        int i1 = 0;
        int l = 0;
        for (; i1 < a.c(); i1++)
        {
            l += c(a.b(i1));
        }

        for (Iterator iterator = a.d().iterator(); iterator.hasNext();)
        {
            l += c((java.util.Map.Entry)iterator.next());
        }

        return l;
    }

}
