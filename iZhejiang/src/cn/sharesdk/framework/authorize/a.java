// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.content.Context;
import android.content.Intent;
import cn.sharesdk.framework.Platform;
import com.mob.tools.FakeActivity;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            AuthorizeHelper

public class a extends FakeActivity
{

    protected AuthorizeHelper a;

    public a()
    {
    }

    public AuthorizeHelper a()
    {
        return a;
    }

    public void a(AuthorizeHelper authorizehelper)
    {
        a = authorizehelper;
        super.show(authorizehelper.getPlatform().getContext(), null);
    }

    public void show(Context context, Intent intent)
    {
        throw new RuntimeException("This method is deprecated, use show(AuthorizeHelper, Intent) instead");
    }
}
