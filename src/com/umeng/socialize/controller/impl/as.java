// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;


// Referenced classes of package com.umeng.socialize.controller.impl:
//            ar, UMAsyncTask

class as
    implements Runnable
{

    final ar a;
    private final Object b;

    as(ar ar1, Object obj)
    {
        a = ar1;
        b = obj;
        super();
    }

    public void run()
    {
        ar.a(a).onPostExecute(b);
    }
}
