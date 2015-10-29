// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.net:
//            m

public class l extends b
{

    private static final String a = "/user/profile/get/";
    private static final int j = 3;

    public l(Context context, SocializeEntity socializeentity)
    {
        super(context, "", com/umeng/socialize/net/m, socializeentity, 3, com.umeng.socialize.net.a.b.b.a);
        e = context;
    }

    protected String a()
    {
        return (new StringBuilder("/user/profile/get/")).append(SocializeUtils.getAppkey(e)).append("/").append(SocializeConstants.UID).append("/").toString();
    }

    protected Map a(Map map)
    {
        return map;
    }
}
