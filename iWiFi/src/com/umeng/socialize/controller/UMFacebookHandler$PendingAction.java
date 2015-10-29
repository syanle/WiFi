// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;


// Referenced classes of package com.umeng.socialize.controller:
//            UMFacebookHandler

private static final class  extends Enum
{

    private static final POST_STATUS_UPDATE ENUM$VALUES[];
    public static final POST_STATUS_UPDATE NONE;
    public static final POST_STATUS_UPDATE POST_PHOTO;
    public static final POST_STATUS_UPDATE POST_STATUS_UPDATE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/umeng/socialize/controller/UMFacebookHandler$PendingAction, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        NONE = new <init>("NONE", 0);
        POST_PHOTO = new <init>("POST_PHOTO", 1);
        POST_STATUS_UPDATE = new <init>("POST_STATUS_UPDATE", 2);
        ENUM$VALUES = (new ENUM.VALUES[] {
            NONE, POST_PHOTO, POST_STATUS_UPDATE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
