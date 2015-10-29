// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;


// Referenced classes of package com.pubinfo.izhejiang:
//            ThinkAndroidBaseFragment

private static class <init> extends Thread
{

    private Integer exit;
    private final Process process;

    public void run()
    {
        try
        {
            exit = Integer.valueOf(process.waitFor());
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
    }


    private (Process process1)
    {
        process = process1;
    }

    process(Process process1, process process2)
    {
        this(process1);
    }
}
