// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;


// Referenced classes of package com.umeng.socialize.media:
//            UMediaObject

public static class <init> extends Enum
{

    public static final WEBPAGE IMAGE;
    public static final WEBPAGE MUSIC;
    public static final WEBPAGE TEXT;
    public static final WEBPAGE TEXT_IMAGE;
    public static final WEBPAGE VEDIO;
    public static final WEBPAGE WEBPAGE;
    private static final WEBPAGE a[];

    public static <init> convertToEmun(String s)
    {
        <init> a_3C_init>[];
        int i;
        int j;
        a_3C_init> = values();
        j = a_3C_init>.length;
        i = 0;
_L6:
        if (i < j) goto _L2; else goto _L1
_L1:
        <init> <init>1 = null;
_L4:
        return <init>1;
_L2:
        <init> <init>2;
        <init>2 = a_3C_init>[i];
        <init>1 = <init>2;
        if (<init>2.toString().equals(s)) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static toString valueOf(String s)
    {
        return (toString)Enum.valueOf(com/umeng/socialize/media/UMediaObject$MediaType, s);
    }

    public static toString[] values()
    {
        toString atostring[] = a;
        int i = atostring.length;
        toString atostring1[] = new a[i];
        System.arraycopy(atostring, 0, atostring1, 0, i);
        return atostring1;
    }

    static 
    {
        class _cls1 extends UMediaObject.MediaType
        {

            public String toString()
            {
                return "0";
            }

            _cls1(String s, int i)
            {
                super(s, i, null);
            }
        }

        IMAGE = new _cls1("IMAGE", 0);
        class _cls2 extends UMediaObject.MediaType
        {

            public String toString()
            {
                return "1";
            }

            _cls2(String s, int i)
            {
                super(s, i, null);
            }
        }

        VEDIO = new _cls2("VEDIO", 1);
        class _cls3 extends UMediaObject.MediaType
        {

            public String toString()
            {
                return "2";
            }

            _cls3(String s, int i)
            {
                super(s, i, null);
            }
        }

        MUSIC = new _cls3("MUSIC", 2);
        class _cls4 extends UMediaObject.MediaType
        {

            public String toString()
            {
                return "3";
            }

            _cls4(String s, int i)
            {
                super(s, i, null);
            }
        }

        TEXT = new _cls4("TEXT", 3);
        class _cls5 extends UMediaObject.MediaType
        {

            public String toString()
            {
                return "4";
            }

            _cls5(String s, int i)
            {
                super(s, i, null);
            }
        }

        TEXT_IMAGE = new _cls5("TEXT_IMAGE", 4);
        class _cls6 extends UMediaObject.MediaType
        {

            public String toString()
            {
                return "5";
            }

            _cls6(String s, int i)
            {
                super(s, i, null);
            }
        }

        WEBPAGE = new _cls6("WEBPAGE", 5);
        a = (new a[] {
            IMAGE, VEDIO, MUSIC, TEXT, TEXT_IMAGE, WEBPAGE
        });
    }

    private _cls6(String s, int i)
    {
        super(s, i);
    }

    _cls6(String s, int i, _cls6 _pcls6)
    {
        this(s, i);
    }
}
