// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


// Referenced classes of package com.facebook:
//            ResContainer

public static class <init> extends Enum
{

    public static final ANIM ANIM;
    public static final ANIM COLOR;
    public static final ANIM DIMEN;
    public static final ANIM DRAWABLE;
    private static final ANIM ENUM$VALUES[];
    public static final ANIM ID;
    public static final ANIM LAYOUT;
    public static final ANIM RAW;
    public static final ANIM STRING;
    public static final ANIM STYLE;

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/facebook/ResContainer$ResType, s);
    }

    public static <init>[] values()
    {
        <init> a_3C_init>[] = ENUM$VALUES;
        int i = a_3C_init>.length;
        <init> a_3C_init>1[] = new ENUM.VALUES[i];
        System.arraycopy(a_3C_init>, 0, a_3C_init>1, 0, i);
        return a_3C_init>1;
    }

    static 
    {
        LAYOUT = new ResContainer.ResType("LAYOUT", 0) {

            public String toString()
            {
                return "layout";
            }

        };
        ID = new ResContainer.ResType("ID", 1) {

            public String toString()
            {
                return "id";
            }

        };
        DRAWABLE = new ResContainer.ResType("DRAWABLE", 2) {

            public String toString()
            {
                return "drawable";
            }

        };
        STYLE = new ResContainer.ResType("STYLE", 3) {

            public String toString()
            {
                return "style";
            }

        };
        STRING = new ResContainer.ResType("STRING", 4) {

            public String toString()
            {
                return "string";
            }

        };
        COLOR = new ResContainer.ResType("COLOR", 5) {

            public String toString()
            {
                return "color";
            }

        };
        DIMEN = new ResContainer.ResType("DIMEN", 6) {

            public String toString()
            {
                return "dimen";
            }

        };
        RAW = new ResContainer.ResType("RAW", 7) {

            public String toString()
            {
                return "raw";
            }

        };
        ANIM = new ResContainer.ResType("ANIM", 8) {

            public String toString()
            {
                return "anim";
            }

        };
        ENUM$VALUES = (new ENUM.VALUES[] {
            LAYOUT, ID, DRAWABLE, STYLE, STRING, COLOR, DIMEN, RAW, ANIM
        });
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }

    _cls9(String s, int i, _cls9 _pcls9)
    {
        this(s, i);
    }
}
