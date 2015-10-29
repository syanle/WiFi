// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.lbsapi.auth;

import java.util.Hashtable;

// Referenced classes of package com.baidu.lbsapi.auth:
//            a, e, j

class g
    implements Runnable
{

    final int a;
    final boolean b;
    final String c;
    final String d;
    final Hashtable e;
    final e f;

    g(e e1, int i, boolean flag, String s, String s1, Hashtable hashtable)
    {
        f = e1;
        a = i;
        b = flag;
        c = s;
        d = s1;
        e = hashtable;
        super();
    }

    public void run()
    {
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("status = ").append(a).append("; forced = ").append(b).append("checkAK = ").append(com.baidu.lbsapi.auth.e.a(f, c)).toString());
        }
        if (a == 601 || b || a == -1 || com.baidu.lbsapi.auth.e.a(f, c))
        {
            if (a.a)
            {
                com.baidu.lbsapi.auth.a.a("authenticate sendAuthRequest");
            }
            com.baidu.lbsapi.auth.e.a(f, b, d, e, c);
            return;
        }
        if (602 == a)
        {
            if (a.a)
            {
                com.baidu.lbsapi.auth.a.a("authenticate wait  ");
            }
            com.baidu.lbsapi.auth.e.b().b();
            com.baidu.lbsapi.auth.e.a(f, null, c);
            return;
        }
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a("authenticate else  ");
        }
        com.baidu.lbsapi.auth.e.a(f, null, c);
    }
}
