// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;


// Referenced classes of package com.umeng.socialize.bean:
//            l, m

public class LIKESTATUS extends Enum
{

    public static final LIKESTATUS LIKE;
    public static final LIKESTATUS UNLIKE;
    private static final LIKESTATUS a[];

    private LIKESTATUS(String s, int i)
    {
        super(s, i);
    }

    LIKESTATUS(String s, int i, LIKESTATUS likestatus)
    {
        this(s, i);
    }

    public static LIKESTATUS valueOf(String s)
    {
        return (LIKESTATUS)Enum.valueOf(com/umeng/socialize/bean/LIKESTATUS, s);
    }

    public static LIKESTATUS[] values()
    {
        LIKESTATUS alikestatus[] = a;
        int i = alikestatus.length;
        LIKESTATUS alikestatus1[] = new LIKESTATUS[i];
        System.arraycopy(alikestatus, 0, alikestatus1, 0, i);
        return alikestatus1;
    }

    static 
    {
        LIKE = new l("LIKE", 0);
        UNLIKE = new m("UNLIKE", 1);
        a = (new LIKESTATUS[] {
            LIKE, UNLIKE
        });
    }
}
