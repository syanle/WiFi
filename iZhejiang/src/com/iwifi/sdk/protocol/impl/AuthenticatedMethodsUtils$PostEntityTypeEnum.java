// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;


// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            AuthenticatedMethodsUtils

public static final class  extends Enum
{

    private static final POST_ENTITY_TYPE_StringEntity ENUM$VALUES[];
    public static final POST_ENTITY_TYPE_StringEntity POST_ENTITY_TYPE_None;
    public static final POST_ENTITY_TYPE_StringEntity POST_ENTITY_TYPE_StringEntity;
    public static final POST_ENTITY_TYPE_StringEntity POST_ENTITY_TYPE_UrlEncodedFormEntity;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum, s);
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
        POST_ENTITY_TYPE_None = new <init>("POST_ENTITY_TYPE_None", 0);
        POST_ENTITY_TYPE_UrlEncodedFormEntity = new <init>("POST_ENTITY_TYPE_UrlEncodedFormEntity", 1);
        POST_ENTITY_TYPE_StringEntity = new <init>("POST_ENTITY_TYPE_StringEntity", 2);
        ENUM$VALUES = (new ENUM.VALUES[] {
            POST_ENTITY_TYPE_None, POST_ENTITY_TYPE_UrlEncodedFormEntity, POST_ENTITY_TYPE_StringEntity
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
