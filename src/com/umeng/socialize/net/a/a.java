// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net.a;

import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socom.net.r;

// Referenced classes of package com.umeng.socialize.net.a:
//            b, e

public class a extends r
{

    public static final String a = "http://log.umsns.com/";

    public a()
    {
    }

    public e a(b b1)
    {
        if (SocializeConstants.DEBUG_MODE)
        {
            try
            {
                Thread.sleep(3000L);
            }
            catch (InterruptedException interruptedexception) { }
        }
        b1.a("http://log.umsns.com/");
        return (e)super.a(b1, b1.c);
    }
}
