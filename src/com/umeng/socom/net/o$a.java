// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socom.net;


// Referenced classes of package com.umeng.socom.net:
//            o

public static final class  extends Enum
{

    public static final b a;
    public static final b b;
    private static final b c[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/umeng/socom/net/o$a, s);
    }

    public static [] values()
    {
         a1[] = c;
        int i = a1.length;
         a2[] = new c[i];
        System.arraycopy(a1, 0, a2, 0, i);
        return a2;
    }

    static 
    {
        a = new <init>("SUCCESS", 0);
        b = new <init>("FAIL", 1);
        c = (new c[] {
            a, b
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
