// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.b;

import android.os.Message;

// Referenced classes of package com.baidu.platform.comapi.b:
//            b, d

class c
{

    private static final String a = com/baidu/platform/comapi/b/c.getSimpleName();
    private b b;
    private d c;

    c()
    {
        b = null;
        c = null;
    }

    public void a()
    {
        c = null;
    }

    public void a(Message message)
    {
_L2:
        return;
        if (message.what != 2000 || b == null) goto _L2; else goto _L1
_L1:
        if (message.arg2 != 0)
        {
            if (3 == message.arg2)
            {
                b.a(11);
                return;
            } else
            {
                b.a(message.arg2);
                return;
            }
        }
        message.arg1;
        JVM INSTR lookupswitch 14: default 184
    //                   7: 185
    //                   11: 226
    //                   14: 737
    //                   18: 685
    //                   20: 395
    //                   21: 226
    //                   23: 289
    //                   31: 341
    //                   35: 609
    //                   44: 557
    //                   45: 657
    //                   46: 792
    //                   500: 449
    //                   506: 504;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L5 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16
_L14:
        continue; /* Loop/switch isn't completed */
_L3:
        return;
_L4:
        if (message.arg2 != 0) goto _L2; else goto _L17
_L17:
        message = c.b(7);
        if (message == null || message.equals(""))
        {
            b.b(null);
            return;
        } else
        {
            b.b(message);
            return;
        }
_L5:
        if (message.arg2 != 0) goto _L2; else goto _L18
_L18:
        message = c.b(11);
        if (message == null || message.equals(""))
        {
            b.a(null);
            return;
        } else
        {
            b.a(message);
            return;
        }
_L9:
        if (message.arg2 != 0) goto _L2; else goto _L19
_L19:
        message = c.b(23);
        if (message == null || message.equals(""))
        {
            b.c(null);
            return;
        } else
        {
            b.c(message);
            return;
        }
_L10:
        if (message.arg2 != 0) goto _L2; else goto _L20
_L20:
        message = c.b(message.arg1);
        if (message == null || message.equals(""))
        {
            b.g(null);
            return;
        } else
        {
            b.g(message);
            return;
        }
_L8:
        if (message.arg2 != 0) goto _L2; else goto _L21
_L21:
        message = c.b(message.arg1);
        if (message == null || message.equals(""))
        {
            b.f(null);
            return;
        } else
        {
            b.f(message);
            return;
        }
_L15:
        if (message.arg2 != 0) goto _L2; else goto _L22
_L22:
        message = c.b(message.arg1);
        if (message != null && message.trim().length() > 0)
        {
            b.e(message);
            return;
        } else
        {
            b.e(null);
            return;
        }
_L16:
        if (message.arg2 != 0) goto _L2; else goto _L23
_L23:
        message = c.b(506);
        if (message == null || message.equals(""))
        {
            b.k(null);
            return;
        } else
        {
            b.k(message);
            return;
        }
_L12:
        if (message.arg2 != 0) goto _L2; else goto _L24
_L24:
        message = c.b(44);
        if (message == null || message.equals(""))
        {
            b.i(null);
            return;
        } else
        {
            b.i(message);
            return;
        }
_L11:
        if (message.arg2 != 0) goto _L2; else goto _L25
_L25:
        message = c.b(35);
        if (message.equals(""))
        {
            b.i(null);
            return;
        } else
        {
            b.i(message);
            return;
        }
_L13:
        if (message.arg2 != 0) goto _L2; else goto _L26
_L26:
        message = c.b(45);
        b.a(message);
        return;
_L7:
        if (message.arg2 != 0) goto _L2; else goto _L27
_L27:
        message = c.b(18);
        if (message == null || message.equals(""))
        {
            b.j(null);
            return;
        } else
        {
            b.j(message);
            return;
        }
_L6:
        if (message.arg2 != 0) goto _L2; else goto _L28
_L28:
        message = c.b(message.arg1);
        if (message != null && message.trim().length() > 0)
        {
            b.h(message);
            return;
        } else
        {
            b.h(null);
            return;
        }
        if (message.arg2 != 0) goto _L2; else goto _L29
_L29:
        message = c.b(message.arg1);
        b.d(message);
        return;
    }

    public void a(b b1)
    {
        b = b1;
    }

    public void a(d d1)
    {
        c = d1;
    }

}
