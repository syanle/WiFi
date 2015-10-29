// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.content.Intent;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            e, AuthorizeHelper, SSOListener

public abstract class f
{

    protected e a;
    protected int b;
    protected SSOListener c;

    public f(e e1)
    {
        a = e1;
        c = e1.a().getSSOListener();
    }

    public abstract void a();

    public void a(int i)
    {
        b = i;
    }

    public void a(int i, int j, Intent intent)
    {
    }

    protected void a(Intent intent)
    {
    }
}
