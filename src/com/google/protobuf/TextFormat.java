// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.protobuf:
//            ByteString, ExtensionRegistry, Message, WireFormat, 
//            UnknownFieldSet

public final class TextFormat
{
    public static class ParseException extends IOException
    {

        private static final long serialVersionUID = 0x2c5b241b4d0ff6f6L;

        public ParseException(String s)
        {
            super(s);
        }
    }

    static class a extends IOException
    {

        a(String s)
        {
            super(s);
        }
    }

    private static final class b
    {

        final boolean a;

        private void a(int i, int j, List list, c c1)
            throws IOException
        {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                list = ((List) (iterator.next()));
                c1.a(String.valueOf(i));
                c1.a(": ");
                TextFormat.printUnknownFieldValue(j, list, c1);
                if (a)
                {
                    list = " ";
                } else
                {
                    list = "\n";
                }
                c1.a(list);
            }
        }

        private void a(Descriptors.FieldDescriptor fielddescriptor, Object obj, c c1)
            throws IOException
        {
            if (fielddescriptor.isRepeated())
            {
                for (obj = ((List)obj).iterator(); ((Iterator) (obj)).hasNext(); b(fielddescriptor, ((Iterator) (obj)).next(), c1)) { }
            } else
            {
                b(fielddescriptor, obj, c1);
            }
        }

        private void a(Message message, c c1)
            throws IOException
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = message.getAllFields().entrySet().iterator(); iterator.hasNext(); a((Descriptors.FieldDescriptor)entry.getKey(), entry.getValue(), c1))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            a(message.getUnknownFields(), c1);
        }

        static void a(b b1, Descriptors.FieldDescriptor fielddescriptor, Object obj, c c1)
            throws IOException
        {
            b1.a(fielddescriptor, obj, c1);
        }

        static void a(b b1, Message message, c c1)
            throws IOException
        {
            b1.a(message, c1);
        }

        static void a(b b1, UnknownFieldSet unknownfieldset, c c1)
            throws IOException
        {
            b1.a(unknownfieldset, c1);
        }

        private void a(UnknownFieldSet unknownfieldset, c c1)
            throws IOException
        {
            for (unknownfieldset = unknownfieldset.asMap().entrySet().iterator(); unknownfieldset.hasNext();)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)unknownfieldset.next();
                int i = ((Integer)entry.getKey()).intValue();
                Object obj = (UnknownFieldSet.Field)entry.getValue();
                a(i, 0, ((UnknownFieldSet.Field) (obj)).getVarintList(), c1);
                a(i, 5, ((UnknownFieldSet.Field) (obj)).getFixed32List(), c1);
                a(i, 1, ((UnknownFieldSet.Field) (obj)).getFixed64List(), c1);
                a(i, 2, ((UnknownFieldSet.Field) (obj)).getLengthDelimitedList(), c1);
                obj = ((UnknownFieldSet.Field) (obj)).getGroupList().iterator();
                while (((Iterator) (obj)).hasNext()) 
                {
                    UnknownFieldSet unknownfieldset1 = (UnknownFieldSet)((Iterator) (obj)).next();
                    c1.a(((Integer)entry.getKey()).toString());
                    if (a)
                    {
                        c1.a(" { ");
                    } else
                    {
                        c1.a(" {\n");
                        c1.a();
                    }
                    a(unknownfieldset1, c1);
                    if (a)
                    {
                        c1.a("} ");
                    } else
                    {
                        c1.b();
                        c1.a("}\n");
                    }
                }
            }

        }

        private void b(Descriptors.FieldDescriptor fielddescriptor, Object obj, c c1)
            throws IOException
        {
            if (fielddescriptor.isExtension())
            {
                c1.a("[");
                if (fielddescriptor.getContainingType().getOptions().getMessageSetWireFormat() && fielddescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && fielddescriptor.isOptional() && fielddescriptor.getExtensionScope() == fielddescriptor.getMessageType())
                {
                    c1.a(fielddescriptor.getMessageType().getFullName());
                } else
                {
                    c1.a(fielddescriptor.getFullName());
                }
                c1.a("]");
            } else
            if (fielddescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP)
            {
                c1.a(fielddescriptor.getMessageType().getName());
            } else
            {
                c1.a(fielddescriptor.getName());
            }
            if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
            {
                if (a)
                {
                    c1.a(" { ");
                } else
                {
                    c1.a(" {\n");
                    c1.a();
                }
            } else
            {
                c1.a(": ");
            }
            c(fielddescriptor, obj, c1);
            if (fielddescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
            {
                if (a)
                {
                    c1.a("} ");
                    return;
                } else
                {
                    c1.b();
                    c1.a("}\n");
                    return;
                }
            }
            if (a)
            {
                c1.a(" ");
                return;
            } else
            {
                c1.a("\n");
                return;
            }
        }

        static void b(b b1, Descriptors.FieldDescriptor fielddescriptor, Object obj, c c1)
            throws IOException
        {
            b1.c(fielddescriptor, obj, c1);
        }

        private void c(Descriptors.FieldDescriptor fielddescriptor, Object obj, c c1)
            throws IOException
        {
            static class _cls1
            {

                static final int a[];

                static 
                {
                    a = new int[Descriptors.FieldDescriptor.Type.values().length];
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror17) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror16) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror15) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror14) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror13) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 6;
                    }
                    catch (NoSuchFieldError nosuchfielderror12) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 7;
                    }
                    catch (NoSuchFieldError nosuchfielderror11) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 8;
                    }
                    catch (NoSuchFieldError nosuchfielderror10) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 9;
                    }
                    catch (NoSuchFieldError nosuchfielderror9) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 10;
                    }
                    catch (NoSuchFieldError nosuchfielderror8) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 11;
                    }
                    catch (NoSuchFieldError nosuchfielderror7) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 12;
                    }
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 13;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 14;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 15;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 16;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 18;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1.a[fielddescriptor.getType().ordinal()])
            {
            default:
                return;

            case 1: // '\001'
            case 2: // '\002'
            case 3: // '\003'
                c1.a(((Integer)obj).toString());
                return;

            case 4: // '\004'
            case 5: // '\005'
            case 6: // '\006'
                c1.a(((Long)obj).toString());
                return;

            case 7: // '\007'
                c1.a(((Boolean)obj).toString());
                return;

            case 8: // '\b'
                c1.a(((Float)obj).toString());
                return;

            case 9: // '\t'
                c1.a(((Double)obj).toString());
                return;

            case 10: // '\n'
            case 11: // '\013'
                c1.a(TextFormat.unsignedToString(((Integer)obj).intValue()));
                return;

            case 12: // '\f'
            case 13: // '\r'
                c1.a(TextFormat.unsignedToString(((Long)obj).longValue()));
                return;

            case 14: // '\016'
                c1.a("\"");
                c1.a(TextFormat.escapeText((String)obj));
                c1.a("\"");
                return;

            case 15: // '\017'
                c1.a("\"");
                c1.a(TextFormat.escapeBytes((ByteString)obj));
                c1.a("\"");
                return;

            case 16: // '\020'
                c1.a(((Descriptors.EnumValueDescriptor)obj).getName());
                return;

            case 17: // '\021'
            case 18: // '\022'
                a((Message)obj, c1);
                break;
            }
        }

        private b(boolean flag)
        {
            a = flag;
        }

    }

    private static final class c
    {

        private final Appendable a;
        private final StringBuilder b;
        private boolean c;

        private void a(CharSequence charsequence, int i)
            throws IOException
        {
            if (i == 0)
            {
                return;
            }
            if (c)
            {
                c = false;
                a.append(b);
            }
            a.append(charsequence);
        }

        public void a()
        {
            b.append("  ");
        }

        public void a(CharSequence charsequence)
            throws IOException
        {
            int j = 0;
            int l = charsequence.length();
            for (int i = 0; i < l;)
            {
                int k = j;
                if (charsequence.charAt(i) == '\n')
                {
                    a(charsequence.subSequence(j, l), (i - j) + 1);
                    k = i + 1;
                    c = true;
                }
                i++;
                j = k;
            }

            a(charsequence.subSequence(j, l), l - j);
        }

        public void b()
        {
            int i = b.length();
            if (i == 0)
            {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            } else
            {
                b.delete(i - 2, i);
                return;
            }
        }

        private c(Appendable appendable)
        {
            b = new StringBuilder();
            c = true;
            a = appendable;
        }

    }

    private static final class d
    {

        private static final Pattern i = Pattern.compile("(\\s|(#.*$))++", 8);
        private static final Pattern j = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);
        private static final Pattern k = Pattern.compile("-?inf(inity)?", 2);
        private static final Pattern l = Pattern.compile("-?inf(inity)?f?", 2);
        private static final Pattern m = Pattern.compile("nanf?", 2);
        private final CharSequence a;
        private final Matcher b;
        private String c;
        private int d;
        private int e;
        private int f;
        private int g;
        private int h;

        private ParseException a(NumberFormatException numberformatexception)
        {
            return c((new StringBuilder()).append("Couldn't parse integer: ").append(numberformatexception.getMessage()).toString());
        }

        private void a(List list)
            throws ParseException
        {
            char c1 = '\0';
            if (c.length() > 0)
            {
                c1 = c.charAt(0);
            }
            if (c1 != '"' && c1 != '\'')
            {
                throw c("Expected string.");
            }
            if (c.length() < 2 || c.charAt(c.length() - 1) != c1)
            {
                throw c("String missing ending quote.");
            }
            try
            {
                ByteString bytestring = TextFormat.unescapeBytes(c.substring(1, c.length() - 1));
                b();
                list.add(bytestring);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (List list)
            {
                throw c(list.getMessage());
            }
        }

        private ParseException b(NumberFormatException numberformatexception)
        {
            return c((new StringBuilder()).append("Couldn't parse number: ").append(numberformatexception.getMessage()).toString());
        }

        private void n()
        {
            b.usePattern(i);
            if (b.lookingAt())
            {
                b.region(b.end(), b.regionEnd());
            }
        }

        public boolean a()
        {
            return c.length() == 0;
        }

        public boolean a(String s)
        {
            if (c.equals(s))
            {
                b();
                return true;
            } else
            {
                return false;
            }
        }

        public void b()
        {
            g = e;
            h = f;
            while (d < b.regionStart()) 
            {
                if (a.charAt(d) == '\n')
                {
                    e = e + 1;
                    f = 0;
                } else
                {
                    f = f + 1;
                }
                d = d + 1;
            }
            if (b.regionStart() == b.regionEnd())
            {
                c = "";
                return;
            }
            b.usePattern(j);
            if (b.lookingAt())
            {
                c = b.group();
                b.region(b.end(), b.regionEnd());
            } else
            {
                c = String.valueOf(a.charAt(d));
                b.region(d + 1, b.regionEnd());
            }
            n();
        }

        public void b(String s)
            throws ParseException
        {
            if (!a(s))
            {
                throw c((new StringBuilder()).append("Expected \"").append(s).append("\".").toString());
            } else
            {
                return;
            }
        }

        public ParseException c(String s)
        {
            return new ParseException((new StringBuilder()).append(e + 1).append(":").append(f + 1).append(": ").append(s).toString());
        }

        public boolean c()
        {
            char c1;
            if (c.length() != 0)
            {
                if ('0' <= (c1 = c.charAt(0)) && c1 <= '9' || c1 == '-' || c1 == '+')
                {
                    return true;
                }
            }
            return false;
        }

        public ParseException d(String s)
        {
            return new ParseException((new StringBuilder()).append(g + 1).append(":").append(h + 1).append(": ").append(s).toString());
        }

        public String d()
            throws ParseException
        {
            for (int i1 = 0; i1 < c.length();)
            {
                char c1 = c.charAt(i1);
                if ('a' <= c1 && c1 <= 'z' || 'A' <= c1 && c1 <= 'Z' || '0' <= c1 && c1 <= '9' || c1 == '_' || c1 == '.')
                {
                    i1++;
                } else
                {
                    throw c("Expected identifier.");
                }
            }

            String s = c;
            b();
            return s;
        }

        public int e()
            throws ParseException
        {
            int i1;
            try
            {
                i1 = TextFormat.parseInt32(c);
                b();
            }
            catch (NumberFormatException numberformatexception)
            {
                throw a(numberformatexception);
            }
            return i1;
        }

        public int f()
            throws ParseException
        {
            int i1;
            try
            {
                i1 = TextFormat.parseUInt32(c);
                b();
            }
            catch (NumberFormatException numberformatexception)
            {
                throw a(numberformatexception);
            }
            return i1;
        }

        public long g()
            throws ParseException
        {
            long l1;
            try
            {
                l1 = TextFormat.parseInt64(c);
                b();
            }
            catch (NumberFormatException numberformatexception)
            {
                throw a(numberformatexception);
            }
            return l1;
        }

        public long h()
            throws ParseException
        {
            long l1;
            try
            {
                l1 = TextFormat.parseUInt64(c);
                b();
            }
            catch (NumberFormatException numberformatexception)
            {
                throw a(numberformatexception);
            }
            return l1;
        }

        public double i()
            throws ParseException
        {
            if (k.matcher(c).matches())
            {
                boolean flag = c.startsWith("-");
                b();
                return !flag ? (1.0D / 0.0D) : (-1.0D / 0.0D);
            }
            if (c.equalsIgnoreCase("nan"))
            {
                b();
                return (0.0D / 0.0D);
            }
            double d1;
            try
            {
                d1 = Double.parseDouble(c);
                b();
            }
            catch (NumberFormatException numberformatexception)
            {
                throw b(numberformatexception);
            }
            return d1;
        }

        public float j()
            throws ParseException
        {
            if (l.matcher(c).matches())
            {
                boolean flag = c.startsWith("-");
                b();
                return !flag ? (1.0F / 0.0F) : (-1.0F / 0.0F);
            }
            if (m.matcher(c).matches())
            {
                b();
                return (0.0F / 0.0F);
            }
            float f1;
            try
            {
                f1 = Float.parseFloat(c);
                b();
            }
            catch (NumberFormatException numberformatexception)
            {
                throw b(numberformatexception);
            }
            return f1;
        }

        public boolean k()
            throws ParseException
        {
            if (c.equals("true") || c.equals("t") || c.equals("1"))
            {
                b();
                return true;
            }
            if (c.equals("false") || c.equals("f") || c.equals("0"))
            {
                b();
                return false;
            } else
            {
                throw c("Expected \"true\" or \"false\".");
            }
        }

        public String l()
            throws ParseException
        {
            return m().toStringUtf8();
        }

        public ByteString m()
            throws ParseException
        {
            ArrayList arraylist = new ArrayList();
            a(arraylist);
            for (; c.startsWith("'") || c.startsWith("\""); a(arraylist)) { }
            return ByteString.copyFrom(arraylist);
        }


        private d(CharSequence charsequence)
        {
            d = 0;
            e = 0;
            f = 0;
            g = 0;
            h = 0;
            a = charsequence;
            b = i.matcher(charsequence);
            n();
            b();
        }

    }


    private static final int BUFFER_SIZE = 4096;
    private static final b DEFAULT_PRINTER = new b(false, null);
    private static final b SINGLE_LINE_PRINTER = new b(true, null);

    private TextFormat()
    {
    }

    private static int digitValue(byte byte0)
    {
        if (48 <= byte0 && byte0 <= 57)
        {
            return byte0 - 48;
        }
        if (97 <= byte0 && byte0 <= 122)
        {
            return (byte0 - 97) + 10;
        } else
        {
            return (byte0 - 65) + 10;
        }
    }

    static String escapeBytes(ByteString bytestring)
    {
        StringBuilder stringbuilder;
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
label4:
                        {
label5:
                            {
label6:
                                {
label7:
                                    {
label8:
                                        {
label9:
                                            {
                                                stringbuilder = new StringBuilder(bytestring.size());
                                                int i = 0;
label10:
                                                do
                                                {
                                                    {
                                                        if (i >= bytestring.size())
                                                        {
                                                            break label0;
                                                        }
                                                        byte byte0 = bytestring.byteAt(i);
                                                        switch (byte0)
                                                        {
                                                        default:
                                                            if (byte0 >= 32)
                                                            {
                                                                stringbuilder.append((char)byte0);
                                                            } else
                                                            {
                                                                stringbuilder.append('\\');
                                                                stringbuilder.append((char)((byte0 >>> 6 & 3) + 48));
                                                                stringbuilder.append((char)((byte0 >>> 3 & 7) + 48));
                                                                stringbuilder.append((char)((byte0 & 7) + 48));
                                                            }
                                                            break;

                                                        case 7: // '\007'
                                                            break label10;

                                                        case 8: // '\b'
                                                            break label9;

                                                        case 9: // '\t'
                                                            break label5;

                                                        case 10: // '\n'
                                                            break label7;

                                                        case 11: // '\013'
                                                            break label4;

                                                        case 12: // '\f'
                                                            break label8;

                                                        case 13: // '\r'
                                                            break label6;

                                                        case 34: // '"'
                                                            break label1;

                                                        case 39: // '\''
                                                            break label2;

                                                        case 92: // '\\'
                                                            break label3;
                                                        }
                                                    }
                                                    i++;
                                                } while (true);
                                                stringbuilder.append("\\a");
                                                break MISSING_BLOCK_LABEL_133;
                                            }
                                            stringbuilder.append("\\b");
                                            break MISSING_BLOCK_LABEL_133;
                                        }
                                        stringbuilder.append("\\f");
                                        break MISSING_BLOCK_LABEL_133;
                                    }
                                    stringbuilder.append("\\n");
                                    break MISSING_BLOCK_LABEL_133;
                                }
                                stringbuilder.append("\\r");
                                break MISSING_BLOCK_LABEL_133;
                            }
                            stringbuilder.append("\\t");
                            break MISSING_BLOCK_LABEL_133;
                        }
                        stringbuilder.append("\\v");
                        break MISSING_BLOCK_LABEL_133;
                    }
                    stringbuilder.append("\\\\");
                    break MISSING_BLOCK_LABEL_133;
                }
                stringbuilder.append("\\'");
                break MISSING_BLOCK_LABEL_133;
            }
            stringbuilder.append("\\\"");
            break MISSING_BLOCK_LABEL_133;
        }
        return stringbuilder.toString();
    }

    static String escapeText(String s)
    {
        return escapeBytes(ByteString.copyFromUtf8(s));
    }

    private static boolean isHex(byte byte0)
    {
        return 48 <= byte0 && byte0 <= 57 || 97 <= byte0 && byte0 <= 102 || 65 <= byte0 && byte0 <= 70;
    }

    private static boolean isOctal(byte byte0)
    {
        return 48 <= byte0 && byte0 <= 55;
    }

    public static void merge(CharSequence charsequence, ExtensionRegistry extensionregistry, Message.Builder builder)
        throws ParseException
    {
        for (charsequence = new d(charsequence, null); !charsequence.a(); mergeField(charsequence, extensionregistry, builder)) { }
    }

    public static void merge(CharSequence charsequence, Message.Builder builder)
        throws ParseException
    {
        merge(charsequence, ExtensionRegistry.getEmptyRegistry(), builder);
    }

    public static void merge(Readable readable, ExtensionRegistry extensionregistry, Message.Builder builder)
        throws IOException
    {
        merge(((CharSequence) (toStringBuilder(readable))), extensionregistry, builder);
    }

    public static void merge(Readable readable, Message.Builder builder)
        throws IOException
    {
        merge(readable, ExtensionRegistry.getEmptyRegistry(), builder);
    }

    private static void mergeField(d d1, ExtensionRegistry extensionregistry, Message.Builder builder)
        throws ParseException
    {
        String s;
        Descriptors.Descriptor descriptor;
        s = null;
        descriptor = builder.getDescriptorForType();
        if (!d1.a("[")) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        obj = new StringBuilder(d1.d());
        for (; d1.a("."); ((StringBuilder) (obj)).append(d1.d()))
        {
            ((StringBuilder) (obj)).append('.');
        }

        obj1 = extensionregistry.findExtensionByName(((StringBuilder) (obj)).toString());
        if (obj1 == null)
        {
            throw d1.d((new StringBuilder()).append("Extension \"").append(obj).append("\" not found in the ExtensionRegistry.").toString());
        }
        if (((ExtensionRegistry.ExtensionInfo) (obj1)).descriptor.getContainingType() != descriptor)
        {
            throw d1.d((new StringBuilder()).append("Extension \"").append(obj).append("\" does not extend message type \"").append(descriptor.getFullName()).append("\".").toString());
        }
        d1.b("]");
        obj = ((ExtensionRegistry.ExtensionInfo) (obj1)).descriptor;
_L10:
        if (((Descriptors.FieldDescriptor) (obj)).getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) goto _L4; else goto _L3
_L3:
        d1.a(":");
        String s2;
        if (d1.a("<"))
        {
            s = ">";
        } else
        {
            d1.b("{");
            s = "}";
        }
        if (obj1 == null)
        {
            obj1 = builder.newBuilderForField(((Descriptors.FieldDescriptor) (obj)));
        } else
        {
            obj1 = ((ExtensionRegistry.ExtensionInfo) (obj1)).defaultInstance.newBuilderForType();
        }
_L7:
        if (d1.a(s))
        {
            break; /* Loop/switch isn't completed */
        }
        if (d1.a())
        {
            throw d1.c((new StringBuilder()).append("Expected \"").append(s).append("\".").toString());
        }
        mergeField(d1, extensionregistry, ((Message.Builder) (obj1)));
        continue; /* Loop/switch isn't completed */
_L2:
        s2 = d1.d();
        obj1 = descriptor.findFieldByName(s2);
        obj = obj1;
        if (obj1 == null)
        {
            obj1 = descriptor.findFieldByName(s2.toLowerCase(Locale.US));
            obj = obj1;
            if (obj1 != null)
            {
                obj = obj1;
                if (((Descriptors.FieldDescriptor) (obj1)).getType() != Descriptors.FieldDescriptor.Type.GROUP)
                {
                    obj = null;
                }
            }
        }
        obj1 = obj;
        if (obj != null)
        {
            obj1 = obj;
            if (((Descriptors.FieldDescriptor) (obj)).getType() == Descriptors.FieldDescriptor.Type.GROUP)
            {
                obj1 = obj;
                if (!((Descriptors.FieldDescriptor) (obj)).getMessageType().getName().equals(s2))
                {
                    obj1 = null;
                }
            }
        }
        if (obj1 == null)
        {
            throw d1.d((new StringBuilder()).append("Message type \"").append(descriptor.getFullName()).append("\" has no field named \"").append(s2).append("\".").toString());
        }
          goto _L5
        if (true) goto _L7; else goto _L6
_L6:
        extensionregistry = ((Message.Builder) (obj1)).build();
_L8:
        if (((Descriptors.FieldDescriptor) (obj)).isRepeated())
        {
            builder.addRepeatedField(((Descriptors.FieldDescriptor) (obj)), extensionregistry);
            return;
        } else
        {
            builder.setField(((Descriptors.FieldDescriptor) (obj)), extensionregistry);
            return;
        }
_L4:
        d1.b(":");
        switch (_cls1.a[((Descriptors.FieldDescriptor) (obj)).getType().ordinal()])
        {
        default:
            extensionregistry = s;
            break;

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            extensionregistry = Integer.valueOf(d1.e());
            break;

        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            extensionregistry = Long.valueOf(d1.g());
            break;

        case 10: // '\n'
        case 11: // '\013'
            extensionregistry = Integer.valueOf(d1.f());
            break;

        case 12: // '\f'
        case 13: // '\r'
            extensionregistry = Long.valueOf(d1.h());
            break;

        case 8: // '\b'
            extensionregistry = Float.valueOf(d1.j());
            break;

        case 9: // '\t'
            extensionregistry = Double.valueOf(d1.i());
            break;

        case 7: // '\007'
            extensionregistry = Boolean.valueOf(d1.k());
            break;

        case 14: // '\016'
            extensionregistry = d1.l();
            break;

        case 15: // '\017'
            extensionregistry = d1.m();
            break;

        case 16: // '\020'
            Descriptors.EnumDescriptor enumdescriptor = ((Descriptors.FieldDescriptor) (obj)).getEnumType();
            if (d1.c())
            {
                int i = d1.e();
                obj1 = enumdescriptor.findValueByNumber(i);
                extensionregistry = ((ExtensionRegistry) (obj1));
                if (obj1 == null)
                {
                    throw d1.d((new StringBuilder()).append("Enum type \"").append(enumdescriptor.getFullName()).append("\" has no value with number ").append(i).append('.').toString());
                }
            } else
            {
                String s1 = d1.d();
                obj1 = enumdescriptor.findValueByName(s1);
                extensionregistry = ((ExtensionRegistry) (obj1));
                if (obj1 == null)
                {
                    throw d1.d((new StringBuilder()).append("Enum type \"").append(enumdescriptor.getFullName()).append("\" has no value named \"").append(s1).append("\".").toString());
                }
            }
            break;

        case 17: // '\021'
        case 18: // '\022'
            throw new RuntimeException("Can't get here.");
        }
        if (true) goto _L8; else goto _L5
_L5:
        obj = obj1;
        obj1 = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    static int parseInt32(String s)
        throws NumberFormatException
    {
        return (int)parseInteger(s, true, false);
    }

    static long parseInt64(String s)
        throws NumberFormatException
    {
        return parseInteger(s, true, true);
    }

    private static long parseInteger(String s, boolean flag, boolean flag1)
        throws NumberFormatException
    {
label0:
        {
            boolean flag2 = true;
            int i = 0;
            Object obj;
            int j;
            long l1;
            if (s.startsWith("-", 0))
            {
                if (!flag)
                {
                    throw new NumberFormatException((new StringBuilder()).append("Number must be positive: ").append(s).toString());
                }
                i = 1;
            } else
            {
                flag2 = false;
            }
            if (s.startsWith("0x", i))
            {
                j = i + 2;
                i = 16;
            } else
            if (s.startsWith("0", i))
            {
                j = i;
                i = 8;
            } else
            {
                j = i;
                i = 10;
            }
            obj = s.substring(j);
            if (((String) (obj)).length() < 16)
            {
                long l = Long.parseLong(((String) (obj)), i);
                if (flag2)
                {
                    l = -l;
                }
                l1 = l;
                if (flag1)
                {
                    break label0;
                }
                if (flag)
                {
                    if (l <= 0x7fffffffL)
                    {
                        l1 = l;
                        if (l >= 0xffffffff80000000L)
                        {
                            break label0;
                        }
                    }
                    throw new NumberFormatException((new StringBuilder()).append("Number out of range for 32-bit signed integer: ").append(s).toString());
                }
                if (l < 0x100000000L)
                {
                    l1 = l;
                    if (l >= 0L)
                    {
                        break label0;
                    }
                }
                throw new NumberFormatException((new StringBuilder()).append("Number out of range for 32-bit unsigned integer: ").append(s).toString());
            }
            obj = new BigInteger(((String) (obj)), i);
            if (flag2)
            {
                obj = ((BigInteger) (obj)).negate();
            }
            if (!flag1)
            {
                if (flag)
                {
                    if (((BigInteger) (obj)).bitLength() > 31)
                    {
                        throw new NumberFormatException((new StringBuilder()).append("Number out of range for 32-bit signed integer: ").append(s).toString());
                    }
                } else
                if (((BigInteger) (obj)).bitLength() > 32)
                {
                    throw new NumberFormatException((new StringBuilder()).append("Number out of range for 32-bit unsigned integer: ").append(s).toString());
                }
            } else
            if (flag)
            {
                if (((BigInteger) (obj)).bitLength() > 63)
                {
                    throw new NumberFormatException((new StringBuilder()).append("Number out of range for 64-bit signed integer: ").append(s).toString());
                }
            } else
            if (((BigInteger) (obj)).bitLength() > 64)
            {
                throw new NumberFormatException((new StringBuilder()).append("Number out of range for 64-bit unsigned integer: ").append(s).toString());
            }
            l1 = ((BigInteger) (obj)).longValue();
        }
        return l1;
    }

    static int parseUInt32(String s)
        throws NumberFormatException
    {
        return (int)parseInteger(s, false, false);
    }

    static long parseUInt64(String s)
        throws NumberFormatException
    {
        return parseInteger(s, false, true);
    }

    public static void print(Message message, Appendable appendable)
        throws IOException
    {
        b.a(DEFAULT_PRINTER, message, new c(appendable, null));
    }

    public static void print(UnknownFieldSet unknownfieldset, Appendable appendable)
        throws IOException
    {
        b.a(DEFAULT_PRINTER, unknownfieldset, new c(appendable, null));
    }

    public static void printField(Descriptors.FieldDescriptor fielddescriptor, Object obj, Appendable appendable)
        throws IOException
    {
        b.a(DEFAULT_PRINTER, fielddescriptor, obj, new c(appendable, null));
    }

    public static String printFieldToString(Descriptors.FieldDescriptor fielddescriptor, Object obj)
    {
        try
        {
            StringBuilder stringbuilder = new StringBuilder();
            printField(fielddescriptor, obj, stringbuilder);
            fielddescriptor = stringbuilder.toString();
        }
        // Misplaced declaration of an exception variable
        catch (Descriptors.FieldDescriptor fielddescriptor)
        {
            throw new IllegalStateException(fielddescriptor);
        }
        return fielddescriptor;
    }

    public static void printFieldValue(Descriptors.FieldDescriptor fielddescriptor, Object obj, Appendable appendable)
        throws IOException
    {
        b.b(DEFAULT_PRINTER, fielddescriptor, obj, new c(appendable, null));
    }

    public static String printToString(Message message)
    {
        try
        {
            StringBuilder stringbuilder = new StringBuilder();
            print(message, stringbuilder);
            message = stringbuilder.toString();
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            throw new IllegalStateException(message);
        }
        return message;
    }

    public static String printToString(UnknownFieldSet unknownfieldset)
    {
        try
        {
            StringBuilder stringbuilder = new StringBuilder();
            print(unknownfieldset, stringbuilder);
            unknownfieldset = stringbuilder.toString();
        }
        // Misplaced declaration of an exception variable
        catch (UnknownFieldSet unknownfieldset)
        {
            throw new IllegalStateException(unknownfieldset);
        }
        return unknownfieldset;
    }

    private static void printUnknownFieldValue(int i, Object obj, c c1)
        throws IOException
    {
        switch (WireFormat.getTagWireType(i))
        {
        case 4: // '\004'
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Bad tag: ").append(i).toString());

        case 0: // '\0'
            c1.a(unsignedToString(((Long)obj).longValue()));
            return;

        case 5: // '\005'
            c1.a(String.format((Locale)null, "0x%08x", new Object[] {
                (Integer)obj
            }));
            return;

        case 1: // '\001'
            c1.a(String.format((Locale)null, "0x%016x", new Object[] {
                (Long)obj
            }));
            return;

        case 2: // '\002'
            c1.a("\"");
            c1.a(escapeBytes((ByteString)obj));
            c1.a("\"");
            return;

        case 3: // '\003'
            b.a(DEFAULT_PRINTER, (UnknownFieldSet)obj, c1);
            return;
        }
    }

    public static void printUnknownFieldValue(int i, Object obj, Appendable appendable)
        throws IOException
    {
        printUnknownFieldValue(i, obj, new c(appendable, null));
    }

    public static String shortDebugString(Message message)
    {
        try
        {
            StringBuilder stringbuilder = new StringBuilder();
            b.a(SINGLE_LINE_PRINTER, message, new c(stringbuilder, null));
            message = stringbuilder.toString().trim();
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            throw new IllegalStateException(message);
        }
        return message;
    }

    public static String shortDebugString(UnknownFieldSet unknownfieldset)
    {
        try
        {
            StringBuilder stringbuilder = new StringBuilder();
            b.a(SINGLE_LINE_PRINTER, unknownfieldset, new c(stringbuilder, null));
            unknownfieldset = stringbuilder.toString().trim();
        }
        // Misplaced declaration of an exception variable
        catch (UnknownFieldSet unknownfieldset)
        {
            throw new IllegalStateException(unknownfieldset);
        }
        return unknownfieldset;
    }

    private static StringBuilder toStringBuilder(Readable readable)
        throws IOException
    {
        StringBuilder stringbuilder = new StringBuilder();
        CharBuffer charbuffer = CharBuffer.allocate(4096);
        do
        {
            int i = readable.read(charbuffer);
            if (i == -1)
            {
                return stringbuilder;
            }
            charbuffer.flip();
            stringbuilder.append(charbuffer, 0, i);
        } while (true);
    }

    static ByteString unescapeBytes(CharSequence charsequence)
        throws a
    {
        byte abyte0[];
        int j;
        int l;
        charsequence = ByteString.copyFromUtf8(charsequence.toString());
        abyte0 = new byte[charsequence.size()];
        j = 0;
        l = 0;
_L9:
        if (j >= charsequence.size()) goto _L2; else goto _L1
_L1:
        byte byte0 = charsequence.byteAt(j);
        if (byte0 != 92) goto _L4; else goto _L3
_L3:
        if (j + 1 >= charsequence.size()) goto _L6; else goto _L5
_L5:
        int k;
        k = j + 1;
        byte0 = charsequence.byteAt(k);
        if (!isOctal(byte0)) goto _L8; else goto _L7
_L7:
        int i;
        int i1 = digitValue(byte0);
        i = i1;
        j = k;
        if (k + 1 < charsequence.size())
        {
            i = i1;
            j = k;
            if (isOctal(charsequence.byteAt(k + 1)))
            {
                j = k + 1;
                i = i1 * 8 + digitValue(charsequence.byteAt(j));
            }
        }
        i1 = i;
        k = j;
        if (j + 1 < charsequence.size())
        {
            i1 = i;
            k = j;
            if (isOctal(charsequence.byteAt(j + 1)))
            {
                k = j + 1;
                i1 = i * 8 + digitValue(charsequence.byteAt(k));
            }
        }
        abyte0[l] = (byte)i1;
        i = l + 1;
        j = k;
_L11:
        j++;
        l = i;
          goto _L9
_L8:
        switch (byte0)
        {
        default:
            throw new a((new StringBuilder()).append("Invalid escape sequence: '\\").append((char)byte0).append('\'').toString());

        case 97: // 'a'
            i = l + 1;
            abyte0[l] = 7;
            j = k;
            break;

        case 98: // 'b'
            i = l + 1;
            abyte0[l] = 8;
            j = k;
            break;

        case 102: // 'f'
            i = l + 1;
            abyte0[l] = 12;
            j = k;
            break;

        case 110: // 'n'
            i = l + 1;
            abyte0[l] = 10;
            j = k;
            break;

        case 114: // 'r'
            i = l + 1;
            abyte0[l] = 13;
            j = k;
            break;

        case 116: // 't'
            i = l + 1;
            abyte0[l] = 9;
            j = k;
            break;

        case 118: // 'v'
            i = l + 1;
            abyte0[l] = 11;
            j = k;
            break;

        case 92: // '\\'
            i = l + 1;
            abyte0[l] = 92;
            j = k;
            break;

        case 39: // '\''
            i = l + 1;
            abyte0[l] = 39;
            j = k;
            break;

        case 34: // '"'
            i = l + 1;
            abyte0[l] = 34;
            j = k;
            break;

        case 120: // 'x'
            if (k + 1 < charsequence.size() && isHex(charsequence.byteAt(k + 1)))
            {
                int j1 = k + 1;
                k = digitValue(charsequence.byteAt(j1));
                i = k;
                j = j1;
                if (j1 + 1 < charsequence.size())
                {
                    i = k;
                    j = j1;
                    if (isHex(charsequence.byteAt(j1 + 1)))
                    {
                        j = j1 + 1;
                        i = k * 16 + digitValue(charsequence.byteAt(j));
                    }
                }
                abyte0[l] = (byte)i;
                i = l + 1;
            } else
            {
                throw new a("Invalid escape sequence: '\\x' with no digits");
            }
            break;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        throw new a("Invalid escape sequence: '\\' at end of string.");
_L4:
        abyte0[l] = byte0;
        i = l + 1;
        continue; /* Loop/switch isn't completed */
_L2:
        return ByteString.copyFrom(abyte0, 0, l);
        if (true) goto _L11; else goto _L10
_L10:
    }

    static String unescapeText(String s)
        throws a
    {
        return unescapeBytes(s).toStringUtf8();
    }

    private static String unsignedToString(int i)
    {
        if (i >= 0)
        {
            return Integer.toString(i);
        } else
        {
            return Long.toString((long)i & 0xffffffffL);
        }
    }

    private static String unsignedToString(long l)
    {
        if (l >= 0L)
        {
            return Long.toString(l);
        } else
        {
            return BigInteger.valueOf(0x7fffffffffffffffL & l).setBit(63).toString();
        }
    }




}
