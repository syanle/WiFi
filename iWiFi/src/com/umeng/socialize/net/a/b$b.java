// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net.a;


// Referenced classes of package com.umeng.socialize.net.a:
//            b, c, d

protected static class <init> extends Enum
{

    public static final b a;
    public static final b b;
    private static final b c[];

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/umeng/socialize/net/a/b$b, s);
    }

    public static <init>[] values()
    {
        <init> a_3C_init>[] = c;
        int i = a_3C_init>.length;
        <init> a_3C_init>1[] = new c[i];
        System.arraycopy(a_3C_init>, 0, a_3C_init>1, 0, i);
        return a_3C_init>1;
    }

    static 
    {
        a = new c("GET", 0);
        b = new d("POST", 1);
        c = (new c[] {
            a, b
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }

    (String s, int i,  )
    {
        this(s, i);
    }
}
