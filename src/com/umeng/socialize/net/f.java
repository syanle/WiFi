// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.net:
//            g

public class f extends b
{

    private static final String a = "/share/keysecret/";
    private static final int j = 20;

    public f(Context context, SocializeEntity socializeentity)
    {
        super(context, "", com/umeng/socialize/net/g, socializeentity, 20, com.umeng.socialize.net.a.b.b.a);
        e = context;
    }

    protected String a()
    {
        return (new StringBuilder("/share/keysecret/")).append(SocializeUtils.getAppkey(e)).append("/").toString();
    }

    protected Map a(Map map)
    {
        return map;
    }
}
