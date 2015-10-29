// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;


// Referenced classes of package com.baidu.location:
//            b, a0, t, Jni, 
//            f

private class <init>
    implements Runnable, b
{

    final a0 kQ;

    public void run()
    {
        try
        {
            java.util.List list = a0._mthfor(kQ, true);
            if (!a0._mthfor(kQ).equals(a0._mthcase(kQ)) || a0._mthelse(kQ) || !a0._mthnew(kQ))
            {
                a0._mthdo(kQ, a0._mthfor(kQ));
                a0._mthif(kQ, a0._mthint(kQ));
                <init> <init>1 = t.an().ak();
                String s = Jni.j(String.format("%s|%s|%s|0", new Object[] {
                    Integer.valueOf(<init>1.o), Integer.valueOf(<init>1.f), Integer.valueOf(<init>1.or)
                }));
                a0._mthif(kQ, String.format("%s|%s|%s|0", new Object[] {
                    Integer.valueOf(<init>1.o), Integer.valueOf(<init>1.f), Integer.valueOf(<init>1.or)
                }));
                a0._mthif(kQ, kQ._mthfor(s, true));
                a0._mthdo(kQ, kQ._mthfor(s, false));
                a0._mthfor(kQ, list);
                a0._mthdo(kQ);
            }
            return;
        }
        catch (Exception exception)
        {
            kQ._mthif(f.getServiceContext(), 0x57e40);
        }
    }

    private (a0 a0_1)
    {
        kQ = a0_1;
        super();
    }

    kQ(a0 a0_1, kQ kq)
    {
        this(a0_1);
    }
}
