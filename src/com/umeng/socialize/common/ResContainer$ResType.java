// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.common;


// Referenced classes of package com.umeng.socialize.common:
//            ResContainer

public static class <init> extends Enum
{

    public static final ANIM ANIM;
    public static final ANIM COLOR;
    public static final ANIM DIMEN;
    public static final ANIM DRAWABLE;
    public static final ANIM ID;
    public static final ANIM LAYOUT;
    public static final ANIM RAW;
    public static final ANIM STRING;
    public static final ANIM STYLE;
    private static final ANIM a[];

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/umeng/socialize/common/ResContainer$ResType, s);
    }

    public static <init>[] values()
    {
        <init> a_3C_init>[] = a;
        int i = a_3C_init>.length;
        <init> a_3C_init>1[] = new a[i];
        System.arraycopy(a_3C_init>, 0, a_3C_init>1, 0, i);
        return a_3C_init>1;
    }

    static 
    {
        class _cls1 extends ResContainer.ResType
        {

            public String toString()
            {
                return "layout";
            }

            _cls1(String s, int i)
            {
                super(s, i, null);
            }
        }

        LAYOUT = new _cls1("LAYOUT", 0);
        class _cls2 extends ResContainer.ResType
        {

            public String toString()
            {
                return "id";
            }

            _cls2(String s, int i)
            {
                super(s, i, null);
            }
        }

        ID = new _cls2("ID", 1);
        class _cls3 extends ResContainer.ResType
        {

            public String toString()
            {
                return "drawable";
            }

            _cls3(String s, int i)
            {
                super(s, i, null);
            }
        }

        DRAWABLE = new _cls3("DRAWABLE", 2);
        class _cls4 extends ResContainer.ResType
        {

            public String toString()
            {
                return "style";
            }

            _cls4(String s, int i)
            {
                super(s, i, null);
            }
        }

        STYLE = new _cls4("STYLE", 3);
        class _cls5 extends ResContainer.ResType
        {

            public String toString()
            {
                return "string";
            }

            _cls5(String s, int i)
            {
                super(s, i, null);
            }
        }

        STRING = new _cls5("STRING", 4);
        class _cls6 extends ResContainer.ResType
        {

            public String toString()
            {
                return "color";
            }

            _cls6(String s, int i)
            {
                super(s, i, null);
            }
        }

        COLOR = new _cls6("COLOR", 5);
        class _cls7 extends ResContainer.ResType
        {

            public String toString()
            {
                return "dimen";
            }

            _cls7(String s, int i)
            {
                super(s, i, null);
            }
        }

        DIMEN = new _cls7("DIMEN", 6);
        class _cls8 extends ResContainer.ResType
        {

            public String toString()
            {
                return "raw";
            }

            _cls8(String s, int i)
            {
                super(s, i, null);
            }
        }

        RAW = new _cls8("RAW", 7);
        class _cls9 extends ResContainer.ResType
        {

            public String toString()
            {
                return "anim";
            }

            _cls9(String s, int i)
            {
                super(s, i, null);
            }
        }

        ANIM = new _cls9("ANIM", 8);
        a = (new a[] {
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
