// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;


// Referenced classes of package com.umeng.socialize.bean:
//            ah, ai

public class ShareType extends Enum
{

    public static final ShareType NORMAL;
    public static final ShareType SHAKE;
    private static final ShareType a[];

    private ShareType(String s, int i)
    {
        super(s, i);
    }

    ShareType(String s, int i, ShareType sharetype)
    {
        this(s, i);
    }

    public static ShareType valueOf(String s)
    {
        return (ShareType)Enum.valueOf(com/umeng/socialize/bean/ShareType, s);
    }

    public static ShareType[] values()
    {
        ShareType asharetype[] = a;
        int i = asharetype.length;
        ShareType asharetype1[] = new ShareType[i];
        System.arraycopy(asharetype, 0, asharetype1, 0, i);
        return asharetype1;
    }

    static 
    {
        SHAKE = new ah("SHAKE", 0);
        NORMAL = new ai("NORMAL", 1);
        a = (new ShareType[] {
            SHAKE, NORMAL
        });
    }
}
