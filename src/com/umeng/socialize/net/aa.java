// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.net:
//            ab

public class aa extends b
{

    private static final String a = "/share/userinfo/";
    private static final int j = 12;
    private SNSPair k;

    public aa(Context context, SocializeEntity socializeentity, SNSPair snspair)
    {
        super(context, "", com/umeng/socialize/net/ab, socializeentity, 12, com.umeng.socialize.net.a.b.b.a);
        e = context;
        k = snspair;
    }

    protected String a()
    {
        return (new StringBuilder("/share/userinfo/")).append(SocializeUtils.getAppkey(e)).append("/").append(k.mUsid).append("/").toString();
    }

    protected Map a(Map map)
    {
        map.put("sns", k.mPaltform.toString());
        return map;
    }
}
