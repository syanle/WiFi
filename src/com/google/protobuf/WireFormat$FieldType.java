// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            WireFormat, i, j, k, 
//            l

public static class <init> extends Enum
{

    private static final SINT64 $VALUES[];
    public static final SINT64 BOOL;
    public static final SINT64 BYTES;
    public static final SINT64 DOUBLE;
    public static final SINT64 ENUM;
    public static final SINT64 FIXED32;
    public static final SINT64 FIXED64;
    public static final SINT64 FLOAT;
    public static final SINT64 GROUP;
    public static final SINT64 INT32;
    public static final SINT64 INT64;
    public static final SINT64 MESSAGE;
    public static final SINT64 SFIXED32;
    public static final SINT64 SFIXED64;
    public static final SINT64 SINT32;
    public static final SINT64 SINT64;
    public static final SINT64 STRING;
    public static final SINT64 UINT32;
    public static final SINT64 UINT64;
    private final SINT64 javaType;
    private final int wireType;

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/google/protobuf/WireFormat$FieldType, s);
    }

    public static <init>[] values()
    {
        return (<init>[])$VALUES.clone();
    }

    public e_3B_.clone getJavaType()
    {
        return javaType;
    }

    public int getWireType()
    {
        return wireType;
    }

    public boolean isPackable()
    {
        return true;
    }

    static 
    {
        DOUBLE = new <init>("DOUBLE", 0, OUBLE, 1);
        FLOAT = new <init>("FLOAT", 1, LOAT, 5);
        INT64 = new <init>("INT64", 2, ONG, 0);
        UINT64 = new <init>("UINT64", 3, ONG, 0);
        INT32 = new <init>("INT32", 4, NT, 0);
        FIXED64 = new <init>("FIXED64", 5, ONG, 1);
        FIXED32 = new <init>("FIXED32", 6, NT, 5);
        BOOL = new <init>("BOOL", 7, OOLEAN, 0);
        STRING = new i("STRING", 8, TRING, 2);
        GROUP = new j("GROUP", 9, ESSAGE, 3);
        MESSAGE = new k("MESSAGE", 10, ESSAGE, 2);
        BYTES = new l("BYTES", 11, YTE_STRING, 2);
        UINT32 = new <init>("UINT32", 12, NT, 0);
        ENUM = new <init>("ENUM", 13, NUM, 0);
        SFIXED32 = new <init>("SFIXED32", 14, NT, 5);
        SFIXED64 = new <init>("SFIXED64", 15, ONG, 1);
        SINT32 = new <init>("SINT32", 16, NT, 0);
        SINT64 = new <init>("SINT64", 17, ONG, 0);
        $VALUES = (new .VALUES[] {
            DOUBLE, FLOAT, INT64, UINT64, INT32, FIXED64, FIXED32, BOOL, STRING, GROUP, 
            MESSAGE, BYTES, UINT32, ENUM, SFIXED32, SFIXED64, SINT32, SINT64
        });
    }

    private <init>(String s, int i1, <init> <init>1, int j1)
    {
        super(s, i1);
        javaType = <init>1;
        wireType = j1;
    }

    wireType(String s, int i1, wireType wiretype, int j1, wireType wiretype1)
    {
        this(s, i1, wiretype, j1);
    }

    // Unreferenced inner class com/google/protobuf/i
    static final class i extends WireFormat.FieldType
    {

        public boolean isPackable()
        {
            return false;
        }

            i(String s, int i1, WireFormat.JavaType javatype, int j1)
            {
                super(s, i1, javatype, j1, null);
            }
    }


    // Unreferenced inner class com/google/protobuf/j
    static final class j extends WireFormat.FieldType
    {

        public boolean isPackable()
        {
            return false;
        }

            j(String s, int i1, WireFormat.JavaType javatype, int j1)
            {
                super(s, i1, javatype, j1, null);
            }
    }


    // Unreferenced inner class com/google/protobuf/k
    static final class k extends WireFormat.FieldType
    {

        public boolean isPackable()
        {
            return false;
        }

            k(String s, int i1, WireFormat.JavaType javatype, int j1)
            {
                super(s, i1, javatype, j1, null);
            }
    }


    // Unreferenced inner class com/google/protobuf/l
    static final class l extends WireFormat.FieldType
    {

        public boolean isPackable()
        {
            return false;
        }

            l(String s, int i1, WireFormat.JavaType javatype, int j1)
            {
                super(s, i1, javatype, j1, null);
            }
    }

}
