// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;


// Referenced classes of package com.umeng.socialize.view:
//            f, CommentActivity, ci

class h
    implements Runnable
{

    final f a;

    h(f f1)
    {
        a = f1;
        super();
    }

    public void run()
    {
        if (CommentActivity.c(f.a(a)) != null)
        {
            CommentActivity.c(f.a(a)).a(ci.a.b);
        }
    }
}
