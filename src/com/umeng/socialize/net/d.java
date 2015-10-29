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
//            e

public class d extends b
{

    private static final String a = "/comment/get/";
    private static final int j = 2;
    private SocializeEntity k;
    private long l;

    public d(Context context, SocializeEntity socializeentity, long l1)
    {
        super(context, "", com/umeng/socialize/net/e, socializeentity, 2, com.umeng.socialize.net.a.b.b.a);
        e = context;
        k = socializeentity;
        l = l1;
    }

    protected String a()
    {
        return (new StringBuilder("/comment/get/")).append(SocializeUtils.getAppkey(e)).append("/").append(k.mEntityKey).append("/").toString();
    }

    protected Map a(Map map)
    {
        map.put("lct", Long.valueOf(l));
        map.put("sid", k.mSessionID);
        return map;
    }
}
