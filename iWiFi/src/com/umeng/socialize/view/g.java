// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;


// Referenced classes of package com.umeng.socialize.view:
//            f, CommentActivity

class g
    implements Runnable
{

    final f a;

    g(f f1)
    {
        a = f1;
        super();
    }

    public void run()
    {
        f.a(a).commentsChanged();
        CommentActivity.a(f.a(a));
        CommentActivity.b(f.a(a));
    }
}
