// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;


// Referenced classes of package com.tencent.plus:
//            ImageActivity

class f
    implements Runnable
{

    final String a;
    final int b;
    final ImageActivity c;

    f(ImageActivity imageactivity, String s, int i)
    {
        c = imageactivity;
        a = s;
        b = i;
        super();
    }

    public void run()
    {
        ImageActivity.a(c, a, b);
    }
}
