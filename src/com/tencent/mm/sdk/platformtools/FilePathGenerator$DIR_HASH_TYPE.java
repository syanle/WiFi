// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;


// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            FilePathGenerator

public static final class  extends Enum
{

    public static final ALL_MD5 ALL_MD5;
    public static final ALL_MD5 HEAD_2_BYTE;
    private static final ALL_MD5 x[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/tencent/mm/sdk/platformtools/FilePathGenerator$DIR_HASH_TYPE, s);
    }

    public static [] values()
    {
        return ([])x.clone();
    }

    static 
    {
        HEAD_2_BYTE = new <init>("HEAD_2_BYTE", 0);
        ALL_MD5 = new <init>("ALL_MD5", 1);
        x = (new x[] {
            HEAD_2_BYTE, ALL_MD5
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
