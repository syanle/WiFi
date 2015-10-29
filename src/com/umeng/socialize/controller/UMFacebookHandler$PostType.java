// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;


// Referenced classes of package com.umeng.socialize.controller:
//            UMFacebookHandler

public static class <init> extends Enum
{

    private static final PHOTO ENUM$VALUES[];
    public static final PHOTO FEED;
    public static final PHOTO PHOTO;

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/umeng/socialize/controller/UMFacebookHandler$PostType, s);
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
        FEED = new UMFacebookHandler.PostType("FEED", 0) {

            public String toString()
            {
                return "post_to_feed";
            }

        };
        PHOTO = new UMFacebookHandler.PostType("PHOTO", 1) {

            public String toString()
            {
                return "post_photo";
            }

        };
        ENUM$VALUES = (new ENUM.VALUES[] {
            FEED, PHOTO
        });
    }

    private _cls2(String s, int i)
    {
        super(s, i);
    }

    _cls2(String s, int i, _cls2 _pcls2)
    {
        this(s, i);
    }
}
