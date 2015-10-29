// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import java.io.PrintStream;

// Referenced classes of package com.hp.hpl.sparta:
//            ParseLog

class DefaultLog
    implements ParseLog
{

    DefaultLog()
    {
    }

    public void error(String s, String s1, int i)
    {
        System.err.println(s1 + "(" + i + "): " + s + " (ERROR)");
    }

    public void note(String s, String s1, int i)
    {
        System.out.println(s1 + "(" + i + "): " + s + " (NOTE)");
    }

    public void warning(String s, String s1, int i)
    {
        System.out.println(s1 + "(" + i + "): " + s + " (WARNING)");
    }
}
