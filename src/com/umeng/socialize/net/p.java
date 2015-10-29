// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.net:
//            q

public class p extends b
{

    private static final String a = "/share/friends/";
    private static final int j = 14;
    private SocializeEntity k;
    private String l;
    private SHARE_MEDIA m;

    public p(Context context, SocializeEntity socializeentity, SHARE_MEDIA share_media, String s)
    {
        super(context, "", com/umeng/socialize/net/q, socializeentity, 14, com.umeng.socialize.net.a.b.b.a);
        e = context;
        k = socializeentity;
        l = s;
        m = share_media;
    }

    protected String a()
    {
        return (new StringBuilder("/share/friends/")).append(SocializeUtils.getAppkey(e)).append("/").append(l).append("/").toString();
    }

    protected Map a(Map map)
    {
        map.put("to", m.toString());
        return map;
    }
}
